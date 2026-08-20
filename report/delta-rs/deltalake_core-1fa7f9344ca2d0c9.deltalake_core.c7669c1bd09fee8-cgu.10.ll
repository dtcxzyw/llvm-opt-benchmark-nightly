inline.NumInlined: 7791
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBR_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2j_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.047.071 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.sroa.047.1.lcssa, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.070 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.069 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.068 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bd, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i363 = icmp eq i16 %.sroa.13.068, 0
  br i1 %.not.i363, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.047.165 = phi ptr [ %i.af, %.noexc4 ], [ %.sroa.047.071, %.preheader ] ; 2 uses
  %.sroa.5.164 = phi i64 [ %i.ai, %.noexc4 ], [ %.sroa.5.070, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.047.165) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.047.165, i64 16 ; 3 uses
  %.val55 = load <16 x i8>, ptr %i.af, align 16
  %i.ag = icmp sgt <16 x i8> %.val55, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %i.ai = add i64 %.sroa.5.164, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ah, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge72.loopexit:                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre82 = load i64, ptr %i.g, align 8, !alias.scope !78, !noalias !79
  br label %._crit_edge72

._crit_edge72:                                    ; preds = %._crit_edge72.loopexit, %bb.g
  %i.aj = phi i64 [ %.pre82, %._crit_edge72.loopexit ], [ 0, %bb.g ]
  %i.ak = sub i64 %i.x, %i.aj
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !88, !noalias !91
  store i64 %i.ab, ptr %0, align 8, !alias.scope !88, !noalias !91
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.k, align 8, !alias.scope !93, !noalias !95 ; 3 uses
  store i64 %i.v, ptr %i.k, align 8, !alias.scope !93, !noalias !95
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !97, !noalias !99
  %i.am = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i to ptr ; 2 uses
  %i.an = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge72
  %i.ao = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 48 ; 2 uses
  %i.ap = add i64 %i.ao, 48
  %i.aq = add i64 %i.ao, 63                       ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.ap
  call void @llvm.assume(i1 %i.ar), !noalias !77
  %i.as = and i64 %i.aq, -16                      ; 3 uses
  %i.at = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = icmp ult i64 %i.au, 9223372036854775793
  call void @llvm.assume(i1 %i.av), !noalias !77
  call void @llvm.assume(i1 %i.aw), !noalias !77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ], !noalias !77
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ay = sub nsw i64 0, %i.as
  %i.az = getelementptr inbounds i8, ptr %i.am, i64 %i.ay
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !101
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge72, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !74
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.068, %.preheader ], [ %i.ah, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.070, %.preheader ], [ %i.ai, %.noexc4 ] ; 2 uses
  %.sroa.047.1.lcssa = phi ptr [ %.sroa.047.071, %.preheader ], [ %i.af, %.noexc4 ]
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.069, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !108, !noalias !109, !nonnull !16, !noundef !16
  %i.bh = sub nsw i64 0, %i.be
  %i.bi = getelementptr inbounds [48 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -40
  %.val2.i = load ptr, ptr %i.bj, align 8, !noalias !110, !nonnull !16, !noundef !16
  %i.bk = getelementptr i8, ptr %i.bi, i64 -32
  %.val3.i = load i64, ptr %i.bk, align 8, !noalias !110, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !110
  store ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !alias.scope !111, !noalias !114
  store i64 %.val.i.i14, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !111, !noalias !114
  %i.bl = zext i64 %.val3.i to i128
  store i128 %i.bl, ptr %i.b, align 16, !alias.scope !116, !noalias !110
  store i8 64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !alias.scope !116, !noalias !110
  invoke void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.b)
          to label %.noexc15 unwind label %bb.f

.noexc15:                                         ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !125), !noalias !77
  %i.bm = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !alias.scope !125, !noalias !110, !noundef !16
  %.not.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc15
  %i.bn = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !125, !noalias !110, !noundef !16
  br label %bb.k

bb.j:                                             ; preds = %.noexc15
  %i.bo = load i128, ptr %i.b, align 16, !alias.scope !125, !noalias !110, !noundef !16 ; 2 uses
  %i.bp = trunc i128 %i.bo to i64
  %i.bq = lshr i128 %i.bo, 64
  %i.br = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !125, !noalias !110, !noundef !16
  %i.bs = xor i64 %i.br, %i.bp
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !alias.scope !125, !noalias !110, !nonnull !16, !align !128, !noundef !16
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !129, !noundef !16
  %i.bv = zext i64 %i.bs to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = xor i128 %i.bq, %i.bw
  %i.by = mul nuw i128 %i.bx, %i.bv               ; 2 uses
  %i.bz = lshr i128 %i.by, 64
  %i.ca = xor i128 %i.bz, %i.by
  %i.cb = trunc i128 %i.ca to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.cb, %bb.j ], [ %i.bn, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !110
  %.sroa.0.07.i = and i64 %.sroa.0.0.i.i.i.i, %i.v ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !130
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i16, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ce, %bb.k ], [ %i.cv, %.lr.ph.i ]
  %i.cf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = add i64 %.sroa.0.0.lcssa.i, %i.cg
  %i.ci = and i64 %i.ch, %i.v                     ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !16
  %i.cl = icmp sgt i8 %i.ck, -1
  br i1 %i.cl, label %bb.l, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.cm = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cn, 0
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cn, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.cq = phi i64 [ %i.cr, %.lr.ph.i ], [ 0, %bb.k ]
  %i.cr = add i64 %i.cq, 16                       ; 2 uses
  %i.cs = add i64 %i.cr, %.sroa.0.010.i
  %.sroa.0.0.i16 = and i64 %i.cs, %i.v            ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ct, align 1, !noalias !130
  %i.cu = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cp, %bb.l ], [ %i.ci, %._crit_edge.i ] ; 3 uses
  %i.cw = lshr i64 %.sroa.0.0.i.i.i.i, 57
  %i.cx = trunc nuw nsw i64 %i.cw to i8           ; 2 uses
  %i.cy = add i64 %.sroa.0.0.i5.i, -16
  %i.cz = and i64 %i.cy, %i.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  store i8 %i.cx, ptr %i.da, align 1, !noalias !77
  %i.db = getelementptr i8, ptr %i.s, i64 %i.cz
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  store i8 %i.cx, ptr %i.dc, align 1, !noalias !77
  %i.dd = load ptr, ptr %0, align 8, !alias.scope !78, !noalias !79, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.be, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 48
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 48
  %i.df = getelementptr inbounds i8, ptr %i.s, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.df, ptr noundef nonnull align 1 dereferenceable(48) %i.de, i64 range(i64 8, 321) 48, i1 false), !noalias !77
  %i.dg = icmp eq i64 %i.bf, 0
  br i1 %i.dg, label %._crit_edge72.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.s, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.fh, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.n, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.m
  %i.dh = lshr i64 %i.n, 4
  %i.di = and i64 %i.n, 15
  %.not10.i.i.i = icmp ne i64 %i.di, 0
  %i.dj = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.dh, %i.dj ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.dk = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph.i17.new

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.ds, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod120 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.dl, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.dm = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.dn = or <2 x i64> %i.dm, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dn, ptr %i.dl, align 16
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.do = icmp ult i64 %i.n, 16
  br i1 %i.do, label %._crit_edge.thread.i, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !138

bb.n:                                             ; preds = %bb.n, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.ds, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.n ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dp, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.dq = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.dr = or <2 x i64> %i.dq, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dr, ptr %i.dp, align 16
  %i.ds = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.du, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dv = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dw = or <2 x i64> %i.dv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dw, ptr %i.du, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.m
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.n, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !139
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvYNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtBb_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIBW_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B2o_NtNtBd_6hasher18DefaultHashBuilderE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCs14kWLkQVSKO_14deltalake_core, ptr %i.dy, align 8, !noalias !139
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 48, ptr %i.dz, align 8, !noalias !139
  store ptr %0, ptr %i.c, align 8, !noalias !139
  %i.ea = load i64, ptr %i.k, align 8, !alias.scope !135, !noalias !141, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.ea, -1
  br i1 %.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.val.i.i23 = load i64, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.04.0.i62 = phi i64 [ 0, %.lr.ph ], [ %i.eb, %bb.y ] ; 10 uses
  %i.eb = add nuw i64 %.sroa.04.0.i62, 1
  %i.ec = load ptr, ptr %0, align 8, !noalias !141, !nonnull !16, !noundef !16 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.sroa.04.0.i62
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !141, !noundef !16
  %.not.i2 = icmp eq i8 %i.ee, -128
  br i1 %.not.i2, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %.neg.i = xor i64 %.sroa.04.0.i62, -1
  %.neg11.i = mul i64 %.neg.i, 48
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 %.neg11.i ; 8 uses
  %i.eg = sub nsw i64 0, %.sroa.04.0.i62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 2 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader56.preheader, %bb.p
  %i.em = phi ptr [ %.pre, %.preheader56.preheader ], [ %i.ec, %bb.p ]
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.en = getelementptr inbounds [48 x i8], ptr %i.em, i64 %i.eg ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -40
  %.val2.i21 = load ptr, ptr %i.eo, align 8, !noalias !145, !nonnull !16, !noundef !16
  %i.ep = getelementptr i8, ptr %i.en, i64 -32
  %.val3.i22 = load i64, ptr %i.ep, align 8, !noalias !145, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !145
  store ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i.i.i24, align 16, !alias.scope !147, !noalias !150
  store i64 %.val.i.i23, ptr %.sroa.5.0..sroa_idx.i.i.i.i25, align 8, !alias.scope !147, !noalias !150
  %i.eq = zext i64 %.val3.i22 to i128
  store i128 %i.eq, ptr %i.a, align 16, !alias.scope !152, !noalias !145
  store i8 64, ptr %.sroa.6.0..sroa_idx.i.i.i.i26, align 16, !alias.scope !152, !noalias !145
  invoke void @_RINvYNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.val2.i21, i64 noundef %.val3.i22, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc29 unwind label %bb.s

.noexc29:                                         ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !161), !noalias !141
  %i.er = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i26, align 16, !alias.scope !161, !noalias !145, !noundef !16
  %.not.i.i.i.i27 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i27, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc29
  %i.es = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i25, align 8, !alias.scope !161, !noalias !145, !noundef !16
  br label %bb.t

bb.r:                                             ; preds = %.noexc29
  %i.et = load i128, ptr %i.a, align 16, !alias.scope !161, !noalias !145, !noundef !16 ; 2 uses
  %i.eu = trunc i128 %i.et to i64
  %i.ev = lshr i128 %i.et, 64
  %i.ew = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i25, align 8, !alias.scope !161, !noalias !145, !noundef !16
  %i.ex = xor i64 %i.ew, %i.eu
  %i.ey = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i24, align 16, !alias.scope !161, !noalias !145, !nonnull !16, !align !128, !noundef !16
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !164, !noundef !16
  %i.fa = zext i64 %i.ex to i128
  %i.fb = zext i64 %i.ez to i128
  %i.fc = xor i128 %i.ev, %i.fb
  %i.fd = mul nuw i128 %i.fc, %i.fa               ; 2 uses
  %i.fe = lshr i128 %i.fd, 64
  %i.ff = xor i128 %i.fe, %i.fd
  %i.fg = trunc i128 %i.ff to i64
  br label %bb.t

bb.s:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #51
          to label %common.resume unwind label %bb.z, !noalias !141

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i28 = phi i64 [ %i.fg, %bb.r ], [ %i.es, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145
  %.val8 = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.k, align 8, !noundef !16 ; 6 uses
  %.sroa.0.07.i31 = and i64 %.val9, %.sroa.0.0.i.i.i.i28 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i31
  %.sroa.0.0.copyload.i68.i32 = load <16 x i8>, ptr %i.fi, align 1, !noalias !165
  %i.fj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i32, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %.not.i9.i33 = icmp eq i16 %i.fk, 0
  br i1 %.not.i9.i33, label %.lr.ph.i40, label %._crit_edge.i34, !prof !133

._crit_edge.i34:                                  ; preds = %.lr.ph.i40, %bb.t
  %.sroa.0.0.lcssa.i35 = phi i64 [ %.sroa.0.07.i31, %bb.t ], [ %.sroa.0.0.i42, %.lr.ph.i40 ]
  %.lcssa.i36 = phi i16 [ %i.fk, %bb.t ], [ %i.gb, %.lr.ph.i40 ]
  %i.fl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i36, i1 true)
  %i.fm = zext nneg i16 %i.fl to i64
  %i.fn = add i64 %.sroa.0.0.lcssa.i35, %i.fm
  %i.fo = and i64 %i.fn, %.val9                   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !noundef !16
  %i.fr = icmp sgt i8 %i.fq, -1
  br i1 %i.fr, label %bb.u, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit45, !prof !18

bb.u:                                             ; preds = %._crit_edge.i34
  %.val2.i.i38 = load <16 x i8>, ptr %.val8, align 16
  %i.fs = icmp slt <16 x i8> %.val2.i.i38, zeroinitializer
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %.not.i6.i39 = icmp ne i16 %i.ft, 0
  %i.fu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ft, i1 true)
  %i.fv = zext nneg i16 %i.fu to i64
  call void @llvm.assume(i1 %.not.i6.i39)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit45

.lr.ph.i40:                                       ; preds = %bb.t, %.lr.ph.i40
  %.sroa.0.010.i41 = phi i64 [ %.sroa.0.0.i42, %.lr.ph.i40 ], [ %.sroa.0.07.i31, %bb.t ]
  %i.fw = phi i64 [ %i.fx, %.lr.ph.i40 ], [ 0, %bb.t ]
  %i.fx = add i64 %i.fw, 16                       ; 2 uses
  %i.fy = add i64 %i.fx, %.sroa.0.010.i41
  %.sroa.0.0.i42 = and i64 %i.fy, %.val9          ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i42
  %.sroa.0.0.copyload.i6.i43 = load <16 x i8>, ptr %i.fz, align 1, !noalias !165
  %i.ga = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i43, zeroinitializer
  %i.gb = bitcast <16 x i1> %i.ga to i16          ; 2 uses
  %.not.i.i44 = icmp eq i16 %i.gb, 0
  br i1 %.not.i.i44, label %.lr.ph.i40, label %._crit_edge.i34, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit45: ; preds = %bb.u, %._crit_edge.i34
  %.sroa.0.0.i5.i37 = phi i64 [ %i.fv, %bb.u ], [ %i.fo, %._crit_edge.i34 ] ; 4 uses
  %i.gc = sub i64 %.sroa.04.0.i62, %.sroa.0.07.i31
  %i.gd = sub i64 %.sroa.0.0.i5.i37, %.sroa.0.07.i31
  %i.ge = xor i64 %i.gd, %i.gc
  %.unshifted.i = and i64 %i.ge, %.val9
  %i.gf = icmp ult i64 %.unshifted.i, 16
  br i1 %i.gf, label %bb.v, label %bb.w, !prof !168
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1e_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ap = icmp uge i64 %i.ao, %i.an
  tail call void @llvm.assume(i1 %i.ap), !noalias !220
  %i.aq = and i64 %i.ao, -64                      ; 3 uses
  %i.ar = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.as = add i64 %i.ar, %i.aq                    ; 4 uses
  %i.at = icmp uge i64 %i.as, %i.aq
  %i.au = icmp ult i64 %i.as, 9223372036854775793
  tail call void @llvm.assume(i1 %i.at), !noalias !220
  tail call void @llvm.assume(i1 %i.au), !noalias !220
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ], !noalias !220
  %i.av = icmp eq i64 %i.as, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.aw = sub nsw i64 0, %i.aq
  %i.ax = getelementptr inbounds i8, ptr %i.ak, i64 %i.aw
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !244
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge79, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !217
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.075, %.preheader ], [ %i.af, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.077, %.preheader ], [ %i.ag, %.noexc4 ] ; 2 uses
  %.sroa.053.1.lcssa = phi ptr [ %.sroa.053.078, %.preheader ], [ %i.ad, %.noexc4 ]
  %i.ay = add i16 %.sroa.13.1.lcssa, -1
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = and i16 %i.ay, %.sroa.13.1.lcssa
  %i.bc = add i64 %.sroa.5.1.lcssa, %i.ba         ; 2 uses
  %i.bd = add i64 %.sroa.9.076, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.be = load ptr, ptr %0, align 8, !alias.scope !251, !noalias !252, !nonnull !16, !noundef !16
  %i.bf = sub nsw i64 0, %i.bc
  %i.bg = getelementptr inbounds [192 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -184
  %.val2.i = load ptr, ptr %i.bh, align 8, !noalias !253, !nonnull !16, !noundef !16 ; 8 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 -176
  %.val3.i = load i64, ptr %i.bi, align 8, !noalias !253, !noundef !16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254), !noalias !220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257), !noalias !220
  %i.bj = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i.i14, i64 %.val.i.i14, i64 %.val3.i) ; 5 uses
  %i.bk = icmp samesign ult i64 %.val3.i, 17
  br i1 %i.bk, label %bb.j, label %bb.i, !prof !168

bb.i:                                             ; preds = %._crit_edge
  %i.bl = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #56
          to label %bb.n unwind label %bb.f

bb.j:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260), !noalias !220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263), !noalias !220
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !263, !noalias !265, !noundef !16 ; 4 uses
  %i.bn = icmp samesign ugt i64 %.val3.i, 7
  br i1 %i.bn, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp samesign ugt i64 %.val3.i, 3
  br i1 %i.bo, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.l

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.val2.i, align 1, !alias.scope !270, !noalias !271
  %i.bp = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, %i.bj
  %i.bq = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.br, align 1, !alias.scope !270, !noalias !271
  %i.bs = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i, %i.bm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val3.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, label %bb.m

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.bt = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bu, align 1, !alias.scope !270, !noalias !271
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.val2.i, align 1, !alias.scope !270, !noalias !271
  %i.bv = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i to i64
  %i.bw = xor i64 %i.bj, %i.bv
  %i.bx = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i to i64
  %i.by = xor i64 %i.bm, %i.bx
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bz = load i8, ptr %.val2.i, align 1, !alias.scope !270, !noalias !271, !noundef !16
  %i.ca = lshr i64 %.val3.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !270, !noalias !271, !noundef !16
  %i.cd = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !270, !noalias !271, !noundef !16
  %i.cg = zext i8 %i.bz to i64
  %i.ch = xor i64 %i.bj, %i.cg
  %i.ci = zext i8 %i.cf to i64
  %i.cj = shl nuw nsw i64 %i.ci, 8
  %i.ck = zext i8 %i.cc to i64
  %i.cl = or disjoint i64 %i.cj, %i.ck
  %i.cm = xor i64 %i.cl, %i.bm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %bb.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.bs, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.by, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.cm, %bb.m ], [ %i.bm, %bb.l ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.bp, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.ch, %bb.m ], [ %i.bj, %bb.l ]
  %i.cn = zext i64 %.sroa.0.0.i.i.i.i.i.i.i to i128
  %i.co = zext i64 %.sroa.04.0.i.i.i.i.i.i.i to i128
  %i.cp = mul nuw i128 %i.cn, %i.co               ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = xor i128 %i.cq, %i.cp
  %i.cs = trunc i128 %i.cr to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, %bb.i
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.cs, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i ], [ %i.bl, %bb.i ]
  %i.ct = xor i64 %storemerge.i.i.i.i.i.i, 255
  %i.cu = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !272, !noundef !16
  %i.cv = zext i64 %i.ct to i128
  %i.cw = zext i64 %i.cu to i128
  %i.cx = mul nuw i128 %i.cw, %i.cv               ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = xor i128 %i.cy, %i.cx
  %i.da = trunc i128 %i.cz to i64                 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.da             ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.db, align 1, !noalias !275
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i16, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.dd, %bb.n ], [ %i.du, %.lr.ph.i ]
  %i.de = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.0.0.lcssa.i, %i.df
  %i.dh = and i64 %i.dg, %i.t                     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noundef !16
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %bb.o, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.o:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.dl = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.dm, 0
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dm, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.dp = phi i64 [ %i.dq, %.lr.ph.i ], [ 0, %bb.n ]
  %i.dq = add i64 %i.dp, 16                       ; 2 uses
  %i.dr = add i64 %i.dq, %.sroa.0.010.i
  %.sroa.0.0.i16 = and i64 %i.dr, %i.t            ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ds, align 1, !noalias !275
  %i.dt = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.do, %bb.o ], [ %i.dh, %._crit_edge.i ] ; 3 uses
  %i.dv = lshr i64 %i.da, 57
  %i.dw = trunc nuw nsw i64 %i.dv to i8           ; 2 uses
  %i.dx = add i64 %.sroa.0.0.i5.i, -16
  %i.dy = and i64 %i.dx, %i.t
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.dw, ptr %i.dz, align 1, !noalias !220
  %i.ea = getelementptr i8, ptr %i.q, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store i8 %i.dw, ptr %i.eb, align 1, !noalias !220
  %i.ec = load ptr, ptr %0, align 8, !alias.scope !221, !noalias !222, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.bc, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 192
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 192
  %i.ee = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %i.ee, ptr noundef nonnull align 1 dereferenceable(192) %i.ed, i64 range(i64 8, 321) 192, i1 false), !noalias !220
  %i.ef = icmp eq i64 %i.bd, 0
  br i1 %i.ef, label %._crit_edge79.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.y, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.hr, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.p
  %i.eg = lshr i64 %i.l, 4
  %i.eh = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.eh, 0
  %i.ei = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.eg, %i.ei ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ej = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph.i17.new

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.q

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.er, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.ek = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ek, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.el = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.em = or <2 x i64> %i.el, splat (i64 -9187201950435737472)
  store <2 x i64> %i.em, ptr %i.ek, align 16
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.en = icmp ult i64 %i.l, 16
  br i1 %i.en, label %._crit_edge.thread.i, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !138

bb.q:                                             ; preds = %bb.q, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.er, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.q ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.eo, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.ep = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.eq = or <2 x i64> %i.ep, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eq, ptr %i.eo, align 16
  %i.er = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.et, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.eu = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ev = or <2 x i64> %i.eu, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ev, ptr %i.et, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.q

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.p
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !281
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvYNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtBb_8RawTableTNtCseo6ZV82fEK1_3url3UrlTNtNtCsjhHCjzi9uUI_17datafusion_common5stats10StatisticsINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1j_NtNtBd_6hasher18DefaultHashBuilderE0Es_0INtNtNtB2i_3ops8function6FnOnceTOhEE9call_onceCs14kWLkQVSKO_14deltalake_core, ptr %i.ex, align 8, !noalias !281
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 192, ptr %i.ey, align 8, !noalias !281
  store ptr %0, ptr %i.a, align 8, !noalias !281
  %i.ez = load i64, ptr %i.i, align 8, !alias.scope !278, !noalias !283, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.ez, -1
  br i1 %.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.val.i.i23 = load i64, ptr %2, align 8         ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.04.0.i69 = phi i64 [ 0, %.lr.ph ], [ %i.fa, %bb.ae ] ; 10 uses
  %i.fa = add nuw i64 %.sroa.04.0.i69, 1
  %i.fb = load ptr, ptr %0, align 8, !noalias !283, !nonnull !16, !noundef !16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sroa.04.0.i69
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !283, !noundef !16
  %.not.i2 = icmp eq i8 %i.fd, -128
  br i1 %.not.i2, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %.neg.i = xor i64 %.sroa.04.0.i69, -1
  %.neg11.i = mul i64 %.neg.i, 192
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %.neg11.i ; 26 uses
  %i.ff = sub nsw i64 0, %.sroa.04.0.i69
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 40 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 48 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 56 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 72 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 80 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 88 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 96 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 104 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 112 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fe, i64 128 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fe, i64 144 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 152 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fe, i64 160 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fe, i64 168 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 176 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 184 ; 2 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader62.preheader, %bb.s
  %i.gd = phi ptr [ %.pre, %.preheader62.preheader ], [ %i.fb, %bb.s ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.ge = getelementptr inbounds [192 x i8], ptr %i.gd, i64 %i.ff ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 -184
  %.val2.i21 = load ptr, ptr %i.gf, align 8, !noalias !287, !nonnull !16, !noundef !16 ; 8 uses
  %i.gg = getelementptr i8, ptr %i.ge, i64 -176
  %.val3.i22 = load i64, ptr %i.gg, align 8, !noalias !287, !noundef !16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289), !noalias !283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292), !noalias !283
  %i.gh = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i.i23, i64 %.val.i.i23, i64 %.val3.i22) ; 5 uses
  %i.gi = icmp samesign ult i64 %.val3.i22, 17
  br i1 %i.gi, label %bb.u, label %bb.t, !prof !168

bb.t:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.gj = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i21, i64 noundef range(i64 0, -9223372036854775808) %.val3.i22, i64 noundef %i.gh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #56
          to label %._crit_edge89 unwind label %bb.y

._crit_edge89:                                    ; preds = %bb.t
  %.val8.pre = load ptr, ptr %0, align 8
  br label %bb.z

bb.u:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295), !noalias !283
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298), !noalias !283
  %i.gk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !298, !noalias !300, !noundef !16 ; 4 uses
  %i.gl = icmp samesign ugt i64 %.val3.i22, 7
  br i1 %i.gl, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gm = icmp samesign ugt i64 %.val3.i22, 3
  br i1 %i.gm, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29, label %bb.w

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32: ; preds = %bb.u
  %.sroa.014.0.copyload.i.i.i.i.i.i.i33 = load i64, ptr %.val2.i21, align 1, !alias.scope !305, !noalias !306
  %i.gn = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i33, %i.gh
  %i.go = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.gp = getelementptr i8, ptr %i.go, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i34 = load i64, ptr %i.gp, align 1, !alias.scope !305, !noalias !306
  %i.gq = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i34, %i.gk
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i.i.i.i25 = icmp eq i64 %.val3.i22, 0
  br i1 %.not.i.i.i.i.i.i.i25, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26, label %bb.x

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29: ; preds = %bb.v
  %i.gr = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.gs = getelementptr i8, ptr %i.gr, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i30 = load i32, ptr %i.gs, align 1, !alias.scope !305, !noalias !306
  %.sroa.018.0.copyload.i.i.i.i.i.i.i31 = load i32, ptr %.val2.i21, align 1, !alias.scope !305, !noalias !306
  %i.gt = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i31 to i64
  %i.gu = xor i64 %i.gh, %i.gt
  %i.gv = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i30 to i64
  %i.gw = xor i64 %i.gk, %i.gv
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

bb.x:                                             ; preds = %bb.w
  %i.gx = load i8, ptr %.val2.i21, align 1, !alias.scope !305, !noalias !306, !noundef !16
  %i.gy = lshr i64 %.val3.i22, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.val2.i21, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !alias.scope !305, !noalias !306, !noundef !16
  %i.hb = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.hc = getelementptr i8, ptr %i.hb, i64 -1
  %i.hd = load i8, ptr %i.hc, align 1, !alias.scope !305, !noalias !306, !noundef !16
  %i.he = zext i8 %i.gx to i64
  %i.hf = xor i64 %i.gh, %i.he
  %i.hg = zext i8 %i.hd to i64
  %i.hh = shl nuw nsw i64 %i.hg, 8
  %i.hi = zext i8 %i.ha to i64
  %i.hj = or disjoint i64 %i.hh, %i.hi
  %i.hk = xor i64 %i.hj, %i.gk
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26: ; preds = %bb.x, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29, %bb.w, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32
  %.sroa.04.0.i.i.i.i.i.i.i27 = phi i64 [ %i.gq, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32 ], [ %i.gw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29 ], [ %i.hk, %bb.x ], [ %i.gk, %bb.w ]
  %.sroa.0.0.i.i.i.i.i.i.i28 = phi i64 [ %i.gn, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32 ], [ %i.gu, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29 ], [ %i.hf, %bb.x ], [ %i.gh, %bb.w ]
  %i.hl = zext i64 %.sroa.0.0.i.i.i.i.i.i.i28 to i128
  %i.hm = zext i64 %.sroa.04.0.i.i.i.i.i.i.i27 to i128
  %i.hn = mul nuw i128 %i.hl, %i.hm               ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = xor i128 %i.ho, %i.hn
  %i.hq = trunc i128 %i.hp to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #51
          to label %common.resume unwind label %bb.af, !noalias !283

end_hunk_1
begin_hunk_2_@_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBU_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ap = icmp uge i64 %i.ao, %i.an
  tail call void @llvm.assume(i1 %i.ap), !noalias !472
  %i.aq = and i64 %i.ao, -32                      ; 3 uses
  %i.ar = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.as = add i64 %i.ar, %i.aq                    ; 4 uses
  %i.at = icmp uge i64 %i.as, %i.aq
  %i.au = icmp ult i64 %i.as, 9223372036854775793
  tail call void @llvm.assume(i1 %i.at), !noalias !472
  tail call void @llvm.assume(i1 %i.au), !noalias !472
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ], !noalias !472
  %i.av = icmp eq i64 %i.as, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.aw = sub nsw i64 0, %i.aq
  %i.ax = getelementptr inbounds i8, ptr %i.ak, i64 %i.aw
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !496
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge79, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !469
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.075, %.preheader ], [ %i.af, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.077, %.preheader ], [ %i.ag, %.noexc4 ] ; 2 uses
  %.sroa.053.1.lcssa = phi ptr [ %.sroa.053.078, %.preheader ], [ %i.ad, %.noexc4 ]
  %i.ay = add i16 %.sroa.13.1.lcssa, -1
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = and i16 %i.ay, %.sroa.13.1.lcssa
  %i.bc = add i64 %.sroa.5.1.lcssa, %i.ba         ; 2 uses
  %i.bd = add i64 %.sroa.9.076, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.be = load ptr, ptr %0, align 8, !alias.scope !503, !noalias !504, !nonnull !16, !noundef !16
  %i.bf = sub nsw i64 0, %i.bc
  %i.bg = getelementptr inbounds [32 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %.val2.i = load ptr, ptr %i.bh, align 8, !noalias !505, !nonnull !16, !noundef !16 ; 8 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 -16
  %.val3.i = load i64, ptr %i.bi, align 8, !noalias !505, !noundef !16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506), !noalias !472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509), !noalias !472
  %i.bj = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i.i14, i64 %.val.i.i14, i64 %.val3.i) ; 5 uses
  %i.bk = icmp samesign ult i64 %.val3.i, 17
  br i1 %i.bk, label %bb.j, label %bb.i, !prof !168

bb.i:                                             ; preds = %._crit_edge
  %i.bl = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #56
          to label %bb.n unwind label %bb.f

bb.j:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512), !noalias !472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515), !noalias !472
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !515, !noalias !517, !noundef !16 ; 4 uses
  %i.bn = icmp samesign ugt i64 %.val3.i, 7
  br i1 %i.bn, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp samesign ugt i64 %.val3.i, 3
  br i1 %i.bo, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.l

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.val2.i, align 1, !alias.scope !522, !noalias !523
  %i.bp = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, %i.bj
  %i.bq = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.br, align 1, !alias.scope !522, !noalias !523
  %i.bs = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i, %i.bm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val3.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, label %bb.m

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.bt = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bu, align 1, !alias.scope !522, !noalias !523
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.val2.i, align 1, !alias.scope !522, !noalias !523
  %i.bv = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i to i64
  %i.bw = xor i64 %i.bj, %i.bv
  %i.bx = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i to i64
  %i.by = xor i64 %i.bm, %i.bx
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bz = load i8, ptr %.val2.i, align 1, !alias.scope !522, !noalias !523, !noundef !16
  %i.ca = lshr i64 %.val3.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !522, !noalias !523, !noundef !16
  %i.cd = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !522, !noalias !523, !noundef !16
  %i.cg = zext i8 %i.bz to i64
  %i.ch = xor i64 %i.bj, %i.cg
  %i.ci = zext i8 %i.cf to i64
  %i.cj = shl nuw nsw i64 %i.ci, 8
  %i.ck = zext i8 %i.cc to i64
  %i.cl = or disjoint i64 %i.cj, %i.ck
  %i.cm = xor i64 %i.cl, %i.bm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %bb.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.bs, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.by, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.cm, %bb.m ], [ %i.bm, %bb.l ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.bp, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.ch, %bb.m ], [ %i.bj, %bb.l ]
  %i.cn = zext i64 %.sroa.0.0.i.i.i.i.i.i.i to i128
  %i.co = zext i64 %.sroa.04.0.i.i.i.i.i.i.i to i128
  %i.cp = mul nuw i128 %i.cn, %i.co               ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = xor i128 %i.cq, %i.cp
  %i.cs = trunc i128 %i.cr to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, %bb.i
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.cs, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i ], [ %i.bl, %bb.i ]
  %i.ct = xor i64 %storemerge.i.i.i.i.i.i, 255
  %i.cu = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !524, !noundef !16
  %i.cv = zext i64 %i.ct to i128
  %i.cw = zext i64 %i.cu to i128
  %i.cx = mul nuw i128 %i.cw, %i.cv               ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = xor i128 %i.cy, %i.cx
  %i.da = trunc i128 %i.cz to i64                 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.da             ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.db, align 1, !noalias !527
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i16, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.dd, %bb.n ], [ %i.du, %.lr.ph.i ]
  %i.de = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.0.0.lcssa.i, %i.df
  %i.dh = and i64 %i.dg, %i.t                     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noundef !16
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %bb.o, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.o:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.dl = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.dm, 0
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dm, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.dp = phi i64 [ %i.dq, %.lr.ph.i ], [ 0, %bb.n ]
  %i.dq = add i64 %i.dp, 16                       ; 2 uses
  %i.dr = add i64 %i.dq, %.sroa.0.010.i
  %.sroa.0.0.i16 = and i64 %i.dr, %i.t            ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ds, align 1, !noalias !527
  %i.dt = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.do, %bb.o ], [ %i.dh, %._crit_edge.i ] ; 3 uses
  %i.dv = lshr i64 %i.da, 57
  %i.dw = trunc nuw nsw i64 %i.dv to i8           ; 2 uses
  %i.dx = add i64 %.sroa.0.0.i5.i, -16
  %i.dy = and i64 %i.dx, %i.t
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.dw, ptr %i.dz, align 1, !noalias !472
  %i.ea = getelementptr i8, ptr %i.q, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store i8 %i.dw, ptr %i.eb, align 1, !noalias !472
  %i.ec = load ptr, ptr %0, align 8, !alias.scope !473, !noalias !474, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.bc, -1
  %.neg61.i.i = shl i64 %.neg.i.i, 5
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = shl i64 %.neg62.i.i, 5
  %i.ee = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ee, ptr noundef nonnull align 1 dereferenceable(32) %i.ed, i64 range(i64 8, 321) 32, i1 false), !noalias !472
  %i.ef = icmp eq i64 %i.bd, 0
  br i1 %i.ef, label %._crit_edge79.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.y, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.gx, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.p
  %i.eg = lshr i64 %i.l, 4
  %i.eh = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.eh, 0
  %i.ei = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.eg, %i.ei ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ej = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph.i17.new

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.q

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.er, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.ek = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ek, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.el = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.em = or <2 x i64> %i.el, splat (i64 -9187201950435737472)
  store <2 x i64> %i.em, ptr %i.ek, align 16
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.en = icmp ult i64 %i.l, 16
  br i1 %i.en, label %._crit_edge.thread.i, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !138

bb.q:                                             ; preds = %bb.q, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.er, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.q ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.eo, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.ep = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.eq = or <2 x i64> %i.ep, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eq, ptr %i.eo, align 16
  %i.er = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.et, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.eu = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ev = or <2 x i64> %i.eu, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ev, ptr %i.et, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.q

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.p
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !533
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvYNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtBb_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBZ_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtBd_6hasher18DefaultHashBuilderE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCs14kWLkQVSKO_14deltalake_core, ptr %i.ex, align 8, !noalias !533
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %i.ey, align 8, !noalias !533
  store ptr %0, ptr %i.a, align 8, !noalias !533
  %i.ez = load i64, ptr %i.i, align 8, !alias.scope !530, !noalias !535, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.ez, -1
  br i1 %.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.val.i.i23 = load i64, ptr %2, align 8         ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.04.0.i69 = phi i64 [ 0, %.lr.ph ], [ %i.fa, %bb.ae ] ; 10 uses
  %i.fa = add nuw i64 %.sroa.04.0.i69, 1
  %i.fb = load ptr, ptr %0, align 8, !noalias !535, !nonnull !16, !noundef !16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sroa.04.0.i69
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !535, !noundef !16
  %.not.i2 = icmp eq i8 %i.fd, -128
  br i1 %.not.i2, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %.neg.i = xor i64 %.sroa.04.0.i69, -1
  %.neg11.i = shl i64 %.neg.i, 5
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %.neg11.i ; 6 uses
  %i.ff = sub nsw i64 0, %.sroa.04.0.i69
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 2 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader62.preheader, %bb.s
  %i.fj = phi ptr [ %.pre, %.preheader62.preheader ], [ %i.fb, %bb.s ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.fk = getelementptr inbounds [32 x i8], ptr %i.fj, i64 %i.ff ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -24
  %.val2.i21 = load ptr, ptr %i.fl, align 8, !noalias !539, !nonnull !16, !noundef !16 ; 8 uses
  %i.fm = getelementptr i8, ptr %i.fk, i64 -16
  %.val3.i22 = load i64, ptr %i.fm, align 8, !noalias !539, !noundef !16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544), !noalias !535
  %i.fn = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i.i23, i64 %.val.i.i23, i64 %.val3.i22) ; 5 uses
  %i.fo = icmp samesign ult i64 %.val3.i22, 17
  br i1 %i.fo, label %bb.u, label %bb.t, !prof !168

bb.t:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.fp = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i21, i64 noundef range(i64 0, -9223372036854775808) %.val3.i22, i64 noundef %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #56
          to label %._crit_edge89 unwind label %bb.y

._crit_edge89:                                    ; preds = %bb.t
  %.val8.pre = load ptr, ptr %0, align 8
  br label %bb.z

bb.u:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547), !noalias !535
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550), !noalias !535
  %i.fq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !550, !noalias !552, !noundef !16 ; 4 uses
  %i.fr = icmp samesign ugt i64 %.val3.i22, 7
  br i1 %i.fr, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fs = icmp samesign ugt i64 %.val3.i22, 3
  br i1 %i.fs, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29, label %bb.w

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32: ; preds = %bb.u
  %.sroa.014.0.copyload.i.i.i.i.i.i.i33 = load i64, ptr %.val2.i21, align 1, !alias.scope !557, !noalias !558
  %i.ft = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i33, %i.fn
  %i.fu = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.fv = getelementptr i8, ptr %i.fu, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i34 = load i64, ptr %i.fv, align 1, !alias.scope !557, !noalias !558
  %i.fw = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i34, %i.fq
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i.i.i.i25 = icmp eq i64 %.val3.i22, 0
  br i1 %.not.i.i.i.i.i.i.i25, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26, label %bb.x

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29: ; preds = %bb.v
  %i.fx = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.fy = getelementptr i8, ptr %i.fx, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i30 = load i32, ptr %i.fy, align 1, !alias.scope !557, !noalias !558
  %.sroa.018.0.copyload.i.i.i.i.i.i.i31 = load i32, ptr %.val2.i21, align 1, !alias.scope !557, !noalias !558
  %i.fz = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i31 to i64
  %i.ga = xor i64 %i.fn, %i.fz
  %i.gb = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i30 to i64
  %i.gc = xor i64 %i.fq, %i.gb
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

bb.x:                                             ; preds = %bb.w
  %i.gd = load i8, ptr %.val2.i21, align 1, !alias.scope !557, !noalias !558, !noundef !16
  %i.ge = lshr i64 %.val3.i22, 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.val2.i21, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !557, !noalias !558, !noundef !16
  %i.gh = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.gi = getelementptr i8, ptr %i.gh, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !557, !noalias !558, !noundef !16
  %i.gk = zext i8 %i.gd to i64
  %i.gl = xor i64 %i.fn, %i.gk
  %i.gm = zext i8 %i.gj to i64
  %i.gn = shl nuw nsw i64 %i.gm, 8
  %i.go = zext i8 %i.gg to i64
  %i.gp = or disjoint i64 %i.gn, %i.go
  %i.gq = xor i64 %i.gp, %i.fq
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26: ; preds = %bb.x, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29, %bb.w, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32
  %.sroa.04.0.i.i.i.i.i.i.i27 = phi i64 [ %i.fw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32 ], [ %i.gc, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29 ], [ %i.gq, %bb.x ], [ %i.fq, %bb.w ]
  %.sroa.0.0.i.i.i.i.i.i.i28 = phi i64 [ %i.ft, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32 ], [ %i.ga, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29 ], [ %i.gl, %bb.x ], [ %i.fn, %bb.w ]
  %i.gr = zext i64 %.sroa.0.0.i.i.i.i.i.i.i28 to i128
  %i.gs = zext i64 %.sroa.04.0.i.i.i.i.i.i.i27 to i128
  %i.gt = mul nuw i128 %i.gr, %i.gs               ; 2 uses
  %i.gu = lshr i128 %i.gt, 64
  %i.gv = xor i128 %i.gu, %i.gt
  %i.gw = trunc i128 %i.gv to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #51
          to label %common.resume unwind label %bb.af, !noalias !535

bb.z:                                             ; preds = %._crit_edge89, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26
  %.val8 = phi ptr [ %i.fj, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26 ], [ %.val8.pre, %._crit_edge89 ] ; 7 uses
  %storemerge.i.i.i.i.i.i24 = phi i64 [ %i.gw, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26 ], [ %i.fp, %._crit_edge89 ]
  %i.gy = xor i64 %storemerge.i.i.i.i.i.i24, 255
  %i.gz = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !559, !noundef !16
  %i.ha = zext i64 %i.gy to i128
  %i.hb = zext i64 %i.gz to i128
  %i.hc = mul nuw i128 %i.hb, %i.ha               ; 2 uses
  %i.hd = lshr i128 %i.hc, 64
  %i.he = xor i128 %i.hd, %i.hc
  %i.hf = trunc i128 %i.he to i64                 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !16 ; 6 uses
  %.sroa.0.07.i37 = and i64 %.val9, %i.hf         ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i37
  %.sroa.0.0.copyload.i68.i38 = load <16 x i8>, ptr %i.hg, align 1, !noalias !562
  %i.hh = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i38, zeroinitializer
  %i.hi = bitcast <16 x i1> %i.hh to i16          ; 2 uses
  %.not.i9.i39 = icmp eq i16 %i.hi, 0
  br i1 %.not.i9.i39, label %.lr.ph.i46, label %._crit_edge.i40, !prof !133

end_hunk_2
begin_hunk_3_@_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ap = icmp uge i64 %i.ao, %i.an
  tail call void @llvm.assume(i1 %i.ap), !noalias !604
  %i.aq = and i64 %i.ao, -64                      ; 3 uses
  %i.ar = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.as = add i64 %i.ar, %i.aq                    ; 4 uses
  %i.at = icmp uge i64 %i.as, %i.aq
  %i.au = icmp ult i64 %i.as, 9223372036854775793
  tail call void @llvm.assume(i1 %i.at), !noalias !604
  tail call void @llvm.assume(i1 %i.au), !noalias !604
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ], !noalias !604
  %i.av = icmp eq i64 %i.as, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.aw = sub nsw i64 0, %i.aq
  %i.ax = getelementptr inbounds i8, ptr %i.ak, i64 %i.aw
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !628
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge79, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !601
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.075, %.preheader ], [ %i.af, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.077, %.preheader ], [ %i.ag, %.noexc4 ] ; 2 uses
  %.sroa.053.1.lcssa = phi ptr [ %.sroa.053.078, %.preheader ], [ %i.ad, %.noexc4 ]
  %i.ay = add i16 %.sroa.13.1.lcssa, -1
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = and i16 %i.ay, %.sroa.13.1.lcssa
  %i.bc = add i64 %.sroa.5.1.lcssa, %i.ba         ; 2 uses
  %i.bd = add i64 %.sroa.9.076, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.be = load ptr, ptr %0, align 8, !alias.scope !635, !noalias !636, !nonnull !16, !noundef !16
  %i.bf = sub nsw i64 0, %i.bc
  %i.bg = getelementptr inbounds [320 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -312
  %.val2.i = load ptr, ptr %i.bh, align 8, !noalias !637, !nonnull !16, !noundef !16 ; 8 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 -304
  %.val3.i = load i64, ptr %i.bi, align 8, !noalias !637, !noundef !16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638), !noalias !604
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641), !noalias !604
  %i.bj = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i.i14, i64 %.val.i.i14, i64 %.val3.i) ; 5 uses
  %i.bk = icmp samesign ult i64 %.val3.i, 17
  br i1 %i.bk, label %bb.j, label %bb.i, !prof !168

bb.i:                                             ; preds = %._crit_edge
  %i.bl = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #56
          to label %bb.n unwind label %bb.f

bb.j:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644), !noalias !604
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647), !noalias !604
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !647, !noalias !649, !noundef !16 ; 4 uses
  %i.bn = icmp samesign ugt i64 %.val3.i, 7
  br i1 %i.bn, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp samesign ugt i64 %.val3.i, 3
  br i1 %i.bo, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.l

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.val2.i, align 1, !alias.scope !654, !noalias !655
  %i.bp = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, %i.bj
  %i.bq = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.br, align 1, !alias.scope !654, !noalias !655
  %i.bs = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i, %i.bm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val3.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, label %bb.m

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.bt = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.bu, align 1, !alias.scope !654, !noalias !655
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.val2.i, align 1, !alias.scope !654, !noalias !655
  %i.bv = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i to i64
  %i.bw = xor i64 %i.bj, %i.bv
  %i.bx = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i to i64
  %i.by = xor i64 %i.bm, %i.bx
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bz = load i8, ptr %.val2.i, align 1, !alias.scope !654, !noalias !655, !noundef !16
  %i.ca = lshr i64 %.val3.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !654, !noalias !655, !noundef !16
  %i.cd = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !654, !noalias !655, !noundef !16
  %i.cg = zext i8 %i.bz to i64
  %i.ch = xor i64 %i.bj, %i.cg
  %i.ci = zext i8 %i.cf to i64
  %i.cj = shl nuw nsw i64 %i.ci, 8
  %i.ck = zext i8 %i.cc to i64
  %i.cl = or disjoint i64 %i.cj, %i.ck
  %i.cm = xor i64 %i.cl, %i.bm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %bb.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.bs, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.by, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.cm, %bb.m ], [ %i.bm, %bb.l ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.bp, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.bw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.ch, %bb.m ], [ %i.bj, %bb.l ]
  %i.cn = zext i64 %.sroa.0.0.i.i.i.i.i.i.i to i128
  %i.co = zext i64 %.sroa.04.0.i.i.i.i.i.i.i to i128
  %i.cp = mul nuw i128 %i.cn, %i.co               ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = xor i128 %i.cq, %i.cp
  %i.cs = trunc i128 %i.cr to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, %bb.i
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.cs, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i ], [ %i.bl, %bb.i ]
  %i.ct = xor i64 %storemerge.i.i.i.i.i.i, 255
  %i.cu = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !656, !noundef !16
  %i.cv = zext i64 %i.ct to i128
  %i.cw = zext i64 %i.cu to i128
  %i.cx = mul nuw i128 %i.cw, %i.cv               ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = xor i128 %i.cy, %i.cx
  %i.da = trunc i128 %i.cz to i64                 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.da             ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.db, align 1, !noalias !659
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i16, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.dd, %bb.n ], [ %i.du, %.lr.ph.i ]
  %i.de = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.0.0.lcssa.i, %i.df
  %i.dh = and i64 %i.dg, %i.t                     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noundef !16
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %bb.o, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.o:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.dl = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.dm, 0
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dm, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.dp = phi i64 [ %i.dq, %.lr.ph.i ], [ 0, %bb.n ]
  %i.dq = add i64 %i.dp, 16                       ; 2 uses
  %i.dr = add i64 %i.dq, %.sroa.0.010.i
  %.sroa.0.0.i16 = and i64 %i.dr, %i.t            ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ds, align 1, !noalias !659
  %i.dt = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.do, %bb.o ], [ %i.dh, %._crit_edge.i ] ; 3 uses
  %i.dv = lshr i64 %i.da, 57
  %i.dw = trunc nuw nsw i64 %i.dv to i8           ; 2 uses
  %i.dx = add i64 %.sroa.0.0.i5.i, -16
  %i.dy = and i64 %i.dx, %i.t
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.dw, ptr %i.dz, align 1, !noalias !604
  %i.ea = getelementptr i8, ptr %i.q, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store i8 %i.dw, ptr %i.eb, align 1, !noalias !604
  %i.ec = load ptr, ptr %0, align 8, !alias.scope !605, !noalias !606, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.bc, -1
  %.neg61.i.i = mul i64 %.neg.i.i, 320
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = mul i64 %.neg62.i.i, 320
  %i.ee = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %i.ee, ptr noundef nonnull align 1 dereferenceable(320) %i.ed, i64 range(i64 8, 321) 320, i1 false), !noalias !604
  %i.ef = icmp eq i64 %i.bd, 0
  br i1 %i.ef, label %._crit_edge79.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.y, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ih, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.p
  %i.eg = lshr i64 %i.l, 4
  %i.eh = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.eh, 0
  %i.ei = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.eg, %i.ei ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ej = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph.i17.new

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.q

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.er, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.ek = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ek, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.el = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.em = or <2 x i64> %i.el, splat (i64 -9187201950435737472)
  store <2 x i64> %i.em, ptr %i.ek, align 16
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.en = icmp ult i64 %i.l, 16
  br i1 %i.en, label %._crit_edge.thread.i, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !138

bb.q:                                             ; preds = %bb.q, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.er, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.q ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.eo, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.ep = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.eq = or <2 x i64> %i.ep, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eq, ptr %i.eo, align 16
  %i.er = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.et, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.eu = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ev = or <2 x i64> %i.eu, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ev, ptr %i.et, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.q

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.p
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !665
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvYNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtBb_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtBd_6hasher18DefaultHashBuilderE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCs14kWLkQVSKO_14deltalake_core, ptr %i.ex, align 8, !noalias !665
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 320, ptr %i.ey, align 8, !noalias !665
  store ptr %0, ptr %i.a, align 8, !noalias !665
  %i.ez = load i64, ptr %i.i, align 8, !alias.scope !662, !noalias !667, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.ez, -1
  br i1 %.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.val.i.i23 = load i64, ptr %2, align 8         ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.04.0.i69 = phi i64 [ 0, %.lr.ph ], [ %i.fa, %bb.ae ] ; 10 uses
  %i.fa = add nuw i64 %.sroa.04.0.i69, 1
  %i.fb = load ptr, ptr %0, align 8, !noalias !667, !nonnull !16, !noundef !16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sroa.04.0.i69
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !667, !noundef !16
  %.not.i2 = icmp eq i8 %i.fd, -128
  br i1 %.not.i2, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %.neg.i = xor i64 %.sroa.04.0.i69, -1
  %.neg11.i = mul i64 %.neg.i, 320
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %.neg11.i ; 42 uses
  %i.ff = sub nsw i64 0, %.sroa.04.0.i69
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 40 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 48 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 56 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 72 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 80 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 88 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 96 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 104 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 112 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fe, i64 128 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fe, i64 144 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 152 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fe, i64 160 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fe, i64 168 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 176 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 184 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fe, i64 192 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 200 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 208 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 216 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fe, i64 224 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fe, i64 232 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fe, i64 240 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fe, i64 248 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fe, i64 256 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fe, i64 264 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fe, i64 272 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fe, i64 280 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fe, i64 288 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fe, i64 296 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fe, i64 304 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fe, i64 312 ; 2 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader62.preheader, %bb.s
  %i.gt = phi ptr [ %.pre, %.preheader62.preheader ], [ %i.fb, %bb.s ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.gu = getelementptr inbounds [320 x i8], ptr %i.gt, i64 %i.ff ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 -312
  %.val2.i21 = load ptr, ptr %i.gv, align 8, !noalias !671, !nonnull !16, !noundef !16 ; 8 uses
  %i.gw = getelementptr i8, ptr %i.gu, i64 -304
  %.val3.i22 = load i64, ptr %i.gw, align 8, !noalias !671, !noundef !16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673), !noalias !667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676), !noalias !667
  %i.gx = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i.i23, i64 %.val.i.i23, i64 %.val3.i22) ; 5 uses
  %i.gy = icmp samesign ult i64 %.val3.i22, 17
  br i1 %i.gy, label %bb.u, label %bb.t, !prof !168

bb.t:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.gz = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i21, i64 noundef range(i64 0, -9223372036854775808) %.val3.i22, i64 noundef %i.gx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #56
          to label %._crit_edge89 unwind label %bb.y

._crit_edge89:                                    ; preds = %bb.t
  %.val8.pre = load ptr, ptr %0, align 8
  br label %bb.z

bb.u:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679), !noalias !667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682), !noalias !667
  %i.ha = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !682, !noalias !684, !noundef !16 ; 4 uses
  %i.hb = icmp samesign ugt i64 %.val3.i22, 7
  br i1 %i.hb, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hc = icmp samesign ugt i64 %.val3.i22, 3
  br i1 %i.hc, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29, label %bb.w

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32: ; preds = %bb.u
  %.sroa.014.0.copyload.i.i.i.i.i.i.i33 = load i64, ptr %.val2.i21, align 1, !alias.scope !689, !noalias !690
  %i.hd = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i33, %i.gx
  %i.he = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i34 = load i64, ptr %i.hf, align 1, !alias.scope !689, !noalias !690
  %i.hg = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i34, %i.ha
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i.i.i.i25 = icmp eq i64 %.val3.i22, 0
  br i1 %.not.i.i.i.i.i.i.i25, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26, label %bb.x

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29: ; preds = %bb.v
  %i.hh = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.hi = getelementptr i8, ptr %i.hh, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i30 = load i32, ptr %i.hi, align 1, !alias.scope !689, !noalias !690
  %.sroa.018.0.copyload.i.i.i.i.i.i.i31 = load i32, ptr %.val2.i21, align 1, !alias.scope !689, !noalias !690
  %i.hj = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i31 to i64
  %i.hk = xor i64 %i.gx, %i.hj
  %i.hl = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i30 to i64
  %i.hm = xor i64 %i.ha, %i.hl
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

bb.x:                                             ; preds = %bb.w
  %i.hn = load i8, ptr %.val2.i21, align 1, !alias.scope !689, !noalias !690, !noundef !16
  %i.ho = lshr i64 %.val3.i22, 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.val2.i21, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !alias.scope !689, !noalias !690, !noundef !16
  %i.hr = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.hs = getelementptr i8, ptr %i.hr, i64 -1
  %i.ht = load i8, ptr %i.hs, align 1, !alias.scope !689, !noalias !690, !noundef !16
  %i.hu = zext i8 %i.hn to i64
  %i.hv = xor i64 %i.gx, %i.hu
  %i.hw = zext i8 %i.ht to i64
  %i.hx = shl nuw nsw i64 %i.hw, 8
  %i.hy = zext i8 %i.hq to i64
  %i.hz = or disjoint i64 %i.hx, %i.hy
  %i.ia = xor i64 %i.hz, %i.ha
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i26: ; preds = %bb.x, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i29, %bb.w, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i32
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.val.i.i14 = load i64, ptr %2, align 8, !alias.scope !955, !noalias !958, !noundef !16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.046.070 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %.sroa.046.1.lcssa, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.069 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.068 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.067 = phi i16 [ %i.ae, %.preheader.lr.ph ], [ %i.bd, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i362 = icmp eq i16 %.sroa.13.067, 0
  br i1 %.not.i362, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.046.164 = phi ptr [ %i.af, %.noexc4 ], [ %.sroa.046.070, %.preheader ] ; 2 uses
  %.sroa.5.163 = phi i64 [ %i.ai, %.noexc4 ], [ %.sroa.5.069, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.046.164) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.046.164, i64 16 ; 3 uses
  %.val54 = load <16 x i8>, ptr %i.af, align 16
  %i.ag = icmp sgt <16 x i8> %.val54, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %i.ai = add i64 %.sroa.5.163, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ah, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge71.loopexit:                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre81 = load i64, ptr %i.g, align 8, !alias.scope !953, !noalias !954
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %bb.g
  %i.aj = phi i64 [ %.pre81, %._crit_edge71.loopexit ], [ 0, %bb.g ]
  %i.ak = sub i64 %i.x, %i.aj
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !963, !noalias !966
  store i64 %i.ab, ptr %0, align 8, !alias.scope !963, !noalias !966
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.k, align 8, !alias.scope !968, !noalias !970 ; 3 uses
  store i64 %i.v, ptr %i.k, align 8, !alias.scope !968, !noalias !970
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !972, !noalias !974
  %i.am = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i to ptr ; 2 uses
  %i.an = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge71
  %i.ao = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 4 ; 2 uses
  %i.ap = add i64 %i.ao, 16
  %i.aq = add i64 %i.ao, 31                       ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.ap
  call void @llvm.assume(i1 %i.ar), !noalias !952
  %i.as = and i64 %i.aq, -16                      ; 3 uses
  %i.at = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = icmp ult i64 %i.au, 9223372036854775793
  call void @llvm.assume(i1 %i.av), !noalias !952
  call void @llvm.assume(i1 %i.aw), !noalias !952
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ], !noalias !952
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ay = sub nsw i64 0, %i.as
  %i.az = getelementptr inbounds i8, ptr %i.am, i64 %i.ay
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !976
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge71, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !949
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.067, %.preheader ], [ %i.ah, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.069, %.preheader ], [ %i.ai, %.noexc4 ] ; 2 uses
  %.sroa.046.1.lcssa = phi ptr [ %.sroa.046.070, %.preheader ], [ %i.af, %.noexc4 ]
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.068, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !983, !noalias !984, !nonnull !16, !noundef !16
  %i.bh = sub nsw i64 0, %i.be
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %.val2.i = load ptr, ptr %i.bj, align 8, !noalias !985, !nonnull !16, !align !128, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !985
  store i128 0, ptr %i.b, align 16, !alias.scope !986, !noalias !989
  store ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !alias.scope !986, !noalias !989
  store i64 %.val.i.i14, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !986, !noalias !989
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !alias.scope !986, !noalias !989
  invoke void @_RINvXs5_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB6_10ColumnNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val2.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.b)
          to label %.noexc15 unwind label %bb.f

.noexc15:                                         ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !991), !noalias !952
  %i.bk = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16, !alias.scope !991, !noalias !985, !noundef !16
  %.not.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc15
  %i.bl = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !991, !noalias !985, !noundef !16
  br label %bb.k

bb.j:                                             ; preds = %.noexc15
  %i.bm = load i128, ptr %i.b, align 16, !alias.scope !991, !noalias !985, !noundef !16 ; 2 uses
  %i.bn = trunc i128 %i.bm to i64
  %i.bo = lshr i128 %i.bm, 64
  %i.bp = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !991, !noalias !985, !noundef !16
  %i.bq = xor i64 %i.bp, %i.bn
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !alias.scope !991, !noalias !985, !nonnull !16, !align !128, !noundef !16
  %i.bs = load i64, ptr %i.br, align 8, !noalias !994, !noundef !16
  %i.bt = zext i64 %i.bq to i128
  %i.bu = zext i64 %i.bs to i128
  %i.bv = xor i128 %i.bo, %i.bu
  %i.bw = mul nuw i128 %i.bv, %i.bt               ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = xor i128 %i.bx, %i.bw
  %i.bz = trunc i128 %i.by to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.bz, %bb.j ], [ %i.bl, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !985
  %.sroa.0.07.i = and i64 %.sroa.0.0.i.i.i.i, %i.v ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ca, align 1, !noalias !995
  %i.cb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i16, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cc, %bb.k ], [ %i.ct, %.lr.ph.i ]
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = add i64 %.sroa.0.0.lcssa.i, %i.ce
  %i.cg = and i64 %i.cf, %i.v                     ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !16
  %i.cj = icmp sgt i8 %i.ci, -1
  br i1 %i.cj, label %bb.l, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.ck = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cl, 0
  %i.cm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cl, i1 true)
  %i.cn = zext nneg i16 %i.cm to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.co = phi i64 [ %i.cp, %.lr.ph.i ], [ 0, %bb.k ]
  %i.cp = add i64 %i.co, 16                       ; 2 uses
  %i.cq = add i64 %i.cp, %.sroa.0.010.i
  %.sroa.0.0.i16 = and i64 %i.cq, %i.v            ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cr, align 1, !noalias !995
  %i.cs = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cn, %bb.l ], [ %i.cg, %._crit_edge.i ] ; 3 uses
  %i.cu = lshr i64 %.sroa.0.0.i.i.i.i, 57
  %i.cv = trunc nuw nsw i64 %i.cu to i8           ; 2 uses
  %i.cw = add i64 %.sroa.0.0.i5.i, -16
  %i.cx = and i64 %i.cw, %i.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  store i8 %i.cv, ptr %i.cy, align 1, !noalias !952
  %i.cz = getelementptr i8, ptr %i.s, i64 %i.cx
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store i8 %i.cv, ptr %i.da, align 1, !noalias !952
  %i.db = load ptr, ptr %0, align 8, !alias.scope !953, !noalias !954, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.be, -1
  %.neg61.i.i = shl i64 %.neg.i.i, 4
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = shl i64 %.neg62.i.i, 4
  %i.dd = getelementptr inbounds i8, ptr %i.s, i64 %.neg63.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dd, ptr noundef nonnull align 1 dereferenceable(16) %i.dc, i64 range(i64 8, 321) 16, i1 false), !noalias !952
  %i.de = icmp eq i64 %i.bf, 0
  br i1 %i.de, label %._crit_edge71.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.s, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.ez, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.n, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.m
  %i.df = lshr i64 %i.n, 4
  %i.dg = and i64 %i.n, 15
  %.not10.i.i.i = icmp ne i64 %i.dg, 0
  %i.dh = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.df, %i.dh ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.di = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.di, label %.epil.preheader, label %.lr.ph.i17.new

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.dq, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod119 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.dj = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.dj, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.dk = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dl, ptr %i.dj, align 16
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.dm = icmp ult i64 %i.n, 16
  br i1 %i.dm, label %._crit_edge.thread.i, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !138

bb.n:                                             ; preds = %bb.n, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.dq, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.n ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dn, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.do = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.dp = or <2 x i64> %i.do, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dp, ptr %i.dn, align 16
  %i.dq = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.ds, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.m
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.n, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1001
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.dw, align 8, !noalias !1001
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %i.dx, align 8, !noalias !1001
  store ptr %0, ptr %i.c, align 8, !noalias !1001
  %i.dy = load i64, ptr %i.k, align 8, !alias.scope !998, !noalias !1003, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.dy, -1
  br i1 %.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.val.i.i22 = load i64, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.04.0.i61 = phi i64 [ 0, %.lr.ph ], [ %i.dz, %bb.y ] ; 10 uses
  %i.dz = add nuw i64 %.sroa.04.0.i61, 1
  %i.ea = load ptr, ptr %0, align 8, !noalias !1003, !nonnull !16, !noundef !16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.sroa.04.0.i61
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !1003, !noundef !16
  %.not.i2 = icmp eq i8 %i.ec, -128
  br i1 %.not.i2, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %.neg.i = xor i64 %.sroa.04.0.i61, -1
  %.neg11.i = shl i64 %.neg.i, 4
  %i.ed = getelementptr inbounds i8, ptr %i.ea, i64 %.neg11.i ; 4 uses
  %i.ee = sub nsw i64 0, %.sroa.04.0.i61
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader55.preheader, %bb.p
  %i.eg = phi ptr [ %.pre, %.preheader55.preheader ], [ %i.ea, %bb.p ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.eh = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.ee
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -16
  %.val2.i21 = load ptr, ptr %i.ei, align 8, !noalias !1007, !nonnull !16, !align !128, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1007
  store i128 0, ptr %i.a, align 16, !alias.scope !1009, !noalias !1012
  store ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, ptr %.sroa.4.0..sroa_idx.i.i.i.i23, align 16, !alias.scope !1009, !noalias !1012
  store i64 %.val.i.i22, ptr %.sroa.5.0..sroa_idx.i.i.i.i24, align 8, !alias.scope !1009, !noalias !1012
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i25, align 16, !alias.scope !1009, !noalias !1012
  invoke void @_RINvXs5_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB6_10ColumnNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val2.i21, ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc28 unwind label %bb.s

.noexc28:                                         ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1014), !noalias !1003
  %i.ej = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i25, align 16, !alias.scope !1014, !noalias !1007, !noundef !16
  %.not.i.i.i.i26 = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i26, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc28
  %i.ek = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i24, align 8, !alias.scope !1014, !noalias !1007, !noundef !16
  br label %bb.t

bb.r:                                             ; preds = %.noexc28
  %i.el = load i128, ptr %i.a, align 16, !alias.scope !1014, !noalias !1007, !noundef !16 ; 2 uses
  %i.em = trunc i128 %i.el to i64
  %i.en = lshr i128 %i.el, 64
  %i.eo = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i24, align 8, !alias.scope !1014, !noalias !1007, !noundef !16
  %i.ep = xor i64 %i.eo, %i.em
  %i.eq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i23, align 16, !alias.scope !1014, !noalias !1007, !nonnull !16, !align !128, !noundef !16
  %i.er = load i64, ptr %i.eq, align 8, !noalias !1017, !noundef !16
  %i.es = zext i64 %i.ep to i128
  %i.et = zext i64 %i.er to i128
  %i.eu = xor i128 %i.en, %i.et
  %i.ev = mul nuw i128 %i.eu, %i.es               ; 2 uses
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = xor i128 %i.ew, %i.ev
  %i.ey = trunc i128 %i.ex to i64
  br label %bb.t

bb.s:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #51
          to label %common.resume unwind label %bb.z, !noalias !1003

bb.t:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i27 = phi i64 [ %i.ey, %bb.r ], [ %i.ek, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1007
  %.val8 = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.k, align 8, !noundef !16 ; 6 uses
  %.sroa.0.07.i30 = and i64 %.val9, %.sroa.0.0.i.i.i.i27 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i30
  %.sroa.0.0.copyload.i68.i31 = load <16 x i8>, ptr %i.fa, align 1, !noalias !1018
  %i.fb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i31, zeroinitializer
  %i.fc = bitcast <16 x i1> %i.fb to i16          ; 2 uses
  %.not.i9.i32 = icmp eq i16 %i.fc, 0
  br i1 %.not.i9.i32, label %.lr.ph.i39, label %._crit_edge.i33, !prof !133

._crit_edge.i33:                                  ; preds = %.lr.ph.i39, %bb.t
  %.sroa.0.0.lcssa.i34 = phi i64 [ %.sroa.0.07.i30, %bb.t ], [ %.sroa.0.0.i41, %.lr.ph.i39 ]
  %.lcssa.i35 = phi i16 [ %i.fc, %bb.t ], [ %i.ft, %.lr.ph.i39 ]
  %i.fd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i35, i1 true)
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = add i64 %.sroa.0.0.lcssa.i34, %i.fe
  %i.fg = and i64 %i.ff, %.val9                   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !noundef !16
  %i.fj = icmp sgt i8 %i.fi, -1
  br i1 %i.fj, label %bb.u, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit44, !prof !18

bb.u:                                             ; preds = %._crit_edge.i33
  %.val2.i.i37 = load <16 x i8>, ptr %.val8, align 16
  %i.fk = icmp slt <16 x i8> %.val2.i.i37, zeroinitializer
  %i.fl = bitcast <16 x i1> %i.fk to i16          ; 2 uses
  %.not.i6.i38 = icmp ne i16 %i.fl, 0
  %i.fm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fl, i1 true)
  %i.fn = zext nneg i16 %i.fm to i64
  call void @llvm.assume(i1 %.not.i6.i38)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit44

.lr.ph.i39:                                       ; preds = %bb.t, %.lr.ph.i39
  %.sroa.0.010.i40 = phi i64 [ %.sroa.0.0.i41, %.lr.ph.i39 ], [ %.sroa.0.07.i30, %bb.t ]
  %i.fo = phi i64 [ %i.fp, %.lr.ph.i39 ], [ 0, %bb.t ]
  %i.fp = add i64 %i.fo, 16                       ; 2 uses
  %i.fq = add i64 %i.fp, %.sroa.0.010.i40
  %.sroa.0.0.i41 = and i64 %i.fq, %.val9          ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i41
  %.sroa.0.0.copyload.i6.i42 = load <16 x i8>, ptr %i.fr, align 1, !noalias !1018
  %i.fs = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i42, zeroinitializer
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %.not.i.i43 = icmp eq i16 %i.ft, 0
  br i1 %.not.i.i43, label %.lr.ph.i39, label %._crit_edge.i33, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit44: ; preds = %bb.u, %._crit_edge.i33
  %.sroa.0.0.i5.i36 = phi i64 [ %i.fn, %bb.u ], [ %i.fg, %._crit_edge.i33 ] ; 4 uses
  %i.fu = sub i64 %.sroa.04.0.i61, %.sroa.0.07.i30
  %i.fv = sub i64 %.sroa.0.0.i5.i36, %.sroa.0.07.i30
  %i.fw = xor i64 %i.fv, %i.fu
  %.unshifted.i = and i64 %i.fw, %.val9
  %i.fx = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fx, label %bb.v, label %bb.w, !prof !168

bb.v:                                             ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit44
  %i.fy = lshr i64 %.sroa.0.0.i.i.i.i27, 57
  %i.fz = trunc nuw nsw i64 %i.fy to i8           ; 2 uses
  %i.ga = add i64 %.sroa.04.0.i61, -16
  %i.gb = and i64 %.val9, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i61
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  tail call void @llvm.assume(i1 %i.ap), !noalias !1048
  %i.aq = and i64 %i.ao, -16                      ; 3 uses
  %i.ar = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.as = add i64 %i.ar, %i.aq                    ; 4 uses
  %i.at = icmp uge i64 %i.as, %i.aq
  %i.au = icmp ult i64 %i.as, 9223372036854775793
  tail call void @llvm.assume(i1 %i.at), !noalias !1048
  tail call void @llvm.assume(i1 %i.au), !noalias !1048
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ], !noalias !1048
  %i.av = icmp eq i64 %i.as, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.aw = sub nsw i64 0, %i.aq
  %i.ax = getelementptr inbounds i8, ptr %i.ak, i64 %i.aw
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !1072
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge79, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1045
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.075, %.preheader ], [ %i.af, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.077, %.preheader ], [ %i.ag, %.noexc4 ] ; 2 uses
  %.sroa.053.1.lcssa = phi ptr [ %.sroa.053.078, %.preheader ], [ %i.ad, %.noexc4 ]
  %i.ay = add i16 %.sroa.13.1.lcssa, -1
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = and i16 %i.ay, %.sroa.13.1.lcssa
  %i.bc = add i64 %.sroa.5.1.lcssa, %i.ba         ; 2 uses
  %i.bd = add i64 %.sroa.9.076, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %i.be = load ptr, ptr %0, align 8, !alias.scope !1079, !noalias !1080, !nonnull !16, !noundef !16
  %i.bf = sub nsw i64 0, %i.bc
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16
  %.val2.i = load ptr, ptr %i.bh, align 8, !noalias !1081, !nonnull !16, !noundef !16 ; 8 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 -8
  %.val3.i = load i64, ptr %i.bi, align 8, !noalias !1081, !noundef !16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082), !noalias !1048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085), !noalias !1048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088), !noalias !1048
  %i.bj = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i.i14, i64 %.val.i.i14, i64 %.val3.i) ; 5 uses
  %i.bk = icmp samesign ult i64 %.val3.i, 17
  br i1 %i.bk, label %bb.j, label %bb.i, !prof !168

bb.i:                                             ; preds = %._crit_edge
  %i.bl = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef range(i64 0, -9223372036854775808) %.val3.i, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #56
          to label %bb.n unwind label %bb.f

bb.j:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091), !noalias !1048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094), !noalias !1048
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !1094, !noalias !1096, !noundef !16 ; 4 uses
  %i.bn = icmp samesign ugt i64 %.val3.i, 7
  br i1 %i.bn, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp samesign ugt i64 %.val3.i, 3
  br i1 %i.bo, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, label %bb.l

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.val2.i, align 1, !alias.scope !1102, !noalias !1103
  %i.bp = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i, %i.bj
  %i.bq = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.br, align 1, !alias.scope !1102, !noalias !1103
  %i.bs = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i, %i.bm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val3.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i, label %bb.m

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bt = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.bu, align 1, !alias.scope !1102, !noalias !1103
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.val2.i, align 1, !alias.scope !1102, !noalias !1103
  %i.bv = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.bw = xor i64 %i.bj, %i.bv
  %i.bx = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.by = xor i64 %i.bm, %i.bx
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bz = load i8, ptr %.val2.i, align 1, !alias.scope !1102, !noalias !1103, !noundef !16
  %i.ca = lshr i64 %.val3.i, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !1102, !noalias !1103, !noundef !16
  %i.cd = getelementptr i8, ptr %.val2.i, i64 %.val3.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !1102, !noalias !1103, !noundef !16
  %i.cg = zext i8 %i.bz to i64
  %i.ch = xor i64 %i.bj, %i.cg
  %i.ci = zext i8 %i.cf to i64
  %i.cj = shl nuw nsw i64 %i.ci, 8
  %i.ck = zext i8 %i.cc to i64
  %i.cl = or disjoint i64 %i.cj, %i.ck
  %i.cm = xor i64 %i.cl, %i.bm
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, %bb.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bs, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.by, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.cm, %bb.m ], [ %i.bm, %bb.l ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bp, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.bw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i ], [ %i.ch, %bb.m ], [ %i.bj, %bb.l ]
  %i.cn = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i to i128
  %i.co = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i to i128
  %i.cp = mul nuw i128 %i.cn, %i.co               ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = xor i128 %i.cq, %i.cp
  %i.cs = trunc i128 %i.cr to i64
  br label %bb.n

bb.n:                                             ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i, %bb.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.cs, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i ], [ %i.bl, %bb.i ]
  %i.ct = xor i64 %storemerge.i.i.i.i.i.i.i, 255
  %i.cu = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !1104, !noundef !16
  %i.cv = zext i64 %i.ct to i128
  %i.cw = zext i64 %i.cu to i128
  %i.cx = mul nuw i128 %i.cw, %i.cv               ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = xor i128 %i.cy, %i.cx
  %i.da = trunc i128 %i.cz to i64                 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.da             ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.db, align 1, !noalias !1107
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i16, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.dd, %bb.n ], [ %i.du, %.lr.ph.i ]
  %i.de = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.0.0.lcssa.i, %i.df
  %i.dh = and i64 %i.dg, %i.t                     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noundef !16
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %bb.o, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.o:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.dl = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.dm, 0
  %i.dn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dm, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.dp = phi i64 [ %i.dq, %.lr.ph.i ], [ 0, %bb.n ]
  %i.dq = add i64 %i.dp, 16                       ; 2 uses
  %i.dr = add i64 %i.dq, %.sroa.0.010.i
  %.sroa.0.0.i16 = and i64 %i.dr, %i.t            ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ds, align 1, !noalias !1107
  %i.dt = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.do, %bb.o ], [ %i.dh, %._crit_edge.i ] ; 3 uses
  %i.dv = lshr i64 %i.da, 57
  %i.dw = trunc nuw nsw i64 %i.dv to i8           ; 2 uses
  %i.dx = add i64 %.sroa.0.0.i5.i, -16
  %i.dy = and i64 %i.dx, %i.t
  %i.dz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.dw, ptr %i.dz, align 1, !noalias !1048
  %i.ea = getelementptr i8, ptr %i.q, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store i8 %i.dw, ptr %i.eb, align 1, !noalias !1048
  %i.ec = load ptr, ptr %0, align 8, !alias.scope !1049, !noalias !1050, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.bc, -1
  %.neg61.i.i = shl i64 %.neg.i.i, 4
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = shl i64 %.neg62.i.i, 4
  %i.ee = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ee, ptr noundef nonnull align 1 dereferenceable(16) %i.ed, i64 range(i64 8, 321) 16, i1 false), !noalias !1048
  %i.ef = icmp eq i64 %i.bd, 0
  br i1 %i.ef, label %._crit_edge79.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.y, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.gv, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.p
  %i.eg = lshr i64 %i.l, 4
  %i.eh = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.eh, 0
  %i.ei = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.eg, %i.ei ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ej = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph.i17.new

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.q

._crit_edge.i19.unr-lcssa:                        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i19, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.lr.ph.i17
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %i.er, %._crit_edge.i19.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.ek = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.ek, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.el = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.em = or <2 x i64> %i.el, splat (i64 -9187201950435737472)
  store <2 x i64> %i.em, ptr %i.ek, align 16
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.i19.unr-lcssa, %.epil.preheader
  %i.en = icmp ult i64 %i.l, 16
  br i1 %i.en, label %._crit_edge.thread.i, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !138

bb.q:                                             ; preds = %bb.q, %.lr.ph.i17.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i17.new ], [ %i.er, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.q ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.eo, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.ep = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.eq = or <2 x i64> %i.ep, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eq, ptr %i.eo, align 16
  %i.er = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.et, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.eu = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.ev = or <2 x i64> %i.eu, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ev, ptr %i.et, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i19.unr-lcssa, label %bb.q

._crit_edge.thread.i:                             ; preds = %._crit_edge.i19, %bb.p
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i19, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i19 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i19 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1113
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ex, align 8, !noalias !1113
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 16, ptr %i.ey, align 8, !noalias !1113
  store ptr %0, ptr %i.a, align 8, !noalias !1113
  %i.ez = load i64, ptr %i.i, align 8, !alias.scope !1110, !noalias !1115, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.ez, -1
  br i1 %.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.val.i.i23 = load i64, ptr %2, align 8         ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.04.0.i69 = phi i64 [ 0, %.lr.ph ], [ %i.fa, %bb.ae ] ; 10 uses
  %i.fa = add nuw i64 %.sroa.04.0.i69, 1
  %i.fb = load ptr, ptr %0, align 8, !noalias !1115, !nonnull !16, !noundef !16 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sroa.04.0.i69
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !1115, !noundef !16
  %.not.i2 = icmp eq i8 %i.fd, -128
  br i1 %.not.i2, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %.neg.i = xor i64 %.sroa.04.0.i69, -1
  %.neg11.i = shl i64 %.neg.i, 4
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %.neg11.i ; 4 uses
  %i.ff = sub nsw i64 0, %.sroa.04.0.i69
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %.preheader62.preheader, %bb.s
  %i.fh = phi ptr [ %.pre, %.preheader62.preheader ], [ %i.fb, %bb.s ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %i.fi = getelementptr inbounds [16 x i8], ptr %i.fh, i64 %i.ff ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -16
  %.val2.i21 = load ptr, ptr %i.fj, align 8, !noalias !1119, !nonnull !16, !noundef !16 ; 8 uses
  %i.fk = getelementptr i8, ptr %i.fi, i64 -8
  %.val3.i22 = load i64, ptr %i.fk, align 8, !noalias !1119, !noundef !16 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127), !noalias !1115
  %i.fl = tail call noundef i64 @llvm.fshr.i64(i64 %.val.i.i23, i64 %.val.i.i23, i64 %.val3.i22) ; 5 uses
  %i.fm = icmp samesign ult i64 %.val3.i22, 17
  br i1 %i.fm, label %bb.u, label %bb.t, !prof !168

bb.t:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.fn = invoke noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i21, i64 noundef range(i64 0, -9223372036854775808) %.val3.i22, i64 noundef %i.fl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE) #56
          to label %._crit_edge89 unwind label %bb.y

._crit_edge89:                                    ; preds = %bb.t
  %.val8.pre = load ptr, ptr %0, align 8
  br label %bb.z

bb.u:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130), !noalias !1115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133), !noalias !1115
  %i.fo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !alias.scope !1133, !noalias !1135, !noundef !16 ; 4 uses
  %i.fp = icmp samesign ugt i64 %.val3.i22, 7
  br i1 %i.fp, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i32, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = icmp samesign ugt i64 %.val3.i22, 3
  br i1 %i.fq, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i29, label %bb.w

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i32: ; preds = %bb.u
  %.sroa.014.0.copyload.i.i.i.i.i.i.i.i33 = load i64, ptr %.val2.i21, align 1, !alias.scope !1141, !noalias !1142
  %i.fr = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i.i33, %i.fl
  %i.fs = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.ft = getelementptr i8, ptr %i.fs, i64 -8
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i34 = load i64, ptr %i.ft, align 1, !alias.scope !1141, !noalias !1142
  %i.fu = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i34, %i.fo
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i26

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i.i.i.i.i25 = icmp eq i64 %.val3.i22, 0
  br i1 %.not.i.i.i.i.i.i.i.i25, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i26, label %bb.x

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i29: ; preds = %bb.v
  %i.fv = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.fw = getelementptr i8, ptr %i.fv, i64 -4
  %.sroa.019.0.copyload.i.i.i.i.i.i.i.i30 = load i32, ptr %i.fw, align 1, !alias.scope !1141, !noalias !1142
  %.sroa.018.0.copyload.i.i.i.i.i.i.i.i31 = load i32, ptr %.val2.i21, align 1, !alias.scope !1141, !noalias !1142
  %i.fx = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i.i31 to i64
  %i.fy = xor i64 %i.fl, %i.fx
  %i.fz = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i.i30 to i64
  %i.ga = xor i64 %i.fo, %i.fz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i26

bb.x:                                             ; preds = %bb.w
  %i.gb = load i8, ptr %.val2.i21, align 1, !alias.scope !1141, !noalias !1142, !noundef !16
  %i.gc = lshr i64 %.val3.i22, 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.val2.i21, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !1141, !noalias !1142, !noundef !16
  %i.gf = getelementptr i8, ptr %.val2.i21, i64 %.val3.i22
  %i.gg = getelementptr i8, ptr %i.gf, i64 -1
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !1141, !noalias !1142, !noundef !16
  %i.gi = zext i8 %i.gb to i64
  %i.gj = xor i64 %i.fl, %i.gi
  %i.gk = zext i8 %i.gh to i64
  %i.gl = shl nuw nsw i64 %i.gk, 8
  %i.gm = zext i8 %i.ge to i64
  %i.gn = or disjoint i64 %i.gl, %i.gm
  %i.go = xor i64 %i.gn, %i.fo
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i26

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i26: ; preds = %bb.x, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i29, %bb.w, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i32
  %.sroa.04.0.i.i.i.i.i.i.i.i27 = phi i64 [ %i.fu, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i32 ], [ %i.ga, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i29 ], [ %i.go, %bb.x ], [ %i.fo, %bb.w ]
  %.sroa.0.0.i.i.i.i.i.i.i.i28 = phi i64 [ %i.fr, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i32 ], [ %i.fy, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i29 ], [ %i.gj, %bb.x ], [ %i.fl, %bb.w ]
  %i.gp = zext i64 %.sroa.0.0.i.i.i.i.i.i.i.i28 to i128
  %i.gq = zext i64 %.sroa.04.0.i.i.i.i.i.i.i.i27 to i128
  %i.gr = mul nuw i128 %i.gp, %i.gq               ; 2 uses
  %i.gs = lshr i128 %i.gr, 64
  %i.gt = xor i128 %i.gs, %i.gr
  %i.gu = trunc i128 %i.gt to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #51
          to label %common.resume unwind label %bb.af, !noalias !1115

bb.z:                                             ; preds = %._crit_edge89, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i26
  %.val8 = phi ptr [ %i.fh, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i26 ], [ %.val8.pre, %._crit_edge89 ] ; 7 uses
  %storemerge.i.i.i.i.i.i.i24 = phi i64 [ %i.gu, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i.i26 ], [ %i.fn, %._crit_edge89 ]
  %i.gw = xor i64 %storemerge.i.i.i.i.i.i.i24, 255
  %i.gx = load i64, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !1143, !noundef !16
  %i.gy = zext i64 %i.gw to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !16 ; 6 uses
  %.sroa.0.07.i37 = and i64 %.val9, %i.hd         ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i37
  %.sroa.0.0.copyload.i68.i38 = load <16 x i8>, ptr %i.he, align 1, !noalias !1146
  %i.hf = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i38, zeroinitializer
  %i.hg = bitcast <16 x i1> %i.hf to i16          ; 2 uses
  %.not.i9.i39 = icmp eq i16 %i.hg, 0
  br i1 %.not.i9.i39, label %.lr.ph.i46, label %._crit_edge.i40, !prof !133

._crit_edge.i40:                                  ; preds = %.lr.ph.i46, %bb.z
end_hunk_5
begin_hunk_6_@_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1173
  store ptr %i.d, ptr %i.c, align 8, !noalias !1173
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1173
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1173
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1173
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1173
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1173
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1173
  %i.x = load ptr, ptr %0, align 8, !alias.scope !1177, !noalias !1178, !nonnull !16, !noundef !16 ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !alias.scope !1177, !noalias !1178, !noundef !16 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = ptrtoint ptr %i.q to i64
  br i1 %i.z, label %._crit_edge77, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %.val548 = load <16 x i8>, ptr %i.x, align 16
  %i.ab = icmp sgt <16 x i8> %.val548, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.076 = phi ptr [ %.sroa.040.1.lcssa, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.075 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.074 = phi i64 [ %i.bc, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.y, %.preheader.preheader ]
  %.sroa.13.073 = phi i16 [ %i.ba, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.not.i366 = icmp eq i16 %.sroa.13.073, 0
  br i1 %.not.i366, label %.noexc4, label %._crit_edge69

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.168 = phi ptr [ %i.ad, %.noexc4 ], [ %.sroa.040.076, %.preheader ] ; 2 uses
  %.sroa.5.167 = phi i64 [ %i.ag, %.noexc4 ], [ %.sroa.5.075, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.168) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.168, i64 16 ; 3 uses
  %.val49 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val49, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.167, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.af, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge69

._crit_edge77.loopexit:                           ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre96 = load i64, ptr %i.e, align 8, !alias.scope !1177, !noalias !1178
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !1179, !noalias !1182
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge77.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = phi i64 [ %.pre96, %._crit_edge77.loopexit ], [ 0, %bb.g ]
  %i.ai = sub i64 %i.v, %i.ah
  store i64 %i.aa, ptr %0, align 8, !alias.scope !1179, !noalias !1182
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.i, align 8, !alias.scope !1184, !noalias !1186 ; 3 uses
  store i64 %i.t, ptr %i.i, align 8, !alias.scope !1184, !noalias !1186
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.aj, align 8, !alias.scope !1188, !noalias !1190
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge77
  %i.al = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3 ; 2 uses
  %i.am = add i64 %i.al, 8
  %i.an = add i64 %i.al, 23                       ; 2 uses
  %i.ao = icmp uge i64 %i.an, %i.am
  tail call void @llvm.assume(i1 %i.ao), !noalias !1176
  %i.ap = and i64 %i.an, -16                      ; 3 uses
  %i.aq = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !noalias !1176
  tail call void @llvm.assume(i1 %i.at), !noalias !1176
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !1176
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !1192
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1173
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge69:                                    ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.073, %.preheader ], [ %i.af, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.075, %.preheader ], [ %i.ag, %.noexc4 ] ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.076, %.preheader ], [ %i.ad, %.noexc4 ]
  %i.ax = add i16 %.sroa.13.1.lcssa, -1
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = and i16 %i.ax, %.sroa.13.1.lcssa
  %i.bb = add i64 %.sroa.5.1.lcssa, %i.az         ; 2 uses
  %i.bc = add i64 %.sroa.9.074, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.bd = load ptr, ptr %0, align 8, !alias.scope !1199, !noalias !1202, !nonnull !16, !noundef !16
  %i.be = sub nsw i64 0, %i.bb
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %.val3.i = load i64, ptr %i.bg, align 8, !noalias !1204, !noundef !16 ; 3 uses
  %i.bh = icmp ult i64 %.val3.i, %3
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge69
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #55
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %._crit_edge69
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.val3.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bk = load i64, ptr %i.bj, align 16, !noalias !1204, !noundef !16 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.t             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !1205
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bn, %bb.j ], [ %i.ce, %.lr.ph.i ]
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp
  %i.br = and i64 %i.bq, %i.t                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !16
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.k:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bv = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %bb.j ]
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cb, %i.t            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !1205
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %i.bk, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16
  %i.ci = and i64 %i.ch, %i.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.cg, ptr %i.cj, align 1, !noalias !1176
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 %i.cg, ptr %i.cl, align 1, !noalias !1176
  %i.cm = load ptr, ptr %0, align 8, !alias.scope !1177, !noalias !1178, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.bb, -1
  %.neg61.i.i = shl i64 %.neg.i.i, 3
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = shl i64 %.neg62.i.i, 3
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i
  %i.cp = load i64, ptr %i.cn, align 1, !noalias !1176
  store i64 %i.cp, ptr %i.co, align 1, !noalias !1176
  %i.cq = icmp eq i64 %i.bc, 0
  br i1 %i.cq, label %._crit_edge77.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cr = lshr i64 %i.l, 4
  %i.cs = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cs, 0
  %i.ct = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.m

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dc, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod167 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.cv = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cx, ptr %i.cv, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.l, 16
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !138

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dc, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  %i.dc = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dg, ptr %i.de, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.m

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1211
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.di, align 8, !noalias !1211
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dj, align 8, !noalias !1211
  store ptr %0, ptr %i.a, align 8, !noalias !1211
  %i.dk = load i64, ptr %i.i, align 8, !alias.scope !1208, !noalias !1213, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.dk, -1
  br i1 %.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i64 = phi i64 [ %i.dl, %bb.t ], [ 0, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dl = add nuw i64 %.sroa.04.0.i64, 1
  %i.dm = load ptr, ptr %0, align 8, !noalias !1213, !nonnull !16, !noundef !16 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i64
  %i.do = load i8, ptr %i.dn, align 1, !noalias !1213, !noundef !16
  %.not.i2 = icmp eq i8 %i.do, -128
  br i1 %.not.i2, label %bb.n, label %bb.t

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg11.i ; 3 uses
  %i.dq = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8
  %.val3.i2061 = load i64, ptr %i.ds, align 8, !noalias !1214, !noundef !16 ; 3 uses
  %i.dt = icmp ult i64 %.val3.i2061, %3
  br i1 %i.dt, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #55
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %._crit_edge
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #51
          to label %common.resume unwind label %bb.u, !noalias !1213

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.dv = phi ptr [ %i.fq, %.preheader50.preheader ], [ %i.dm, %bb.n ] ; 7 uses
  %i.dw = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.val3.i2062
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load i64, ptr %i.dx, align 16, !noalias !1218, !noundef !16 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !16 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dy         ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dz, align 1, !noalias !1220
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.eb, 0
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !prof !133

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ]
  %.lcssa.i29 = phi i16 [ %i.eb, %.lr.ph ], [ %i.es, %.lr.ph.i33 ]
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = add i64 %.sroa.0.0.lcssa.i28, %i.ed
  %i.ef = and i64 %i.ee, %.val9                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !noundef !16
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %bb.p, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !prof !18

bb.p:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dv, align 16
  %i.ej = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.ek, 0
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ek, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  tail call void @llvm.assume(i1 %.not.i6.i32)
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38

.lr.ph.i33:                                       ; preds = %.lr.ph, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %.lr.ph ]
  %i.en = phi i64 [ %i.eo, %.lr.ph.i33 ], [ 0, %.lr.ph ]
  %i.eo = add i64 %i.en, 16                       ; 2 uses
  %i.ep = add i64 %i.eo, %.sroa.0.010.i34
  %.sroa.0.0.i35 = and i64 %i.ep, %.val9          ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eq, align 1, !noalias !1220
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer
  %i.es = bitcast <16 x i1> %i.er to i16          ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.es, 0
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !prof !134

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.em, %bb.p ], [ %i.ef, %._crit_edge.i27 ] ; 4 uses
  %i.et = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24
  %i.eu = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24
  %i.ev = xor i64 %i.eu, %i.et
  %.unshifted.i = and i64 %i.ev, %.val9
  %i.ew = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ew, label %bb.q, label %bb.r, !prof !168

bb.q:                                             ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ex = lshr i64 %i.dy, 57
  %i.ey = trunc nuw nsw i64 %i.ex to i8           ; 2 uses
  %i.ez = add i64 %.sroa.04.0.i64, -16
  %i.fa = and i64 %.val9, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i64
  store i8 %i.ey, ptr %i.fb, align 1, !noalias !1213
  %i.fc = load ptr, ptr %0, align 8, !noalias !1213, !nonnull !16, !noundef !16
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  store i8 %i.ey, ptr %i.fe, align 1, !noalias !1213
  br label %bb.t

bb.r:                                             ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.ff = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !1213, !noundef !16
  %i.fi = lshr i64 %i.dy, 57
  %i.fj = trunc nuw nsw i64 %i.fi to i8           ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i30, -16
  %i.fl = and i64 %i.fk, %.val9
  store i8 %i.fj, ptr %i.fg, align 1, !noalias !1213
  %i.fm = load ptr, ptr %0, align 8, !noalias !1213, !nonnull !16, !noundef !16
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  store i8 %i.fj, ptr %i.fo, align 1, !noalias !1213
  %i.fp = icmp eq i8 %i.fh, -1
  br i1 %i.fp, label %bb.s, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223), !noalias !1213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226), !noalias !1213
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 1, !alias.scope !1223, !noalias !1228
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ff, align 1, !alias.scope !1226, !noalias !1229
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !alias.scope !1223, !noalias !1228
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ff, align 1, !alias.scope !1226, !noalias !1229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.fq = load ptr, ptr %0, align 8, !alias.scope !1230, !noalias !1232, !nonnull !16, !noundef !16 ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dq
end_hunk_6
begin_hunk_7_@_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBP_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBT_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEEE14insert_no_growB3z_:bb.a
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !15129
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [120 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBP_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEE14insert_no_growB3h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %2) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !16 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !15132
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !133

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !16 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !15132
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !134

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [128 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ai, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 24, i64 noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 224, i64 noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEE5drainCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 26), (32, 80)) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !15135
  %i.f = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.f, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 32, i64 noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 24, 1041) %2, ptr noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.k ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !16
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #51
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  %.sroa.0.07.i = and i64 %.val15, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !15138
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !133

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i19 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val15                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !16
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !18

bb.g:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i19 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val15           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !15138
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !134

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i18 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val15
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !168

bb.h:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !16
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val15
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.l

bb.i:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val15, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !16
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.k
end_hunk_7
