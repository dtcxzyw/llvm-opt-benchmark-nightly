inline.NumInlined: 6898
inline.NumDeleted: 3505
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBU_:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !633, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !634, !noalias !622
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !635

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !634, !noalias !636
  br label %common.resume, !dbg !637

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !638
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !638, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !633, !noalias !622
  store ptr %i.d, ptr %i.c, align 8, !dbg !639, !noalias !622
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !639
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !639, !noalias !622
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !639
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !639, !noalias !622
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !639
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !639, !noalias !622
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !639
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !639, !noalias !622
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !639
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !639, !noalias !622
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !639
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !639, !noalias !622
  %i.x = load ptr, ptr %0, align 8, !dbg !642, !alias.scope !648, !noalias !649, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !650, !alias.scope !648, !noalias !649, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !652
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !652
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !652

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !658
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !662
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !669
  br label %.preheader, !dbg !670

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !681
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !670

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !682 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !685
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !688
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !695 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !696     ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !681
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !670

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !697, !alias.scope !648, !noalias !649
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !698, !alias.scope !727, !noalias !730
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !697

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !697
  %i.ai = sub i64 %i.v, %i.ah, !dbg !732
  store i64 %i.aa, ptr %0, align 8, !dbg !733, !alias.scope !727, !noalias !730
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !698, !alias.scope !736, !noalias !738 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !733, !alias.scope !736, !noalias !738
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !740
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !733, !alias.scope !743, !noalias !745
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !747
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !747

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 5, !dbg !759 ; 2 uses
  %i.am = add i64 %i.al, 32, !dbg !759
  %i.an = add i64 %i.al, 47, !dbg !772            ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !772
  tail call void @llvm.assume(i1 %i.ao), !dbg !775, !noalias !636
  %i.ap = and i64 %i.an, -32, !dbg !778           ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !779
  %i.ar = add i64 %i.aq, %i.ap, !dbg !781         ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !781
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !783, !noalias !636
  tail call void @llvm.assume(i1 %i.at), !dbg !783, !noalias !636
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !636
  %i.au = icmp eq i64 %i.ar, 0, !dbg !786
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !786

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !796
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !800
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !801, !noalias !808
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !815

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !634, !noalias !622
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !635

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !816 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !816 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !816
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !817
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !824
  %i.az = zext nneg i16 %i.ay to i64, !dbg !825
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !826
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !830 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !831     ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !833, !alias.scope !842, !noalias !845, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !847
  %i.bf = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %i.be, !dbg !852
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -32, !dbg !853
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit unwind label %bb.f, !dbg !859 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !866  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !872
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !878, !noalias !883
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !886
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !886 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !894
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !898, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !866
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ], [ %i.cb, %.lr.ph.i ], !dbg !886
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !900
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !905
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !906
  %i.bo = and i64 %i.bn, %i.t, !dbg !906          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !908
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !918, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !919
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !919, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !924
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !927
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !927 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !932
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !936
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !936
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !937
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !940

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !941            ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !944
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !866 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !872
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !878, !noalias !883
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !886
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !886 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !894
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !898, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !946
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !954 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !956
  %i.cf = and i64 %i.ce, %i.t, !dbg !961
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !962
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !968, !noalias !636
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !969
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !969
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !973, !noalias !636
  %i.cj = load ptr, ptr %0, align 8, !dbg !974, !alias.scope !648, !noalias !649, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !980
  %.neg61.i.i = shl i64 %.neg.i.i, 5, !dbg !980
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !982
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !985
  %.neg63.i.i = shl i64 %.neg62.i.i, 5, !dbg !985
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !988
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 range(i64 8, 113) 32, i1 false), !dbg !991, !noalias !636
  %i.cm = icmp eq i64 %i.bc, 0, !dbg !652
  br i1 %i.cm, label %._crit_edge64.loopexit, label %.preheader, !dbg !652

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !994

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995), !dbg !998
  %.val11 = load ptr, ptr %0, align 8, !dbg !999  ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1002
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !1002

.lr.ph.i16:                                       ; preds = %bb.j
  %i.cn = lshr i64 %i.l, 4, !dbg !1017
  %i.co = and i64 %i.l, 15, !dbg !1029
  %.not10.i.i.i = icmp ne i64 %i.co, 0, !dbg !1031
  %i.cp = zext i1 %.not10.i.i.i to i64, !dbg !1031
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cn, %i.cp, !dbg !1031 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !1002
  %i.cq = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !1002
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !1002

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !1002
  br label %bb.k, !dbg !1002

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1002
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !1002

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cy, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !1002
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !1002
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !1033 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cr, align 16, !dbg !1039
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !1042
  %i.cs = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !1050
  %i.ct = or <2 x i64> %i.cs, splat (i64 -9187201950435737472), !dbg !1050
  store <2 x i64> %i.ct, ptr %i.cr, align 16, !dbg !1054
  br label %._crit_edge.i18, !dbg !1060

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cu = icmp ult i64 %i.l, 16, !dbg !1060
  br i1 %i.cu, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1061, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cy, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1033 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cv, align 16, !dbg !1039
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1042
  %i.cw = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1050
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !1050
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !1054
  %i.cy = add i64 %.sroa.01.08.i, 32, !dbg !1065  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1033
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !1033 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.da, align 16, !dbg !1039
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !1042
  %i.db = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !1050
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !1050
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !1054
  %niter.next.1 = add i64 %niter, 2, !dbg !1002   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1002
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !1002

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1069

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1070
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1077, !noalias !1078
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1080
  store ptr null, ptr %i.de, align 8, !dbg !1080, !noalias !1078
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1080
  store i64 32, ptr %i.df, align 8, !dbg !1080, !noalias !1078
  store ptr %0, ptr %i.a, align 8, !dbg !1080, !noalias !1078
  %i.dg = load i64, ptr %i.i, align 8, !dbg !1083, !alias.scope !995, !noalias !1087, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dg, -1, !dbg !1088
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1102

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dh, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1103
  %i.di = load ptr, ptr %0, align 8, !dbg !1110, !noalias !1087, !nonnull !14, !noundef !14 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i54, !dbg !1114
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !1117, !noalias !1087, !noundef !14
  %.not.i2 = icmp eq i8 %i.dk, -128, !dbg !1117
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !1123

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1103
  %.neg11.i = shl i64 %.neg.i, 5, !dbg !1124
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %.neg11.i, !dbg !1128 ; 6 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1131

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.dq = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.di, %bb.l ], !dbg !1133
  %i.dr = getelementptr inbounds [32 x i8], ptr %i.dq, i64 %i.dm, !dbg !1137
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -32, !dbg !1140
  %i.dt = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 unwind label %bb.m, !dbg !1144 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !1147, !noalias !1087

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !1148, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1148, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dt, !dbg !1150 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !1152
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dv, align 1, !dbg !1155, !noalias !1159
  %i.dw = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !1162
  %i.dx = bitcast <16 x i1> %i.dw to i16, !dbg !1162 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dx, 0, !dbg !1166
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1168, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !1150
  %.lcssa.i27 = phi i16 [ %i.dx, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ], [ %i.eo, %.lr.ph.i31 ], !dbg !1162
  %i.dy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !1169
  %i.dz = zext nneg i16 %i.dy to i64, !dbg !1172
  %i.ea = add i64 %.sroa.0.0.lcssa.i26, %i.dz, !dbg !1173
  %i.eb = and i64 %i.ea, %.val9, !dbg !1173       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eb, !dbg !1174
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !1179, !noundef !14
  %i.ee = icmp sgt i8 %i.ed, -1, !dbg !1180
  br i1 %i.ee, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1180, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !1182
  %i.ef = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !1184
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !1184 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.eg, 0, !dbg !1187
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eg, i1 true), !dbg !1189
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !1189
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !1190
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1192

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ]
  %i.ej = phi i64 [ %i.ek, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ]
  %i.ek = add i64 %i.ej, 16, !dbg !1193           ; 2 uses
  %i.el = add i64 %i.ek, %.sroa.0.010.i32, !dbg !1195
  %.sroa.0.0.i33 = and i64 %i.el, %.val9, !dbg !1150 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !1152
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.em, align 1, !dbg !1155, !noalias !1159
  %i.en = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !1162
  %i.eo = bitcast <16 x i1> %i.en to i16, !dbg !1162 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eo, 0, !dbg !1166
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1168, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ei, %bb.n ], [ %i.eb, %._crit_edge.i25 ] ; 4 uses
  %i.ep = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !1196
  %i.eq = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !1207
  %i.er = xor i64 %i.eq, %i.ep, !dbg !1211
  %.unshifted.i = and i64 %i.er, %.val9, !dbg !1211
  %i.es = icmp ult i64 %.unshifted.i, 16, !dbg !1211
  br i1 %i.es, label %bb.o, label %bb.p, !dbg !1212, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.et = lshr i64 %i.dt, 57, !dbg !1215
  %i.eu = trunc nuw nsw i64 %i.et to i8, !dbg !1220 ; 2 uses
  %i.ev = add i64 %.sroa.04.0.i54, -16, !dbg !1222
  %i.ew = and i64 %.val9, %i.ev, !dbg !1226
  %i.ex = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !1227
  store i8 %i.eu, ptr %i.ex, align 1, !dbg !1232, !noalias !1087
  %i.ey = load ptr, ptr %0, align 8, !dbg !1233, !noalias !1087, !nonnull !14, !noundef !14
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew, !dbg !1235
  %i.fa = getelementptr i8, ptr %i.ez, i64 16, !dbg !1235
  store i8 %i.eu, ptr %i.fa, align 1, !dbg !1238, !noalias !1087
  br label %bb.r, !dbg !1239

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !1241
  %.neg13.i = shl i64 %.neg12.i, 5, !dbg !1241
  %i.fb = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !1244 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !1247 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !dbg !1254, !noalias !1087, !noundef !14
  %i.fe = lshr i64 %i.dt, 57, !dbg !1255
  %i.ff = trunc nuw nsw i64 %i.fe to i8, !dbg !1260 ; 2 uses
  %i.fg = add i64 %.sroa.0.0.i5.i28, -16, !dbg !1262
  %i.fh = and i64 %i.fg, %.val9, !dbg !1266
  store i8 %i.ff, ptr %i.fc, align 1, !dbg !1267, !noalias !1087
  %i.fi = load ptr, ptr %0, align 8, !dbg !1269, !noalias !1087, !nonnull !14, !noundef !14
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fh, !dbg !1272
  %i.fk = getelementptr i8, ptr %i.fj, i64 16, !dbg !1272
  store i8 %i.ff, ptr %i.fk, align 1, !dbg !1275, !noalias !1087
  %i.fl = icmp eq i8 %i.fd, -1, !dbg !1276
  br i1 %i.fl, label %bb.q, label %.preheader47.preheader, !dbg !1276

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278), !dbg !1281, !noalias !1087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293), !dbg !1281, !noalias !1087
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dl, align 1, !dbg !1295, !alias.scope !1278, !noalias !1297
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fb, align 1, !dbg !1298, !alias.scope !1293, !noalias !1299
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dl, align 1, !dbg !1300, !alias.scope !1278, !noalias !1297
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fb, align 1, !dbg !1301, !alias.scope !1293, !noalias !1299
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8, !dbg !1302 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304), !dbg !1281, !noalias !1087
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306), !dbg !1281, !noalias !1087
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dn, align 1, !dbg !1295, !alias.scope !1304, !noalias !1308
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.fm, align 1, !dbg !1298, !alias.scope !1306, !noalias !1309
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dn, align 1, !dbg !1300, !alias.scope !1304, !noalias !1308
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.fm, align 1, !dbg !1301, !alias.scope !1306, !noalias !1309
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 16, !dbg !1302 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310), !dbg !1281, !noalias !1087
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EBU_:bb.a
bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1405, !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1406, !noalias !1396
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !1407

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !1406, !noalias !1408
  br label %common.resume, !dbg !1409

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1410
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !1410, !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1405, !noalias !1396
  store ptr %i.d, ptr %i.c, align 8, !dbg !1411, !noalias !1396
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1411
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1411, !noalias !1396
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1411
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1411, !noalias !1396
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1411
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1411, !noalias !1396
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1411
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1411, !noalias !1396
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1411
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1411, !noalias !1396
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1411
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1411, !noalias !1396
  %i.x = load ptr, ptr %0, align 8, !dbg !1412, !alias.scope !1415, !noalias !1416, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !1417, !alias.scope !1415, !noalias !1416, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !1418
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !1418
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !1418

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !1420
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !1422
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !1426
  br label %.preheader, !dbg !1427

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1431
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1427

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !1432 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !1434
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !1436
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !1440 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !1441    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !1431
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1427

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !1442, !alias.scope !1415, !noalias !1416
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !1443, !alias.scope !1451, !noalias !1454
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !1442

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1442
  %i.ai = sub i64 %i.v, %i.ah, !dbg !1456
  store i64 %i.aa, ptr %0, align 8, !dbg !1457, !alias.scope !1451, !noalias !1454
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !1443, !alias.scope !1458, !noalias !1460 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !1457, !alias.scope !1458, !noalias !1460
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1462
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !1457, !alias.scope !1464, !noalias !1466
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !1468
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1468

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !1472 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !1472
  %i.an = add i64 %i.al, 23, !dbg !1478           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !1478
  tail call void @llvm.assume(i1 %i.ao), !dbg !1480, !noalias !1408
  %i.ap = and i64 %i.an, -16, !dbg !1482          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !1483
  %i.ar = add i64 %i.aq, %i.ap, !dbg !1484        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !1484
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !1486, !noalias !1408
  tail call void @llvm.assume(i1 %i.at), !dbg !1486, !noalias !1408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !1408
  %i.au = icmp eq i64 %i.ar, 0, !dbg !1488
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !1488

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !1490
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !1492
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !1493, !noalias !1496
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !1503

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1406, !noalias !1396
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !1407

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1504 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !1504 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !1504
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !1505
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1509
  %i.az = zext nneg i16 %i.ay to i64, !dbg !1510
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !1511
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !1513 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !1514    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !1515, !alias.scope !1522, !noalias !1525, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !1527
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !1532
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !1533
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit unwind label %bb.f, !dbg !1539 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !1544 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !1547
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !1550, !noalias !1554
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1557
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !1557 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !1561
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1563, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !1544
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ], [ %i.cb, %.lr.ph.i ], !dbg !1557
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1564
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !1567
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !1568
  %i.bo = and i64 %i.bn, %i.t, !dbg !1568         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !1569
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !1574, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !1575
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1575, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !1577
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !1579
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !1579 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !1582
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !1584
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !1584
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1585
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1587

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !1588           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !1590
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !1544 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !1547
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !1550, !noalias !1554
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1557
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !1557 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !1561
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1563, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !1591
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !1594 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !1595
  %i.cf = and i64 %i.ce, %i.t, !dbg !1598
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !1599
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !1602, !noalias !1408
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !1603
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !1603
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !1606, !noalias !1408
  %i.cj = load ptr, ptr %0, align 8, !dbg !1607, !alias.scope !1415, !noalias !1416, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !1610
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !1610
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !1611
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1613
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !1613
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !1615
  %i.cm = load i64, ptr %i.ck, align 1, !dbg !1617, !noalias !1408
  store i64 %i.cm, ptr %i.cl, align 1, !dbg !1617, !noalias !1408
  %i.cn = icmp eq i64 %i.bc, 0, !dbg !1418
  br i1 %i.cn, label %._crit_edge64.loopexit, label %.preheader, !dbg !1418

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ds, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !1619

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620), !dbg !1623
  %.val11 = load ptr, ptr %0, align 8, !dbg !1624 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1626
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !1626

.lr.ph.i16:                                       ; preds = %bb.j
  %i.co = lshr i64 %i.l, 4, !dbg !1630
  %i.cp = and i64 %i.l, 15, !dbg !1635
  %.not10.i.i.i = icmp ne i64 %i.cp, 0, !dbg !1636
  %i.cq = zext i1 %.not10.i.i.i to i64, !dbg !1636
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.co, %i.cq, !dbg !1636 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !1626
  %i.cr = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !1626
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !1626

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !1626
  br label %bb.k, !dbg !1626

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !1626
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !1626

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cz, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !1626
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !1626
  %i.cs = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !1637 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cs, align 16, !dbg !1640
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !1642
  %i.ct = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !1645
  %i.cu = or <2 x i64> %i.ct, splat (i64 -9187201950435737472), !dbg !1645
  store <2 x i64> %i.cu, ptr %i.cs, align 16, !dbg !1647
  br label %._crit_edge.i18, !dbg !1650

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cv = icmp ult i64 %i.l, 16, !dbg !1650
  br i1 %i.cv, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1651, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cz, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1637 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cw, align 16, !dbg !1640
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1642
  %i.cx = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1645
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !1645
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !1647
  %i.cz = add i64 %.sroa.01.08.i, 32, !dbg !1653  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1637
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16, !dbg !1637 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.db, align 16, !dbg !1640
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !1642
  %i.dc = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !1645
  %i.dd = or <2 x i64> %i.dc, splat (i64 -9187201950435737472), !dbg !1645
  store <2 x i64> %i.dd, ptr %i.db, align 16, !dbg !1647
  %niter.next.1 = add i64 %niter, 2, !dbg !1626   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1626
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !1626

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1655

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1656
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1661, !noalias !1662
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1664
  store ptr null, ptr %i.df, align 8, !dbg !1664, !noalias !1662
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1664
  store i64 8, ptr %i.dg, align 8, !dbg !1664, !noalias !1662
  store ptr %0, ptr %i.a, align 8, !dbg !1664, !noalias !1662
  %i.dh = load i64, ptr %i.i, align 8, !dbg !1666, !alias.scope !1620, !noalias !1668, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dh, -1, !dbg !1669
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1673

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.di, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.di = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1674
  %i.dj = load ptr, ptr %0, align 8, !dbg !1677, !noalias !1668, !nonnull !14, !noundef !14 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i54, !dbg !1679
  %i.dl = load i8, ptr %i.dk, align 1, !dbg !1681, !noalias !1668, !noundef !14
  %.not.i2 = icmp eq i8 %i.dl, -128, !dbg !1681
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !1684

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1674
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !1685
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %.neg11.i, !dbg !1687 ; 3 uses
  %i.dn = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1689

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.do = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.dj, %bb.l ], !dbg !1690
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dn, !dbg !1694
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8, !dbg !1697
  %i.dr = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyEB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dq)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 unwind label %bb.m, !dbg !1701 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !1704, !noalias !1668

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !1705, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1705, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dr, !dbg !1706 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !1708
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dt, align 1, !dbg !1711, !noalias !1715
  %i.du = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !1718
  %i.dv = bitcast <16 x i1> %i.du to i16, !dbg !1718 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dv, 0, !dbg !1722
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1724, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !1706
  %.lcssa.i27 = phi i16 [ %i.dv, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ], [ %i.em, %.lr.ph.i31 ], !dbg !1718
  %i.dw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !1725
  %i.dx = zext nneg i16 %i.dw to i64, !dbg !1728
  %i.dy = add i64 %.sroa.0.0.lcssa.i26, %i.dx, !dbg !1729
  %i.dz = and i64 %i.dy, %.val9, !dbg !1729       ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dz, !dbg !1730
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !1735, !noundef !14
  %i.ec = icmp sgt i8 %i.eb, -1, !dbg !1736
  br i1 %i.ec, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1736, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !1738
  %i.ed = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !1740
  %i.ee = bitcast <16 x i1> %i.ed to i16, !dbg !1740 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ee, 0, !dbg !1743
  %i.ef = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ee, i1 true), !dbg !1745
  %i.eg = zext nneg i16 %i.ef to i64, !dbg !1745
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !1746
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1748

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ]
  %i.eh = phi i64 [ %i.ei, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2g09Ig8GZd6_13polars_stream5graph12GraphNodeKeyuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0BW_.exit21 ]
  %i.ei = add i64 %i.eh, 16, !dbg !1749           ; 2 uses
  %i.ej = add i64 %i.ei, %.sroa.0.010.i32, !dbg !1751
  %.sroa.0.0.i33 = and i64 %i.ej, %.val9, !dbg !1706 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !1708
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.ek, align 1, !dbg !1711, !noalias !1715
  %i.el = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !1718
  %i.em = bitcast <16 x i1> %i.el to i16, !dbg !1718 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.em, 0, !dbg !1722
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1724, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.eg, %bb.n ], [ %i.dz, %._crit_edge.i25 ] ; 4 uses
  %i.en = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !1752
  %i.eo = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !1756
  %i.ep = xor i64 %i.eo, %i.en, !dbg !1759
  %.unshifted.i = and i64 %i.ep, %.val9, !dbg !1759
  %i.eq = icmp ult i64 %.unshifted.i, 16, !dbg !1759
  br i1 %i.eq, label %bb.o, label %bb.p, !dbg !1760, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.er = lshr i64 %i.dr, 57, !dbg !1762
  %i.es = trunc nuw nsw i64 %i.er to i8, !dbg !1765 ; 2 uses
  %i.et = add i64 %.sroa.04.0.i54, -16, !dbg !1766
  %i.eu = and i64 %.val9, %i.et, !dbg !1769
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !1770
  store i8 %i.es, ptr %i.ev, align 1, !dbg !1773, !noalias !1668
  %i.ew = load ptr, ptr %0, align 8, !dbg !1774, !noalias !1668, !nonnull !14, !noundef !14
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.eu, !dbg !1776
  %i.ey = getelementptr i8, ptr %i.ex, i64 16, !dbg !1776
  store i8 %i.es, ptr %i.ey, align 1, !dbg !1778, !noalias !1668
  br label %bb.r, !dbg !1779

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !1780
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !1780
  %i.ez = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !1782 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !1784 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !1788, !noalias !1668, !noundef !14
  %i.fc = lshr i64 %i.dr, 57, !dbg !1789
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !1792 ; 2 uses
  %i.fe = add i64 %.sroa.0.0.i5.i28, -16, !dbg !1793
  %i.ff = and i64 %i.fe, %.val9, !dbg !1796
  store i8 %i.fd, ptr %i.fa, align 1, !dbg !1797, !noalias !1668
  %i.fg = load ptr, ptr %0, align 8, !dbg !1798, !noalias !1668, !nonnull !14, !noundef !14
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.ff, !dbg !1800
  %i.fi = getelementptr i8, ptr %i.fh, i64 16, !dbg !1800
  store i8 %i.fd, ptr %i.fi, align 1, !dbg !1802, !noalias !1668
  %i.fj = icmp eq i8 %i.fb, -1, !dbg !1803
  br i1 %i.fj, label %bb.q, label %.preheader47.preheader, !dbg !1803

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804), !dbg !1807, !noalias !1668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812), !dbg !1807, !noalias !1668
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dm, align 1, !dbg !1814, !alias.scope !1804, !noalias !1816
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ez, align 1, !dbg !1817, !alias.scope !1812, !noalias !1818
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dm, align 1, !dbg !1819, !alias.scope !1804, !noalias !1816
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ez, align 1, !dbg !1820, !alias.scope !1812, !noalias !1818
  %.pre = load ptr, ptr %0, align 8, !dbg !1690, !alias.scope !1821, !noalias !1824
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1701

bb.q:                                             ; preds = %bb.p
  %i.fk = add i64 %.sroa.04.0.i54, -16, !dbg !1826
  %i.fl = load i64, ptr %i.i, align 8, !dbg !1829, !noalias !1668, !noundef !14
  %i.fm = and i64 %i.fl, %i.fk, !dbg !1830
  %i.fn = load ptr, ptr %0, align 8, !dbg !1831, !noalias !1668, !nonnull !14, !noundef !14
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sroa.04.0.i54, !dbg !1833
  store i8 -1, ptr %i.fo, align 1, !dbg !1835, !noalias !1668
  %i.fp = load ptr, ptr %0, align 8, !dbg !1836, !noalias !1668, !nonnull !14, !noundef !14
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.fm, !dbg !1838
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs2g09Ig8GZd6_13polars_stream:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1896, !noalias !1887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1897, !noalias !1887
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !1898

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !1897, !noalias !1899
  br label %common.resume, !dbg !1900

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1901
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !1901, !noalias !1887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1896, !noalias !1887
  store ptr %i.d, ptr %i.c, align 8, !dbg !1902, !noalias !1887
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1902
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1902, !noalias !1887
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1902
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1902, !noalias !1887
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1902
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1902, !noalias !1887
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1902
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1902, !noalias !1887
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1902
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1902, !noalias !1887
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1902
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1902, !noalias !1887
  %i.x = load ptr, ptr %0, align 8, !dbg !1903, !alias.scope !1906, !noalias !1907, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !1908, !alias.scope !1906, !noalias !1907, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !1909
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !1909
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !1909

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !1911
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !1913
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !1917
  br label %.preheader, !dbg !1918

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1922
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1918

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !1923 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !1925
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !1927
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !1931 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !1932    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !1922
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1918

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !1933, !alias.scope !1906, !noalias !1907
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !1934, !alias.scope !1942, !noalias !1945
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !1933

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1933
  %i.ai = sub i64 %i.v, %i.ah, !dbg !1947
  store i64 %i.aa, ptr %0, align 8, !dbg !1948, !alias.scope !1942, !noalias !1945
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !1934, !alias.scope !1949, !noalias !1951 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !1948, !alias.scope !1949, !noalias !1951
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1953
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !1948, !alias.scope !1955, !noalias !1957
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !1959
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !1959

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 4, !dbg !1963 ; 2 uses
  %i.am = add i64 %i.al, 16, !dbg !1963
  %i.an = add i64 %i.al, 31, !dbg !1969           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !1969
  tail call void @llvm.assume(i1 %i.ao), !dbg !1971, !noalias !1899
  %i.ap = and i64 %i.an, -16, !dbg !1973          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !1974
  %i.ar = add i64 %i.aq, %i.ap, !dbg !1975        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !1975
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !1977, !noalias !1899
  tail call void @llvm.assume(i1 %i.at), !dbg !1977, !noalias !1899
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !1899
  %i.au = icmp eq i64 %i.ar, 0, !dbg !1979
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !1979

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !1981
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !1983
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !1984, !noalias !1987
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !1994

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1897, !noalias !1887
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !1898

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1995 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !1995 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !1995
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !1996
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2000
  %i.az = zext nneg i16 %i.ay to i64, !dbg !2001
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !2002
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !2004 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !2005    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !2006, !alias.scope !2013, !noalias !2016, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !2018
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.be, !dbg !2023
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16, !dbg !2024
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils5arena4NodeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.f, !dbg !2030 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !2035 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2038
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !2041, !noalias !2045
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2048
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !2048 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !2052
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2054, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2035
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.cb, %.lr.ph.i ], !dbg !2048
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2055
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !2058
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !2059
  %i.bo = and i64 %i.bn, %i.t, !dbg !2059         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !2060
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !2065, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !2066
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2066, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2068
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !2070
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !2070 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !2073
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !2075
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !2075
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2076
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2078

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !2079           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !2081
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !2035 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2038
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !2041, !noalias !2045
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2048
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !2048 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !2052
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2054, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !2082
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !2085 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !2086
  %i.cf = and i64 %i.ce, %i.t, !dbg !2089
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2090
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !2093, !noalias !1899
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !2094
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !2094
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !2097, !noalias !1899
  %i.cj = load ptr, ptr %0, align 8, !dbg !2098, !alias.scope !1906, !noalias !1907, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !2101
  %.neg61.i.i = shl i64 %.neg.i.i, 4, !dbg !2101
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !2102
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2104
  %.neg63.i.i = shl i64 %.neg62.i.i, 4, !dbg !2104
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cl, ptr noundef nonnull align 1 dereferenceable(16) %i.ck, i64 range(i64 8, 113) 16, i1 false), !dbg !2108, !noalias !1899
  %i.cm = icmp eq i64 %i.bc, 0, !dbg !1909
  br i1 %i.cm, label %._crit_edge64.loopexit, label %.preheader, !dbg !1909

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ds, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !2110

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111), !dbg !2114
  %.val11 = load ptr, ptr %0, align 8, !dbg !2115 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2117
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2117

.lr.ph.i16:                                       ; preds = %bb.j
  %i.cn = lshr i64 %i.l, 4, !dbg !2121
  %i.co = and i64 %i.l, 15, !dbg !2126
  %.not10.i.i.i = icmp ne i64 %i.co, 0, !dbg !2127
  %i.cp = zext i1 %.not10.i.i.i to i64, !dbg !2127
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cn, %i.cp, !dbg !2127 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2117
  %i.cq = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !2117
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !2117

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2117
  br label %bb.k, !dbg !2117

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2117
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !2117

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cy, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2117
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !2117
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !2128 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cr, align 16, !dbg !2131
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !2133
  %i.cs = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !2136
  %i.ct = or <2 x i64> %i.cs, splat (i64 -9187201950435737472), !dbg !2136
  store <2 x i64> %i.ct, ptr %i.cr, align 16, !dbg !2138
  br label %._crit_edge.i18, !dbg !2141

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cu = icmp ult i64 %i.l, 16, !dbg !2141
  br i1 %i.cu, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2142, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cy, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2128 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cv, align 16, !dbg !2131
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2133
  %i.cw = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2136
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !2136
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !2138
  %i.cy = add i64 %.sroa.01.08.i, 32, !dbg !2144  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2128
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !2128 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.da, align 16, !dbg !2131
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !2133
  %i.db = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !2136
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !2136
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !2138
  %niter.next.1 = add i64 %niter, 2, !dbg !2117   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2117
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !2117

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2146

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2147
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2152, !noalias !2153
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2155
  store ptr null, ptr %i.de, align 8, !dbg !2155, !noalias !2153
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2155
  store i64 16, ptr %i.df, align 8, !dbg !2155, !noalias !2153
  store ptr %0, ptr %i.a, align 8, !dbg !2155, !noalias !2153
  %i.dg = load i64, ptr %i.i, align 8, !dbg !2157, !alias.scope !2111, !noalias !2159, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dg, -1, !dbg !2160
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2164

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dh, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i54, 1, !dbg !2165
  %i.di = load ptr, ptr %0, align 8, !dbg !2168, !noalias !2159, !nonnull !14, !noundef !14 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i54, !dbg !2170
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !2172, !noalias !2159, !noundef !14
  %.not.i2 = icmp eq i8 %i.dk, -128, !dbg !2172
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !2175

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !2165
  %.neg11.i = shl i64 %.neg.i, 4, !dbg !2176
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %.neg11.i, !dbg !2178 ; 4 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2180

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.do = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.di, %bb.l ], !dbg !2181
  %i.dp = getelementptr inbounds [16 x i8], ptr %i.do, i64 %i.dm, !dbg !2185
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -16, !dbg !2188
  %i.dr = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils5arena4NodeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dq)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 unwind label %bb.m, !dbg !2192 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !2195, !noalias !2159

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !2196, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2196, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dr, !dbg !2197 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !2199
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dt, align 1, !dbg !2202, !noalias !2206
  %i.du = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !2209
  %i.dv = bitcast <16 x i1> %i.du to i16, !dbg !2209 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dv, 0, !dbg !2213
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2215, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !2197
  %.lcssa.i27 = phi i16 [ %i.dv, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %i.em, %.lr.ph.i31 ], !dbg !2209
  %i.dw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !2216
  %i.dx = zext nneg i16 %i.dw to i64, !dbg !2219
  %i.dy = add i64 %.sroa.0.0.lcssa.i26, %i.dx, !dbg !2220
  %i.dz = and i64 %i.dy, %.val9, !dbg !2220       ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dz, !dbg !2221
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !2226, !noundef !14
  %i.ec = icmp sgt i8 %i.eb, -1, !dbg !2227
  br i1 %i.ec, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2227, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !2229
  %i.ed = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !2231
  %i.ee = bitcast <16 x i1> %i.ed to i16, !dbg !2231 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ee, 0, !dbg !2234
  %i.ef = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ee, i1 true), !dbg !2236
  %i.eg = zext nneg i16 %i.ef to i64, !dbg !2236
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !2237
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2239

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.eh = phi i64 [ %i.ei, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils5arena4NodebEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_bNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.ei = add i64 %i.eh, 16, !dbg !2240           ; 2 uses
  %i.ej = add i64 %i.ei, %.sroa.0.010.i32, !dbg !2242
  %.sroa.0.0.i33 = and i64 %i.ej, %.val9, !dbg !2197 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !2199
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.ek, align 1, !dbg !2202, !noalias !2206
  %i.el = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !2209
  %i.em = bitcast <16 x i1> %i.el to i16, !dbg !2209 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.em, 0, !dbg !2213
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2215, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.eg, %bb.n ], [ %i.dz, %._crit_edge.i25 ] ; 4 uses
  %i.en = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !2243
  %i.eo = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !2247
  %i.ep = xor i64 %i.eo, %i.en, !dbg !2250
  %.unshifted.i = and i64 %i.ep, %.val9, !dbg !2250
  %i.eq = icmp ult i64 %.unshifted.i, 16, !dbg !2250
  br i1 %i.eq, label %bb.o, label %bb.p, !dbg !2251, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.er = lshr i64 %i.dr, 57, !dbg !2253
  %i.es = trunc nuw nsw i64 %i.er to i8, !dbg !2256 ; 2 uses
  %i.et = add i64 %.sroa.04.0.i54, -16, !dbg !2257
  %i.eu = and i64 %.val9, %i.et, !dbg !2260
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !2261
  store i8 %i.es, ptr %i.ev, align 1, !dbg !2264, !noalias !2159
  %i.ew = load ptr, ptr %0, align 8, !dbg !2265, !noalias !2159, !nonnull !14, !noundef !14
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.eu, !dbg !2267
  %i.ey = getelementptr i8, ptr %i.ex, i64 16, !dbg !2267
  store i8 %i.es, ptr %i.ey, align 1, !dbg !2269, !noalias !2159
  br label %bb.r, !dbg !2270

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !2271
  %.neg13.i = shl i64 %.neg12.i, 4, !dbg !2271
  %i.ez = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !2273 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !2275 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !2279, !noalias !2159, !noundef !14
  %i.fc = lshr i64 %i.dr, 57, !dbg !2280
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !2283 ; 2 uses
  %i.fe = add i64 %.sroa.0.0.i5.i28, -16, !dbg !2284
  %i.ff = and i64 %i.fe, %.val9, !dbg !2287
  store i8 %i.fd, ptr %i.fa, align 1, !dbg !2288, !noalias !2159
  %i.fg = load ptr, ptr %0, align 8, !dbg !2289, !noalias !2159, !nonnull !14, !noundef !14
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.ff, !dbg !2291
  %i.fi = getelementptr i8, ptr %i.fh, i64 16, !dbg !2291
  store i8 %i.fd, ptr %i.fi, align 1, !dbg !2293, !noalias !2159
  %i.fj = icmp eq i8 %i.fb, -1, !dbg !2294
  br i1 %i.fj, label %bb.q, label %.preheader47.preheader, !dbg !2294

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2295), !dbg !2298, !noalias !2159
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2303), !dbg !2298, !noalias !2159
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dl, align 1, !dbg !2305, !alias.scope !2295, !noalias !2307
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ez, align 1, !dbg !2308, !alias.scope !2303, !noalias !2309
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dl, align 1, !dbg !2310, !alias.scope !2295, !noalias !2307
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ez, align 1, !dbg !2311, !alias.scope !2303, !noalias !2309
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !2312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314), !dbg !2298, !noalias !2159
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2316), !dbg !2298, !noalias !2159
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dn, align 1, !dbg !2305, !alias.scope !2314, !noalias !2318
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.fk, align 1, !dbg !2308, !alias.scope !2316, !noalias !2319
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dn, align 1, !dbg !2310, !alias.scope !2314, !noalias !2318
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.fk, align 1, !dbg !2311, !alias.scope !2316, !noalias !2319
  %.pre = load ptr, ptr %0, align 8, !dbg !2181, !alias.scope !2320, !noalias !2323
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2192

bb.q:                                             ; preds = %bb.p
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs2g09Ig8GZd6_13polars_stream:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2395, !noalias !2386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2396, !noalias !2386
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !2397

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !2396, !noalias !2398
  br label %common.resume, !dbg !2399

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2400
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !2400, !noalias !2386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2395, !noalias !2386
  store ptr %i.d, ptr %i.c, align 8, !dbg !2401, !noalias !2386
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2401
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2401, !noalias !2386
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2401
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2401, !noalias !2386
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2401
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2401, !noalias !2386
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !2401
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2401, !noalias !2386
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2401
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2401, !noalias !2386
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2401
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2401, !noalias !2386
  %i.x = load ptr, ptr %0, align 8, !dbg !2402, !alias.scope !2405, !noalias !2406, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !2407, !alias.scope !2405, !noalias !2406, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !2408
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !2408
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !2408

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !2410
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !2412
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !2416
  br label %.preheader, !dbg !2417

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !2421
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !2417

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !2422 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !2424
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !2426
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !2430 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !2431    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !2421
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !2417

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !2432, !alias.scope !2405, !noalias !2406
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !2433, !alias.scope !2441, !noalias !2444
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !2432

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !2432
  %i.ai = sub i64 %i.v, %i.ah, !dbg !2446
  store i64 %i.aa, ptr %0, align 8, !dbg !2447, !alias.scope !2441, !noalias !2444
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !2433, !alias.scope !2448, !noalias !2450 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !2447, !alias.scope !2448, !noalias !2450
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2452
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !2447, !alias.scope !2454, !noalias !2456
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !2458
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2458

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 5, !dbg !2462 ; 2 uses
  %i.am = add i64 %i.al, 32, !dbg !2462
  %i.an = add i64 %i.al, 47, !dbg !2468           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !2468
  tail call void @llvm.assume(i1 %i.ao), !dbg !2470, !noalias !2398
  %i.ap = and i64 %i.an, -32, !dbg !2472          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !2473
  %i.ar = add i64 %i.aq, %i.ap, !dbg !2474        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !2474
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !2476, !noalias !2398
  tail call void @llvm.assume(i1 %i.at), !dbg !2476, !noalias !2398
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !2398
  %i.au = icmp eq i64 %i.ar, 0, !dbg !2478
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !2478

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !2480
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !2482
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !2483, !noalias !2486
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !2493

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2396, !noalias !2386
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !2397

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !2494 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !2494 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !2494
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !2495
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2499
  %i.az = zext nneg i16 %i.ay to i64, !dbg !2500
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !2501
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !2503 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !2504    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !2505, !alias.scope !2512, !noalias !2515, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !2517
  %i.bf = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %i.be, !dbg !2522
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -32, !dbg !2523
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.f, !dbg !2529 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !2534 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2537
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !2540, !noalias !2544
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2547
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !2547 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !2551
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2553, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2534
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.cb, %.lr.ph.i ], !dbg !2547
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2554
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !2557
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !2558
  %i.bo = and i64 %i.bn, %i.t, !dbg !2558         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !2559
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !2564, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !2565
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2565, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2567
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !2569
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !2569 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !2572
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !2574
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !2574
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2575
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2577

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !2578           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !2580
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !2534 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2537
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !2540, !noalias !2544
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2547
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !2547 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !2551
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2553, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !2581
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !2584 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !2585
  %i.cf = and i64 %i.ce, %i.t, !dbg !2588
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2589
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !2592, !noalias !2398
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !2593
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !2593
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !2596, !noalias !2398
  %i.cj = load ptr, ptr %0, align 8, !dbg !2597, !alias.scope !2405, !noalias !2406, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !2600
  %.neg61.i.i = shl i64 %.neg.i.i, 5, !dbg !2600
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !2601
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2603
  %.neg63.i.i = shl i64 %.neg62.i.i, 5, !dbg !2603
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2605
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 range(i64 8, 113) 32, i1 false), !dbg !2607, !noalias !2398
  %i.cm = icmp eq i64 %i.bc, 0, !dbg !2408
  br i1 %i.cm, label %._crit_edge64.loopexit, label %.preheader, !dbg !2408

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !2609

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610), !dbg !2613
  %.val11 = load ptr, ptr %0, align 8, !dbg !2614 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2616
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2616

.lr.ph.i16:                                       ; preds = %bb.j
  %i.cn = lshr i64 %i.l, 4, !dbg !2620
  %i.co = and i64 %i.l, 15, !dbg !2625
  %.not10.i.i.i = icmp ne i64 %i.co, 0, !dbg !2626
  %i.cp = zext i1 %.not10.i.i.i to i64, !dbg !2626
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cn, %i.cp, !dbg !2626 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !2616
  %i.cq = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !2616
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !2616

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !2616
  br label %bb.k, !dbg !2616

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !2616
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !2616

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cy, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !2616
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !2616
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !2627 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cr, align 16, !dbg !2630
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !2632
  %i.cs = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !2635
  %i.ct = or <2 x i64> %i.cs, splat (i64 -9187201950435737472), !dbg !2635
  store <2 x i64> %i.ct, ptr %i.cr, align 16, !dbg !2637
  br label %._crit_edge.i18, !dbg !2640

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cu = icmp ult i64 %i.l, 16, !dbg !2640
  br i1 %i.cu, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2641, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cy, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2627 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cv, align 16, !dbg !2630
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2632
  %i.cw = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2635
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !2635
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !2637
  %i.cy = add i64 %.sroa.01.08.i, 32, !dbg !2643  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2627
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !2627 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.da, align 16, !dbg !2630
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !2632
  %i.db = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !2635
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !2635
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !2637
  %niter.next.1 = add i64 %niter, 2, !dbg !2616   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !2616
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !2616

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2645

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2646
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2651, !noalias !2652
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2654
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCs2g09Ig8GZd6_13polars_stream, ptr %i.de, align 8, !dbg !2654, !noalias !2652
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2654
  store i64 32, ptr %i.df, align 8, !dbg !2654, !noalias !2652
  store ptr %0, ptr %i.a, align 8, !dbg !2654, !noalias !2652
  %i.dg = load i64, ptr %i.i, align 8, !dbg !2656, !alias.scope !2610, !noalias !2658, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dg, -1, !dbg !2659
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2663

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dh, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i54, 1, !dbg !2664
  %i.di = load ptr, ptr %0, align 8, !dbg !2667, !noalias !2658, !nonnull !14, !noundef !14 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i54, !dbg !2669
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !2671, !noalias !2658, !noundef !14
  %.not.i2 = icmp eq i8 %i.dk, -128, !dbg !2671
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !2674

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !2664
  %.neg11.i = shl i64 %.neg.i, 5, !dbg !2675
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %.neg11.i, !dbg !2677 ; 6 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2679

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.dq = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.di, %bb.l ], !dbg !2680
  %i.dr = getelementptr inbounds [32 x i8], ptr %i.dq, i64 %i.dm, !dbg !2684
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -32, !dbg !2687
  %i.dt = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 unwind label %bb.m, !dbg !2691 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !2694, !noalias !2658

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !2695, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2695, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dt, !dbg !2696 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !2698
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dv, align 1, !dbg !2701, !noalias !2705
  %i.dw = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !2708
  %i.dx = bitcast <16 x i1> %i.dw to i16, !dbg !2708 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dx, 0, !dbg !2712
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2714, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !2696
  %.lcssa.i27 = phi i16 [ %i.dx, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %i.eo, %.lr.ph.i31 ], !dbg !2708
  %i.dy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !2715
  %i.dz = zext nneg i16 %i.dy to i64, !dbg !2718
  %i.ea = add i64 %.sroa.0.0.lcssa.i26, %i.dz, !dbg !2719
  %i.eb = and i64 %i.ea, %.val9, !dbg !2719       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eb, !dbg !2720
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !2725, !noundef !14
  %i.ee = icmp sgt i8 %i.ed, -1, !dbg !2726
  br i1 %i.ee, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2726, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !2728
  %i.ef = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !2730
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !2730 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.eg, 0, !dbg !2733
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eg, i1 true), !dbg !2735
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !2735
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !2736
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2738

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.ej = phi i64 [ %i.ek, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrmEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_mNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.ek = add i64 %i.ej, 16, !dbg !2739           ; 2 uses
  %i.el = add i64 %i.ek, %.sroa.0.010.i32, !dbg !2741
  %.sroa.0.0.i33 = and i64 %i.el, %.val9, !dbg !2696 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !2698
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.em, align 1, !dbg !2701, !noalias !2705
  %i.en = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !2708
  %i.eo = bitcast <16 x i1> %i.en to i16, !dbg !2708 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eo, 0, !dbg !2712
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2714, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ei, %bb.n ], [ %i.eb, %._crit_edge.i25 ] ; 4 uses
  %i.ep = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !2742
  %i.eq = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !2746
  %i.er = xor i64 %i.eq, %i.ep, !dbg !2749
  %.unshifted.i = and i64 %i.er, %.val9, !dbg !2749
  %i.es = icmp ult i64 %.unshifted.i, 16, !dbg !2749
  br i1 %i.es, label %bb.o, label %bb.p, !dbg !2750, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.et = lshr i64 %i.dt, 57, !dbg !2752
  %i.eu = trunc nuw nsw i64 %i.et to i8, !dbg !2755 ; 2 uses
  %i.ev = add i64 %.sroa.04.0.i54, -16, !dbg !2756
  %i.ew = and i64 %.val9, %i.ev, !dbg !2759
  %i.ex = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !2760
  store i8 %i.eu, ptr %i.ex, align 1, !dbg !2763, !noalias !2658
  %i.ey = load ptr, ptr %0, align 8, !dbg !2764, !noalias !2658, !nonnull !14, !noundef !14
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew, !dbg !2766
  %i.fa = getelementptr i8, ptr %i.ez, i64 16, !dbg !2766
  store i8 %i.eu, ptr %i.fa, align 1, !dbg !2768, !noalias !2658
  br label %bb.r, !dbg !2769

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !2770
  %.neg13.i = shl i64 %.neg12.i, 5, !dbg !2770
  %i.fb = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !2772 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !2774 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !dbg !2778, !noalias !2658, !noundef !14
  %i.fe = lshr i64 %i.dt, 57, !dbg !2779
  %i.ff = trunc nuw nsw i64 %i.fe to i8, !dbg !2782 ; 2 uses
  %i.fg = add i64 %.sroa.0.0.i5.i28, -16, !dbg !2783
  %i.fh = and i64 %i.fg, %.val9, !dbg !2786
  store i8 %i.ff, ptr %i.fc, align 1, !dbg !2787, !noalias !2658
  %i.fi = load ptr, ptr %0, align 8, !dbg !2788, !noalias !2658, !nonnull !14, !noundef !14
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fh, !dbg !2790
  %i.fk = getelementptr i8, ptr %i.fj, i64 16, !dbg !2790
  store i8 %i.ff, ptr %i.fk, align 1, !dbg !2792, !noalias !2658
  %i.fl = icmp eq i8 %i.fd, -1, !dbg !2793
  br i1 %i.fl, label %bb.q, label %.preheader47.preheader, !dbg !2793

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2794), !dbg !2797, !noalias !2658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2802), !dbg !2797, !noalias !2658
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dl, align 1, !dbg !2804, !alias.scope !2794, !noalias !2806
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fb, align 1, !dbg !2807, !alias.scope !2802, !noalias !2808
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dl, align 1, !dbg !2809, !alias.scope !2794, !noalias !2806
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fb, align 1, !dbg !2810, !alias.scope !2802, !noalias !2808
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8, !dbg !2811 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2813), !dbg !2797, !noalias !2658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815), !dbg !2797, !noalias !2658
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dn, align 1, !dbg !2804, !alias.scope !2813, !noalias !2817
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.fm, align 1, !dbg !2807, !alias.scope !2815, !noalias !2818
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dn, align 1, !dbg !2809, !alias.scope !2813, !noalias !2817
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.fm, align 1, !dbg !2810, !alias.scope !2815, !noalias !2818
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 16, !dbg !2811 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819), !dbg !2797, !noalias !2658
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1F_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB1J_:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2906, !noalias !2897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2907, !noalias !2897
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !2908

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !2907, !noalias !2909
  br label %common.resume, !dbg !2910

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2911
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !2911, !noalias !2897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2906, !noalias !2897
  store ptr %i.d, ptr %i.c, align 8, !dbg !2912, !noalias !2897
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2912
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2912, !noalias !2897
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2912
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2912, !noalias !2897
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2912
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2912, !noalias !2897
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !2912
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2912, !noalias !2897
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2912
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2912, !noalias !2897
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2912
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2912, !noalias !2897
  %i.x = load ptr, ptr %0, align 8, !dbg !2913, !alias.scope !2916, !noalias !2917, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !2918, !alias.scope !2916, !noalias !2917, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !2919
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !2919
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !2919

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !2921
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !2923
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !2927
  br label %.preheader, !dbg !2928

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !2932
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !2928

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !2933 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !2935
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !2937
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !2941 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !2942    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !2932
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !2928

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !2943, !alias.scope !2916, !noalias !2917
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !2944, !alias.scope !2952, !noalias !2955
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !2943

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !2943
  %i.ai = sub i64 %i.v, %i.ah, !dbg !2957
  store i64 %i.aa, ptr %0, align 8, !dbg !2958, !alias.scope !2952, !noalias !2955
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !2944, !alias.scope !2959, !noalias !2961 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !2958, !alias.scope !2959, !noalias !2961
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2963
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !2958, !alias.scope !2965, !noalias !2967
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !2969
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !2969

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 5, !dbg !2973 ; 2 uses
  %i.am = add i64 %i.al, 32, !dbg !2973
  %i.an = add i64 %i.al, 47, !dbg !2979           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !2979
  tail call void @llvm.assume(i1 %i.ao), !dbg !2981, !noalias !2909
  %i.ap = and i64 %i.an, -32, !dbg !2983          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !2984
  %i.ar = add i64 %i.aq, %i.ap, !dbg !2985        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !2985
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !2987, !noalias !2909
  tail call void @llvm.assume(i1 %i.at), !dbg !2987, !noalias !2909
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !2909
  %i.au = icmp eq i64 %i.ar, 0, !dbg !2989
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !2989

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !2991
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !2993
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !2994, !noalias !2997
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !3004

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2907, !noalias !2897
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !2908

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3005 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !3005 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !3005
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !3006
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3010
  %i.az = zext nneg i16 %i.ay to i64, !dbg !3011
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !3012
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !3014 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !3015    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !3016, !alias.scope !3023, !noalias !3026, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !3028
  %i.bf = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %i.be, !dbg !3033
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -32, !dbg !3034
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit unwind label %bb.f, !dbg !3040 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !3045 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !3048
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !3051, !noalias !3055
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3058
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !3058 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !3062
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3064, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !3045
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit ], [ %i.cb, %.lr.ph.i ], !dbg !3058
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3065
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !3068
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !3069
  %i.bo = and i64 %i.bn, %i.t, !dbg !3069         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !3070
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !3075, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !3076
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3076, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !3078
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !3080
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !3080 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !3083
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !3085
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !3085
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !3086
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3088

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !3089           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !3091
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !3045 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !3048
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !3051, !noalias !3055
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3058
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !3058 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !3062
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3064, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !3092
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !3095 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !3096
  %i.cf = and i64 %i.ce, %i.t, !dbg !3099
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !3100
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !3103, !noalias !2909
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !3104
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !3104
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !3107, !noalias !2909
  %i.cj = load ptr, ptr %0, align 8, !dbg !3108, !alias.scope !2916, !noalias !2917, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !3111
  %.neg61.i.i = shl i64 %.neg.i.i, 5, !dbg !3111
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !3112
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3114
  %.neg63.i.i = shl i64 %.neg62.i.i, 5, !dbg !3114
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !3116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 range(i64 8, 113) 32, i1 false), !dbg !3118, !noalias !2909
  %i.cm = icmp eq i64 %i.bc, 0, !dbg !2919
  br i1 %i.cm, label %._crit_edge64.loopexit, label %.preheader, !dbg !2919

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !3120

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3121), !dbg !3124
  %.val11 = load ptr, ptr %0, align 8, !dbg !3125 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !3127
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !3127

.lr.ph.i16:                                       ; preds = %bb.j
  %i.cn = lshr i64 %i.l, 4, !dbg !3131
  %i.co = and i64 %i.l, 15, !dbg !3136
  %.not10.i.i.i = icmp ne i64 %i.co, 0, !dbg !3137
  %i.cp = zext i1 %.not10.i.i.i to i64, !dbg !3137
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cn, %i.cp, !dbg !3137 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !3127
  %i.cq = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !3127
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !3127

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !3127
  br label %bb.k, !dbg !3127

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3127
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !3127

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cy, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !3127
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !3127
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !3138 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cr, align 16, !dbg !3141
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !3143
  %i.cs = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !3146
  %i.ct = or <2 x i64> %i.cs, splat (i64 -9187201950435737472), !dbg !3146
  store <2 x i64> %i.ct, ptr %i.cr, align 16, !dbg !3148
  br label %._crit_edge.i18, !dbg !3151

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cu = icmp ult i64 %i.l, 16, !dbg !3151
  br i1 %i.cu, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3152, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cy, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3138 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cv, align 16, !dbg !3141
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3143
  %i.cw = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3146
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !3146
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !3148
  %i.cy = add i64 %.sroa.01.08.i, 32, !dbg !3154  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3138
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !3138 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.da, align 16, !dbg !3141
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !3143
  %i.db = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !3146
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !3146
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !3148
  %niter.next.1 = add i64 %niter, 2, !dbg !3127   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3127
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !3127

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3156

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3157
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3162, !noalias !3163
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3165
  store ptr null, ptr %i.de, align 8, !dbg !3165, !noalias !3163
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3165
  store i64 32, ptr %i.df, align 8, !dbg !3165, !noalias !3163
  store ptr %0, ptr %i.a, align 8, !dbg !3165, !noalias !3163
  %i.dg = load i64, ptr %i.i, align 8, !dbg !3167, !alias.scope !3121, !noalias !3169, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dg, -1, !dbg !3170
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3174

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dh, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i54, 1, !dbg !3175
  %i.di = load ptr, ptr %0, align 8, !dbg !3178, !noalias !3169, !nonnull !14, !noundef !14 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i54, !dbg !3180
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !3182, !noalias !3169, !noundef !14
  %.not.i2 = icmp eq i8 %i.dk, -128, !dbg !3182
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !3185

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !3175
  %.neg11.i = shl i64 %.neg.i, 5, !dbg !3186
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %.neg11.i, !dbg !3188 ; 6 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3190

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.dq = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.di, %bb.l ], !dbg !3191
  %i.dr = getelementptr inbounds [32 x i8], ptr %i.dq, i64 %i.dm, !dbg !3195
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -32, !dbg !3198
  %i.dt = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit21 unwind label %bb.m, !dbg !3202 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !3205, !noalias !3169

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !3206, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3206, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dt, !dbg !3207 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !3209
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dv, align 1, !dbg !3212, !noalias !3216
  %i.dw = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !3219
  %i.dx = bitcast <16 x i1> %i.dw to i16, !dbg !3219 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dx, 0, !dbg !3223
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3225, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !3207
  %.lcssa.i27 = phi i16 [ %i.dx, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit21 ], [ %i.eo, %.lr.ph.i31 ], !dbg !3219
  %i.dy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !3226
  %i.dz = zext nneg i16 %i.dy to i64, !dbg !3229
  %i.ea = add i64 %.sroa.0.0.lcssa.i26, %i.dz, !dbg !3230
  %i.eb = and i64 %i.ea, %.val9, !dbg !3230       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eb, !dbg !3231
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !3236, !noundef !14
  %i.ee = icmp sgt i8 %i.ed, -1, !dbg !3237
  br i1 %i.ee, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3237, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !3239
  %i.ef = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !3241
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !3241 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.eg, 0, !dbg !3244
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eg, i1 true), !dbg !3246
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !3246
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !3247
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3249

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit21 ]
  %i.ej = phi i64 [ %i.ek, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1H_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B1L_.exit21 ]
  %i.ek = add i64 %i.ej, 16, !dbg !3250           ; 2 uses
  %i.el = add i64 %i.ek, %.sroa.0.010.i32, !dbg !3252
  %.sroa.0.0.i33 = and i64 %i.el, %.val9, !dbg !3207 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !3209
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.em, align 1, !dbg !3212, !noalias !3216
  %i.en = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !3219
  %i.eo = bitcast <16 x i1> %i.en to i16, !dbg !3219 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eo, 0, !dbg !3223
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3225, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ei, %bb.n ], [ %i.eb, %._crit_edge.i25 ] ; 4 uses
  %i.ep = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !3253
  %i.eq = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !3257
  %i.er = xor i64 %i.eq, %i.ep, !dbg !3260
  %.unshifted.i = and i64 %i.er, %.val9, !dbg !3260
  %i.es = icmp ult i64 %.unshifted.i, 16, !dbg !3260
  br i1 %i.es, label %bb.o, label %bb.p, !dbg !3261, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.et = lshr i64 %i.dt, 57, !dbg !3263
  %i.eu = trunc nuw nsw i64 %i.et to i8, !dbg !3266 ; 2 uses
  %i.ev = add i64 %.sroa.04.0.i54, -16, !dbg !3267
  %i.ew = and i64 %.val9, %i.ev, !dbg !3270
  %i.ex = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !3271
  store i8 %i.eu, ptr %i.ex, align 1, !dbg !3274, !noalias !3169
  %i.ey = load ptr, ptr %0, align 8, !dbg !3275, !noalias !3169, !nonnull !14, !noundef !14
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew, !dbg !3277
  %i.fa = getelementptr i8, ptr %i.ez, i64 16, !dbg !3277
  store i8 %i.eu, ptr %i.fa, align 1, !dbg !3279, !noalias !3169
  br label %bb.r, !dbg !3280

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !3281
  %.neg13.i = shl i64 %.neg12.i, 5, !dbg !3281
  %i.fb = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !3283 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !3285 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !dbg !3289, !noalias !3169, !noundef !14
  %i.fe = lshr i64 %i.dt, 57, !dbg !3290
  %i.ff = trunc nuw nsw i64 %i.fe to i8, !dbg !3293 ; 2 uses
  %i.fg = add i64 %.sroa.0.0.i5.i28, -16, !dbg !3294
  %i.fh = and i64 %i.fg, %.val9, !dbg !3297
  store i8 %i.ff, ptr %i.fc, align 1, !dbg !3298, !noalias !3169
  %i.fi = load ptr, ptr %0, align 8, !dbg !3299, !noalias !3169, !nonnull !14, !noundef !14
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fh, !dbg !3301
  %i.fk = getelementptr i8, ptr %i.fj, i64 16, !dbg !3301
  store i8 %i.ff, ptr %i.fk, align 1, !dbg !3303, !noalias !3169
  %i.fl = icmp eq i8 %i.fd, -1, !dbg !3304
  br i1 %i.fl, label %bb.q, label %.preheader47.preheader, !dbg !3304

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3305), !dbg !3308, !noalias !3169
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3313), !dbg !3308, !noalias !3169
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dl, align 1, !dbg !3315, !alias.scope !3305, !noalias !3317
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fb, align 1, !dbg !3318, !alias.scope !3313, !noalias !3319
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dl, align 1, !dbg !3320, !alias.scope !3305, !noalias !3317
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fb, align 1, !dbg !3321, !alias.scope !3313, !noalias !3319
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8, !dbg !3322 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324), !dbg !3308, !noalias !3169
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3326), !dbg !3308, !noalias !3169
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dn, align 1, !dbg !3315, !alias.scope !3324, !noalias !3328
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.fm, align 1, !dbg !3318, !alias.scope !3326, !noalias !3329
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dn, align 1, !dbg !3320, !alias.scope !3324, !noalias !3328
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.fm, align 1, !dbg !3321, !alias.scope !3326, !noalias !3329
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 16, !dbg !3322 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3330), !dbg !3308, !noalias !3169
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs2g09Ig8GZd6_13polars_stream:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3417, !noalias !3408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3418, !noalias !3408
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !3419

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !3418, !noalias !3420
  br label %common.resume, !dbg !3421

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !3422
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !3422, !noalias !3408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3417, !noalias !3408
  store ptr %i.d, ptr %i.c, align 8, !dbg !3423, !noalias !3408
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3423
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3423, !noalias !3408
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !3423
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3423, !noalias !3408
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !3423
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3423, !noalias !3408
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !3423
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3423, !noalias !3408
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !3423
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3423, !noalias !3408
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !3423
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3423, !noalias !3408
  %i.x = load ptr, ptr %0, align 8, !dbg !3424, !alias.scope !3427, !noalias !3428, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !3429, !alias.scope !3427, !noalias !3428, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !3430
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !3430
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !3430

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !3432
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !3434
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !3438
  br label %.preheader, !dbg !3439

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !3443
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !3439

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !3444 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !3446
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !3448
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !3452 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !3453    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !3443
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !3439

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !3454, !alias.scope !3427, !noalias !3428
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !3455, !alias.scope !3463, !noalias !3466
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !3454

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !3454
  %i.ai = sub i64 %i.v, %i.ah, !dbg !3468
  store i64 %i.aa, ptr %0, align 8, !dbg !3469, !alias.scope !3463, !noalias !3466
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !3455, !alias.scope !3470, !noalias !3472 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !3469, !alias.scope !3470, !noalias !3472
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3474
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !3469, !alias.scope !3476, !noalias !3478
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !3480
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !3480

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 5, !dbg !3484 ; 2 uses
  %i.am = add i64 %i.al, 32, !dbg !3484
  %i.an = add i64 %i.al, 47, !dbg !3490           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !3490
  tail call void @llvm.assume(i1 %i.ao), !dbg !3492, !noalias !3420
  %i.ap = and i64 %i.an, -32, !dbg !3494          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !3495
  %i.ar = add i64 %i.aq, %i.ap, !dbg !3496        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !3496
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !3498, !noalias !3420
  tail call void @llvm.assume(i1 %i.at), !dbg !3498, !noalias !3420
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !3420
  %i.au = icmp eq i64 %i.ar, 0, !dbg !3500
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !3500

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !3502
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !3504
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !3505, !noalias !3508
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !3515

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3418, !noalias !3408
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !3419

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3516 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !3516 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !3516
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !3517
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3521
  %i.az = zext nneg i16 %i.ay to i64, !dbg !3522
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !3523
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !3525 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !3526    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !3527, !alias.scope !3534, !noalias !3537, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !3539
  %i.bf = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %i.be, !dbg !3544
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -32, !dbg !3545
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.f, !dbg !3551 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !3556 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !3559
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !3562, !noalias !3566
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3569
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !3569 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !3573
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3575, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !3556
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.cb, %.lr.ph.i ], !dbg !3569
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3576
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !3579
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !3580
  %i.bo = and i64 %i.bn, %i.t, !dbg !3580         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !3581
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !3586, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !3587
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3587, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !3589
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !3591
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !3591 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !3594
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !3596
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !3596
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !3597
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3599

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !3600           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !3602
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !3556 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !3559
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !3562, !noalias !3566
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3569
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !3569 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !3573
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3575, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !3603
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !3606 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !3607
  %i.cf = and i64 %i.ce, %i.t, !dbg !3610
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !3611
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !3614, !noalias !3420
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !3615
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !3615
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !3618, !noalias !3420
  %i.cj = load ptr, ptr %0, align 8, !dbg !3619, !alias.scope !3427, !noalias !3428, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !3622
  %.neg61.i.i = shl i64 %.neg.i.i, 5, !dbg !3622
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !3623
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3625
  %.neg63.i.i = shl i64 %.neg62.i.i, 5, !dbg !3625
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !3627
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 range(i64 8, 113) 32, i1 false), !dbg !3629, !noalias !3420
  %i.cm = icmp eq i64 %i.bc, 0, !dbg !3430
  br i1 %i.cm, label %._crit_edge64.loopexit, label %.preheader, !dbg !3430

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !3631

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3632), !dbg !3635
  %.val11 = load ptr, ptr %0, align 8, !dbg !3636 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !3638
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !3638

.lr.ph.i16:                                       ; preds = %bb.j
  %i.cn = lshr i64 %i.l, 4, !dbg !3642
  %i.co = and i64 %i.l, 15, !dbg !3647
  %.not10.i.i.i = icmp ne i64 %i.co, 0, !dbg !3648
  %i.cp = zext i1 %.not10.i.i.i to i64, !dbg !3648
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cn, %i.cp, !dbg !3648 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !3638
  %i.cq = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !3638
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !3638

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !3638
  br label %bb.k, !dbg !3638

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !3638
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !3638

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cy, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !3638
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !3638
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !3649 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cr, align 16, !dbg !3652
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !3654
  %i.cs = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !3657
  %i.ct = or <2 x i64> %i.cs, splat (i64 -9187201950435737472), !dbg !3657
  store <2 x i64> %i.ct, ptr %i.cr, align 16, !dbg !3659
  br label %._crit_edge.i18, !dbg !3662

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cu = icmp ult i64 %i.l, 16, !dbg !3662
  br i1 %i.cu, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3663, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cy, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3649 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cv, align 16, !dbg !3652
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3654
  %i.cw = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3657
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !3657
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !3659
  %i.cy = add i64 %.sroa.01.08.i, 32, !dbg !3665  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3649
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !3649 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.da, align 16, !dbg !3652
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !3654
  %i.db = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !3657
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !3657
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !3659
  %niter.next.1 = add i64 %niter, 2, !dbg !3638   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !3638
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !3638

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3667

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3668
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3673, !noalias !3674
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3676
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCs2g09Ig8GZd6_13polars_stream, ptr %i.de, align 8, !dbg !3676, !noalias !3674
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3676
  store i64 32, ptr %i.df, align 8, !dbg !3676, !noalias !3674
  store ptr %0, ptr %i.a, align 8, !dbg !3676, !noalias !3674
  %i.dg = load i64, ptr %i.i, align 8, !dbg !3678, !alias.scope !3632, !noalias !3680, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dg, -1, !dbg !3681
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3685

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dh, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i54, 1, !dbg !3686
  %i.di = load ptr, ptr %0, align 8, !dbg !3689, !noalias !3680, !nonnull !14, !noundef !14 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i54, !dbg !3691
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !3693, !noalias !3680, !noundef !14
  %.not.i2 = icmp eq i8 %i.dk, -128, !dbg !3693
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !3696

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !3686
  %.neg11.i = shl i64 %.neg.i, 5, !dbg !3697
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %.neg11.i, !dbg !3699 ; 6 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3701

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.dq = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.di, %bb.l ], !dbg !3702
  %i.dr = getelementptr inbounds [32 x i8], ptr %i.dq, i64 %i.dm, !dbg !3706
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -32, !dbg !3709
  %i.dt = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 unwind label %bb.m, !dbg !3713 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !3716, !noalias !3680

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !3717, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3717, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dt, !dbg !3718 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !3720
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dv, align 1, !dbg !3723, !noalias !3727
  %i.dw = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !3730
  %i.dx = bitcast <16 x i1> %i.dw to i16, !dbg !3730 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dx, 0, !dbg !3734
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3736, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !3718
  %.lcssa.i27 = phi i16 [ %i.dx, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %i.eo, %.lr.ph.i31 ], !dbg !3730
  %i.dy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !3737
  %i.dz = zext nneg i16 %i.dy to i64, !dbg !3740
  %i.ea = add i64 %.sroa.0.0.lcssa.i26, %i.dz, !dbg !3741
  %i.eb = and i64 %i.ea, %.val9, !dbg !3741       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eb, !dbg !3742
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !3747, !noundef !14
  %i.ee = icmp sgt i8 %i.ed, -1, !dbg !3748
  br i1 %i.ee, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3748, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !3750
  %i.ef = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !3752
  %i.eg = bitcast <16 x i1> %i.ef to i16, !dbg !3752 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.eg, 0, !dbg !3755
  %i.eh = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eg, i1 true), !dbg !3757
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !3757
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !3758
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3760

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.ej = phi i64 [ %i.ek, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.ek = add i64 %i.ej, 16, !dbg !3761           ; 2 uses
  %i.el = add i64 %i.ek, %.sroa.0.010.i32, !dbg !3763
  %.sroa.0.0.i33 = and i64 %i.el, %.val9, !dbg !3718 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !3720
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.em, align 1, !dbg !3723, !noalias !3727
  %i.en = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !3730
  %i.eo = bitcast <16 x i1> %i.en to i16, !dbg !3730 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eo, 0, !dbg !3734
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3736, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ei, %bb.n ], [ %i.eb, %._crit_edge.i25 ] ; 4 uses
  %i.ep = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !3764
  %i.eq = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !3768
  %i.er = xor i64 %i.eq, %i.ep, !dbg !3771
  %.unshifted.i = and i64 %i.er, %.val9, !dbg !3771
  %i.es = icmp ult i64 %.unshifted.i, 16, !dbg !3771
  br i1 %i.es, label %bb.o, label %bb.p, !dbg !3772, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.et = lshr i64 %i.dt, 57, !dbg !3774
  %i.eu = trunc nuw nsw i64 %i.et to i8, !dbg !3777 ; 2 uses
  %i.ev = add i64 %.sroa.04.0.i54, -16, !dbg !3778
  %i.ew = and i64 %.val9, %i.ev, !dbg !3781
  %i.ex = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !3782
  store i8 %i.eu, ptr %i.ex, align 1, !dbg !3785, !noalias !3680
  %i.ey = load ptr, ptr %0, align 8, !dbg !3786, !noalias !3680, !nonnull !14, !noundef !14
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew, !dbg !3788
  %i.fa = getelementptr i8, ptr %i.ez, i64 16, !dbg !3788
  store i8 %i.eu, ptr %i.fa, align 1, !dbg !3790, !noalias !3680
  br label %bb.r, !dbg !3791

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !3792
  %.neg13.i = shl i64 %.neg12.i, 5, !dbg !3792
  %i.fb = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !3794 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !3796 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !dbg !3800, !noalias !3680, !noundef !14
  %i.fe = lshr i64 %i.dt, 57, !dbg !3801
  %i.ff = trunc nuw nsw i64 %i.fe to i8, !dbg !3804 ; 2 uses
  %i.fg = add i64 %.sroa.0.0.i5.i28, -16, !dbg !3805
  %i.fh = and i64 %i.fg, %.val9, !dbg !3808
  store i8 %i.ff, ptr %i.fc, align 1, !dbg !3809, !noalias !3680
  %i.fi = load ptr, ptr %0, align 8, !dbg !3810, !noalias !3680, !nonnull !14, !noundef !14
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fh, !dbg !3812
  %i.fk = getelementptr i8, ptr %i.fj, i64 16, !dbg !3812
  store i8 %i.ff, ptr %i.fk, align 1, !dbg !3814, !noalias !3680
  %i.fl = icmp eq i8 %i.fd, -1, !dbg !3815
  br i1 %i.fl, label %bb.q, label %.preheader47.preheader, !dbg !3815

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3816), !dbg !3819, !noalias !3680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3824), !dbg !3819, !noalias !3680
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dl, align 1, !dbg !3826, !alias.scope !3816, !noalias !3828
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fb, align 1, !dbg !3829, !alias.scope !3824, !noalias !3830
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dl, align 1, !dbg !3831, !alias.scope !3816, !noalias !3828
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fb, align 1, !dbg !3832, !alias.scope !3824, !noalias !3830
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8, !dbg !3833 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835), !dbg !3819, !noalias !3680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3837), !dbg !3819, !noalias !3680
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dn, align 1, !dbg !3826, !alias.scope !3835, !noalias !3839
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.fm, align 1, !dbg !3829, !alias.scope !3837, !noalias !3840
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dn, align 1, !dbg !3831, !alias.scope !3835, !noalias !3839
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.fm, align 1, !dbg !3832, !alias.scope !3837, !noalias !3840
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 16, !dbg !3833 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3841), !dbg !3819, !noalias !3680
end_hunk_5
begin_hunk_6_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs2g09Ig8GZd6_13polars_stream:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3928, !noalias !3919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3929, !noalias !3919
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !3930

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !3929, !noalias !3931
  br label %common.resume, !dbg !3932

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !3933
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !3933, !noalias !3919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3928, !noalias !3919
  store ptr %i.d, ptr %i.c, align 8, !dbg !3934, !noalias !3919
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3934
  store i64 112, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3934, !noalias !3919
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !3934
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3934, !noalias !3919
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !3934
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3934, !noalias !3919
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !3934
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3934, !noalias !3919
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !3934
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3934, !noalias !3919
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !3934
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3934, !noalias !3919
  %i.x = load ptr, ptr %0, align 8, !dbg !3935, !alias.scope !3938, !noalias !3939, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !3940, !alias.scope !3938, !noalias !3939, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !3941
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !3941
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !3941

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !3943
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !3945
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !3949
  br label %.preheader, !dbg !3950

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !3954
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !3950

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !3955 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !3957
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !3959
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !3963 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !3964    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !3954
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !3950

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !3965, !alias.scope !3938, !noalias !3939
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !3966, !alias.scope !3974, !noalias !3977
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !3965

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !3965
  %i.ai = sub i64 %i.v, %i.ah, !dbg !3979
  store i64 %i.aa, ptr %0, align 8, !dbg !3980, !alias.scope !3974, !noalias !3977
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !3966, !alias.scope !3981, !noalias !3983 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !3980, !alias.scope !3981, !noalias !3983
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3985
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !3980, !alias.scope !3987, !noalias !3989
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !3991
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !3991

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 112, !dbg !3995 ; 2 uses
  %i.am = add i64 %i.al, 112, !dbg !3995
  %i.an = add i64 %i.al, 127, !dbg !4001          ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !4001
  tail call void @llvm.assume(i1 %i.ao), !dbg !4003, !noalias !3931
  %i.ap = and i64 %i.an, -16, !dbg !4005          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !4006
  %i.ar = add i64 %i.aq, %i.ap, !dbg !4007        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !4007
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !4009, !noalias !3931
  tail call void @llvm.assume(i1 %i.at), !dbg !4009, !noalias !3931
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !3931
  %i.au = icmp eq i64 %i.ar, 0, !dbg !4011
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !4011

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !4013
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !4015
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !4016, !noalias !4019
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !4026

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3929, !noalias !3919
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !3930

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !4027 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !4027 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !4027
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !4028
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !4032
  %i.az = zext nneg i16 %i.ay to i64, !dbg !4033
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !4034
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !4036 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !4037    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !4038, !alias.scope !4045, !noalias !4048, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !4050
  %i.bf = getelementptr inbounds [112 x i8], ptr %i.bd, i64 %i.be, !dbg !4055
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -112, !dbg !4056
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.f, !dbg !4062 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !4067 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !4070
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !4073, !noalias !4077
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !4080
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !4080 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !4084
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4086, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !4067
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.cb, %.lr.ph.i ], !dbg !4080
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !4087
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !4090
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !4091
  %i.bo = and i64 %i.bn, %i.t, !dbg !4091         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !4092
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !4097, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !4098
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4098, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !4100
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !4102
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !4102 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !4105
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !4107
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !4107
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !4108
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4110

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !4111           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !4113
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !4067 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !4070
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !4073, !noalias !4077
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !4080
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !4080 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !4084
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4086, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !4114
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !4117 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !4118
  %i.cf = and i64 %i.ce, %i.t, !dbg !4121
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !4122
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !4125, !noalias !3931
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !4126
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !4126
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !4129, !noalias !3931
  %i.cj = load ptr, ptr %0, align 8, !dbg !4130, !alias.scope !3938, !noalias !3939, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !4133
  %.neg61.i.i = mul i64 %.neg.i.i, 112, !dbg !4133
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !4134
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !4136
  %.neg63.i.i = mul i64 %.neg62.i.i, 112, !dbg !4136
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !4138
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.cl, ptr noundef nonnull align 1 dereferenceable(112) %i.ck, i64 range(i64 8, 113) 112, i1 false), !dbg !4140, !noalias !3931
  %i.cm = icmp eq i64 %i.bc, 0, !dbg !3941
  br i1 %i.cm, label %._crit_edge64.loopexit, label %.preheader, !dbg !3941

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ee, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !4142

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4143), !dbg !4146
  %.val11 = load ptr, ptr %0, align 8, !dbg !4147 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !4149
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !4149

.lr.ph.i16:                                       ; preds = %bb.j
  %i.cn = lshr i64 %i.l, 4, !dbg !4153
  %i.co = and i64 %i.l, 15, !dbg !4158
  %.not10.i.i.i = icmp ne i64 %i.co, 0, !dbg !4159
  %i.cp = zext i1 %.not10.i.i.i to i64, !dbg !4159
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cn, %i.cp, !dbg !4159 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !4149
  %i.cq = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !4149
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !4149

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !4149
  br label %bb.k, !dbg !4149

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !4149
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !4149

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cy, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !4149
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !4149
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !4160 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cr, align 16, !dbg !4163
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !4165
  %i.cs = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !4168
  %i.ct = or <2 x i64> %i.cs, splat (i64 -9187201950435737472), !dbg !4168
  store <2 x i64> %i.ct, ptr %i.cr, align 16, !dbg !4170
  br label %._crit_edge.i18, !dbg !4173

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cu = icmp ult i64 %i.l, 16, !dbg !4173
  br i1 %i.cu, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4174, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cy, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4160 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cv, align 16, !dbg !4163
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !4165
  %i.cw = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !4168
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !4168
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !4170
  %i.cy = add i64 %.sroa.01.08.i, 32, !dbg !4176  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4160
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !4160 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.da, align 16, !dbg !4163
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !4165
  %i.db = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !4168
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !4168
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !4170
  %niter.next.1 = add i64 %niter, 2, !dbg !4149   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !4149
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !4149

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4178

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !4179
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !4182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4184, !noalias !4185
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4187
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCs2g09Ig8GZd6_13polars_stream, ptr %i.de, align 8, !dbg !4187, !noalias !4185
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4187
  store i64 112, ptr %i.df, align 8, !dbg !4187, !noalias !4185
  store ptr %0, ptr %i.a, align 8, !dbg !4187, !noalias !4185
  %i.dg = load i64, ptr %i.i, align 8, !dbg !4189, !alias.scope !4143, !noalias !4191, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dg, -1, !dbg !4192
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !4196

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dh, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i54, 1, !dbg !4197
  %i.di = load ptr, ptr %0, align 8, !dbg !4200, !noalias !4191, !nonnull !14, !noundef !14 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i54, !dbg !4202
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !4204, !noalias !4191, !noundef !14
  %.not.i2 = icmp eq i8 %i.dk, -128, !dbg !4204
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !4207

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !4197
  %.neg11.i = mul i64 %.neg.i, 112, !dbg !4208
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %.neg11.i, !dbg !4210 ; 16 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 72 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 80 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 88 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 96 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 104 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !4212

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.ea = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.di, %bb.l ], !dbg !4213
  %i.eb = getelementptr inbounds [112 x i8], ptr %i.ea, i64 %i.dm, !dbg !4217
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -112, !dbg !4220
  %i.ed = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ec)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 unwind label %bb.m, !dbg !4224 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !4227, !noalias !4191

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !4228, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !4228, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.ed, !dbg !4229 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !4231
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.ef, align 1, !dbg !4234, !noalias !4238
  %i.eg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !4241
  %i.eh = bitcast <16 x i1> %i.eg to i16, !dbg !4241 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.eh, 0, !dbg !4245
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !4247, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !4229
  %.lcssa.i27 = phi i16 [ %i.eh, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %i.ey, %.lr.ph.i31 ], !dbg !4241
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !4248
  %i.ej = zext nneg i16 %i.ei to i64, !dbg !4251
  %i.ek = add i64 %.sroa.0.0.lcssa.i26, %i.ej, !dbg !4252
  %i.el = and i64 %i.ek, %.val9, !dbg !4252       ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.el, !dbg !4253
  %i.en = load i8, ptr %i.em, align 1, !dbg !4258, !noundef !14
  %i.eo = icmp sgt i8 %i.en, -1, !dbg !4259
  br i1 %i.eo, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !4259, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !4261
  %i.ep = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !4263
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !4263 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.eq, 0, !dbg !4266
  %i.er = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eq, i1 true), !dbg !4268
  %i.es = zext nneg i16 %i.er to i64, !dbg !4268
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !4269
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !4271

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.et = phi i64 [ %i.eu, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.eu = add i64 %i.et, 16, !dbg !4272           ; 2 uses
  %i.ev = add i64 %i.eu, %.sroa.0.010.i32, !dbg !4274
  %.sroa.0.0.i33 = and i64 %i.ev, %.val9, !dbg !4229 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !4231
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.ew, align 1, !dbg !4234, !noalias !4238
  %i.ex = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !4241
  %i.ey = bitcast <16 x i1> %i.ex to i16, !dbg !4241 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.ey, 0, !dbg !4245
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !4247, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.es, %bb.n ], [ %i.el, %._crit_edge.i25 ] ; 4 uses
  %i.ez = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !4275
  %i.fa = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !4279
  %i.fb = xor i64 %i.fa, %i.ez, !dbg !4282
  %.unshifted.i = and i64 %i.fb, %.val9, !dbg !4282
  %i.fc = icmp ult i64 %.unshifted.i, 16, !dbg !4282
  br i1 %i.fc, label %bb.o, label %bb.p, !dbg !4283, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.fd = lshr i64 %i.ed, 57, !dbg !4285
  %i.fe = trunc nuw nsw i64 %i.fd to i8, !dbg !4288 ; 2 uses
  %i.ff = add i64 %.sroa.04.0.i54, -16, !dbg !4289
  %i.fg = and i64 %.val9, %i.ff, !dbg !4292
  %i.fh = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !4293
  store i8 %i.fe, ptr %i.fh, align 1, !dbg !4296, !noalias !4191
  %i.fi = load ptr, ptr %0, align 8, !dbg !4297, !noalias !4191, !nonnull !14, !noundef !14
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fg, !dbg !4299
  %i.fk = getelementptr i8, ptr %i.fj, i64 16, !dbg !4299
  store i8 %i.fe, ptr %i.fk, align 1, !dbg !4301, !noalias !4191
  br label %bb.r, !dbg !4302

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !4303
  %.neg13.i = mul i64 %.neg12.i, 112, !dbg !4303
  %i.fl = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !4305 ; 16 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !4307 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !dbg !4311, !noalias !4191, !noundef !14
  %i.fo = lshr i64 %i.ed, 57, !dbg !4312
  %i.fp = trunc nuw nsw i64 %i.fo to i8, !dbg !4315 ; 2 uses
  %i.fq = add i64 %.sroa.0.0.i5.i28, -16, !dbg !4316
  %i.fr = and i64 %i.fq, %.val9, !dbg !4319
  store i8 %i.fp, ptr %i.fm, align 1, !dbg !4320, !noalias !4191
  %i.fs = load ptr, ptr %0, align 8, !dbg !4321, !noalias !4191, !nonnull !14, !noundef !14
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.fr, !dbg !4323
  %i.fu = getelementptr i8, ptr %i.ft, i64 16, !dbg !4323
  store i8 %i.fp, ptr %i.fu, align 1, !dbg !4325, !noalias !4191
  %i.fv = icmp eq i8 %i.fn, -1, !dbg !4326
  br i1 %i.fv, label %bb.q, label %.preheader47.preheader, !dbg !4326

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4327), !dbg !4330, !noalias !4191
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4335), !dbg !4330, !noalias !4191
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dl, align 1, !dbg !4337, !alias.scope !4327, !noalias !4339
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fl, align 1, !dbg !4340, !alias.scope !4335, !noalias !4341
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dl, align 1, !dbg !4342, !alias.scope !4327, !noalias !4339
end_hunk_6
begin_hunk_7_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4499, !noalias !4490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4500, !noalias !4490
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !4501

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !4500, !noalias !4502
  br label %common.resume, !dbg !4503

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4504
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !4504, !noalias !4490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4499, !noalias !4490
  store ptr %i.d, ptr %i.c, align 8, !dbg !4505, !noalias !4490
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4505
  store i64 112, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4505, !noalias !4490
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4505
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4505, !noalias !4490
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4505
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !4505, !noalias !4490
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !4505
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4505, !noalias !4490
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !4505
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4505, !noalias !4490
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !4505
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4505, !noalias !4490
  %i.x = load ptr, ptr %0, align 8, !dbg !4506, !alias.scope !4509, !noalias !4510, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !4511, !alias.scope !4509, !noalias !4510, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !4512
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !4512
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !4512

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !4514
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !4516
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !4520
  br label %.preheader, !dbg !4521

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !4525
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !4521

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !4526 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !4528
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !4530
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !4534 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !4535    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !4525
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !4521

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !4536, !alias.scope !4509, !noalias !4510
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !4537, !alias.scope !4545, !noalias !4548
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !4536

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !4536
  %i.ai = sub i64 %i.v, %i.ah, !dbg !4550
  store i64 %i.aa, ptr %0, align 8, !dbg !4551, !alias.scope !4545, !noalias !4548
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !4537, !alias.scope !4552, !noalias !4554 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !4551, !alias.scope !4552, !noalias !4554
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4556
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !4551, !alias.scope !4558, !noalias !4560
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !4562
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !4562

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 112, !dbg !4566 ; 2 uses
  %i.am = add i64 %i.al, 112, !dbg !4566
  %i.an = add i64 %i.al, 127, !dbg !4572          ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !4572
  tail call void @llvm.assume(i1 %i.ao), !dbg !4574, !noalias !4502
  %i.ap = and i64 %i.an, -16, !dbg !4576          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !4577
  %i.ar = add i64 %i.aq, %i.ap, !dbg !4578        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !4578
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !4580, !noalias !4502
  tail call void @llvm.assume(i1 %i.at), !dbg !4580, !noalias !4502
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !4502
  %i.au = icmp eq i64 %i.ar, 0, !dbg !4582
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !4582

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !4584
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !4586
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !4587, !noalias !4590
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !4597

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4500, !noalias !4490
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !4501

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !4598 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !4598 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !4598
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !4599
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !4603
  %i.az = zext nneg i16 %i.ay to i64, !dbg !4604
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !4605
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !4607 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !4608    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !4609, !alias.scope !4616, !noalias !4619, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !4621
  %i.bf = getelementptr inbounds [112 x i8], ptr %i.bd, i64 %i.be, !dbg !4626
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -112, !dbg !4627
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit unwind label %bb.f, !dbg !4633 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !4638 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !4641
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !4644, !noalias !4648
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !4651
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !4651 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !4655
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4657, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !4638
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit ], [ %i.cb, %.lr.ph.i ], !dbg !4651
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !4658
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !4661
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !4662
  %i.bo = and i64 %i.bn, %i.t, !dbg !4662         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !4663
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !4668, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !4669
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4669, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !4671
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !4673
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !4673 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !4676
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !4678
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !4678
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !4679
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4681

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !4682           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !4684
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !4638 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !4641
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !4644, !noalias !4648
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !4651
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !4651 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !4655
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4657, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !4685
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !4688 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !4689
  %i.cf = and i64 %i.ce, %i.t, !dbg !4692
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !4693
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !4696, !noalias !4502
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !4697
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !4697
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !4700, !noalias !4502
  %i.cj = load ptr, ptr %0, align 8, !dbg !4701, !alias.scope !4509, !noalias !4510, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !4704
  %.neg61.i.i = mul i64 %.neg.i.i, 112, !dbg !4704
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !4705
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !4707
  %.neg63.i.i = mul i64 %.neg62.i.i, 112, !dbg !4707
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !4709
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.cl, ptr noundef nonnull align 1 dereferenceable(112) %i.ck, i64 range(i64 8, 113) 112, i1 false), !dbg !4711, !noalias !4502
  %i.cm = icmp eq i64 %i.bc, 0, !dbg !4512
  br i1 %i.cm, label %._crit_edge64.loopexit, label %.preheader, !dbg !4512

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ee, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !4713

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4714), !dbg !4717
  %.val11 = load ptr, ptr %0, align 8, !dbg !4718 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !4720
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !4720

.lr.ph.i16:                                       ; preds = %bb.j
  %i.cn = lshr i64 %i.l, 4, !dbg !4724
  %i.co = and i64 %i.l, 15, !dbg !4729
  %.not10.i.i.i = icmp ne i64 %i.co, 0, !dbg !4730
  %i.cp = zext i1 %.not10.i.i.i to i64, !dbg !4730
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cn, %i.cp, !dbg !4730 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !4720
  %i.cq = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !4720
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !4720

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !4720
  br label %bb.k, !dbg !4720

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !4720
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !4720

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cy, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !4720
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !4720
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !4731 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cr, align 16, !dbg !4734
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !4736
  %i.cs = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !4739
  %i.ct = or <2 x i64> %i.cs, splat (i64 -9187201950435737472), !dbg !4739
  store <2 x i64> %i.ct, ptr %i.cr, align 16, !dbg !4741
  br label %._crit_edge.i18, !dbg !4744

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cu = icmp ult i64 %i.l, 16, !dbg !4744
  br i1 %i.cu, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4745, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cy, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4731 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cv, align 16, !dbg !4734
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !4736
  %i.cw = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !4739
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !4739
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !4741
  %i.cy = add i64 %.sroa.01.08.i, 32, !dbg !4747  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4731
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !4731 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.da, align 16, !dbg !4734
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !4736
  %i.db = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !4739
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !4739
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !4741
  %niter.next.1 = add i64 %niter, 2, !dbg !4720   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !4720
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !4720

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4749

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !4750
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !4753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4755, !noalias !4756
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4758
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceB18_, ptr %i.de, align 8, !dbg !4758, !noalias !4756
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4758
  store i64 112, ptr %i.df, align 8, !dbg !4758, !noalias !4756
  store ptr %0, ptr %i.a, align 8, !dbg !4758, !noalias !4756
  %i.dg = load i64, ptr %i.i, align 8, !dbg !4760, !alias.scope !4714, !noalias !4762, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dg, -1, !dbg !4763
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !4767

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dh, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i54, 1, !dbg !4768
  %i.di = load ptr, ptr %0, align 8, !dbg !4771, !noalias !4762, !nonnull !14, !noundef !14 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i54, !dbg !4773
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !4775, !noalias !4762, !noundef !14
  %.not.i2 = icmp eq i8 %i.dk, -128, !dbg !4775
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !4778

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !4768
  %.neg11.i = mul i64 %.neg.i, 112, !dbg !4779
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %.neg11.i, !dbg !4781 ; 16 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 72 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 80 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 88 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 96 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 104 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !4783

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.ea = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.di, %bb.l ], !dbg !4784
  %i.eb = getelementptr inbounds [112 x i8], ptr %i.ea, i64 %i.dm, !dbg !4788
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -112, !dbg !4791
  %i.ed = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ec)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 unwind label %bb.m, !dbg !4795 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !4798, !noalias !4762

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !4799, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !4799, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.ed, !dbg !4800 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !4802
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.ef, align 1, !dbg !4805, !noalias !4809
  %i.eg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !4812
  %i.eh = bitcast <16 x i1> %i.eg to i16, !dbg !4812 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.eh, 0, !dbg !4816
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !4818, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !4800
  %.lcssa.i27 = phi i16 [ %i.eh, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 ], [ %i.ey, %.lr.ph.i31 ], !dbg !4812
  %i.ei = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !4819
  %i.ej = zext nneg i16 %i.ei to i64, !dbg !4822
  %i.ek = add i64 %.sroa.0.0.lcssa.i26, %i.ej, !dbg !4823
  %i.el = and i64 %i.ek, %.val9, !dbg !4823       ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.el, !dbg !4824
  %i.en = load i8, ptr %i.em, align 1, !dbg !4829, !noundef !14
  %i.eo = icmp sgt i8 %i.en, -1, !dbg !4830
  br i1 %i.eo, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !4830, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !4832
  %i.ep = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !4834
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !4834 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.eq, 0, !dbg !4837
  %i.er = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.eq, i1 true), !dbg !4839
  %i.es = zext nneg i16 %i.er to i64, !dbg !4839
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !4840
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !4842

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 ]
  %i.et = phi i64 [ %i.eu, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components10projection19ProjectionTransformEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 ]
  %i.eu = add i64 %i.et, 16, !dbg !4843           ; 2 uses
  %i.ev = add i64 %i.eu, %.sroa.0.010.i32, !dbg !4845
  %.sroa.0.0.i33 = and i64 %i.ev, %.val9, !dbg !4800 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !4802
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.ew, align 1, !dbg !4805, !noalias !4809
  %i.ex = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !4812
  %i.ey = bitcast <16 x i1> %i.ex to i16, !dbg !4812 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.ey, 0, !dbg !4816
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !4818, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.es, %bb.n ], [ %i.el, %._crit_edge.i25 ] ; 4 uses
  %i.ez = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !4846
  %i.fa = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !4850
  %i.fb = xor i64 %i.fa, %i.ez, !dbg !4853
  %.unshifted.i = and i64 %i.fb, %.val9, !dbg !4853
  %i.fc = icmp ult i64 %.unshifted.i, 16, !dbg !4853
  br i1 %i.fc, label %bb.o, label %bb.p, !dbg !4854, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.fd = lshr i64 %i.ed, 57, !dbg !4856
  %i.fe = trunc nuw nsw i64 %i.fd to i8, !dbg !4859 ; 2 uses
  %i.ff = add i64 %.sroa.04.0.i54, -16, !dbg !4860
  %i.fg = and i64 %.val9, %i.ff, !dbg !4863
  %i.fh = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !4864
  store i8 %i.fe, ptr %i.fh, align 1, !dbg !4867, !noalias !4762
  %i.fi = load ptr, ptr %0, align 8, !dbg !4868, !noalias !4762, !nonnull !14, !noundef !14
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fg, !dbg !4870
  %i.fk = getelementptr i8, ptr %i.fj, i64 16, !dbg !4870
  store i8 %i.fe, ptr %i.fk, align 1, !dbg !4872, !noalias !4762
  br label %bb.r, !dbg !4873

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !4874
  %.neg13.i = mul i64 %.neg12.i, 112, !dbg !4874
  %i.fl = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !4876 ; 16 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !4878 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !dbg !4882, !noalias !4762, !noundef !14
  %i.fo = lshr i64 %i.ed, 57, !dbg !4883
  %i.fp = trunc nuw nsw i64 %i.fo to i8, !dbg !4886 ; 2 uses
  %i.fq = add i64 %.sroa.0.0.i5.i28, -16, !dbg !4887
  %i.fr = and i64 %i.fq, %.val9, !dbg !4890
  store i8 %i.fp, ptr %i.fm, align 1, !dbg !4891, !noalias !4762
  %i.fs = load ptr, ptr %0, align 8, !dbg !4892, !noalias !4762, !nonnull !14, !noundef !14
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.fr, !dbg !4894
  %i.fu = getelementptr i8, ptr %i.ft, i64 16, !dbg !4894
  store i8 %i.fp, ptr %i.fu, align 1, !dbg !4896, !noalias !4762
  %i.fv = icmp eq i8 %i.fn, -1, !dbg !4897
  br i1 %i.fv, label %bb.q, label %.preheader47.preheader, !dbg !4897

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4898), !dbg !4901, !noalias !4762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4906), !dbg !4901, !noalias !4762
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dl, align 1, !dbg !4908, !alias.scope !4898, !noalias !4910
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fl, align 1, !dbg !4911, !alias.scope !4906, !noalias !4912
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dl, align 1, !dbg !4913, !alias.scope !4898, !noalias !4910
end_hunk_7
begin_hunk_8_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtB8_3map11make_hasherjBR_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0EB13_:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5070, !noalias !5061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5071, !noalias !5061
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !5072

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !5071, !noalias !5073
  br label %common.resume, !dbg !5074

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !5075
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !5075, !noalias !5061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5070, !noalias !5061
  store ptr %i.d, ptr %i.c, align 8, !dbg !5076, !noalias !5061
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5076
  store i64 72, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5076, !noalias !5061
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5076
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !5076, !noalias !5061
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !5076
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !5076, !noalias !5061
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !5076
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5076, !noalias !5061
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !5076
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5076, !noalias !5061
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !5076
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5076, !noalias !5061
  %i.x = load ptr, ptr %0, align 8, !dbg !5077, !alias.scope !5080, !noalias !5081, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !5082, !alias.scope !5080, !noalias !5081, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !5083
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !5083
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !5083

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !5085
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !5087
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !5091
  br label %.preheader, !dbg !5092

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !5096
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !5092

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !5097 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !5099
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !5101
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !5105 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !5106    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !5096
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !5092

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !5107, !alias.scope !5080, !noalias !5081
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !5108, !alias.scope !5116, !noalias !5119
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !5107

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !5107
  %i.ai = sub i64 %i.v, %i.ah, !dbg !5121
  store i64 %i.aa, ptr %0, align 8, !dbg !5122, !alias.scope !5116, !noalias !5119
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !5108, !alias.scope !5123, !noalias !5125 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !5122, !alias.scope !5123, !noalias !5125
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5127
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !5122, !alias.scope !5129, !noalias !5131
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !5133
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !5133

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 72, !dbg !5137 ; 2 uses
  %i.am = add i64 %i.al, 72, !dbg !5137
  %i.an = add i64 %i.al, 87, !dbg !5143           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !5143
  tail call void @llvm.assume(i1 %i.ao), !dbg !5145, !noalias !5073
  %i.ap = and i64 %i.an, -16, !dbg !5147          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !5148
  %i.ar = add i64 %i.aq, %i.ap, !dbg !5149        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !5149
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !5151, !noalias !5073
  tail call void @llvm.assume(i1 %i.at), !dbg !5151, !noalias !5073
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !5073
  %i.au = icmp eq i64 %i.ar, 0, !dbg !5153
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !5153

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !5155
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !5157
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !5158, !noalias !5161
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !5168

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5071, !noalias !5061
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !5072

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !5169 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !5169 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !5169
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !5170
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !5174
  %i.az = zext nneg i16 %i.ay to i64, !dbg !5175
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !5176
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !5178 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !5179    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !5180, !alias.scope !5187, !noalias !5190, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !5192
  %i.bf = getelementptr inbounds [72 x i8], ptr %i.bd, i64 %i.be, !dbg !5197
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -72, !dbg !5198
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit unwind label %bb.f, !dbg !5204 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !5209 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !5212
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !5215, !noalias !5219
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !5222
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !5222 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !5226
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5228, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !5209
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit ], [ %i.cb, %.lr.ph.i ], !dbg !5222
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !5229
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !5232
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !5233
  %i.bo = and i64 %i.bn, %i.t, !dbg !5233         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !5234
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !5239, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !5240
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !5240, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !5242
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !5244
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !5244 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !5247
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !5249
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !5249
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !5250
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !5252

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !5253           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !5255
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !5209 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !5212
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !5215, !noalias !5219
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !5222
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !5222 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !5226
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5228, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !5256
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !5259 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !5260
  %i.cf = and i64 %i.ce, %i.t, !dbg !5263
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !5264
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !5267, !noalias !5073
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !5268
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !5268
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !5271, !noalias !5073
  %i.cj = load ptr, ptr %0, align 8, !dbg !5272, !alias.scope !5080, !noalias !5081, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !5275
  %.neg61.i.i = mul i64 %.neg.i.i, 72, !dbg !5275
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !5276
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !5278
  %.neg63.i.i = mul i64 %.neg62.i.i, 72, !dbg !5278
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !5280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.cl, ptr noundef nonnull align 1 dereferenceable(72) %i.ck, i64 range(i64 8, 113) 72, i1 false), !dbg !5282, !noalias !5073
  %i.cm = icmp eq i64 %i.bc, 0, !dbg !5083
  br i1 %i.cm, label %._crit_edge64.loopexit, label %.preheader, !dbg !5083

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dz, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !5284

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5285), !dbg !5288
  %.val11 = load ptr, ptr %0, align 8, !dbg !5289 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !5291
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !5291

.lr.ph.i16:                                       ; preds = %bb.j
  %i.cn = lshr i64 %i.l, 4, !dbg !5295
  %i.co = and i64 %i.l, 15, !dbg !5300
  %.not10.i.i.i = icmp ne i64 %i.co, 0, !dbg !5301
  %i.cp = zext i1 %.not10.i.i.i to i64, !dbg !5301
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cn, %i.cp, !dbg !5301 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !5291
  %i.cq = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !5291
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !5291

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !5291
  br label %bb.k, !dbg !5291

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !5291
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !5291

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cy, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !5291
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !5291
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !5302 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cr, align 16, !dbg !5305
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !5307
  %i.cs = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !5310
  %i.ct = or <2 x i64> %i.cs, splat (i64 -9187201950435737472), !dbg !5310
  store <2 x i64> %i.ct, ptr %i.cr, align 16, !dbg !5312
  br label %._crit_edge.i18, !dbg !5315

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cu = icmp ult i64 %i.l, 16, !dbg !5315
  br i1 %i.cu, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !5316, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cy, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !5302 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cv, align 16, !dbg !5305
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !5307
  %i.cw = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !5310
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !5310
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !5312
  %i.cy = add i64 %.sroa.01.08.i, 32, !dbg !5318  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !5302
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16, !dbg !5302 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.da, align 16, !dbg !5305
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !5307
  %i.db = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !5310
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472), !dbg !5310
  store <2 x i64> %i.dc, ptr %i.da, align 16, !dbg !5312
  %niter.next.1 = add i64 %niter, 2, !dbg !5291   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !5291
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !5291

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !5320

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !5321
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !5324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5326, !noalias !5327
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5329
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBd_3map11make_hasherjBW_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceB18_, ptr %i.de, align 8, !dbg !5329, !noalias !5327
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5329
  store i64 72, ptr %i.df, align 8, !dbg !5329, !noalias !5327
  store ptr %0, ptr %i.a, align 8, !dbg !5329, !noalias !5327
  %i.dg = load i64, ptr %i.i, align 8, !dbg !5331, !alias.scope !5285, !noalias !5333, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dg, -1, !dbg !5334
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !5338

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.dh, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dh = add nuw i64 %.sroa.04.0.i54, 1, !dbg !5339
  %i.di = load ptr, ptr %0, align 8, !dbg !5342, !noalias !5333, !nonnull !14, !noundef !14 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.04.0.i54, !dbg !5344
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !5346, !noalias !5333, !noundef !14
  %.not.i2 = icmp eq i8 %i.dk, -128, !dbg !5346
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !5349

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !5339
  %.neg11.i = mul i64 %.neg.i, 72, !dbg !5350
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %.neg11.i, !dbg !5352 ; 11 uses
  %i.dm = sub nsw i64 0, %.sroa.04.0.i54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !5354

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.dv = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.di, %bb.l ], !dbg !5355
  %i.dw = getelementptr inbounds [72 x i8], ptr %i.dv, i64 %i.dm, !dbg !5359
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -72, !dbg !5362
  %i.dy = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dx)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 unwind label %bb.m, !dbg !5366 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !5369, !noalias !5333

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !5370, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !5370, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dy, !dbg !5371 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !5373
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.ea, align 1, !dbg !5376, !noalias !5380
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !5383
  %i.ec = bitcast <16 x i1> %i.eb to i16, !dbg !5383 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.ec, 0, !dbg !5387
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !5389, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !5371
  %.lcssa.i27 = phi i16 [ %i.ec, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 ], [ %i.et, %.lr.ph.i31 ], !dbg !5383
  %i.ed = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !5390
  %i.ee = zext nneg i16 %i.ed to i64, !dbg !5393
  %i.ef = add i64 %.sroa.0.0.lcssa.i26, %i.ee, !dbg !5394
  %i.eg = and i64 %i.ef, %.val9, !dbg !5394       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eg, !dbg !5395
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !5400, !noundef !14
  %i.ej = icmp sgt i8 %i.ei, -1, !dbg !5401
  br i1 %i.ej, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !5401, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !5403
  %i.ek = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !5405
  %i.el = bitcast <16 x i1> %i.ek to i16, !dbg !5405 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.el, 0, !dbg !5408
  %i.em = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.el, i1 true), !dbg !5410
  %i.en = zext nneg i16 %i.em to i64, !dbg !5410
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !5411
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !5413

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 ]
  %i.eo = phi i64 [ %i.ep, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components13row_deletions18ExternalFilterMaskEE14reserve_rehashNCINvNtBa_3map11make_hasherjBT_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0B15_.exit21 ]
  %i.ep = add i64 %i.eo, 16, !dbg !5414           ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.0.010.i32, !dbg !5416
  %.sroa.0.0.i33 = and i64 %i.eq, %.val9, !dbg !5371 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !5373
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.er, align 1, !dbg !5376, !noalias !5380
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !5383
  %i.et = bitcast <16 x i1> %i.es to i16, !dbg !5383 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.et, 0, !dbg !5387
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !5389, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.en, %bb.n ], [ %i.eg, %._crit_edge.i25 ] ; 4 uses
  %i.eu = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !5417
  %i.ev = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !5421
  %i.ew = xor i64 %i.ev, %i.eu, !dbg !5424
  %.unshifted.i = and i64 %i.ew, %.val9, !dbg !5424
  %i.ex = icmp ult i64 %.unshifted.i, 16, !dbg !5424
  br i1 %i.ex, label %bb.o, label %bb.p, !dbg !5425, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ey = lshr i64 %i.dy, 57, !dbg !5427
  %i.ez = trunc nuw nsw i64 %i.ey to i8, !dbg !5430 ; 2 uses
  %i.fa = add i64 %.sroa.04.0.i54, -16, !dbg !5431
  %i.fb = and i64 %.val9, %i.fa, !dbg !5434
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !5435
  store i8 %i.ez, ptr %i.fc, align 1, !dbg !5438, !noalias !5333
  %i.fd = load ptr, ptr %0, align 8, !dbg !5439, !noalias !5333, !nonnull !14, !noundef !14
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fb, !dbg !5441
  %i.ff = getelementptr i8, ptr %i.fe, i64 16, !dbg !5441
  store i8 %i.ez, ptr %i.ff, align 1, !dbg !5443, !noalias !5333
  br label %bb.r, !dbg !5444

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !5445
  %.neg13.i = mul i64 %.neg12.i, 72, !dbg !5445
  %i.fg = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !5447 ; 11 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !5449 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !dbg !5453, !noalias !5333, !noundef !14
  %i.fj = lshr i64 %i.dy, 57, !dbg !5454
  %i.fk = trunc nuw nsw i64 %i.fj to i8, !dbg !5457 ; 2 uses
  %i.fl = add i64 %.sroa.0.0.i5.i28, -16, !dbg !5458
  %i.fm = and i64 %i.fl, %.val9, !dbg !5461
  store i8 %i.fk, ptr %i.fh, align 1, !dbg !5462, !noalias !5333
  %i.fn = load ptr, ptr %0, align 8, !dbg !5463, !noalias !5333, !nonnull !14, !noundef !14
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm, !dbg !5465
  %i.fp = getelementptr i8, ptr %i.fo, i64 16, !dbg !5465
  store i8 %i.fk, ptr %i.fp, align 1, !dbg !5467, !noalias !5333
  %i.fq = icmp eq i8 %i.fi, -1, !dbg !5468
  br i1 %i.fq, label %bb.q, label %.preheader47.preheader, !dbg !5468

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5469), !dbg !5472, !noalias !5333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5477), !dbg !5472, !noalias !5333
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dl, align 1, !dbg !5479, !alias.scope !5469, !noalias !5481
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fg, align 1, !dbg !5482, !alias.scope !5477, !noalias !5483
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dl, align 1, !dbg !5484, !alias.scope !5469, !noalias !5481
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fg, align 1, !dbg !5485, !alias.scope !5477, !noalias !5483
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 8, !dbg !5486 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5488), !dbg !5472, !noalias !5333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5490), !dbg !5472, !noalias !5333
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dn, align 1, !dbg !5479, !alias.scope !5488, !noalias !5492
end_hunk_8
begin_hunk_9_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTjuEE14reserve_rehashNCINvNtB8_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECs2g09Ig8GZd6_13polars_stream:bb.a
bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5611, !noalias !5602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5612, !noalias !5602
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !5613

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.c) #54, !dbg !5612, !noalias !5614
  br label %common.resume, !dbg !5615

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !5616
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !5616, !noalias !5602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5611, !noalias !5602
  store ptr %i.d, ptr %i.c, align 8, !dbg !5617, !noalias !5602
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5617
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5617, !noalias !5602
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5617
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !5617, !noalias !5602
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !5617
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !5617, !noalias !5602
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !5617
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5617, !noalias !5602
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !5617
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5617, !noalias !5602
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !5617
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !5617, !noalias !5602
  %i.x = load ptr, ptr %0, align 8, !dbg !5618, !alias.scope !5621, !noalias !5622, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !5623, !alias.scope !5621, !noalias !5622, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !5624
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !5624
  br i1 %i.z, label %._crit_edge64, label %.preheader.preheader, !dbg !5624

.preheader.preheader:                             ; preds = %bb.g
  %.val745 = load <16 x i8>, ptr %i.x, align 16, !dbg !5626
  %i.ab = icmp sgt <16 x i8> %.val745, splat (i8 -1), !dbg !5628
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !5632
  br label %.preheader, !dbg !5633

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.063 = phi ptr [ %.sroa.038.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.062 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.060 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !5637
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !5633

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.157 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.038.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.157) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.157, i64 16, !dbg !5638 ; 3 uses
  %.val646 = load <16 x i8>, ptr %i.ad, align 16, !dbg !5640
  %i.ae = icmp sgt <16 x i8> %.val646, splat (i8 -1), !dbg !5642
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !5646 ; 2 uses
  %i.ag = add i64 %.sroa.5.156, 16, !dbg !5647    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !5637
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !5633

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.e, align 8, !dbg !5648, !alias.scope !5621, !noalias !5622
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !5649, !alias.scope !5657, !noalias !5660
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64, !dbg !5648

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge64.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre75, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !5648
  %i.ai = sub i64 %i.v, %i.ah, !dbg !5662
  store i64 %i.aa, ptr %0, align 8, !dbg !5663, !alias.scope !5657, !noalias !5660
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !5649, !alias.scope !5664, !noalias !5666 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !5663, !alias.scope !5664, !noalias !5666
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5668
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !5663, !alias.scope !5670, !noalias !5672
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !5674
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !5674

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge64
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !5678 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !5678
  %i.an = add i64 %i.al, 23, !dbg !5684           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !5684
  tail call void @llvm.assume(i1 %i.ao), !dbg !5686, !noalias !5614
  %i.ap = and i64 %i.an, -16, !dbg !5688          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !5689
  %i.ar = add i64 %i.aq, %i.ap, !dbg !5690        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !5690
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !5692, !noalias !5614
  tail call void @llvm.assume(i1 %i.at), !dbg !5692, !noalias !5614
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !5614
  %i.au = icmp eq i64 %i.ar, 0, !dbg !5694
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !5694

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !5696
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !5698
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !5699, !noalias !5702
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !5709

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5612, !noalias !5602
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !5613

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.af, %.noexc4 ], !dbg !5710 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !5710 ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.063, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !5710
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !5711
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !5715
  %i.az = zext nneg i16 %i.ay to i64, !dbg !5716
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !5717
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !5719 ; 2 uses
  %i.bc = add i64 %.sroa.9.061, -1, !dbg !5720    ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !dbg !5721, !alias.scope !5728, !noalias !5731, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !5733
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !5738
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !5739
  %i.bh = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.f, !dbg !5745 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.bh, %i.t, !dbg !5750 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !5753
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bi, align 1, !dbg !5756, !noalias !5760
  %i.bj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !5763
  %i.bk = bitcast <16 x i1> %i.bj to i16, !dbg !5763 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bk, 0, !dbg !5767
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5769, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !5750
  %.lcssa.i = phi i16 [ %i.bk, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.cb, %.lr.ph.i ], !dbg !5763
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !5770
  %i.bm = zext nneg i16 %i.bl to i64, !dbg !5773
  %i.bn = add i64 %.sroa.0.0.lcssa.i, %i.bm, !dbg !5774
  %i.bo = and i64 %i.bn, %i.t, !dbg !5774         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo, !dbg !5775
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !5780, !noundef !14
  %i.br = icmp sgt i8 %i.bq, -1, !dbg !5781
  br i1 %i.br, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !5781, !prof !103

bb.i:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !5783
  %i.bs = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !5785
  %i.bt = bitcast <16 x i1> %i.bs to i16, !dbg !5785 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bt, 0, !dbg !5788
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bt, i1 true), !dbg !5790
  %i.bv = zext nneg i16 %i.bu to i64, !dbg !5790
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !5791
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !5793

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bw = phi i64 [ %i.bx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.bx = add i64 %i.bw, 16, !dbg !5794           ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.0.010.i, !dbg !5796
  %.sroa.0.0.i15 = and i64 %i.by, %i.t, !dbg !5750 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !5753
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bz, align 1, !dbg !5756, !noalias !5760
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !5763
  %i.cb = bitcast <16 x i1> %i.ca to i16, !dbg !5763 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0, !dbg !5767
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5769, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bv, %bb.i ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.cc = lshr i64 %i.bh, 57, !dbg !5797
  %i.cd = trunc nuw nsw i64 %i.cc to i8, !dbg !5800 ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i, -16, !dbg !5801
  %i.cf = and i64 %i.ce, %i.t, !dbg !5804
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !5805
  store i8 %i.cd, ptr %i.cg, align 1, !dbg !5808, !noalias !5614
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cf, !dbg !5809
  %i.ci = getelementptr i8, ptr %i.ch, i64 16, !dbg !5809
  store i8 %i.cd, ptr %i.ci, align 1, !dbg !5812, !noalias !5614
  %i.cj = load ptr, ptr %0, align 8, !dbg !5813, !alias.scope !5621, !noalias !5622, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !5816
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !5816
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.neg61.i.i, !dbg !5817
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !5819
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !5819
  %i.cl = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !5821
  %i.cm = load i64, ptr %i.ck, align 1, !dbg !5823, !noalias !5614
  store i64 %i.cm, ptr %i.cl, align 1, !dbg !5823, !noalias !5614
  %i.cn = icmp eq i64 %i.bc, 0, !dbg !5624
  br i1 %i.cn, label %._crit_edge64.loopexit, label %.preheader, !dbg !5624

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ds, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !5825

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5826), !dbg !5829
  %.val11 = load ptr, ptr %0, align 8, !dbg !5830 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !5832
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !5832

.lr.ph.i16:                                       ; preds = %bb.j
  %i.co = lshr i64 %i.l, 4, !dbg !5836
  %i.cp = and i64 %i.l, 15, !dbg !5841
  %.not10.i.i.i = icmp ne i64 %i.cp, 0, !dbg !5842
  %i.cq = zext i1 %.not10.i.i.i to i64, !dbg !5842
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.co, %i.cq, !dbg !5842 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !5832
  %i.cr = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !5832
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !5832

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !5832
  br label %bb.k, !dbg !5832

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !5832
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !5832

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cz, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !5832
  tail call void @llvm.assume(i1 %lcmp.mod117), !dbg !5832
  %i.cs = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !5843 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cs, align 16, !dbg !5846
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !5848
  %i.ct = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !5851
  %i.cu = or <2 x i64> %i.ct, splat (i64 -9187201950435737472), !dbg !5851
  store <2 x i64> %i.cu, ptr %i.cs, align 16, !dbg !5853
  br label %._crit_edge.i18, !dbg !5856

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cv = icmp ult i64 %i.l, 16, !dbg !5856
  br i1 %i.cv, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !5857, !prof !1064

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.cz, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.k ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !5843 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cw, align 16, !dbg !5846
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !5848
  %i.cx = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !5851
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472), !dbg !5851
  store <2 x i64> %i.cy, ptr %i.cw, align 16, !dbg !5853
  %i.cz = add i64 %.sroa.01.08.i, 32, !dbg !5859  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !5843
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16, !dbg !5843 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.db, align 16, !dbg !5846
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !5848
  %i.dc = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !5851
  %i.dd = or <2 x i64> %i.dc, splat (i64 -9187201950435737472), !dbg !5851
  store <2 x i64> %i.dd, ptr %i.db, align 16, !dbg !5853
  %niter.next.1 = add i64 %niter, 2, !dbg !5832   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !5832
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.k, !dbg !5832

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !5861

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !5862
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !5865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5867, !noalias !5868
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5870
  store ptr null, ptr %i.df, align 8, !dbg !5870, !noalias !5868
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5870
  store i64 8, ptr %i.dg, align 8, !dbg !5870, !noalias !5868
  store ptr %0, ptr %i.a, align 8, !dbg !5870, !noalias !5868
  %i.dh = load i64, ptr %i.i, align 8, !dbg !5872, !alias.scope !5826, !noalias !5874, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dh, -1, !dbg !5875
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !5879

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.di, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.di = add nuw i64 %.sroa.04.0.i54, 1, !dbg !5880
  %i.dj = load ptr, ptr %0, align 8, !dbg !5883, !noalias !5874, !nonnull !14, !noundef !14 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.sroa.04.0.i54, !dbg !5885
  %i.dl = load i8, ptr %i.dk, align 1, !dbg !5887, !noalias !5874, !noundef !14
  %.not.i2 = icmp eq i8 %i.dl, -128, !dbg !5887
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !5890

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !5880
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !5891
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %.neg11.i, !dbg !5893 ; 3 uses
  %i.dn = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !5895

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader47.preheader, %bb.l
  %i.do = phi ptr [ %.pre, %.preheader47.preheader ], [ %i.dj, %bb.l ], !dbg !5896
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dn, !dbg !5900
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8, !dbg !5903
  %i.dr = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRjECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dq)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 unwind label %bb.m, !dbg !5907 ; 3 uses

bb.m:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.s, !dbg !5910, !noalias !5874

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !5911, !nonnull !14, !noundef !14 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !5911, !noundef !14 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dr, !dbg !5912 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !5914
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dt, align 1, !dbg !5917, !noalias !5921
  %i.du = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !5924
  %i.dv = bitcast <16 x i1> %i.du to i16, !dbg !5924 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dv, 0, !dbg !5928
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !5930, !prof !899

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !5912
  %.lcssa.i27 = phi i16 [ %i.dv, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ], [ %i.em, %.lr.ph.i31 ], !dbg !5924
  %i.dw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !5931
  %i.dx = zext nneg i16 %i.dw to i64, !dbg !5934
  %i.dy = add i64 %.sroa.0.0.lcssa.i26, %i.dx, !dbg !5935
  %i.dz = and i64 %i.dy, %.val9, !dbg !5935       ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dz, !dbg !5936
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !5941, !noundef !14
  %i.ec = icmp sgt i8 %i.eb, -1, !dbg !5942
  br i1 %i.ec, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !5942, !prof !103

bb.n:                                             ; preds = %._crit_edge.i25
  %.val72.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !5944
  %i.ed = icmp slt <16 x i8> %.val72.i.i29, zeroinitializer, !dbg !5946
  %i.ee = bitcast <16 x i1> %i.ed to i16, !dbg !5946 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ee, 0, !dbg !5949
  %i.ef = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ee, i1 true), !dbg !5951
  %i.eg = zext nneg i16 %i.ef to i64, !dbg !5951
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !5952
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !5954

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.eh = phi i64 [ %i.ei, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTjuEE14reserve_rehashNCINvNtBa_3map11make_hasherjuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit21 ]
  %i.ei = add i64 %i.eh, 16, !dbg !5955           ; 2 uses
  %i.ej = add i64 %i.ei, %.sroa.0.010.i32, !dbg !5957
  %.sroa.0.0.i33 = and i64 %i.ej, %.val9, !dbg !5912 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !5914
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.ek, align 1, !dbg !5917, !noalias !5921
  %i.el = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !5924
  %i.em = bitcast <16 x i1> %i.el to i16, !dbg !5924 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.em, 0, !dbg !5928
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !5930, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.eg, %bb.n ], [ %i.dz, %._crit_edge.i25 ] ; 4 uses
  %i.en = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !5958
  %i.eo = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !5962
  %i.ep = xor i64 %i.eo, %i.en, !dbg !5965
  %.unshifted.i = and i64 %i.ep, %.val9, !dbg !5965
  %i.eq = icmp ult i64 %.unshifted.i, 16, !dbg !5965
  br i1 %i.eq, label %bb.o, label %bb.p, !dbg !5966, !prof !456

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.er = lshr i64 %i.dr, 57, !dbg !5968
  %i.es = trunc nuw nsw i64 %i.er to i8, !dbg !5971 ; 2 uses
  %i.et = add i64 %.sroa.04.0.i54, -16, !dbg !5972
  %i.eu = and i64 %.val9, %i.et, !dbg !5975
  %i.ev = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !5976
  store i8 %i.es, ptr %i.ev, align 1, !dbg !5979, !noalias !5874
  %i.ew = load ptr, ptr %0, align 8, !dbg !5980, !noalias !5874, !nonnull !14, !noundef !14
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.eu, !dbg !5982
  %i.ey = getelementptr i8, ptr %i.ex, i64 16, !dbg !5982
  store i8 %i.es, ptr %i.ey, align 1, !dbg !5984, !noalias !5874
  br label %bb.r, !dbg !5985

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !5986
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !5986
  %i.ez = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !5988 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !5990 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !dbg !5994, !noalias !5874, !noundef !14
  %i.fc = lshr i64 %i.dr, 57, !dbg !5995
  %i.fd = trunc nuw nsw i64 %i.fc to i8, !dbg !5998 ; 2 uses
  %i.fe = add i64 %.sroa.0.0.i5.i28, -16, !dbg !5999
  %i.ff = and i64 %i.fe, %.val9, !dbg !6002
  store i8 %i.fd, ptr %i.fa, align 1, !dbg !6003, !noalias !5874
  %i.fg = load ptr, ptr %0, align 8, !dbg !6004, !noalias !5874, !nonnull !14, !noundef !14
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.ff, !dbg !6006
  %i.fi = getelementptr i8, ptr %i.fh, i64 16, !dbg !6006
  store i8 %i.fd, ptr %i.fi, align 1, !dbg !6008, !noalias !5874
  %i.fj = icmp eq i8 %i.fb, -1, !dbg !6009
  br i1 %i.fj, label %bb.q, label %.preheader47.preheader, !dbg !6009

.preheader47.preheader:                           ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6010), !dbg !6013, !noalias !5874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6018), !dbg !6013, !noalias !5874
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dm, align 1, !dbg !6020, !alias.scope !6010, !noalias !6022
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ez, align 1, !dbg !6023, !alias.scope !6018, !noalias !6024
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dm, align 1, !dbg !6025, !alias.scope !6010, !noalias !6022
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ez, align 1, !dbg !6026, !alias.scope !6018, !noalias !6024
  %.pre = load ptr, ptr %0, align 8, !dbg !5896, !alias.scope !6027, !noalias !6030
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !5907

bb.q:                                             ; preds = %bb.p
  %i.fk = add i64 %.sroa.04.0.i54, -16, !dbg !6032
  %i.fl = load i64, ptr %i.i, align 8, !dbg !6035, !noalias !5874, !noundef !14
  %i.fm = and i64 %i.fl, %i.fk, !dbg !6036
  %i.fn = load ptr, ptr %0, align 8, !dbg !6037, !noalias !5874, !nonnull !14, !noundef !14
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sroa.04.0.i54, !dbg !6039
  store i8 -1, ptr %i.fo, align 1, !dbg !6041, !noalias !5874
  %i.fp = load ptr, ptr %0, align 8, !dbg !6042, !noalias !5874, !nonnull !14, !noundef !14
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.fm, !dbg !6044
end_hunk_9
begin_hunk_10_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamjE0EB1U_:bb.a
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !6107
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !6107, !noalias !6093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6102, !noalias !6093
  store ptr %i.d, ptr %i.c, align 8, !dbg !6108, !noalias !6093
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6108
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6108, !noalias !6093
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6108
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6108, !noalias !6093
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !6108
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6108, !noalias !6093
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !6108
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6108, !noalias !6093
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !6108
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6108, !noalias !6093
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !6108
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6108, !noalias !6093
  %i.x = load ptr, ptr %0, align 8, !dbg !6109, !alias.scope !6112, !noalias !6113, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !6114, !alias.scope !6112, !noalias !6113, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !6115
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !6115
  br i1 %i.z, label %._crit_edge77, label %.preheader.preheader, !dbg !6115

.preheader.preheader:                             ; preds = %bb.g
  %.val748 = load <16 x i8>, ptr %i.x, align 16, !dbg !6117
  %i.ab = icmp sgt <16 x i8> %.val748, splat (i8 -1), !dbg !6119
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !6123
  br label %.preheader, !dbg !6124

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.076 = phi ptr [ %.sroa.040.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.075 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.074 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.073 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i366 = icmp eq i16 %.sroa.13.073, 0, !dbg !6128
  br i1 %.not.i366, label %.noexc4, label %._crit_edge69, !dbg !6124

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.168 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.040.076, %.preheader ] ; 2 uses
  %.sroa.5.167 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.075, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.168) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.168, i64 16, !dbg !6129 ; 3 uses
  %.val649 = load <16 x i8>, ptr %i.ad, align 16, !dbg !6131
  %i.ae = icmp sgt <16 x i8> %.val649, splat (i8 -1), !dbg !6133
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !6137 ; 2 uses
  %i.ag = add i64 %.sroa.5.167, 16, !dbg !6138    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !6128
  br i1 %.not.i3, label %.noexc4, label %._crit_edge69, !dbg !6124

._crit_edge77.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre96 = load i64, ptr %i.e, align 8, !dbg !6139, !alias.scope !6112, !noalias !6113
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !6140, !alias.scope !6148, !noalias !6151
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge77, !dbg !6139

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge77.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre96, %._crit_edge77.loopexit ], [ 0, %bb.g ], !dbg !6139
  %i.ai = sub i64 %i.v, %i.ah, !dbg !6153
  store i64 %i.aa, ptr %0, align 8, !dbg !6154, !alias.scope !6148, !noalias !6151
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !6140, !alias.scope !6155, !noalias !6157 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !6154, !alias.scope !6155, !noalias !6157
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6159
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !6154, !alias.scope !6161, !noalias !6163
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !6165
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !6165

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge77
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !6169 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !6169
  %i.an = add i64 %i.al, 23, !dbg !6175           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !6175
  tail call void @llvm.assume(i1 %i.ao), !dbg !6177, !noalias !6105
  %i.ap = and i64 %i.an, -16, !dbg !6179          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !6180
  %i.ar = add i64 %i.aq, %i.ap, !dbg !6181        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !6181
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !6183, !noalias !6105
  tail call void @llvm.assume(i1 %i.at), !dbg !6183, !noalias !6105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !6105
  %i.au = icmp eq i64 %i.ar, 0, !dbg !6185
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !6185

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !6187
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !6189
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !6190, !noalias !6193
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !6200

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6103, !noalias !6093
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !6104

._crit_edge69:                                    ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.073, %.preheader ], [ %i.af, %.noexc4 ], !dbg !6201 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.075, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !6201 ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.076, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !6201
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !6202
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !6206
  %i.az = zext nneg i16 %i.ay to i64, !dbg !6207
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !6208
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !6210 ; 2 uses
  %i.bc = add i64 %.sroa.9.074, -1, !dbg !6211    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6212), !dbg !6215
  %i.bd = load ptr, ptr %0, align 8, !dbg !6216, !alias.scope !6212, !noalias !6223, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !6225
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !6230
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !6231
  %.val3.i = load i64, ptr %i.bg, align 8, !dbg !6237, !noalias !6238, !noundef !14 ; 3 uses
  %i.bh = icmp ult i64 %.val3.i, %3, !dbg !6239
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !6239

bb.i:                                             ; preds = %._crit_edge69
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc14 unwind label %bb.f, !dbg !6239

.noexc14:                                         ; preds = %bb.i
  unreachable, !dbg !6239

bb.j:                                             ; preds = %._crit_edge69
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.val3.i, !dbg !6239
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !6239
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !6239, !noalias !6238, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.t, !dbg !6247 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !6250
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !6253, !noalias !6257
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !6260
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !6260 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0, !dbg !6264
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6266, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !6247
  %.lcssa.i = phi i16 [ %i.bn, %bb.j ], [ %i.ce, %.lr.ph.i ], !dbg !6260
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !6267
  %i.bp = zext nneg i16 %i.bo to i64, !dbg !6270
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp, !dbg !6271
  %i.br = and i64 %i.bq, %i.t, !dbg !6271         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br, !dbg !6272
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !6277, !noundef !14
  %i.bu = icmp sgt i8 %i.bt, -1, !dbg !6278
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6278, !prof !103

bb.k:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !6280
  %i.bv = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !6282
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !6282 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0, !dbg !6285
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true), !dbg !6287
  %i.by = zext nneg i16 %i.bx to i64, !dbg !6287
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !6288
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6290

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ca = add i64 %i.bz, 16, !dbg !6291           ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i, !dbg !6293
  %.sroa.0.0.i15 = and i64 %i.cb, %i.t, !dbg !6247 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !6250
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !6253, !noalias !6257
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !6260
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !6260 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0, !dbg !6264
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6266, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %i.bk, 57, !dbg !6294
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !6297 ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16, !dbg !6298
  %i.ci = and i64 %i.ch, %i.t, !dbg !6301
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !6302
  store i8 %i.cg, ptr %i.cj, align 1, !dbg !6305, !noalias !6105
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci, !dbg !6306
  %i.cl = getelementptr i8, ptr %i.ck, i64 16, !dbg !6306
  store i8 %i.cg, ptr %i.cl, align 1, !dbg !6309, !noalias !6105
  %i.cm = load ptr, ptr %0, align 8, !dbg !6310, !alias.scope !6112, !noalias !6113, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !6313
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !6313
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i, !dbg !6314
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !6316
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !6316
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !6318
  %i.cp = load i64, ptr %i.cn, align 1, !dbg !6320, !noalias !6105
  store i64 %i.cp, ptr %i.co, align 1, !dbg !6320, !noalias !6105
  %i.cq = icmp eq i64 %i.bc, 0, !dbg !6115
  br i1 %i.cq, label %._crit_edge77.loopexit, label %.preheader, !dbg !6115

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !6322

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6323), !dbg !6326
  %.val11 = load ptr, ptr %0, align 8, !dbg !6327 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !6329
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !6329

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cr = lshr i64 %i.l, 4, !dbg !6333
  %i.cs = and i64 %i.l, 15, !dbg !6338
  %.not10.i.i.i = icmp ne i64 %i.cs, 0, !dbg !6339
  %i.ct = zext i1 %.not10.i.i.i to i64, !dbg !6339
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct, !dbg !6339 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !6329
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !6329
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !6329

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !6329
  br label %bb.m, !dbg !6329

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6329
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !6329

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dc, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod167 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !6329
  tail call void @llvm.assume(i1 %lcmp.mod167), !dbg !6329
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !6340 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16, !dbg !6343
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !6345
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !6348
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !6348
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !6350
  br label %._crit_edge.i18, !dbg !6353

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.l, 16, !dbg !6353
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !6354, !prof !1064

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dc, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !6340 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16, !dbg !6343
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !6345
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !6348
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472), !dbg !6348
  store <2 x i64> %i.db, ptr %i.cz, align 16, !dbg !6350
  %i.dc = add i64 %.sroa.01.08.i, 32, !dbg !6356  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !6340
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !6340 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16, !dbg !6343
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !6345
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !6348
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !6348
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !6350
  %niter.next.1 = add i64 %niter, 2, !dbg !6329   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !6329
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.m, !dbg !6329

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !6358

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !6359
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !6362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6364, !noalias !6365
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6367
  store ptr null, ptr %i.di, align 8, !dbg !6367, !noalias !6365
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6367
  store i64 8, ptr %i.dj, align 8, !dbg !6367, !noalias !6365
  store ptr %0, ptr %i.a, align 8, !dbg !6367, !noalias !6365
  %i.dk = load i64, ptr %i.i, align 8, !dbg !6369, !alias.scope !6323, !noalias !6371, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dk, -1, !dbg !6372
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65, !dbg !6376

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i64 = phi i64 [ %i.dl, %bb.t ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dl = add nuw i64 %.sroa.04.0.i64, 1, !dbg !6377
  %i.dm = load ptr, ptr %0, align 8, !dbg !6380, !noalias !6371, !nonnull !14, !noundef !14 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i64, !dbg !6382
  %i.do = load i8, ptr %i.dn, align 1, !dbg !6384, !noalias !6371, !noundef !14
  %.not.i2 = icmp eq i8 %i.do, -128, !dbg !6384
  br i1 %.not.i2, label %bb.n, label %bb.t, !dbg !6387

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1, !dbg !6377
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !6388
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg11.i, !dbg !6390 ; 3 uses
  %i.dq = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq, !dbg !6392
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8, !dbg !6397
  %.val3.i2061 = load i64, ptr %i.ds, align 8, !dbg !6401, !noalias !6402, !noundef !14 ; 3 uses
  %i.dt = icmp ult i64 %.val3.i2061, %3, !dbg !6406
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !dbg !6406

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ], !dbg !6401
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc22 unwind label %bb.o, !dbg !6406

.noexc22:                                         ; preds = %._crit_edge
  unreachable, !dbg !6406

bb.o:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.u, !dbg !6408, !noalias !6371

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.dv = phi ptr [ %i.fq, %.preheader50.preheader ], [ %i.dm, %bb.n ] ; 7 uses
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.val3.i2062, !dbg !6406
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16, !dbg !6406
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !6406, !noalias !6409, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !6411, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dy, !dbg !6412 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24, !dbg !6414
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dz, align 1, !dbg !6417, !noalias !6421
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !6424
  %i.eb = bitcast <16 x i1> %i.ea to i16, !dbg !6424 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.eb, 0, !dbg !6428
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !6430, !prof !899

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !6412
  %.lcssa.i29 = phi i16 [ %i.eb, %.lr.ph ], [ %i.es, %.lr.ph.i33 ], !dbg !6424
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !6431
  %i.ed = zext nneg i16 %i.ec to i64, !dbg !6434
  %i.ee = add i64 %.sroa.0.0.lcssa.i28, %i.ed, !dbg !6435
  %i.ef = and i64 %i.ee, %.val9, !dbg !6435       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ef, !dbg !6436
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !6441, !noundef !14
  %i.ei = icmp sgt i8 %i.eh, -1, !dbg !6442
  br i1 %i.ei, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !6442, !prof !103

bb.p:                                             ; preds = %._crit_edge.i27
  %.val72.i.i31 = load <16 x i8>, ptr %i.dv, align 16, !dbg !6444
  %i.ej = icmp slt <16 x i8> %.val72.i.i31, zeroinitializer, !dbg !6446
  %i.ek = bitcast <16 x i1> %i.ej to i16, !dbg !6446 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.ek, 0, !dbg !6449
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ek, i1 true), !dbg !6451
  %i.em = zext nneg i16 %i.el to i64, !dbg !6451
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !6452
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !6454

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %.lr.ph ]
  %i.en = phi i64 [ %i.eo, %.lr.ph.i33 ], [ 0, %.lr.ph ]
  %i.eo = add i64 %i.en, 16, !dbg !6455           ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.0.010.i34, !dbg !6457
  %.sroa.0.0.i35 = and i64 %i.ep, %.val9, !dbg !6412 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35, !dbg !6414
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eq, align 1, !dbg !6417, !noalias !6421
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !6424
  %i.es = bitcast <16 x i1> %i.er to i16, !dbg !6424 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.es, 0, !dbg !6428
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !6430, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.em, %bb.p ], [ %i.ef, %._crit_edge.i27 ] ; 4 uses
  %i.et = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24, !dbg !6458
  %i.eu = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !6462
  %i.ev = xor i64 %i.eu, %i.et, !dbg !6465
  %.unshifted.i = and i64 %i.ev, %.val9, !dbg !6465
  %i.ew = icmp ult i64 %.unshifted.i, 16, !dbg !6465
  br i1 %i.ew, label %bb.q, label %bb.r, !dbg !6466, !prof !456

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ex = lshr i64 %i.dy, 57, !dbg !6468
  %i.ey = trunc nuw nsw i64 %i.ex to i8, !dbg !6471 ; 2 uses
  %i.ez = add i64 %.sroa.04.0.i64, -16, !dbg !6472
  %i.fa = and i64 %.val9, %i.ez, !dbg !6475
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i64, !dbg !6476
  store i8 %i.ey, ptr %i.fb, align 1, !dbg !6479, !noalias !6371
  %i.fc = load ptr, ptr %0, align 8, !dbg !6480, !noalias !6371, !nonnull !14, !noundef !14
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa, !dbg !6482
  %i.fe = getelementptr i8, ptr %i.fd, i64 16, !dbg !6482
  store i8 %i.ey, ptr %i.fe, align 1, !dbg !6484, !noalias !6371
  br label %bb.t, !dbg !6485

bb.r:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !6486
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !6486
  %i.ff = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i, !dbg !6488 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30, !dbg !6490 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !dbg !6494, !noalias !6371, !noundef !14
  %i.fi = lshr i64 %i.dy, 57, !dbg !6495
  %i.fj = trunc nuw nsw i64 %i.fi to i8, !dbg !6498 ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i30, -16, !dbg !6499
  %i.fl = and i64 %i.fk, %.val9, !dbg !6502
  store i8 %i.fj, ptr %i.fg, align 1, !dbg !6503, !noalias !6371
  %i.fm = load ptr, ptr %0, align 8, !dbg !6504, !noalias !6371, !nonnull !14, !noundef !14
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl, !dbg !6506
  %i.fo = getelementptr i8, ptr %i.fn, i64 16, !dbg !6506
  store i8 %i.fj, ptr %i.fo, align 1, !dbg !6508, !noalias !6371
  %i.fp = icmp eq i8 %i.fh, -1, !dbg !6509
  br i1 %i.fp, label %bb.s, label %.preheader50.preheader, !dbg !6509

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6510), !dbg !6513, !noalias !6371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6518), !dbg !6513, !noalias !6371
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 1, !dbg !6520, !alias.scope !6510, !noalias !6522
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ff, align 1, !dbg !6523, !alias.scope !6518, !noalias !6524
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !dbg !6525, !alias.scope !6510, !noalias !6522
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ff, align 1, !dbg !6526, !alias.scope !6518, !noalias !6524
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6527), !dbg !6529
  %i.fq = load ptr, ptr %0, align 8, !dbg !6530, !alias.scope !6527, !noalias !6532, !nonnull !14, !noundef !14 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dq, !dbg !6392
end_hunk_10
begin_hunk_11_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamuE0EB1U_:bb.a
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !6609
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !6609, !noalias !6595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6604, !noalias !6595
  store ptr %i.d, ptr %i.c, align 8, !dbg !6610, !noalias !6595
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6610
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !6610, !noalias !6595
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6610
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !6610, !noalias !6595
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !6610
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !6610, !noalias !6595
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !6610
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6610, !noalias !6595
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !6610
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6610, !noalias !6595
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !6610
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !6610, !noalias !6595
  %i.x = load ptr, ptr %0, align 8, !dbg !6611, !alias.scope !6614, !noalias !6615, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !6616, !alias.scope !6614, !noalias !6615, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !6617
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !6617
  br i1 %i.z, label %._crit_edge77, label %.preheader.preheader, !dbg !6617

.preheader.preheader:                             ; preds = %bb.g
  %.val748 = load <16 x i8>, ptr %i.x, align 16, !dbg !6619
  %i.ab = icmp sgt <16 x i8> %.val748, splat (i8 -1), !dbg !6621
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !6625
  br label %.preheader, !dbg !6626

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.076 = phi ptr [ %.sroa.040.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.075 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.074 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.073 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i366 = icmp eq i16 %.sroa.13.073, 0, !dbg !6630
  br i1 %.not.i366, label %.noexc4, label %._crit_edge69, !dbg !6626

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.168 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.040.076, %.preheader ] ; 2 uses
  %.sroa.5.167 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.075, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.168) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.168, i64 16, !dbg !6631 ; 3 uses
  %.val649 = load <16 x i8>, ptr %i.ad, align 16, !dbg !6633
  %i.ae = icmp sgt <16 x i8> %.val649, splat (i8 -1), !dbg !6635
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !6639 ; 2 uses
  %i.ag = add i64 %.sroa.5.167, 16, !dbg !6640    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !6630
  br i1 %.not.i3, label %.noexc4, label %._crit_edge69, !dbg !6626

._crit_edge77.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre96 = load i64, ptr %i.e, align 8, !dbg !6641, !alias.scope !6614, !noalias !6615
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !6642, !alias.scope !6650, !noalias !6653
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge77, !dbg !6641

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge77.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre96, %._crit_edge77.loopexit ], [ 0, %bb.g ], !dbg !6641
  %i.ai = sub i64 %i.v, %i.ah, !dbg !6655
  store i64 %i.aa, ptr %0, align 8, !dbg !6656, !alias.scope !6650, !noalias !6653
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !6642, !alias.scope !6657, !noalias !6659 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !6656, !alias.scope !6657, !noalias !6659
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6661
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !6656, !alias.scope !6663, !noalias !6665
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !6667
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !6667

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge77
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !6671 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !6671
  %i.an = add i64 %i.al, 23, !dbg !6677           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !6677
  tail call void @llvm.assume(i1 %i.ao), !dbg !6679, !noalias !6607
  %i.ap = and i64 %i.an, -16, !dbg !6681          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !6682
  %i.ar = add i64 %i.aq, %i.ap, !dbg !6683        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !6683
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !6685, !noalias !6607
  tail call void @llvm.assume(i1 %i.at), !dbg !6685, !noalias !6607
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !6607
  %i.au = icmp eq i64 %i.ar, 0, !dbg !6687
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !6687

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !6689
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !6691
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !6692, !noalias !6695
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !6702

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6605, !noalias !6595
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !6606

._crit_edge69:                                    ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.073, %.preheader ], [ %i.af, %.noexc4 ], !dbg !6703 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.075, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !6703 ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.076, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !6703
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !6704
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !6708
  %i.az = zext nneg i16 %i.ay to i64, !dbg !6709
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !6710
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !6712 ; 2 uses
  %i.bc = add i64 %.sroa.9.074, -1, !dbg !6713    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6714), !dbg !6717
  %i.bd = load ptr, ptr %0, align 8, !dbg !6718, !alias.scope !6714, !noalias !6725, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !6727
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !6732
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !6733
  %.val3.i = load i64, ptr %i.bg, align 8, !dbg !6739, !noalias !6740, !noundef !14 ; 3 uses
  %i.bh = icmp ult i64 %.val3.i, %3, !dbg !6741
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !6741

bb.i:                                             ; preds = %._crit_edge69
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc14 unwind label %bb.f, !dbg !6741

.noexc14:                                         ; preds = %bb.i
  unreachable, !dbg !6741

bb.j:                                             ; preds = %._crit_edge69
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i, !dbg !6741
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !6741
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !6741, !noalias !6740, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.t, !dbg !6745 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !6748
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !6751, !noalias !6755
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !6758
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !6758 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0, !dbg !6762
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6764, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !6745
  %.lcssa.i = phi i16 [ %i.bn, %bb.j ], [ %i.ce, %.lr.ph.i ], !dbg !6758
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !6765
  %i.bp = zext nneg i16 %i.bo to i64, !dbg !6768
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp, !dbg !6769
  %i.br = and i64 %i.bq, %i.t, !dbg !6769         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br, !dbg !6770
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !6775, !noundef !14
  %i.bu = icmp sgt i8 %i.bt, -1, !dbg !6776
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6776, !prof !103

bb.k:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !6778
  %i.bv = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !6780
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !6780 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0, !dbg !6783
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true), !dbg !6785
  %i.by = zext nneg i16 %i.bx to i64, !dbg !6785
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !6786
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !6788

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ca = add i64 %i.bz, 16, !dbg !6789           ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i, !dbg !6791
  %.sroa.0.0.i15 = and i64 %i.cb, %i.t, !dbg !6745 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !6748
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !6751, !noalias !6755
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !6758
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !6758 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0, !dbg !6762
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !6764, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %i.bk, 57, !dbg !6792
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !6795 ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16, !dbg !6796
  %i.ci = and i64 %i.ch, %i.t, !dbg !6799
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !6800
  store i8 %i.cg, ptr %i.cj, align 1, !dbg !6803, !noalias !6607
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci, !dbg !6804
  %i.cl = getelementptr i8, ptr %i.ck, i64 16, !dbg !6804
  store i8 %i.cg, ptr %i.cl, align 1, !dbg !6807, !noalias !6607
  %i.cm = load ptr, ptr %0, align 8, !dbg !6808, !alias.scope !6614, !noalias !6615, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !6811
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !6811
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i, !dbg !6812
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !6814
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !6814
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !6816
  %i.cp = load i64, ptr %i.cn, align 1, !dbg !6818, !noalias !6607
  store i64 %i.cp, ptr %i.co, align 1, !dbg !6818, !noalias !6607
  %i.cq = icmp eq i64 %i.bc, 0, !dbg !6617
  br i1 %i.cq, label %._crit_edge77.loopexit, label %.preheader, !dbg !6617

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !6820

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6821), !dbg !6824
  %.val11 = load ptr, ptr %0, align 8, !dbg !6825 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !6827
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !6827

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cr = lshr i64 %i.l, 4, !dbg !6831
  %i.cs = and i64 %i.l, 15, !dbg !6836
  %.not10.i.i.i = icmp ne i64 %i.cs, 0, !dbg !6837
  %i.ct = zext i1 %.not10.i.i.i to i64, !dbg !6837
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct, !dbg !6837 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !6827
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !6827
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !6827

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !6827
  br label %bb.m, !dbg !6827

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !6827
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !6827

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dc, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod167 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !6827
  tail call void @llvm.assume(i1 %lcmp.mod167), !dbg !6827
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !6838 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16, !dbg !6841
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !6843
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !6846
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !6846
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !6848
  br label %._crit_edge.i18, !dbg !6851

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.l, 16, !dbg !6851
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !6852, !prof !1064

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dc, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !6838 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16, !dbg !6841
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !6843
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !6846
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472), !dbg !6846
  store <2 x i64> %i.db, ptr %i.cz, align 16, !dbg !6848
  %i.dc = add i64 %.sroa.01.08.i, 32, !dbg !6854  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !6838
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !6838 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16, !dbg !6841
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !6843
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !6846
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !6846
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !6848
  %niter.next.1 = add i64 %niter, 2, !dbg !6827   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !6827
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.m, !dbg !6827

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !6856

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !6857
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !6860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6862, !noalias !6863
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6865
  store ptr null, ptr %i.di, align 8, !dbg !6865, !noalias !6863
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6865
  store i64 8, ptr %i.dj, align 8, !dbg !6865, !noalias !6863
  store ptr %0, ptr %i.a, align 8, !dbg !6865, !noalias !6863
  %i.dk = load i64, ptr %i.i, align 8, !dbg !6867, !alias.scope !6821, !noalias !6869, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dk, -1, !dbg !6870
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65, !dbg !6874

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i64 = phi i64 [ %i.dl, %bb.t ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dl = add nuw i64 %.sroa.04.0.i64, 1, !dbg !6875
  %i.dm = load ptr, ptr %0, align 8, !dbg !6878, !noalias !6869, !nonnull !14, !noundef !14 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i64, !dbg !6880
  %i.do = load i8, ptr %i.dn, align 1, !dbg !6882, !noalias !6869, !noundef !14
  %.not.i2 = icmp eq i8 %i.do, -128, !dbg !6882
  br i1 %.not.i2, label %bb.n, label %bb.t, !dbg !6885

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1, !dbg !6875
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !6886
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg11.i, !dbg !6888 ; 3 uses
  %i.dq = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq, !dbg !6890
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8, !dbg !6895
  %.val3.i2061 = load i64, ptr %i.ds, align 8, !dbg !6899, !noalias !6900, !noundef !14 ; 3 uses
  %i.dt = icmp ult i64 %.val3.i2061, %3, !dbg !6904
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !dbg !6904

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ], !dbg !6899
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc22 unwind label %bb.o, !dbg !6904

.noexc22:                                         ; preds = %._crit_edge
  unreachable, !dbg !6904

bb.o:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.u, !dbg !6906, !noalias !6869

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.dv = phi ptr [ %i.fq, %.preheader50.preheader ], [ %i.dm, %bb.n ] ; 7 uses
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i2062, !dbg !6904
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16, !dbg !6904
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !6904, !noalias !6907, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !6909, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dy, !dbg !6910 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24, !dbg !6912
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dz, align 1, !dbg !6915, !noalias !6919
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !6922
  %i.eb = bitcast <16 x i1> %i.ea to i16, !dbg !6922 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.eb, 0, !dbg !6926
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !6928, !prof !899

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !6910
  %.lcssa.i29 = phi i16 [ %i.eb, %.lr.ph ], [ %i.es, %.lr.ph.i33 ], !dbg !6922
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !6929
  %i.ed = zext nneg i16 %i.ec to i64, !dbg !6932
  %i.ee = add i64 %.sroa.0.0.lcssa.i28, %i.ed, !dbg !6933
  %i.ef = and i64 %i.ee, %.val9, !dbg !6933       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ef, !dbg !6934
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !6939, !noundef !14
  %i.ei = icmp sgt i8 %i.eh, -1, !dbg !6940
  br i1 %i.ei, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !6940, !prof !103

bb.p:                                             ; preds = %._crit_edge.i27
  %.val72.i.i31 = load <16 x i8>, ptr %i.dv, align 16, !dbg !6942
  %i.ej = icmp slt <16 x i8> %.val72.i.i31, zeroinitializer, !dbg !6944
  %i.ek = bitcast <16 x i1> %i.ej to i16, !dbg !6944 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.ek, 0, !dbg !6947
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ek, i1 true), !dbg !6949
  %i.em = zext nneg i16 %i.el to i64, !dbg !6949
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !6950
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !6952

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %.lr.ph ]
  %i.en = phi i64 [ %i.eo, %.lr.ph.i33 ], [ 0, %.lr.ph ]
  %i.eo = add i64 %i.en, 16, !dbg !6953           ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.0.010.i34, !dbg !6955
  %.sroa.0.0.i35 = and i64 %i.ep, %.val9, !dbg !6910 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35, !dbg !6912
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eq, align 1, !dbg !6915, !noalias !6919
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !6922
  %i.es = bitcast <16 x i1> %i.er to i16, !dbg !6922 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.es, 0, !dbg !6926
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !6928, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.em, %bb.p ], [ %i.ef, %._crit_edge.i27 ] ; 4 uses
  %i.et = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24, !dbg !6956
  %i.eu = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !6960
  %i.ev = xor i64 %i.eu, %i.et, !dbg !6963
  %.unshifted.i = and i64 %i.ev, %.val9, !dbg !6963
  %i.ew = icmp ult i64 %.unshifted.i, 16, !dbg !6963
  br i1 %i.ew, label %bb.q, label %bb.r, !dbg !6964, !prof !456

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ex = lshr i64 %i.dy, 57, !dbg !6966
  %i.ey = trunc nuw nsw i64 %i.ex to i8, !dbg !6969 ; 2 uses
  %i.ez = add i64 %.sroa.04.0.i64, -16, !dbg !6970
  %i.fa = and i64 %.val9, %i.ez, !dbg !6973
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i64, !dbg !6974
  store i8 %i.ey, ptr %i.fb, align 1, !dbg !6977, !noalias !6869
  %i.fc = load ptr, ptr %0, align 8, !dbg !6978, !noalias !6869, !nonnull !14, !noundef !14
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa, !dbg !6980
  %i.fe = getelementptr i8, ptr %i.fd, i64 16, !dbg !6980
  store i8 %i.ey, ptr %i.fe, align 1, !dbg !6982, !noalias !6869
  br label %bb.t, !dbg !6983

bb.r:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !6984
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !6984
  %i.ff = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i, !dbg !6986 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30, !dbg !6988 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !dbg !6992, !noalias !6869, !noundef !14
  %i.fi = lshr i64 %i.dy, 57, !dbg !6993
  %i.fj = trunc nuw nsw i64 %i.fi to i8, !dbg !6996 ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i30, -16, !dbg !6997
  %i.fl = and i64 %i.fk, %.val9, !dbg !7000
  store i8 %i.fj, ptr %i.fg, align 1, !dbg !7001, !noalias !6869
  %i.fm = load ptr, ptr %0, align 8, !dbg !7002, !noalias !6869, !nonnull !14, !noundef !14
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl, !dbg !7004
  %i.fo = getelementptr i8, ptr %i.fn, i64 16, !dbg !7004
  store i8 %i.fj, ptr %i.fo, align 1, !dbg !7006, !noalias !6869
  %i.fp = icmp eq i8 %i.fh, -1, !dbg !7007
  br i1 %i.fp, label %bb.s, label %.preheader50.preheader, !dbg !7007

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7008), !dbg !7011, !noalias !6869
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7016), !dbg !7011, !noalias !6869
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 1, !dbg !7018, !alias.scope !7008, !noalias !7020
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ff, align 1, !dbg !7021, !alias.scope !7016, !noalias !7022
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !dbg !7023, !alias.scope !7008, !noalias !7020
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ff, align 1, !dbg !7024, !alias.scope !7016, !noalias !7022
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7025), !dbg !7027
  %i.fq = load ptr, ptr %0, align 8, !dbg !7028, !alias.scope !7025, !noalias !7030, !nonnull !14, !noundef !14 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dq, !dbg !6890
end_hunk_11
begin_hunk_12_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtCs2mZqlW55729_12polars_utils11small_bytes10SmallBytesNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinks10components15partition_state14PartitionStateE0EB2V_:bb.a
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7107
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !7107, !noalias !7093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7102, !noalias !7093
  store ptr %i.d, ptr %i.c, align 8, !dbg !7108, !noalias !7093
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !7108
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7108, !noalias !7093
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7108
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7108, !noalias !7093
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !7108
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7108, !noalias !7093
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !7108
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7108, !noalias !7093
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !7108
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7108, !noalias !7093
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !7108
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7108, !noalias !7093
  %i.x = load ptr, ptr %0, align 8, !dbg !7109, !alias.scope !7112, !noalias !7113, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !7114, !alias.scope !7112, !noalias !7113, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !7115
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !7115
  br i1 %i.z, label %._crit_edge77, label %.preheader.preheader, !dbg !7115

.preheader.preheader:                             ; preds = %bb.g
  %.val748 = load <16 x i8>, ptr %i.x, align 16, !dbg !7117
  %i.ab = icmp sgt <16 x i8> %.val748, splat (i8 -1), !dbg !7119
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !7123
  br label %.preheader, !dbg !7124

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.076 = phi ptr [ %.sroa.040.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.075 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.074 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.073 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i366 = icmp eq i16 %.sroa.13.073, 0, !dbg !7128
  br i1 %.not.i366, label %.noexc4, label %._crit_edge69, !dbg !7124

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.168 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.040.076, %.preheader ] ; 2 uses
  %.sroa.5.167 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.075, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.168) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.168, i64 16, !dbg !7129 ; 3 uses
  %.val649 = load <16 x i8>, ptr %i.ad, align 16, !dbg !7131
  %i.ae = icmp sgt <16 x i8> %.val649, splat (i8 -1), !dbg !7133
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !7137 ; 2 uses
  %i.ag = add i64 %.sroa.5.167, 16, !dbg !7138    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !7128
  br i1 %.not.i3, label %.noexc4, label %._crit_edge69, !dbg !7124

._crit_edge77.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre96 = load i64, ptr %i.e, align 8, !dbg !7139, !alias.scope !7112, !noalias !7113
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !7140, !alias.scope !7148, !noalias !7151
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge77, !dbg !7139

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge77.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre96, %._crit_edge77.loopexit ], [ 0, %bb.g ], !dbg !7139
  %i.ai = sub i64 %i.v, %i.ah, !dbg !7153
  store i64 %i.aa, ptr %0, align 8, !dbg !7154, !alias.scope !7148, !noalias !7151
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !7140, !alias.scope !7155, !noalias !7157 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !7154, !alias.scope !7155, !noalias !7157
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7159
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !7154, !alias.scope !7161, !noalias !7163
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !7165
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !7165

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge77
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !7169 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !7169
  %i.an = add i64 %i.al, 23, !dbg !7175           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !7175
  tail call void @llvm.assume(i1 %i.ao), !dbg !7177, !noalias !7105
  %i.ap = and i64 %i.an, -16, !dbg !7179          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !7180
  %i.ar = add i64 %i.aq, %i.ap, !dbg !7181        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !7181
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !7183, !noalias !7105
  tail call void @llvm.assume(i1 %i.at), !dbg !7183, !noalias !7105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !7105
  %i.au = icmp eq i64 %i.ar, 0, !dbg !7185
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !7185

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !7187
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !7189
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !7190, !noalias !7193
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !7200

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7103, !noalias !7093
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !7104

._crit_edge69:                                    ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.073, %.preheader ], [ %i.af, %.noexc4 ], !dbg !7201 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.075, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !7201 ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.076, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !7201
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !7202
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !7206
  %i.az = zext nneg i16 %i.ay to i64, !dbg !7207
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !7208
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !7210 ; 2 uses
  %i.bc = add i64 %.sroa.9.074, -1, !dbg !7211    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7212), !dbg !7215
  %i.bd = load ptr, ptr %0, align 8, !dbg !7216, !alias.scope !7212, !noalias !7223, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !7225
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !7230
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !7231
  %.val3.i = load i64, ptr %i.bg, align 8, !dbg !7237, !noalias !7238, !noundef !14 ; 3 uses
  %i.bh = icmp ult i64 %.val3.i, %3, !dbg !7239
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !7239

bb.i:                                             ; preds = %._crit_edge69
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc14 unwind label %bb.f, !dbg !7239

.noexc14:                                         ; preds = %bb.i
  unreachable, !dbg !7239

bb.j:                                             ; preds = %._crit_edge69
  %i.bi = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %.val3.i, !dbg !7239
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136, !dbg !7239
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !7239, !noalias !7238, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.t, !dbg !7243 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !7246
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !7249, !noalias !7253
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !7256
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !7256 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0, !dbg !7260
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7262, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !7243
  %.lcssa.i = phi i16 [ %i.bn, %bb.j ], [ %i.ce, %.lr.ph.i ], !dbg !7256
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !7263
  %i.bp = zext nneg i16 %i.bo to i64, !dbg !7266
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp, !dbg !7267
  %i.br = and i64 %i.bq, %i.t, !dbg !7267         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br, !dbg !7268
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !7273, !noundef !14
  %i.bu = icmp sgt i8 %i.bt, -1, !dbg !7274
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7274, !prof !103

bb.k:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !7276
  %i.bv = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !7278
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !7278 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0, !dbg !7281
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true), !dbg !7283
  %i.by = zext nneg i16 %i.bx to i64, !dbg !7283
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !7284
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7286

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ca = add i64 %i.bz, 16, !dbg !7287           ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i, !dbg !7289
  %.sroa.0.0.i15 = and i64 %i.cb, %i.t, !dbg !7243 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !7246
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !7249, !noalias !7253
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !7256
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !7256 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0, !dbg !7260
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7262, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %i.bk, 57, !dbg !7290
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !7293 ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16, !dbg !7294
  %i.ci = and i64 %i.ch, %i.t, !dbg !7297
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !7298
  store i8 %i.cg, ptr %i.cj, align 1, !dbg !7301, !noalias !7105
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci, !dbg !7302
  %i.cl = getelementptr i8, ptr %i.ck, i64 16, !dbg !7302
  store i8 %i.cg, ptr %i.cl, align 1, !dbg !7305, !noalias !7105
  %i.cm = load ptr, ptr %0, align 8, !dbg !7306, !alias.scope !7112, !noalias !7113, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !7309
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !7309
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i, !dbg !7310
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !7312
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !7312
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !7314
  %i.cp = load i64, ptr %i.cn, align 1, !dbg !7316, !noalias !7105
  store i64 %i.cp, ptr %i.co, align 1, !dbg !7316, !noalias !7105
  %i.cq = icmp eq i64 %i.bc, 0, !dbg !7115
  br i1 %i.cq, label %._crit_edge77.loopexit, label %.preheader, !dbg !7115

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !7318

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7319), !dbg !7322
  %.val11 = load ptr, ptr %0, align 8, !dbg !7323 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !7325
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !7325

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cr = lshr i64 %i.l, 4, !dbg !7329
  %i.cs = and i64 %i.l, 15, !dbg !7334
  %.not10.i.i.i = icmp ne i64 %i.cs, 0, !dbg !7335
  %i.ct = zext i1 %.not10.i.i.i to i64, !dbg !7335
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct, !dbg !7335 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !7325
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !7325
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !7325

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !7325
  br label %bb.m, !dbg !7325

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7325
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !7325

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dc, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod167 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !7325
  tail call void @llvm.assume(i1 %lcmp.mod167), !dbg !7325
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !7336 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16, !dbg !7339
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !7341
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !7344
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !7344
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !7346
  br label %._crit_edge.i18, !dbg !7349

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.l, 16, !dbg !7349
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !7350, !prof !1064

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dc, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !7336 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16, !dbg !7339
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !7341
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !7344
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472), !dbg !7344
  store <2 x i64> %i.db, ptr %i.cz, align 16, !dbg !7346
  %i.dc = add i64 %.sroa.01.08.i, 32, !dbg !7352  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !7336
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !7336 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16, !dbg !7339
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !7341
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !7344
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !7344
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !7346
  %niter.next.1 = add i64 %niter, 2, !dbg !7325   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !7325
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.m, !dbg !7325

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !7354

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !7355
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !7358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7360, !noalias !7361
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7363
  store ptr null, ptr %i.di, align 8, !dbg !7363, !noalias !7361
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7363
  store i64 8, ptr %i.dj, align 8, !dbg !7363, !noalias !7361
  store ptr %0, ptr %i.a, align 8, !dbg !7363, !noalias !7361
  %i.dk = load i64, ptr %i.i, align 8, !dbg !7365, !alias.scope !7319, !noalias !7367, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dk, -1, !dbg !7368
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65, !dbg !7372

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i64 = phi i64 [ %i.dl, %bb.t ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dl = add nuw i64 %.sroa.04.0.i64, 1, !dbg !7373
  %i.dm = load ptr, ptr %0, align 8, !dbg !7376, !noalias !7367, !nonnull !14, !noundef !14 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i64, !dbg !7378
  %i.do = load i8, ptr %i.dn, align 1, !dbg !7380, !noalias !7367, !noundef !14
  %.not.i2 = icmp eq i8 %i.do, -128, !dbg !7380
  br i1 %.not.i2, label %bb.n, label %bb.t, !dbg !7383

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1, !dbg !7373
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !7384
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg11.i, !dbg !7386 ; 3 uses
  %i.dq = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq, !dbg !7388
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8, !dbg !7393
  %.val3.i2061 = load i64, ptr %i.ds, align 8, !dbg !7397, !noalias !7398, !noundef !14 ; 3 uses
  %i.dt = icmp ult i64 %.val3.i2061, %3, !dbg !7402
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !dbg !7402

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ], !dbg !7397
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc22 unwind label %bb.o, !dbg !7402

.noexc22:                                         ; preds = %._crit_edge
  unreachable, !dbg !7402

bb.o:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.u, !dbg !7404, !noalias !7367

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.dv = phi ptr [ %i.fq, %.preheader50.preheader ], [ %i.dm, %bb.n ] ; 7 uses
  %i.dw = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %.val3.i2062, !dbg !7402
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136, !dbg !7402
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !7402, !noalias !7405, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !7407, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dy, !dbg !7408 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24, !dbg !7410
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dz, align 1, !dbg !7413, !noalias !7417
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !7420
  %i.eb = bitcast <16 x i1> %i.ea to i16, !dbg !7420 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.eb, 0, !dbg !7424
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !7426, !prof !899

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !7408
  %.lcssa.i29 = phi i16 [ %i.eb, %.lr.ph ], [ %i.es, %.lr.ph.i33 ], !dbg !7420
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !7427
  %i.ed = zext nneg i16 %i.ec to i64, !dbg !7430
  %i.ee = add i64 %.sroa.0.0.lcssa.i28, %i.ed, !dbg !7431
  %i.ef = and i64 %i.ee, %.val9, !dbg !7431       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ef, !dbg !7432
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !7437, !noundef !14
  %i.ei = icmp sgt i8 %i.eh, -1, !dbg !7438
  br i1 %i.ei, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !7438, !prof !103

bb.p:                                             ; preds = %._crit_edge.i27
  %.val72.i.i31 = load <16 x i8>, ptr %i.dv, align 16, !dbg !7440
  %i.ej = icmp slt <16 x i8> %.val72.i.i31, zeroinitializer, !dbg !7442
  %i.ek = bitcast <16 x i1> %i.ej to i16, !dbg !7442 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.ek, 0, !dbg !7445
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ek, i1 true), !dbg !7447
  %i.em = zext nneg i16 %i.el to i64, !dbg !7447
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !7448
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !7450

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %.lr.ph ]
  %i.en = phi i64 [ %i.eo, %.lr.ph.i33 ], [ 0, %.lr.ph ]
  %i.eo = add i64 %i.en, 16, !dbg !7451           ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.0.010.i34, !dbg !7453
  %.sroa.0.0.i35 = and i64 %i.ep, %.val9, !dbg !7408 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35, !dbg !7410
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eq, align 1, !dbg !7413, !noalias !7417
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !7420
  %i.es = bitcast <16 x i1> %i.er to i16, !dbg !7420 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.es, 0, !dbg !7424
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !7426, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.em, %bb.p ], [ %i.ef, %._crit_edge.i27 ] ; 4 uses
  %i.et = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24, !dbg !7454
  %i.eu = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !7458
  %i.ev = xor i64 %i.eu, %i.et, !dbg !7461
  %.unshifted.i = and i64 %i.ev, %.val9, !dbg !7461
  %i.ew = icmp ult i64 %.unshifted.i, 16, !dbg !7461
  br i1 %i.ew, label %bb.q, label %bb.r, !dbg !7462, !prof !456

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ex = lshr i64 %i.dy, 57, !dbg !7464
  %i.ey = trunc nuw nsw i64 %i.ex to i8, !dbg !7467 ; 2 uses
  %i.ez = add i64 %.sroa.04.0.i64, -16, !dbg !7468
  %i.fa = and i64 %.val9, %i.ez, !dbg !7471
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i64, !dbg !7472
  store i8 %i.ey, ptr %i.fb, align 1, !dbg !7475, !noalias !7367
  %i.fc = load ptr, ptr %0, align 8, !dbg !7476, !noalias !7367, !nonnull !14, !noundef !14
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa, !dbg !7478
  %i.fe = getelementptr i8, ptr %i.fd, i64 16, !dbg !7478
  store i8 %i.ey, ptr %i.fe, align 1, !dbg !7480, !noalias !7367
  br label %bb.t, !dbg !7481

bb.r:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !7482
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !7482
  %i.ff = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i, !dbg !7484 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30, !dbg !7486 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !dbg !7490, !noalias !7367, !noundef !14
  %i.fi = lshr i64 %i.dy, 57, !dbg !7491
  %i.fj = trunc nuw nsw i64 %i.fi to i8, !dbg !7494 ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i30, -16, !dbg !7495
  %i.fl = and i64 %i.fk, %.val9, !dbg !7498
  store i8 %i.fj, ptr %i.fg, align 1, !dbg !7499, !noalias !7367
  %i.fm = load ptr, ptr %0, align 8, !dbg !7500, !noalias !7367, !nonnull !14, !noundef !14
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl, !dbg !7502
  %i.fo = getelementptr i8, ptr %i.fn, i64 16, !dbg !7502
  store i8 %i.fj, ptr %i.fo, align 1, !dbg !7504, !noalias !7367
  %i.fp = icmp eq i8 %i.fh, -1, !dbg !7505
  br i1 %i.fp, label %bb.s, label %.preheader50.preheader, !dbg !7505

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7506), !dbg !7509, !noalias !7367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7514), !dbg !7509, !noalias !7367
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 1, !dbg !7516, !alias.scope !7506, !noalias !7518
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ff, align 1, !dbg !7519, !alias.scope !7514, !noalias !7520
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !dbg !7521, !alias.scope !7506, !noalias !7518
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ff, align 1, !dbg !7522, !alias.scope !7514, !noalias !7520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7523), !dbg !7525
  %i.fq = load ptr, ptr %0, align 8, !dbg !7526, !alias.scope !7523, !noalias !7528, !nonnull !14, !noundef !14 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dq, !dbg !7388
end_hunk_12
begin_hunk_13_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashmNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE0ECs2g09Ig8GZd6_13polars_stream:bb.a
bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !7605
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !7605, !noalias !7591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7600, !noalias !7591
  store ptr %i.d, ptr %i.c, align 8, !dbg !7606, !noalias !7591
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !7606
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !7606, !noalias !7591
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !7606
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !7606, !noalias !7591
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !7606
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !7606, !noalias !7591
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !7606
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7606, !noalias !7591
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !7606
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7606, !noalias !7591
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !7606
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !7606, !noalias !7591
  %i.x = load ptr, ptr %0, align 8, !dbg !7607, !alias.scope !7610, !noalias !7611, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !7612, !alias.scope !7610, !noalias !7611, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !7613
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !7613
  br i1 %i.z, label %._crit_edge77, label %.preheader.preheader, !dbg !7613

.preheader.preheader:                             ; preds = %bb.g
  %.val748 = load <16 x i8>, ptr %i.x, align 16, !dbg !7615
  %i.ab = icmp sgt <16 x i8> %.val748, splat (i8 -1), !dbg !7617
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !7621
  br label %.preheader, !dbg !7622

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.076 = phi ptr [ %.sroa.040.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.075 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.074 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.073 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i366 = icmp eq i16 %.sroa.13.073, 0, !dbg !7626
  br i1 %.not.i366, label %.noexc4, label %._crit_edge69, !dbg !7622

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.168 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.040.076, %.preheader ] ; 2 uses
  %.sroa.5.167 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.075, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.168) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.168, i64 16, !dbg !7627 ; 3 uses
  %.val649 = load <16 x i8>, ptr %i.ad, align 16, !dbg !7629
  %i.ae = icmp sgt <16 x i8> %.val649, splat (i8 -1), !dbg !7631
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !7635 ; 2 uses
  %i.ag = add i64 %.sroa.5.167, 16, !dbg !7636    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !7626
  br i1 %.not.i3, label %.noexc4, label %._crit_edge69, !dbg !7622

._crit_edge77.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre96 = load i64, ptr %i.e, align 8, !dbg !7637, !alias.scope !7610, !noalias !7611
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !7638, !alias.scope !7646, !noalias !7649
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge77, !dbg !7637

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge77.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre96, %._crit_edge77.loopexit ], [ 0, %bb.g ], !dbg !7637
  %i.ai = sub i64 %i.v, %i.ah, !dbg !7651
  store i64 %i.aa, ptr %0, align 8, !dbg !7652, !alias.scope !7646, !noalias !7649
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !7638, !alias.scope !7653, !noalias !7655 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !7652, !alias.scope !7653, !noalias !7655
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7657
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !7652, !alias.scope !7659, !noalias !7661
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !7663
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !7663

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge77
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !7667 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !7667
  %i.an = add i64 %i.al, 23, !dbg !7673           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !7673
  tail call void @llvm.assume(i1 %i.ao), !dbg !7675, !noalias !7603
  %i.ap = and i64 %i.an, -16, !dbg !7677          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !7678
  %i.ar = add i64 %i.aq, %i.ap, !dbg !7679        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !7679
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !7681, !noalias !7603
  tail call void @llvm.assume(i1 %i.at), !dbg !7681, !noalias !7603
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !7603
  %i.au = icmp eq i64 %i.ar, 0, !dbg !7683
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !7683

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !7685
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !7687
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !7688, !noalias !7691
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !7698

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7601, !noalias !7591
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !7602

._crit_edge69:                                    ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.073, %.preheader ], [ %i.af, %.noexc4 ], !dbg !7699 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.075, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !7699 ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.076, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !7699
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !7700
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !7704
  %i.az = zext nneg i16 %i.ay to i64, !dbg !7705
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !7706
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !7708 ; 2 uses
  %i.bc = add i64 %.sroa.9.074, -1, !dbg !7709    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7710), !dbg !7713
  %i.bd = load ptr, ptr %0, align 8, !dbg !7714, !alias.scope !7710, !noalias !7721, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !7723
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !7728
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !7729
  %.val3.i = load i64, ptr %i.bg, align 8, !dbg !7735, !noalias !7736, !noundef !14 ; 3 uses
  %i.bh = icmp ult i64 %.val3.i, %3, !dbg !7737
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !7737

bb.i:                                             ; preds = %._crit_edge69
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc14 unwind label %bb.f, !dbg !7737

.noexc14:                                         ; preds = %bb.i
  unreachable, !dbg !7737

bb.j:                                             ; preds = %._crit_edge69
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.val3.i, !dbg !7737
  %i.bj = load i64, ptr %i.bi, align 8, !dbg !7737, !noalias !7736, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bj, %i.t, !dbg !7741 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !7744
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bk, align 1, !dbg !7747, !noalias !7751
  %i.bl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !7754
  %i.bm = bitcast <16 x i1> %i.bl to i16, !dbg !7754 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bm, 0, !dbg !7758
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7760, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !7741
  %.lcssa.i = phi i16 [ %i.bm, %bb.j ], [ %i.cd, %.lr.ph.i ], !dbg !7754
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !7761
  %i.bo = zext nneg i16 %i.bn to i64, !dbg !7764
  %i.bp = add i64 %.sroa.0.0.lcssa.i, %i.bo, !dbg !7765
  %i.bq = and i64 %i.bp, %i.t, !dbg !7765         ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bq, !dbg !7766
  %i.bs = load i8, ptr %i.br, align 1, !dbg !7771, !noundef !14
  %i.bt = icmp sgt i8 %i.bs, -1, !dbg !7772
  br i1 %i.bt, label %bb.k, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7772, !prof !103

bb.k:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !7774
  %i.bu = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !7776
  %i.bv = bitcast <16 x i1> %i.bu to i16, !dbg !7776 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bv, 0, !dbg !7779
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bv, i1 true), !dbg !7781
  %i.bx = zext nneg i16 %i.bw to i64, !dbg !7781
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !7782
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !7784

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.by = phi i64 [ %i.bz, %.lr.ph.i ], [ 0, %bb.j ]
  %i.bz = add i64 %i.by, 16, !dbg !7785           ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.0.010.i, !dbg !7787
  %.sroa.0.0.i15 = and i64 %i.ca, %i.t, !dbg !7741 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !7744
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cb, align 1, !dbg !7747, !noalias !7751
  %i.cc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !7754
  %i.cd = bitcast <16 x i1> %i.cc to i16, !dbg !7754 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cd, 0, !dbg !7758
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !7760, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bx, %bb.k ], [ %i.bq, %._crit_edge.i ] ; 3 uses
  %i.ce = lshr i64 %i.bj, 57, !dbg !7788
  %i.cf = trunc nuw nsw i64 %i.ce to i8, !dbg !7791 ; 2 uses
  %i.cg = add i64 %.sroa.0.0.i5.i, -16, !dbg !7792
  %i.ch = and i64 %i.cg, %i.t, !dbg !7795
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !7796
  store i8 %i.cf, ptr %i.ci, align 1, !dbg !7799, !noalias !7603
  %i.cj = getelementptr i8, ptr %i.q, i64 %i.ch, !dbg !7800
  %i.ck = getelementptr i8, ptr %i.cj, i64 16, !dbg !7800
  store i8 %i.cf, ptr %i.ck, align 1, !dbg !7803, !noalias !7603
  %i.cl = load ptr, ptr %0, align 8, !dbg !7804, !alias.scope !7610, !noalias !7611, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !7807
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !7807
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %.neg61.i.i, !dbg !7808
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !7810
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !7810
  %i.cn = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !7812
  %i.co = load i64, ptr %i.cm, align 1, !dbg !7814, !noalias !7603
  store i64 %i.co, ptr %i.cn, align 1, !dbg !7814, !noalias !7603
  %i.cp = icmp eq i64 %i.bc, 0, !dbg !7613
  br i1 %i.cp, label %._crit_edge77.loopexit, label %.preheader, !dbg !7613

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dt, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !7816

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7817), !dbg !7820
  %.val11 = load ptr, ptr %0, align 8, !dbg !7821 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !7823
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !7823

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cq = lshr i64 %i.l, 4, !dbg !7827
  %i.cr = and i64 %i.l, 15, !dbg !7832
  %.not10.i.i.i = icmp ne i64 %i.cr, 0, !dbg !7833
  %i.cs = zext i1 %.not10.i.i.i to i64, !dbg !7833
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cq, %i.cs, !dbg !7833 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !7823
  %i.ct = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !7823
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !7823

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !7823
  br label %bb.m, !dbg !7823

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !7823
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !7823

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.db, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod167 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !7823
  tail call void @llvm.assume(i1 %lcmp.mod167), !dbg !7823
  %i.cu = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !7834 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cu, align 16, !dbg !7837
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !7839
  %i.cv = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !7842
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472), !dbg !7842
  store <2 x i64> %i.cw, ptr %i.cu, align 16, !dbg !7844
  br label %._crit_edge.i18, !dbg !7847

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cx = icmp ult i64 %i.l, 16, !dbg !7847
  br i1 %i.cx, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !7848, !prof !1064

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.db, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.m ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !7834 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cy, align 16, !dbg !7837
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !7839
  %i.cz = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !7842
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472), !dbg !7842
  store <2 x i64> %i.da, ptr %i.cy, align 16, !dbg !7844
  %i.db = add i64 %.sroa.01.08.i, 32, !dbg !7850  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !7834
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !7834 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dd, align 16, !dbg !7837
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !7839
  %i.de = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !7842
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472), !dbg !7842
  store <2 x i64> %i.df, ptr %i.dd, align 16, !dbg !7844
  %niter.next.1 = add i64 %niter, 2, !dbg !7823   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !7823
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.m, !dbg !7823

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !7852

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !7853
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !7856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7858, !noalias !7859
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7861
  store ptr null, ptr %i.dh, align 8, !dbg !7861, !noalias !7859
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7861
  store i64 8, ptr %i.di, align 8, !dbg !7861, !noalias !7859
  store ptr %0, ptr %i.a, align 8, !dbg !7861, !noalias !7859
  %i.dj = load i64, ptr %i.i, align 8, !dbg !7863, !alias.scope !7817, !noalias !7865, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dj, -1, !dbg !7866
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65, !dbg !7870

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i64 = phi i64 [ %i.dk, %bb.t ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dk = add nuw i64 %.sroa.04.0.i64, 1, !dbg !7871
  %i.dl = load ptr, ptr %0, align 8, !dbg !7874, !noalias !7865, !nonnull !14, !noundef !14 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i64, !dbg !7876
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !7878, !noalias !7865, !noundef !14
  %.not.i2 = icmp eq i8 %i.dn, -128, !dbg !7878
  br i1 %.not.i2, label %bb.n, label %bb.t, !dbg !7881

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1, !dbg !7871
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !7882
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %.neg11.i, !dbg !7884 ; 3 uses
  %i.dp = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dp, !dbg !7886
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8, !dbg !7891
  %.val3.i2061 = load i64, ptr %i.dr, align 8, !dbg !7895, !noalias !7896, !noundef !14 ; 3 uses
  %i.ds = icmp ult i64 %.val3.i2061, %3, !dbg !7900
  br i1 %i.ds, label %.lr.ph, label %._crit_edge, !dbg !7900

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ], !dbg !7895
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc22 unwind label %bb.o, !dbg !7900

.noexc22:                                         ; preds = %._crit_edge
  unreachable, !dbg !7900

bb.o:                                             ; preds = %._crit_edge
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.u, !dbg !7902, !noalias !7865

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.du = phi ptr [ %i.fo, %.preheader50.preheader ], [ %i.dl, %bb.n ] ; 7 uses
  %i.dv = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.val3.i2062, !dbg !7900
  %i.dw = load i64, ptr %i.dv, align 8, !dbg !7900, !noalias !7903, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !7905, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dw, !dbg !7906 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.0.07.i24, !dbg !7908
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dx, align 1, !dbg !7911, !noalias !7915
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !7918
  %i.dz = bitcast <16 x i1> %i.dy to i16, !dbg !7918 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.dz, 0, !dbg !7922
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !7924, !prof !899

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !7906
  %.lcssa.i29 = phi i16 [ %i.dz, %.lr.ph ], [ %i.eq, %.lr.ph.i33 ], !dbg !7918
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !7925
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !7928
  %i.ec = add i64 %.sroa.0.0.lcssa.i28, %i.eb, !dbg !7929
  %i.ed = and i64 %i.ec, %.val9, !dbg !7929       ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ed, !dbg !7930
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !7935, !noundef !14
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !7936
  br i1 %i.eg, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !7936, !prof !103

bb.p:                                             ; preds = %._crit_edge.i27
  %.val72.i.i31 = load <16 x i8>, ptr %i.du, align 16, !dbg !7938
  %i.eh = icmp slt <16 x i8> %.val72.i.i31, zeroinitializer, !dbg !7940
  %i.ei = bitcast <16 x i1> %i.eh to i16, !dbg !7940 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.ei, 0, !dbg !7943
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true), !dbg !7945
  %i.ek = zext nneg i16 %i.ej to i64, !dbg !7945
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !7946
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !7948

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %.lr.ph ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i33 ], [ 0, %.lr.ph ]
  %i.em = add i64 %i.el, 16, !dbg !7949           ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i34, !dbg !7951
  %.sroa.0.0.i35 = and i64 %i.en, %.val9, !dbg !7906 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.0.0.i35, !dbg !7908
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eo, align 1, !dbg !7911, !noalias !7915
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !7918
  %i.eq = bitcast <16 x i1> %i.ep to i16, !dbg !7918 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.eq, 0, !dbg !7922
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !7924, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.ek, %bb.p ], [ %i.ed, %._crit_edge.i27 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24, !dbg !7952
  %i.es = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !7956
  %i.et = xor i64 %i.es, %i.er, !dbg !7959
  %.unshifted.i = and i64 %i.et, %.val9, !dbg !7959
  %i.eu = icmp ult i64 %.unshifted.i, 16, !dbg !7959
  br i1 %i.eu, label %bb.q, label %bb.r, !dbg !7960, !prof !456

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ev = lshr i64 %i.dw, 57, !dbg !7962
  %i.ew = trunc nuw nsw i64 %i.ev to i8, !dbg !7965 ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i64, -16, !dbg !7966
  %i.ey = and i64 %.val9, %i.ex, !dbg !7969
  %i.ez = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.04.0.i64, !dbg !7970
  store i8 %i.ew, ptr %i.ez, align 1, !dbg !7973, !noalias !7865
  %i.fa = load ptr, ptr %0, align 8, !dbg !7974, !noalias !7865, !nonnull !14, !noundef !14
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey, !dbg !7976
  %i.fc = getelementptr i8, ptr %i.fb, i64 16, !dbg !7976
  store i8 %i.ew, ptr %i.fc, align 1, !dbg !7978, !noalias !7865
  br label %bb.t, !dbg !7979

bb.r:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !7980
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !7980
  %i.fd = getelementptr inbounds i8, ptr %i.du, i64 %.neg13.i, !dbg !7982 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.0.0.i5.i30, !dbg !7984 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !7988, !noalias !7865, !noundef !14
  %i.fg = lshr i64 %i.dw, 57, !dbg !7989
  %i.fh = trunc nuw nsw i64 %i.fg to i8, !dbg !7992 ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i30, -16, !dbg !7993
  %i.fj = and i64 %i.fi, %.val9, !dbg !7996
  store i8 %i.fh, ptr %i.fe, align 1, !dbg !7997, !noalias !7865
  %i.fk = load ptr, ptr %0, align 8, !dbg !7998, !noalias !7865, !nonnull !14, !noundef !14
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj, !dbg !8000
  %i.fm = getelementptr i8, ptr %i.fl, i64 16, !dbg !8000
  store i8 %i.fh, ptr %i.fm, align 1, !dbg !8002, !noalias !7865
  %i.fn = icmp eq i8 %i.ff, -1, !dbg !8003
  br i1 %i.fn, label %bb.s, label %.preheader50.preheader, !dbg !8003

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8004), !dbg !8007, !noalias !7865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8012), !dbg !8007, !noalias !7865
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.do, align 1, !dbg !8014, !alias.scope !8004, !noalias !8016
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fd, align 1, !dbg !8017, !alias.scope !8012, !noalias !8018
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.do, align 1, !dbg !8019, !alias.scope !8004, !noalias !8016
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fd, align 1, !dbg !8020, !alias.scope !8012, !noalias !8018
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8021), !dbg !8023
  %i.fo = load ptr, ptr %0, align 8, !dbg !8024, !alias.scope !8021, !noalias !8026, !nonnull !14, !noundef !14 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.dp, !dbg !7886
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -8, !dbg !7891
end_hunk_13
begin_hunk_14_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashmNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRE0ECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8103
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !8103, !noalias !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8098, !noalias !8089
  store ptr %i.d, ptr %i.c, align 8, !dbg !8104, !noalias !8089
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !8104
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !8104, !noalias !8089
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !8104
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !8104, !noalias !8089
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !8104
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !8104, !noalias !8089
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !8104
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !8104, !noalias !8089
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !8104
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !8104, !noalias !8089
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !8104
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !8104, !noalias !8089
  %i.x = load ptr, ptr %0, align 8, !dbg !8105, !alias.scope !8108, !noalias !8109, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !8110, !alias.scope !8108, !noalias !8109, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !8111
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !8111
  br i1 %i.z, label %._crit_edge77, label %.preheader.preheader, !dbg !8111

.preheader.preheader:                             ; preds = %bb.g
  %.val748 = load <16 x i8>, ptr %i.x, align 16, !dbg !8113
  %i.ab = icmp sgt <16 x i8> %.val748, splat (i8 -1), !dbg !8115
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !8119
  br label %.preheader, !dbg !8120

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.076 = phi ptr [ %.sroa.040.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.075 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.074 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.073 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i366 = icmp eq i16 %.sroa.13.073, 0, !dbg !8124
  br i1 %.not.i366, label %.noexc4, label %._crit_edge69, !dbg !8120

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.168 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.040.076, %.preheader ] ; 2 uses
  %.sroa.5.167 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.075, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.168) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.168, i64 16, !dbg !8125 ; 3 uses
  %.val649 = load <16 x i8>, ptr %i.ad, align 16, !dbg !8127
  %i.ae = icmp sgt <16 x i8> %.val649, splat (i8 -1), !dbg !8129
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !8133 ; 2 uses
  %i.ag = add i64 %.sroa.5.167, 16, !dbg !8134    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !8124
  br i1 %.not.i3, label %.noexc4, label %._crit_edge69, !dbg !8120

._crit_edge77.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre96 = load i64, ptr %i.e, align 8, !dbg !8135, !alias.scope !8108, !noalias !8109
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !8136, !alias.scope !8144, !noalias !8147
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge77, !dbg !8135

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge77.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre96, %._crit_edge77.loopexit ], [ 0, %bb.g ], !dbg !8135
  %i.ai = sub i64 %i.v, %i.ah, !dbg !8149
  store i64 %i.aa, ptr %0, align 8, !dbg !8150, !alias.scope !8144, !noalias !8147
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !8136, !alias.scope !8151, !noalias !8153 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !8150, !alias.scope !8151, !noalias !8153
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8155
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !8150, !alias.scope !8157, !noalias !8159
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !8161
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !8161

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge77
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !8165 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !8165
  %i.an = add i64 %i.al, 23, !dbg !8171           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !8171
  tail call void @llvm.assume(i1 %i.ao), !dbg !8173, !noalias !8101
  %i.ap = and i64 %i.an, -16, !dbg !8175          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !8176
  %i.ar = add i64 %i.aq, %i.ap, !dbg !8177        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !8177
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !8179, !noalias !8101
  tail call void @llvm.assume(i1 %i.at), !dbg !8179, !noalias !8101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !8101
  %i.au = icmp eq i64 %i.ar, 0, !dbg !8181
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !8181

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !8183
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !8185
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !8186, !noalias !8189
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !8196

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8099, !noalias !8089
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !8100

._crit_edge69:                                    ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.073, %.preheader ], [ %i.af, %.noexc4 ], !dbg !8197 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.075, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !8197 ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.076, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !8197
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !8198
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !8202
  %i.az = zext nneg i16 %i.ay to i64, !dbg !8203
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !8204
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !8206 ; 2 uses
  %i.bc = add i64 %.sroa.9.074, -1, !dbg !8207    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8208), !dbg !8211
  %i.bd = load ptr, ptr %0, align 8, !dbg !8212, !alias.scope !8208, !noalias !8219, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !8221
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !8226
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !8227
  %.val3.i = load i64, ptr %i.bg, align 8, !dbg !8233, !noalias !8234, !noundef !14 ; 3 uses
  %i.bh = icmp ult i64 %.val3.i, %3, !dbg !8235
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !8235

bb.i:                                             ; preds = %._crit_edge69
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc14 unwind label %bb.f, !dbg !8235

.noexc14:                                         ; preds = %bb.i
  unreachable, !dbg !8235

bb.j:                                             ; preds = %._crit_edge69
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.val3.i, !dbg !8235
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 112, !dbg !8235
  %i.bk = load i64, ptr %i.bj, align 16, !dbg !8235, !noalias !8234, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.t, !dbg !8239 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !8242
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !8245, !noalias !8249
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !8252
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !8252 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0, !dbg !8256
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !8258, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !8239
  %.lcssa.i = phi i16 [ %i.bn, %bb.j ], [ %i.ce, %.lr.ph.i ], !dbg !8252
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !8259
  %i.bp = zext nneg i16 %i.bo to i64, !dbg !8262
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp, !dbg !8263
  %i.br = and i64 %i.bq, %i.t, !dbg !8263         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br, !dbg !8264
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !8269, !noundef !14
  %i.bu = icmp sgt i8 %i.bt, -1, !dbg !8270
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !8270, !prof !103

bb.k:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !8272
  %i.bv = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !8274
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !8274 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0, !dbg !8277
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true), !dbg !8279
  %i.by = zext nneg i16 %i.bx to i64, !dbg !8279
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !8280
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !8282

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ca = add i64 %i.bz, 16, !dbg !8283           ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i, !dbg !8285
  %.sroa.0.0.i15 = and i64 %i.cb, %i.t, !dbg !8239 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !8242
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !8245, !noalias !8249
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !8252
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !8252 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0, !dbg !8256
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !8258, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %i.bk, 57, !dbg !8286
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !8289 ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16, !dbg !8290
  %i.ci = and i64 %i.ch, %i.t, !dbg !8293
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !8294
  store i8 %i.cg, ptr %i.cj, align 1, !dbg !8297, !noalias !8101
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci, !dbg !8298
  %i.cl = getelementptr i8, ptr %i.ck, i64 16, !dbg !8298
  store i8 %i.cg, ptr %i.cl, align 1, !dbg !8301, !noalias !8101
  %i.cm = load ptr, ptr %0, align 8, !dbg !8302, !alias.scope !8108, !noalias !8109, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !8305
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !8305
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i, !dbg !8306
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !8308
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !8308
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !8310
  %i.cp = load i64, ptr %i.cn, align 1, !dbg !8312, !noalias !8101
  store i64 %i.cp, ptr %i.co, align 1, !dbg !8312, !noalias !8101
  %i.cq = icmp eq i64 %i.bc, 0, !dbg !8111
  br i1 %i.cq, label %._crit_edge77.loopexit, label %.preheader, !dbg !8111

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !8314

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8315), !dbg !8318
  %.val11 = load ptr, ptr %0, align 8, !dbg !8319 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !8321
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !8321

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cr = lshr i64 %i.l, 4, !dbg !8325
  %i.cs = and i64 %i.l, 15, !dbg !8330
  %.not10.i.i.i = icmp ne i64 %i.cs, 0, !dbg !8331
  %i.ct = zext i1 %.not10.i.i.i to i64, !dbg !8331
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct, !dbg !8331 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !8321
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !8321
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !8321

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !8321
  br label %bb.m, !dbg !8321

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !8321
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !8321

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dc, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod167 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !8321
  tail call void @llvm.assume(i1 %lcmp.mod167), !dbg !8321
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !8332 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16, !dbg !8335
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !8337
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !8340
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !8340
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !8342
  br label %._crit_edge.i18, !dbg !8345

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.l, 16, !dbg !8345
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !8346, !prof !1064

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dc, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !8332 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16, !dbg !8335
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !8337
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !8340
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472), !dbg !8340
  store <2 x i64> %i.db, ptr %i.cz, align 16, !dbg !8342
  %i.dc = add i64 %.sroa.01.08.i, 32, !dbg !8348  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !8332
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !8332 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16, !dbg !8335
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !8337
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !8340
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !8340
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !8342
  %niter.next.1 = add i64 %niter, 2, !dbg !8321   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !8321
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.m, !dbg !8321

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !8350

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !8351
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !8354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8356, !noalias !8357
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8359
  store ptr null, ptr %i.di, align 8, !dbg !8359, !noalias !8357
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8359
  store i64 8, ptr %i.dj, align 8, !dbg !8359, !noalias !8357
  store ptr %0, ptr %i.a, align 8, !dbg !8359, !noalias !8357
  %i.dk = load i64, ptr %i.i, align 8, !dbg !8361, !alias.scope !8315, !noalias !8363, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dk, -1, !dbg !8364
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65, !dbg !8368

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i64 = phi i64 [ %i.dl, %bb.t ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dl = add nuw i64 %.sroa.04.0.i64, 1, !dbg !8369
  %i.dm = load ptr, ptr %0, align 8, !dbg !8372, !noalias !8363, !nonnull !14, !noundef !14 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i64, !dbg !8374
  %i.do = load i8, ptr %i.dn, align 1, !dbg !8376, !noalias !8363, !noundef !14
  %.not.i2 = icmp eq i8 %i.do, -128, !dbg !8376
  br i1 %.not.i2, label %bb.n, label %bb.t, !dbg !8379

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1, !dbg !8369
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !8380
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg11.i, !dbg !8382 ; 3 uses
  %i.dq = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq, !dbg !8384
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8, !dbg !8389
  %.val3.i2061 = load i64, ptr %i.ds, align 8, !dbg !8393, !noalias !8394, !noundef !14 ; 3 uses
  %i.dt = icmp ult i64 %.val3.i2061, %3, !dbg !8398
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !dbg !8398

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ], !dbg !8393
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc22 unwind label %bb.o, !dbg !8398

.noexc22:                                         ; preds = %._crit_edge
  unreachable, !dbg !8398

bb.o:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.u, !dbg !8400, !noalias !8363

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.dv = phi ptr [ %i.fq, %.preheader50.preheader ], [ %i.dm, %bb.n ] ; 7 uses
  %i.dw = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.val3.i2062, !dbg !8398
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 112, !dbg !8398
  %i.dy = load i64, ptr %i.dx, align 16, !dbg !8398, !noalias !8401, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !8403, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dy, !dbg !8404 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24, !dbg !8406
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dz, align 1, !dbg !8409, !noalias !8413
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !8416
  %i.eb = bitcast <16 x i1> %i.ea to i16, !dbg !8416 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.eb, 0, !dbg !8420
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !8422, !prof !899

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !8404
  %.lcssa.i29 = phi i16 [ %i.eb, %.lr.ph ], [ %i.es, %.lr.ph.i33 ], !dbg !8416
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !8423
  %i.ed = zext nneg i16 %i.ec to i64, !dbg !8426
  %i.ee = add i64 %.sroa.0.0.lcssa.i28, %i.ed, !dbg !8427
  %i.ef = and i64 %i.ee, %.val9, !dbg !8427       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ef, !dbg !8428
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !8433, !noundef !14
  %i.ei = icmp sgt i8 %i.eh, -1, !dbg !8434
  br i1 %i.ei, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !8434, !prof !103

bb.p:                                             ; preds = %._crit_edge.i27
  %.val72.i.i31 = load <16 x i8>, ptr %i.dv, align 16, !dbg !8436
  %i.ej = icmp slt <16 x i8> %.val72.i.i31, zeroinitializer, !dbg !8438
  %i.ek = bitcast <16 x i1> %i.ej to i16, !dbg !8438 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.ek, 0, !dbg !8441
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ek, i1 true), !dbg !8443
  %i.em = zext nneg i16 %i.el to i64, !dbg !8443
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !8444
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !8446

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %.lr.ph ]
  %i.en = phi i64 [ %i.eo, %.lr.ph.i33 ], [ 0, %.lr.ph ]
  %i.eo = add i64 %i.en, 16, !dbg !8447           ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.0.010.i34, !dbg !8449
  %.sroa.0.0.i35 = and i64 %i.ep, %.val9, !dbg !8404 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35, !dbg !8406
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eq, align 1, !dbg !8409, !noalias !8413
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !8416
  %i.es = bitcast <16 x i1> %i.er to i16, !dbg !8416 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.es, 0, !dbg !8420
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !8422, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.em, %bb.p ], [ %i.ef, %._crit_edge.i27 ] ; 4 uses
  %i.et = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24, !dbg !8450
  %i.eu = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !8454
  %i.ev = xor i64 %i.eu, %i.et, !dbg !8457
  %.unshifted.i = and i64 %i.ev, %.val9, !dbg !8457
  %i.ew = icmp ult i64 %.unshifted.i, 16, !dbg !8457
  br i1 %i.ew, label %bb.q, label %bb.r, !dbg !8458, !prof !456

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ex = lshr i64 %i.dy, 57, !dbg !8460
  %i.ey = trunc nuw nsw i64 %i.ex to i8, !dbg !8463 ; 2 uses
  %i.ez = add i64 %.sroa.04.0.i64, -16, !dbg !8464
  %i.fa = and i64 %.val9, %i.ez, !dbg !8467
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i64, !dbg !8468
  store i8 %i.ey, ptr %i.fb, align 1, !dbg !8471, !noalias !8363
  %i.fc = load ptr, ptr %0, align 8, !dbg !8472, !noalias !8363, !nonnull !14, !noundef !14
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa, !dbg !8474
  %i.fe = getelementptr i8, ptr %i.fd, i64 16, !dbg !8474
  store i8 %i.ey, ptr %i.fe, align 1, !dbg !8476, !noalias !8363
  br label %bb.t, !dbg !8477

bb.r:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !8478
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !8478
  %i.ff = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i, !dbg !8480 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30, !dbg !8482 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !dbg !8486, !noalias !8363, !noundef !14
  %i.fi = lshr i64 %i.dy, 57, !dbg !8487
  %i.fj = trunc nuw nsw i64 %i.fi to i8, !dbg !8490 ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i30, -16, !dbg !8491
  %i.fl = and i64 %i.fk, %.val9, !dbg !8494
  store i8 %i.fj, ptr %i.fg, align 1, !dbg !8495, !noalias !8363
  %i.fm = load ptr, ptr %0, align 8, !dbg !8496, !noalias !8363, !nonnull !14, !noundef !14
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl, !dbg !8498
  %i.fo = getelementptr i8, ptr %i.fn, i64 16, !dbg !8498
  store i8 %i.fj, ptr %i.fo, align 1, !dbg !8500, !noalias !8363
  %i.fp = icmp eq i8 %i.fh, -1, !dbg !8501
  br i1 %i.fp, label %bb.s, label %.preheader50.preheader, !dbg !8501

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8502), !dbg !8505, !noalias !8363
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8510), !dbg !8505, !noalias !8363
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 1, !dbg !8512, !alias.scope !8502, !noalias !8514
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ff, align 1, !dbg !8515, !alias.scope !8510, !noalias !8516
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !dbg !8517, !alias.scope !8502, !noalias !8514
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ff, align 1, !dbg !8518, !alias.scope !8510, !noalias !8516
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8519), !dbg !8521
  %i.fq = load ptr, ptr %0, align 8, !dbg !8522, !alias.scope !8519, !noalias !8524, !nonnull !14, !noundef !14 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dq, !dbg !8384
end_hunk_14
begin_hunk_15_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashmTNtNtCs2g09Ig8GZd6_13polars_stream13physical_plan10PhysStreamINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREEE0EB1W_:bb.a
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8601
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !8601, !noalias !8587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8596, !noalias !8587
  store ptr %i.d, ptr %i.c, align 8, !dbg !8602, !noalias !8587
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !8602
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !8602, !noalias !8587
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !8602
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !8602, !noalias !8587
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !8602
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !8602, !noalias !8587
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !8602
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !8602, !noalias !8587
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !8602
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !8602, !noalias !8587
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !8602
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !8602, !noalias !8587
  %i.x = load ptr, ptr %0, align 8, !dbg !8603, !alias.scope !8606, !noalias !8607, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !8608, !alias.scope !8606, !noalias !8607, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !8609
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !8609
  br i1 %i.z, label %._crit_edge77, label %.preheader.preheader, !dbg !8609

.preheader.preheader:                             ; preds = %bb.g
  %.val748 = load <16 x i8>, ptr %i.x, align 16, !dbg !8611
  %i.ab = icmp sgt <16 x i8> %.val748, splat (i8 -1), !dbg !8613
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !8617
  br label %.preheader, !dbg !8618

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.076 = phi ptr [ %.sroa.040.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.075 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.074 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.073 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i366 = icmp eq i16 %.sroa.13.073, 0, !dbg !8622
  br i1 %.not.i366, label %.noexc4, label %._crit_edge69, !dbg !8618

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.168 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.040.076, %.preheader ] ; 2 uses
  %.sroa.5.167 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.075, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.168) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.168, i64 16, !dbg !8623 ; 3 uses
  %.val649 = load <16 x i8>, ptr %i.ad, align 16, !dbg !8625
  %i.ae = icmp sgt <16 x i8> %.val649, splat (i8 -1), !dbg !8627
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !8631 ; 2 uses
  %i.ag = add i64 %.sroa.5.167, 16, !dbg !8632    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !8622
  br i1 %.not.i3, label %.noexc4, label %._crit_edge69, !dbg !8618

._crit_edge77.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre96 = load i64, ptr %i.e, align 8, !dbg !8633, !alias.scope !8606, !noalias !8607
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !8634, !alias.scope !8642, !noalias !8645
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge77, !dbg !8633

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge77.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre96, %._crit_edge77.loopexit ], [ 0, %bb.g ], !dbg !8633
  %i.ai = sub i64 %i.v, %i.ah, !dbg !8647
  store i64 %i.aa, ptr %0, align 8, !dbg !8648, !alias.scope !8642, !noalias !8645
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !8634, !alias.scope !8649, !noalias !8651 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !8648, !alias.scope !8649, !noalias !8651
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8653
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !8648, !alias.scope !8655, !noalias !8657
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !8659
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !8659

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge77
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !8663 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !8663
  %i.an = add i64 %i.al, 23, !dbg !8669           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !8669
  tail call void @llvm.assume(i1 %i.ao), !dbg !8671, !noalias !8599
  %i.ap = and i64 %i.an, -16, !dbg !8673          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !8674
  %i.ar = add i64 %i.aq, %i.ap, !dbg !8675        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !8675
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !8677, !noalias !8599
  tail call void @llvm.assume(i1 %i.at), !dbg !8677, !noalias !8599
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !8599
  %i.au = icmp eq i64 %i.ar, 0, !dbg !8679
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !8679

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !8681
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !8683
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !8684, !noalias !8687
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !8694

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8597, !noalias !8587
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !8598

._crit_edge69:                                    ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.073, %.preheader ], [ %i.af, %.noexc4 ], !dbg !8695 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.075, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !8695 ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.076, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !8695
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !8696
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !8700
  %i.az = zext nneg i16 %i.ay to i64, !dbg !8701
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !8702
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !8704 ; 2 uses
  %i.bc = add i64 %.sroa.9.074, -1, !dbg !8705    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8706), !dbg !8709
  %i.bd = load ptr, ptr %0, align 8, !dbg !8710, !alias.scope !8706, !noalias !8717, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !8719
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !8724
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !8725
  %.val3.i = load i64, ptr %i.bg, align 8, !dbg !8731, !noalias !8732, !noundef !14 ; 3 uses
  %i.bh = icmp ult i64 %.val3.i, %3, !dbg !8733
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !8733

bb.i:                                             ; preds = %._crit_edge69
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc14 unwind label %bb.f, !dbg !8733

.noexc14:                                         ; preds = %bb.i
  unreachable, !dbg !8733

bb.j:                                             ; preds = %._crit_edge69
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.val3.i, !dbg !8733
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40, !dbg !8733
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !8733, !noalias !8732, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.t, !dbg !8737 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !8740
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !8743, !noalias !8747
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !8750
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !8750 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0, !dbg !8754
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !8756, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !8737
  %.lcssa.i = phi i16 [ %i.bn, %bb.j ], [ %i.ce, %.lr.ph.i ], !dbg !8750
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !8757
  %i.bp = zext nneg i16 %i.bo to i64, !dbg !8760
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp, !dbg !8761
  %i.br = and i64 %i.bq, %i.t, !dbg !8761         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br, !dbg !8762
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !8767, !noundef !14
  %i.bu = icmp sgt i8 %i.bt, -1, !dbg !8768
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !8768, !prof !103

bb.k:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !8770
  %i.bv = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !8772
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !8772 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0, !dbg !8775
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true), !dbg !8777
  %i.by = zext nneg i16 %i.bx to i64, !dbg !8777
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !8778
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !8780

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ca = add i64 %i.bz, 16, !dbg !8781           ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i, !dbg !8783
  %.sroa.0.0.i15 = and i64 %i.cb, %i.t, !dbg !8737 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !8740
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !8743, !noalias !8747
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !8750
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !8750 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0, !dbg !8754
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !8756, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %i.bk, 57, !dbg !8784
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !8787 ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16, !dbg !8788
  %i.ci = and i64 %i.ch, %i.t, !dbg !8791
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !8792
  store i8 %i.cg, ptr %i.cj, align 1, !dbg !8795, !noalias !8599
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci, !dbg !8796
  %i.cl = getelementptr i8, ptr %i.ck, i64 16, !dbg !8796
  store i8 %i.cg, ptr %i.cl, align 1, !dbg !8799, !noalias !8599
  %i.cm = load ptr, ptr %0, align 8, !dbg !8800, !alias.scope !8606, !noalias !8607, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !8803
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !8803
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i, !dbg !8804
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !8806
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !8806
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !8808
  %i.cp = load i64, ptr %i.cn, align 1, !dbg !8810, !noalias !8599
  store i64 %i.cp, ptr %i.co, align 1, !dbg !8810, !noalias !8599
  %i.cq = icmp eq i64 %i.bc, 0, !dbg !8609
  br i1 %i.cq, label %._crit_edge77.loopexit, label %.preheader, !dbg !8609

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !8812

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8813), !dbg !8816
  %.val11 = load ptr, ptr %0, align 8, !dbg !8817 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !8819
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !8819

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cr = lshr i64 %i.l, 4, !dbg !8823
  %i.cs = and i64 %i.l, 15, !dbg !8828
  %.not10.i.i.i = icmp ne i64 %i.cs, 0, !dbg !8829
  %i.ct = zext i1 %.not10.i.i.i to i64, !dbg !8829
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct, !dbg !8829 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !8819
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !8819
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !8819

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !8819
  br label %bb.m, !dbg !8819

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !8819
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !8819

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dc, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod167 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !8819
  tail call void @llvm.assume(i1 %lcmp.mod167), !dbg !8819
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !8830 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16, !dbg !8833
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !8835
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !8838
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !8838
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !8840
  br label %._crit_edge.i18, !dbg !8843

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.l, 16, !dbg !8843
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !8844, !prof !1064

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dc, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !8830 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16, !dbg !8833
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !8835
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !8838
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472), !dbg !8838
  store <2 x i64> %i.db, ptr %i.cz, align 16, !dbg !8840
  %i.dc = add i64 %.sroa.01.08.i, 32, !dbg !8846  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !8830
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !8830 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16, !dbg !8833
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !8835
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !8838
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !8838
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !8840
  %niter.next.1 = add i64 %niter, 2, !dbg !8819   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !8819
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.m, !dbg !8819

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !8848

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !8849
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !8852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8854, !noalias !8855
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !8857
  store ptr null, ptr %i.di, align 8, !dbg !8857, !noalias !8855
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !8857
  store i64 8, ptr %i.dj, align 8, !dbg !8857, !noalias !8855
  store ptr %0, ptr %i.a, align 8, !dbg !8857, !noalias !8855
  %i.dk = load i64, ptr %i.i, align 8, !dbg !8859, !alias.scope !8813, !noalias !8861, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dk, -1, !dbg !8862
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65, !dbg !8866

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i64 = phi i64 [ %i.dl, %bb.t ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dl = add nuw i64 %.sroa.04.0.i64, 1, !dbg !8867
  %i.dm = load ptr, ptr %0, align 8, !dbg !8870, !noalias !8861, !nonnull !14, !noundef !14 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i64, !dbg !8872
  %i.do = load i8, ptr %i.dn, align 1, !dbg !8874, !noalias !8861, !noundef !14
  %.not.i2 = icmp eq i8 %i.do, -128, !dbg !8874
  br i1 %.not.i2, label %bb.n, label %bb.t, !dbg !8877

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1, !dbg !8867
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !8878
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg11.i, !dbg !8880 ; 3 uses
  %i.dq = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq, !dbg !8882
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8, !dbg !8887
  %.val3.i2061 = load i64, ptr %i.ds, align 8, !dbg !8891, !noalias !8892, !noundef !14 ; 3 uses
  %i.dt = icmp ult i64 %.val3.i2061, %3, !dbg !8896
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !dbg !8896

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ], !dbg !8891
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc22 unwind label %bb.o, !dbg !8896

.noexc22:                                         ; preds = %._crit_edge
  unreachable, !dbg !8896

bb.o:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.u, !dbg !8898, !noalias !8861

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.dv = phi ptr [ %i.fq, %.preheader50.preheader ], [ %i.dm, %bb.n ] ; 7 uses
  %i.dw = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.val3.i2062, !dbg !8896
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40, !dbg !8896
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !8896, !noalias !8899, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !8901, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dy, !dbg !8902 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24, !dbg !8904
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dz, align 1, !dbg !8907, !noalias !8911
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !8914
  %i.eb = bitcast <16 x i1> %i.ea to i16, !dbg !8914 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.eb, 0, !dbg !8918
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !8920, !prof !899

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !8902
  %.lcssa.i29 = phi i16 [ %i.eb, %.lr.ph ], [ %i.es, %.lr.ph.i33 ], !dbg !8914
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !8921
  %i.ed = zext nneg i16 %i.ec to i64, !dbg !8924
  %i.ee = add i64 %.sroa.0.0.lcssa.i28, %i.ed, !dbg !8925
  %i.ef = and i64 %i.ee, %.val9, !dbg !8925       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ef, !dbg !8926
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !8931, !noundef !14
  %i.ei = icmp sgt i8 %i.eh, -1, !dbg !8932
  br i1 %i.ei, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !8932, !prof !103

bb.p:                                             ; preds = %._crit_edge.i27
  %.val72.i.i31 = load <16 x i8>, ptr %i.dv, align 16, !dbg !8934
  %i.ej = icmp slt <16 x i8> %.val72.i.i31, zeroinitializer, !dbg !8936
  %i.ek = bitcast <16 x i1> %i.ej to i16, !dbg !8936 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.ek, 0, !dbg !8939
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ek, i1 true), !dbg !8941
  %i.em = zext nneg i16 %i.el to i64, !dbg !8941
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !8942
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !8944

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %.lr.ph ]
  %i.en = phi i64 [ %i.eo, %.lr.ph.i33 ], [ 0, %.lr.ph ]
  %i.eo = add i64 %i.en, 16, !dbg !8945           ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.0.010.i34, !dbg !8947
  %.sroa.0.0.i35 = and i64 %i.ep, %.val9, !dbg !8902 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35, !dbg !8904
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eq, align 1, !dbg !8907, !noalias !8911
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !8914
  %i.es = bitcast <16 x i1> %i.er to i16, !dbg !8914 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.es, 0, !dbg !8918
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !8920, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.em, %bb.p ], [ %i.ef, %._crit_edge.i27 ] ; 4 uses
  %i.et = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24, !dbg !8948
  %i.eu = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !8952
  %i.ev = xor i64 %i.eu, %i.et, !dbg !8955
  %.unshifted.i = and i64 %i.ev, %.val9, !dbg !8955
  %i.ew = icmp ult i64 %.unshifted.i, 16, !dbg !8955
  br i1 %i.ew, label %bb.q, label %bb.r, !dbg !8956, !prof !456

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ex = lshr i64 %i.dy, 57, !dbg !8958
  %i.ey = trunc nuw nsw i64 %i.ex to i8, !dbg !8961 ; 2 uses
  %i.ez = add i64 %.sroa.04.0.i64, -16, !dbg !8962
  %i.fa = and i64 %.val9, %i.ez, !dbg !8965
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i64, !dbg !8966
  store i8 %i.ey, ptr %i.fb, align 1, !dbg !8969, !noalias !8861
  %i.fc = load ptr, ptr %0, align 8, !dbg !8970, !noalias !8861, !nonnull !14, !noundef !14
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa, !dbg !8972
  %i.fe = getelementptr i8, ptr %i.fd, i64 16, !dbg !8972
  store i8 %i.ey, ptr %i.fe, align 1, !dbg !8974, !noalias !8861
  br label %bb.t, !dbg !8975

bb.r:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !8976
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !8976
  %i.ff = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i, !dbg !8978 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30, !dbg !8980 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !dbg !8984, !noalias !8861, !noundef !14
  %i.fi = lshr i64 %i.dy, 57, !dbg !8985
  %i.fj = trunc nuw nsw i64 %i.fi to i8, !dbg !8988 ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i30, -16, !dbg !8989
  %i.fl = and i64 %i.fk, %.val9, !dbg !8992
  store i8 %i.fj, ptr %i.fg, align 1, !dbg !8993, !noalias !8861
  %i.fm = load ptr, ptr %0, align 8, !dbg !8994, !noalias !8861, !nonnull !14, !noundef !14
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl, !dbg !8996
  %i.fo = getelementptr i8, ptr %i.fn, i64 16, !dbg !8996
  store i8 %i.fj, ptr %i.fo, align 1, !dbg !8998, !noalias !8861
  %i.fp = icmp eq i8 %i.fh, -1, !dbg !8999
  br i1 %i.fp, label %bb.s, label %.preheader50.preheader, !dbg !8999

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9000), !dbg !9003, !noalias !8861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9008), !dbg !9003, !noalias !8861
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 1, !dbg !9010, !alias.scope !9000, !noalias !9012
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ff, align 1, !dbg !9013, !alias.scope !9008, !noalias !9014
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !dbg !9015, !alias.scope !9000, !noalias !9012
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ff, align 1, !dbg !9016, !alias.scope !9008, !noalias !9014
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9017), !dbg !9019
  %i.fq = load ptr, ptr %0, align 8, !dbg !9020, !alias.scope !9017, !noalias !9022, !nonnull !14, !noundef !14 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dq, !dbg !8882
end_hunk_15
begin_hunk_16_@_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashmTNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEEE0ECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9099
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !9099, !noalias !9085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9094, !noalias !9085
  store ptr %i.d, ptr %i.c, align 8, !dbg !9100, !noalias !9085
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9100
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9100, !noalias !9085
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9100
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9100, !noalias !9085
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !9100
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9100, !noalias !9085
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !9100
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9100, !noalias !9085
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !9100
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9100, !noalias !9085
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !9100
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9100, !noalias !9085
  %i.x = load ptr, ptr %0, align 8, !dbg !9101, !alias.scope !9104, !noalias !9105, !nonnull !14, !noundef !14 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !dbg !9106, !alias.scope !9104, !noalias !9105, !noundef !14 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !9107
  %i.aa = ptrtoint ptr %i.q to i64, !dbg !9107
  br i1 %i.z, label %._crit_edge77, label %.preheader.preheader, !dbg !9107

.preheader.preheader:                             ; preds = %bb.g
  %.val748 = load <16 x i8>, ptr %i.x, align 16, !dbg !9109
  %i.ab = icmp sgt <16 x i8> %.val748, splat (i8 -1), !dbg !9111
  %i.ac = bitcast <16 x i1> %i.ab to i16, !dbg !9115
  br label %.preheader, !dbg !9116

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.076 = phi ptr [ %.sroa.040.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.075 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.074 = phi i64 [ %i.bc, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.073 = phi i16 [ %i.ba, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i366 = icmp eq i16 %.sroa.13.073, 0, !dbg !9120
  br i1 %.not.i366, label %.noexc4, label %._crit_edge69, !dbg !9116

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.168 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.040.076, %.preheader ] ; 2 uses
  %.sroa.5.167 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.075, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.168) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.168, i64 16, !dbg !9121 ; 3 uses
  %.val649 = load <16 x i8>, ptr %i.ad, align 16, !dbg !9123
  %i.ae = icmp sgt <16 x i8> %.val649, splat (i8 -1), !dbg !9125
  %i.af = bitcast <16 x i1> %i.ae to i16, !dbg !9129 ; 2 uses
  %i.ag = add i64 %.sroa.5.167, 16, !dbg !9130    ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0, !dbg !9120
  br i1 %.not.i3, label %.noexc4, label %._crit_edge69, !dbg !9116

._crit_edge77.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre96 = load i64, ptr %i.e, align 8, !dbg !9131, !alias.scope !9104, !noalias !9105
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !dbg !9132, !alias.scope !9140, !noalias !9143
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge77, !dbg !9131

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge77.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre96, %._crit_edge77.loopexit ], [ 0, %bb.g ], !dbg !9131
  %i.ai = sub i64 %i.v, %i.ah, !dbg !9145
  store i64 %i.aa, ptr %0, align 8, !dbg !9146, !alias.scope !9140, !noalias !9143
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !dbg !9132, !alias.scope !9147, !noalias !9149 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !dbg !9146, !alias.scope !9147, !noalias !9149
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9151
  store i64 %i.ai, ptr %i.aj, align 8, !dbg !9146, !alias.scope !9153, !noalias !9155
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !9157
  br i1 %i.ak, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !9157

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge77
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3, !dbg !9161 ; 2 uses
  %i.am = add i64 %i.al, 8, !dbg !9161
  %i.an = add i64 %i.al, 23, !dbg !9167           ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am, !dbg !9167
  tail call void @llvm.assume(i1 %i.ao), !dbg !9169, !noalias !9097
  %i.ap = and i64 %i.an, -16, !dbg !9171          ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !9172
  %i.ar = add i64 %i.aq, %i.ap, !dbg !9173        ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap, !dbg !9173
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !dbg !9175, !noalias !9097
  tail call void @llvm.assume(i1 %i.at), !dbg !9175, !noalias !9097
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !9097
  %i.au = icmp eq i64 %i.ar, 0, !dbg !9177
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.h, !dbg !9177

bb.h:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap, !dbg !9179
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av, !dbg !9181
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !9182, !noalias !9185
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !9192

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9095, !noalias !9085
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !9096

._crit_edge69:                                    ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.073, %.preheader ], [ %i.af, %.noexc4 ], !dbg !9193 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.075, %.preheader ], [ %i.ag, %.noexc4 ], !dbg !9193 ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.076, %.preheader ], [ %i.ad, %.noexc4 ], !dbg !9193
  %i.ax = add i16 %.sroa.13.1.lcssa, -1, !dbg !9194
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !9198
  %i.az = zext nneg i16 %i.ay to i64, !dbg !9199
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa, !dbg !9200
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az, !dbg !9202 ; 2 uses
  %i.bc = add i64 %.sroa.9.074, -1, !dbg !9203    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9204), !dbg !9207
  %i.bd = load ptr, ptr %0, align 8, !dbg !9208, !alias.scope !9204, !noalias !9215, !nonnull !14, !noundef !14
  %i.be = sub nsw i64 0, %i.bb, !dbg !9217
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be, !dbg !9222
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8, !dbg !9223
  %.val3.i = load i64, ptr %i.bg, align 8, !dbg !9229, !noalias !9230, !noundef !14 ; 3 uses
  %i.bh = icmp ult i64 %.val3.i, %3, !dbg !9231
  br i1 %i.bh, label %bb.j, label %bb.i, !dbg !9231

bb.i:                                             ; preds = %._crit_edge69
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc14 unwind label %bb.f, !dbg !9231

.noexc14:                                         ; preds = %bb.i
  unreachable, !dbg !9231

bb.j:                                             ; preds = %._crit_edge69
  %i.bi = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %.val3.i, !dbg !9231
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144, !dbg !9231
  %i.bk = load i64, ptr %i.bj, align 16, !dbg !9231, !noalias !9230, !noundef !14 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.t, !dbg !9235 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !9238
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !9241, !noalias !9245
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !9248
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !9248 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0, !dbg !9252
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !9254, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !9235
  %.lcssa.i = phi i16 [ %i.bn, %bb.j ], [ %i.ce, %.lr.ph.i ], !dbg !9248
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !9255
  %i.bp = zext nneg i16 %i.bo to i64, !dbg !9258
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp, !dbg !9259
  %i.br = and i64 %i.bq, %i.t, !dbg !9259         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br, !dbg !9260
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !9265, !noundef !14
  %i.bu = icmp sgt i8 %i.bt, -1, !dbg !9266
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !9266, !prof !103

bb.k:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !9268
  %i.bv = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !9270
  %i.bw = bitcast <16 x i1> %i.bv to i16, !dbg !9270 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0, !dbg !9273
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true), !dbg !9275
  %i.by = zext nneg i16 %i.bx to i64, !dbg !9275
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !9276
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !9278

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ca = add i64 %i.bz, 16, !dbg !9279           ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i, !dbg !9281
  %.sroa.0.0.i15 = and i64 %i.cb, %i.t, !dbg !9235 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !9238
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !dbg !9241, !noalias !9245
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !9248
  %i.ce = bitcast <16 x i1> %i.cd to i16, !dbg !9248 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0, !dbg !9252
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !9254, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %i.bk, 57, !dbg !9282
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !9285 ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16, !dbg !9286
  %i.ci = and i64 %i.ch, %i.t, !dbg !9289
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !9290
  store i8 %i.cg, ptr %i.cj, align 1, !dbg !9293, !noalias !9097
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci, !dbg !9294
  %i.cl = getelementptr i8, ptr %i.ck, i64 16, !dbg !9294
  store i8 %i.cg, ptr %i.cl, align 1, !dbg !9297, !noalias !9097
  %i.cm = load ptr, ptr %0, align 8, !dbg !9298, !alias.scope !9104, !noalias !9105, !nonnull !14, !noundef !14
  %.neg.i.i = xor i64 %i.bb, -1, !dbg !9301
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !9301
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i, !dbg !9302
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !9304
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !9304
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !9306
  %i.cp = load i64, ptr %i.cn, align 1, !dbg !9308, !noalias !9097
  store i64 %i.cp, ptr %i.co, align 1, !dbg !9308, !noalias !9097
  %i.cq = icmp eq i64 %i.bc, 0, !dbg !9107
  br i1 %i.cq, label %._crit_edge77.loopexit, label %.preheader, !dbg !9107

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !9310

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9311), !dbg !9314
  %.val11 = load ptr, ptr %0, align 8, !dbg !9315 ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !9317
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !9317

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cr = lshr i64 %i.l, 4, !dbg !9321
  %i.cs = and i64 %i.l, 15, !dbg !9326
  %.not10.i.i.i = icmp ne i64 %i.cs, 0, !dbg !9327
  %i.ct = zext i1 %.not10.i.i.i to i64, !dbg !9327
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct, !dbg !9327 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1, !dbg !9317
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1, !dbg !9317
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i16.new, !dbg !9317

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950, !dbg !9317
  br label %bb.m, !dbg !9317

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !9317
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader, !dbg !9317

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dc, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod167 = trunc i64 %.sroa.05.0.i.i.i to i1, !dbg !9317
  tail call void @llvm.assume(i1 %lcmp.mod167), !dbg !9317
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init, !dbg !9328 ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16, !dbg !9331
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7), !dbg !9333
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>, !dbg !9336
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472), !dbg !9336
  store <2 x i64> %i.cx, ptr %i.cv, align 16, !dbg !9338
  br label %._crit_edge.i18, !dbg !9341

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.l, 16, !dbg !9341
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !9342, !prof !1064

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dc, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !9328 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16, !dbg !9331
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !9333
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !9336
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472), !dbg !9336
  store <2 x i64> %i.db, ptr %i.cz, align 16, !dbg !9338
  %i.dc = add i64 %.sroa.01.08.i, 32, !dbg !9344  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !9328
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !9328 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16, !dbg !9331
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7), !dbg !9333
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>, !dbg !9336
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472), !dbg !9336
  store <2 x i64> %i.dg, ptr %i.de, align 16, !dbg !9338
  %niter.next.1 = add i64 %niter, 2, !dbg !9317   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !9317
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.m, !dbg !9317

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !9346

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !9347
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !9350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9352, !noalias !9353
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9355
  store ptr null, ptr %i.di, align 8, !dbg !9355, !noalias !9353
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9355
  store i64 8, ptr %i.dj, align 8, !dbg !9355, !noalias !9353
  store ptr %0, ptr %i.a, align 8, !dbg !9355, !noalias !9353
  %i.dk = load i64, ptr %i.i, align 8, !dbg !9357, !alias.scope !9311, !noalias !9359, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.dk, -1, !dbg !9360
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65, !dbg !9364

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i64 = phi i64 [ %i.dl, %bb.t ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dl = add nuw i64 %.sroa.04.0.i64, 1, !dbg !9365
  %i.dm = load ptr, ptr %0, align 8, !dbg !9368, !noalias !9359, !nonnull !14, !noundef !14 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i64, !dbg !9370
  %i.do = load i8, ptr %i.dn, align 1, !dbg !9372, !noalias !9359, !noundef !14
  %.not.i2 = icmp eq i8 %i.do, -128, !dbg !9372
  br i1 %.not.i2, label %bb.n, label %bb.t, !dbg !9375

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1, !dbg !9365
  %.neg11.i = shl i64 %.neg.i, 3, !dbg !9376
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg11.i, !dbg !9378 ; 3 uses
  %i.dq = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq, !dbg !9380
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8, !dbg !9385
  %.val3.i2061 = load i64, ptr %i.ds, align 8, !dbg !9389, !noalias !9390, !noundef !14 ; 3 uses
  %i.dt = icmp ult i64 %.val3.i2061, %3, !dbg !9394
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !dbg !9394

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ], !dbg !9389
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #57
          to label %.noexc22 unwind label %bb.o, !dbg !9394

.noexc22:                                         ; preds = %._crit_edge
  unreachable, !dbg !9394

bb.o:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.u, !dbg !9396, !noalias !9359

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.dv = phi ptr [ %i.fq, %.preheader50.preheader ], [ %i.dm, %bb.n ] ; 7 uses
  %i.dw = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %.val3.i2062, !dbg !9394
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 144, !dbg !9394
  %i.dy = load i64, ptr %i.dx, align 16, !dbg !9394, !noalias !9397, !noundef !14 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !9399, !noundef !14 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dy, !dbg !9400 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24, !dbg !9402
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dz, align 1, !dbg !9405, !noalias !9409
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer, !dbg !9412
  %i.eb = bitcast <16 x i1> %i.ea to i16, !dbg !9412 ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.eb, 0, !dbg !9416
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !9418, !prof !899

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ], !dbg !9400
  %.lcssa.i29 = phi i16 [ %i.eb, %.lr.ph ], [ %i.es, %.lr.ph.i33 ], !dbg !9412
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true), !dbg !9419
  %i.ed = zext nneg i16 %i.ec to i64, !dbg !9422
  %i.ee = add i64 %.sroa.0.0.lcssa.i28, %i.ed, !dbg !9423
  %i.ef = and i64 %i.ee, %.val9, !dbg !9423       ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ef, !dbg !9424
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !9429, !noundef !14
  %i.ei = icmp sgt i8 %i.eh, -1, !dbg !9430
  br i1 %i.ei, label %bb.p, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !9430, !prof !103

bb.p:                                             ; preds = %._crit_edge.i27
  %.val72.i.i31 = load <16 x i8>, ptr %i.dv, align 16, !dbg !9432
  %i.ej = icmp slt <16 x i8> %.val72.i.i31, zeroinitializer, !dbg !9434
  %i.ek = bitcast <16 x i1> %i.ej to i16, !dbg !9434 ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.ek, 0, !dbg !9437
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ek, i1 true), !dbg !9439
  %i.em = zext nneg i16 %i.el to i64, !dbg !9439
  tail call void @llvm.assume(i1 %.not.i6.i32), !dbg !9440
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !dbg !9442

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %.lr.ph ]
  %i.en = phi i64 [ %i.eo, %.lr.ph.i33 ], [ 0, %.lr.ph ]
  %i.eo = add i64 %i.en, 16, !dbg !9443           ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.0.010.i34, !dbg !9445
  %.sroa.0.0.i35 = and i64 %i.ep, %.val9, !dbg !9400 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35, !dbg !9402
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eq, align 1, !dbg !9405, !noalias !9409
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer, !dbg !9412
  %i.es = bitcast <16 x i1> %i.er to i16, !dbg !9412 ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.es, 0, !dbg !9416
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !dbg !9418, !prof !945

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.em, %bb.p ], [ %i.ef, %._crit_edge.i27 ] ; 4 uses
  %i.et = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24, !dbg !9446
  %i.eu = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24, !dbg !9450
  %i.ev = xor i64 %i.eu, %i.et, !dbg !9453
  %.unshifted.i = and i64 %i.ev, %.val9, !dbg !9453
  %i.ew = icmp ult i64 %.unshifted.i, 16, !dbg !9453
  br i1 %i.ew, label %bb.q, label %bb.r, !dbg !9454, !prof !456

bb.q:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ex = lshr i64 %i.dy, 57, !dbg !9456
  %i.ey = trunc nuw nsw i64 %i.ex to i8, !dbg !9459 ; 2 uses
  %i.ez = add i64 %.sroa.04.0.i64, -16, !dbg !9460
  %i.fa = and i64 %.val9, %i.ez, !dbg !9463
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i64, !dbg !9464
  store i8 %i.ey, ptr %i.fb, align 1, !dbg !9467, !noalias !9359
  %i.fc = load ptr, ptr %0, align 8, !dbg !9468, !noalias !9359, !nonnull !14, !noundef !14
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa, !dbg !9470
  %i.fe = getelementptr i8, ptr %i.fd, i64 16, !dbg !9470
  store i8 %i.ey, ptr %i.fe, align 1, !dbg !9472, !noalias !9359
  br label %bb.t, !dbg !9473

bb.r:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1, !dbg !9474
  %.neg13.i = shl i64 %.neg12.i, 3, !dbg !9474
  %i.ff = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i, !dbg !9476 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30, !dbg !9478 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !dbg !9482, !noalias !9359, !noundef !14
  %i.fi = lshr i64 %i.dy, 57, !dbg !9483
  %i.fj = trunc nuw nsw i64 %i.fi to i8, !dbg !9486 ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i30, -16, !dbg !9487
  %i.fl = and i64 %i.fk, %.val9, !dbg !9490
  store i8 %i.fj, ptr %i.fg, align 1, !dbg !9491, !noalias !9359
  %i.fm = load ptr, ptr %0, align 8, !dbg !9492, !noalias !9359, !nonnull !14, !noundef !14
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl, !dbg !9494
  %i.fo = getelementptr i8, ptr %i.fn, i64 16, !dbg !9494
  store i8 %i.fj, ptr %i.fo, align 1, !dbg !9496, !noalias !9359
  %i.fp = icmp eq i8 %i.fh, -1, !dbg !9497
  br i1 %i.fp, label %bb.s, label %.preheader50.preheader, !dbg !9497

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9498), !dbg !9501, !noalias !9359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9506), !dbg !9501, !noalias !9359
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 1, !dbg !9508, !alias.scope !9498, !noalias !9510
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ff, align 1, !dbg !9511, !alias.scope !9506, !noalias !9512
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !dbg !9513, !alias.scope !9498, !noalias !9510
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ff, align 1, !dbg !9514, !alias.scope !9506, !noalias !9512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9515), !dbg !9517
  %i.fq = load ptr, ptr %0, align 8, !dbg !9518, !alias.scope !9515, !noalias !9520, !nonnull !14, !noundef !14 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dq, !dbg !9380
end_hunk_16
begin_hunk_17_@_RINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB6_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtB8_3map11make_hashermBR_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0ECs2g09Ig8GZd6_13polars_stream:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ae, i1 false), !dbg !9698, !noalias !9686
  store ptr %i.c, ptr %i.b, align 8, !dbg !9710, !noalias !9590
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9710
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9710, !noalias !9590
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9710
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !9710, !noalias !9590
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9710
  store ptr %i.ar, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9710, !noalias !9590
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9710
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9710, !noalias !9590
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9710
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9710, !noalias !9590
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9710
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !9710, !noalias !9590
  %i.as = load ptr, ptr %0, align 8, !dbg !9713, !alias.scope !9719, !noalias !9720, !nonnull !14, !noundef !14 ; 4 uses
  %i.at = load i64, ptr %i.d, align 8, !dbg !9721, !alias.scope !9719, !noalias !9720, !noundef !14 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0, !dbg !9723
  %i.av = ptrtoint ptr %i.ar to i64, !dbg !9723
  br i1 %i.au, label %._crit_edge54, label %.preheader.preheader, !dbg !9723

.preheader.preheader:                             ; preds = %_RINvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit
  %.val637 = load <16 x i8>, ptr %i.as, align 16, !dbg !9729
  %i.aw = icmp sgt <16 x i8> %.val637, splat (i8 -1), !dbg !9732
  %i.ax = bitcast <16 x i1> %i.aw to i16, !dbg !9739
  br label %.preheader, !dbg !9742

_RINvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %.sroa.12.033 = extractvalue { i64, i64 } %.pn.i.pn, 1, !dbg !9751
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0, !dbg !9751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9752, !noalias !9590
  br label %_RINvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !9753

bb.k:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCseTQckN36Kfc_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalE0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(56) %i.b) #54, !dbg !9752
  br label %common.resume, !dbg !9754

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.az = phi ptr [ %i.df, %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.as, %.preheader.preheader ]
  %.sroa.019.053 = phi ptr [ %.sroa.019.1.lcssa, %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.as, %.preheader.preheader ] ; 2 uses
  %.sroa.5.052 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.bz, %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.at, %.preheader.preheader ]
  %.sroa.13.050 = phi i16 [ %i.bx, %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ax, %.preheader.preheader ] ; 2 uses
  %.not.i245 = icmp eq i16 %.sroa.13.050, 0, !dbg !9755
  br i1 %.not.i245, label %.noexc3, label %._crit_edge, !dbg !9742

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.019.147 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.019.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.147) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16, !dbg !9756 ; 3 uses
  %.val538 = load <16 x i8>, ptr %i.ba, align 16, !dbg !9759
  %i.bb = icmp sgt <16 x i8> %.val538, splat (i8 -1), !dbg !9762
  %i.bc = bitcast <16 x i1> %i.bb to i16, !dbg !9769 ; 2 uses
  %i.bd = add i64 %.sroa.5.146, 16, !dbg !9772    ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0, !dbg !9755
  br i1 %.not.i2, label %.noexc3, label %._crit_edge, !dbg !9742

._crit_edge54.loopexit:                           ; preds = %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre65 = load i64, ptr %i.d, align 8, !dbg !9773, !alias.scope !9719, !noalias !9720
  br label %._crit_edge54, !dbg !9773

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0.copyload.i.i.i.i.i.in = phi ptr [ %i.df, %._crit_edge54.loopexit ], [ %i.as, %_RINvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit ]
  %i.be = phi i64 [ %.pre65, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit ], !dbg !9773
  %i.bf = sub i64 %.sroa.07.0.i.i, %i.be, !dbg !9774
  store i64 %i.av, ptr %0, align 8, !dbg !9775, !alias.scope !9791, !noalias !9794
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !dbg !9796, !alias.scope !9797, !noalias !9799 ; 3 uses
  store i64 %i.ao, ptr %i.h, align 8, !dbg !9775, !alias.scope !9797, !noalias !9799
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9801
  store i64 %i.bf, ptr %i.bg, align 8, !dbg !9775, !alias.scope !9803, !noalias !9805
  %i.bh = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0, !dbg !9807
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCseTQckN36Kfc_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %_RNvMs1_NtCseTQckN36Kfc_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !dbg !9807

_RNvMs1_NtCseTQckN36Kfc_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge54
  %i.bi = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 6, !dbg !9815 ; 2 uses
  %i.bj = add i64 %i.bi, 64, !dbg !9815
  %i.bk = add i64 %i.bi, 79, !dbg !9823           ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bj, !dbg !9823
  tail call void @llvm.assume(i1 %i.bl), !dbg !9825
  %i.bm = and i64 %i.bk, -64, !dbg !9827          ; 3 uses
  %i.bn = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17, !dbg !9828
  %i.bo = add i64 %i.bn, %i.bm, !dbg !9829        ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm, !dbg !9829
  %i.bq = icmp ult i64 %i.bo, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bp), !dbg !9831
  tail call void @llvm.assume(i1 %i.bq), !dbg !9831
  %i.br = icmp eq i64 %i.bo, 0, !dbg !9833
  br i1 %i.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCseTQckN36Kfc_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, label %bb.l, !dbg !9833

bb.l:                                             ; preds = %_RNvMs1_NtCseTQckN36Kfc_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bs = sub nsw i64 0, %i.bm, !dbg !9841
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.in, i64 %i.bs, !dbg !9845
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !dbg !9846, !noalias !9849
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCseTQckN36Kfc_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit, !dbg !9854

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCseTQckN36Kfc_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalE0EECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge54, %_RNvMs1_NtCseTQckN36Kfc_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9752, !noalias !9590
  br label %_RINvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsgZ49sUHp3tW_5alloc5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit, !dbg !9753

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.bc, %.noexc3 ], !dbg !9855 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.bd, %.noexc3 ], !dbg !9855 ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.053, %.preheader ], [ %i.ba, %.noexc3 ], !dbg !9855
  %i.bu = add i16 %.sroa.13.1.lcssa, -1, !dbg !9856
  %i.bv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !9863
  %i.bw = zext nneg i16 %i.bv to i64, !dbg !9864
  %i.bx = and i16 %i.bu, %.sroa.13.1.lcssa, !dbg !9865
  %i.by = add i64 %.sroa.5.1.lcssa, %i.bw, !dbg !9869 ; 2 uses
  %i.bz = add i64 %.sroa.9.051, -1, !dbg !9870    ; 2 uses
  %i.ca = sub nsw i64 0, %i.by, !dbg !9872
  %i.cb = getelementptr inbounds [64 x i8], ptr %i.az, i64 %i.ca, !dbg !9882
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -64, !dbg !9883
  %i.cd = invoke noundef i64 @_RINvYNtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRmECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4) %i.cc)
          to label %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.k, !dbg !9889 ; 2 uses

_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.cd, %i.ao, !dbg !9894 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i, !dbg !9900
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ce, align 1, !dbg !9906, !noalias !9911
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !9914
  %i.cg = bitcast <16 x i1> %i.cf to i16, !dbg !9914 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cg, 0, !dbg !9922
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !9926, !prof !899

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %.sroa.0.0.i11, %.lr.ph.i ], !dbg !9894
  %.lcssa.i = phi i16 [ %i.cg, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ], [ %i.cx, %.lr.ph.i ], !dbg !9914
  %i.ch = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !9927
  %i.ci = zext nneg i16 %i.ch to i64, !dbg !9932
  %i.cj = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.ci, !dbg !9933
  %i.ck = and i64 %i.cj, %i.ao, !dbg !9933        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ck, !dbg !9935
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !9945, !noundef !14
  %i.cn = icmp sgt i8 %i.cm, -1, !dbg !9946
  br i1 %i.cn, label %bb.m, label %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !9946, !prof !103

bb.m:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.ar, align 16, !dbg !9949
  %i.co = icmp slt <16 x i8> %.val72.i.i, zeroinitializer, !dbg !9952
  %i.cp = bitcast <16 x i1> %i.co to i16, !dbg !9952 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cp, 0, !dbg !9957
  %i.cq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cp, i1 true), !dbg !9961
  %i.cr = zext nneg i16 %i.cq to i64, !dbg !9961
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !9962
  br label %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !9965

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.cs = phi i64 [ %i.ct, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit ]
  %i.ct = add i64 %i.cs, 16, !dbg !9966           ; 2 uses
  %i.cu = add i64 %i.ct, %.sroa.0.010.i, !dbg !9969
  %.sroa.0.0.i11 = and i64 %i.cu, %i.ao, !dbg !9894 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i11, !dbg !9900
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cv, align 1, !dbg !9906, !noalias !9911
  %i.cw = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !9914
  %i.cx = bitcast <16 x i1> %i.cw to i16, !dbg !9914 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cx, 0, !dbg !9922
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !9926, !prof !945

_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.m, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cr, %bb.m ], [ %i.ck, %._crit_edge.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i5.i, !dbg !9970
  %i.cz = lshr i64 %i.cd, 57, !dbg !9976
  %i.da = trunc nuw nsw i64 %i.cz to i8, !dbg !9982 ; 2 uses
  %i.db = add nsw i64 %.sroa.0.0.i5.i, -16, !dbg !9984
  %i.dc = and i64 %i.db, %i.ao, !dbg !9989
  store i8 %i.da, ptr %i.cy, align 1, !dbg !9990
  %i.dd = getelementptr i8, ptr %i.ar, i64 %i.dc, !dbg !9992
  %i.de = getelementptr i8, ptr %i.dd, i64 16, !dbg !9992
  store i8 %i.da, ptr %i.de, align 1, !dbg !9996
  %i.df = load ptr, ptr %0, align 8, !dbg !9997, !alias.scope !9719, !noalias !9720, !nonnull !14, !noundef !14 ; 3 uses
  %i.dg = shl i64 %i.by, 6, !dbg !10003
  %i.dh = sub nuw nsw i64 -64, %i.dg, !dbg !10005
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh, !dbg !10008
  %i.dj = shl i64 %.sroa.0.0.i5.i, 6, !dbg !10009
  %i.dk = sub nuw nsw i64 -64, %i.dj, !dbg !10012
  %i.dl = getelementptr inbounds i8, ptr %i.ar, i64 %i.dk, !dbg !10015
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dl, ptr noundef nonnull align 1 dereferenceable(64) %i.di, i64 64, i1 false), !dbg !10016
  %i.dm = icmp eq i64 %i.bz, 0, !dbg !9723
  br i1 %i.dm, label %._crit_edge54.loopexit, label %.preheader, !dbg !9723

common.resume:                                    ; preds = %bb.q, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.ew, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !10019

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10020), !dbg !10023
  %.val14.i = load ptr, ptr %0, align 8, !dbg !10024, !alias.scope !10020 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0, !dbg !10027
  br i1 %.not6.i.i, label %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i, !dbg !10027

_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10038, !noalias !10020
  br label %bb.x, !dbg !10039

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.dn = lshr i64 %i.k, 4, !dbg !10043
  %i.do = and i64 %i.k, 15, !dbg !10049
  %.not10.i.i.i.i = icmp ne i64 %i.do, 0, !dbg !10050
  %i.dp = zext i1 %.not10.i.i.i.i to i64, !dbg !10050
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dn, %i.dp, !dbg !10050 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1, !dbg !10027
  %i.dq = icmp eq i64 %.sroa.05.0.i.i.i.i, 1, !dbg !10027
  br i1 %i.dq, label %.epil.preheader, label %.lr.ph.i.i.new, !dbg !10027

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950, !dbg !10027
  br label %bb.o, !dbg !10027

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !10027
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader, !dbg !10027

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ea, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod110 = trunc i64 %.sroa.05.0.i.i.i.i to i1, !dbg !10027
  tail call void @llvm.assume(i1 %lcmp.mod110), !dbg !10027
  %i.dr = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i.epil.init, !dbg !10051 ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dr, align 16, !dbg !10057, !noalias !10020
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7), !dbg !10060
  %i.ds = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>, !dbg !10067
  %i.dt = or <2 x i64> %i.ds, splat (i64 -9187201950435737472), !dbg !10067
  store <2 x i64> %i.dt, ptr %i.dr, align 16, !dbg !10070, !noalias !10020
  br label %._crit_edge.i.i, !dbg !10075

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10075
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10075
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16), !dbg !10078
  %.28.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16), !dbg !10078
  %i.dw = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %..i, !dbg !10085
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %.val14.i, i64 %.28.i, i1 false), !dbg !10088, !noalias !10020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10038, !noalias !10020
  store ptr @_RNvYNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtBb_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBd_3map11make_hashermBW_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCs2g09Ig8GZd6_13polars_stream, ptr %i.du, align 8, !dbg !10075, !noalias !10020
  store i64 64, ptr %i.dv, align 8, !dbg !10075, !noalias !10020
  store ptr %0, ptr %i.a, align 8, !dbg !10075, !noalias !10020
  br label %.lr.ph.i13, !dbg !10092

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ea, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.o ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i, !dbg !10051 ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dx, align 16, !dbg !10057, !noalias !10020
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7), !dbg !10060
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>, !dbg !10067
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472), !dbg !10067
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !dbg !10070, !noalias !10020
  %i.ea = add i64 %.sroa.0.08.i.i, 32, !dbg !10094 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i, !dbg !10051
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16, !dbg !10051 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ec, align 16, !dbg !10057, !noalias !10020
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7), !dbg !10060
  %i.ed = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>, !dbg !10067
  %i.ee = or <2 x i64> %i.ed, splat (i64 -9187201950435737472), !dbg !10067
  store <2 x i64> %i.ee, ptr %i.ec, align 16, !dbg !10070, !noalias !10020
  %niter.next.1 = add i64 %niter, 2, !dbg !10027  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !10027
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.o, !dbg !10027

.lr.ph.i13:                                       ; preds = %bb.v, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ef, %bb.v ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.ef = add nuw i64 %.sroa.0.06.i, 1, !dbg !10098
  %i.eg = load ptr, ptr %0, align 8, !dbg !10104, !alias.scope !10020, !nonnull !14, !noundef !14 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.0.06.i, !dbg !10107
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !10110, !noundef !14
  %.not.i14 = icmp eq i8 %i.ei, -128, !dbg !10110
  br i1 %.not.i14, label %bb.p, label %bb.v, !dbg !10092

bb.p:                                             ; preds = %.lr.ph.i13
  %.neg.i = xor i64 %.sroa.0.06.i, -1, !dbg !10098
  %.neg12.i = shl i64 %.neg.i, 6, !dbg !10115
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 %.neg12.i, !dbg !10119 ; 10 uses
  %i.ek = sub nsw i64 0, %.sroa.0.06.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 40 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 48 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 56 ; 2 uses
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit.i, !dbg !10122

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.p
  %i.es = phi ptr [ %.pre.i, %.preheader.preheader.i ], [ %i.eg, %bb.p ], !dbg !10124
  %i.et = getelementptr inbounds [64 x i8], ptr %i.es, i64 %i.ek, !dbg !10129
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -64, !dbg !10132
  %i.ev = invoke noundef i64 @_RINvYNtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRmECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4) %i.eu)
          to label %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.q, !dbg !10136 ; 3 uses

bb.q:                                             ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCseTQckN36Kfc_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.w, !dbg !10139

_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i17 = load ptr, ptr %0, align 8, !dbg !10140, !alias.scope !10020, !nonnull !14, !noundef !14 ; 7 uses
  %.val13.i = load i64, ptr %i.h, align 8, !dbg !10140, !alias.scope !10020, !noundef !14 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val13.i, %i.ev, !dbg !10142 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.07.i.i, !dbg !10144
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ex, align 1, !dbg !10147, !noalias !10151
  %i.ey = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer, !dbg !10154
  %i.ez = bitcast <16 x i1> %i.ey to i16, !dbg !10154 ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ez, 0, !dbg !10158
  br i1 %.not.i9.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !dbg !10160, !prof !899

._crit_edge.i16.i:                                ; preds = %.lr.ph.i17.i, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i ], [ %.sroa.0.0.i.i18, %.lr.ph.i17.i ], !dbg !10142
  %.lcssa.i.i = phi i16 [ %i.ez, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.fq, %.lr.ph.i17.i ], !dbg !10154
  %i.fa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true), !dbg !10161
  %i.fb = zext nneg i16 %i.fa to i64, !dbg !10164
  %i.fc = add i64 %.sroa.0.0.lcssa.i.i, %i.fb, !dbg !10165
  %i.fd = and i64 %i.fc, %.val13.i, !dbg !10165   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.fd, !dbg !10166
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !10171, !noundef !14
  %i.fg = icmp sgt i8 %i.ff, -1, !dbg !10172
  br i1 %i.fg, label %bb.r, label %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !10172, !prof !103

bb.r:                                             ; preds = %._crit_edge.i16.i
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i17, align 16, !dbg !10174
  %i.fh = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer, !dbg !10176
  %i.fi = bitcast <16 x i1> %i.fh to i16, !dbg !10176 ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fi, 0, !dbg !10179
  %i.fj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fi, i1 true), !dbg !10181
  %i.fk = zext nneg i16 %i.fj to i64, !dbg !10181
  tail call void @llvm.assume(i1 %.not.i6.i.i), !dbg !10182
  br label %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !dbg !10184

.lr.ph.i17.i:                                     ; preds = %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i, %.lr.ph.i17.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i17.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i ]
  %i.fl = phi i64 [ %i.fm, %.lr.ph.i17.i ], [ 0, %_RNCINvMs6_NtCseTQckN36Kfc_9hashbrown3rawINtB8_8RawTableTmINtNtCs5ERpa6sqwDS_7slotmap16sparse_secondary4SlotNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEE14reserve_rehashNCINvNtBa_3map11make_hashermBT_NtNtNtCsh8eZTKRCwoO_3std4hash6random11RandomStateE0E0Cs2g09Ig8GZd6_13polars_stream.exit.i ]
  %i.fm = add i64 %i.fl, 16, !dbg !10185          ; 2 uses
  %i.fn = add i64 %i.fm, %.sroa.0.010.i.i, !dbg !10187
  %.sroa.0.0.i.i18 = and i64 %i.fn, %.val13.i, !dbg !10142 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i18, !dbg !10144
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fo, align 1, !dbg !10147, !noalias !10151
  %i.fp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer, !dbg !10154
  %i.fq = bitcast <16 x i1> %i.fp to i16, !dbg !10154 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fq, 0, !dbg !10158
  br i1 %.not.i.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !dbg !10160, !prof !945

_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.r, %._crit_edge.i16.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fk, %bb.r ], [ %i.fd, %._crit_edge.i16.i ] ; 4 uses
  %i.fr = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i, !dbg !10188
  %i.fs = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i, !dbg !10198
  %i.ft = xor i64 %i.fs, %i.fr, !dbg !10202
  %.unshifted.i = and i64 %i.ft, %.val13.i, !dbg !10202
  %i.fu = icmp ult i64 %.unshifted.i, 16, !dbg !10202
  br i1 %i.fu, label %bb.t, label %bb.s, !dbg !10203, !prof !456

bb.s:                                             ; preds = %_RNvMsa_NtCseTQckN36Kfc_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fv = shl i64 %.sroa.0.0.i5.i.i, 6, !dbg !10206
  %i.fw = sub nuw nsw i64 -64, %i.fv, !dbg !10209
  %i.fx = getelementptr inbounds i8, ptr %.val.i17, i64 %i.fw, !dbg !10212 ; 10 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i, !dbg !10213 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !dbg !10220, !noundef !14
  %i.ga = lshr i64 %i.ev, 57, !dbg !10221
  %i.gb = trunc nuw nsw i64 %i.ga to i8, !dbg !10228 ; 2 uses
  %i.gc = add i64 %.sroa.0.0.i5.i.i, -16, !dbg !10230
  %i.gd = and i64 %i.gc, %.val13.i, !dbg !10235
  store i8 %i.gb, ptr %i.fy, align 1, !dbg !10236
  %i.ge = load ptr, ptr %0, align 8, !dbg !10238, !alias.scope !10020, !nonnull !14, !noundef !14
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.gd, !dbg !10241
  %i.gg = getelementptr i8, ptr %i.gf, i64 16, !dbg !10241
  store i8 %i.gb, ptr %i.gg, align 1, !dbg !10244
  %i.gh = icmp eq i8 %i.fz, -1, !dbg !10245
  br i1 %i.gh, label %bb.u, label %.preheader.preheader.i, !dbg !10245

.preheader.preheader.i:                           ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10247), !dbg !10250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10262), !dbg !10250
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ej, align 1, !dbg !10264, !alias.scope !10247, !noalias !10262
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.fx, align 1, !dbg !10266, !alias.scope !10262, !noalias !10247
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ej, align 1, !dbg !10267, !alias.scope !10247, !noalias !10262
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.fx, align 1, !dbg !10268, !alias.scope !10262, !noalias !10247
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !10269 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10271), !dbg !10250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10273), !dbg !10250
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.el, align 1, !dbg !10264, !alias.scope !10271, !noalias !10273
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.gi, align 1, !dbg !10266, !alias.scope !10273, !noalias !10271
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.el, align 1, !dbg !10267, !alias.scope !10271, !noalias !10273
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.gi, align 1, !dbg !10268, !alias.scope !10273, !noalias !10271
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fx, i64 16, !dbg !10269 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10275), !dbg !10250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10277), !dbg !10250
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.em, align 1, !dbg !10264, !alias.scope !10275, !noalias !10277
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.gj, align 1, !dbg !10266, !alias.scope !10277, !noalias !10275
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.em, align 1, !dbg !10267, !alias.scope !10275, !noalias !10277
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.gj, align 1, !dbg !10268, !alias.scope !10277, !noalias !10275
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 24, !dbg !10269 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10279), !dbg !10250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10281), !dbg !10250
  %.sroa.0.0.copyload.i.i.i.3.i = load i64, ptr %i.en, align 1, !dbg !10264, !alias.scope !10279, !noalias !10281
  %.sroa.02.0.copyload.i.i.i.3.i = load i64, ptr %i.gk, align 1, !dbg !10266, !alias.scope !10281, !noalias !10279
  store i64 %.sroa.02.0.copyload.i.i.i.3.i, ptr %i.en, align 1, !dbg !10267, !alias.scope !10279, !noalias !10281
  store i64 %.sroa.0.0.copyload.i.i.i.3.i, ptr %i.gk, align 1, !dbg !10268, !alias.scope !10281, !noalias !10279
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 32, !dbg !10269 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10283), !dbg !10250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10285), !dbg !10250
  %.sroa.0.0.copyload.i.i.i.4.i = load i64, ptr %i.eo, align 1, !dbg !10264, !alias.scope !10283, !noalias !10285
  %.sroa.02.0.copyload.i.i.i.4.i = load i64, ptr %i.gl, align 1, !dbg !10266, !alias.scope !10285, !noalias !10283
  store i64 %.sroa.02.0.copyload.i.i.i.4.i, ptr %i.eo, align 1, !dbg !10267, !alias.scope !10283, !noalias !10285
  store i64 %.sroa.0.0.copyload.i.i.i.4.i, ptr %i.gl, align 1, !dbg !10268, !alias.scope !10285, !noalias !10283
end_hunk_17
