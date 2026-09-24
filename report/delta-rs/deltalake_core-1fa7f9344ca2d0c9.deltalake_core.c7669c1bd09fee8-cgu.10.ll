Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.10?download=true
inline.NumInlined: 7791
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as), !noalias !1299
  tail call void @llvm.assume(i1 %i.at), !noalias !1299
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !1299
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.av = sub nsw i64 0, %i.ap
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.av
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !1308
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge77, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1298
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.bd = load ptr, ptr %0, align 8, !alias.scope !1309, !noalias !1310, !nonnull !31, !noundef !31
  %i.be = sub nsw i64 0, %i.bb
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %.val3.i = load i64, ptr %i.bg, align 8, !noalias !1311, !noundef !31 ; 3 uses
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
  %i.bk = load i64, ptr %i.bj, align 16, !noalias !1311, !noundef !31 ; 2 uses
  %.sroa.0.07.i = and i64 %i.bk, %i.t             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !1312
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !36

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bn, %bb.j ], [ %i.ce, %.lr.ph.i ]
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp
  %i.br = and i64 %i.bq, %i.t                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !31
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.k, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !33

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
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !1312
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !37

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.k ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %i.bk, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16
  %i.ci = and i64 %i.ch, %i.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.cg, ptr %i.cj, align 1, !noalias !1299
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 %i.cg, ptr %i.cl, align 1, !noalias !1299
  %i.cm = load ptr, ptr %0, align 8, !alias.scope !1300, !noalias !1301, !nonnull !31, !noundef !31
  %.neg.i.i = xor i64 %i.bb, -1
  %.neg61.i.i = shl i64 %.neg.i.i, 3
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg61.i.i
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg63.i.i = shl i64 %.neg62.i.i, 3
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i
  %i.cp = load i64, ptr %i.cn, align 1, !noalias !1299
  store i64 %i.cp, ptr %i.co, align 1, !noalias !1299
  %i.cq = icmp eq i64 %i.bc, 0
  br i1 %i.cq, label %._crit_edge77.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
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
  br i1 %i.cy, label %._crit_edge.thread.i, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !38

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1314
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.di, align 8, !noalias !1314
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dj, align 8, !noalias !1314
  store ptr %0, ptr %i.a, align 8, !noalias !1314
  %i.dk = load i64, ptr %i.i, align 8, !alias.scope !1313, !noalias !1315, !noundef !31 ; 2 uses
  %.not = icmp eq i64 %i.dk, -1
  br i1 %.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph65

.lr.ph65:                                         ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %12
  %.sroa.04.0.i64 = phi i64 [ %i.dl, %12 ], [ 0, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dl = add nuw i64 %.sroa.04.0.i64, 1
  %i.dm = load ptr, ptr %0, align 8, !noalias !1315, !nonnull !31, !noundef !31 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.04.0.i64
  %i.do = load i8, ptr %i.dn, align 1, !noalias !1315, !noundef !31
  %.not.i2 = icmp eq i8 %i.do, -128
  br i1 %.not.i2, label %bb.n, label %12

bb.n:                                             ; preds = %.lr.ph65
  %.neg.i = xor i64 %.sroa.04.0.i64, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg11.i ; 3 uses
  %i.dq = sub nsw i64 0, %.sroa.04.0.i64          ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dq
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8
  %.val3.i2061 = load i64, ptr %i.ds, align 8, !noalias !1316, !noundef !31 ; 3 uses
  %i.dt = icmp ult i64 %.val3.i2061, %3
  br i1 %i.dt, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %.preheader50.preheader
  %.val3.i20.lcssa = phi i64 [ %.val3.i20.a, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #55
          to label %.noexc22 unwind label %bb.o

.noexc22:                                         ; preds = %._crit_edge
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #51
          to label %common.resume unwind label %bb.t, !noalias !1315

.lr.ph:                                           ; preds = %bb.n, %.preheader50.preheader
  %.val3.i2062 = phi i64 [ %.val3.i20.a, %.preheader50.preheader ], [ %.val3.i2061, %bb.n ]
  %i.dv = phi ptr [ %i.fq, %.preheader50.preheader ], [ %i.dm, %bb.n ] ; 7 uses
  %i.dw = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.val3.i2062
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load i64, ptr %i.dx, align 16, !noalias !1317, !noundef !31 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !31 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.dy         ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.dz, align 1, !noalias !1318
  %i.ea = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.eb, 0
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !prof !36

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %.lr.ph
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %.lr.ph ], [ %.sroa.0.0.i35, %.lr.ph.i33 ]
  %.lcssa.i29 = phi i16 [ %i.eb, %.lr.ph ], [ %i.es, %.lr.ph.i33 ]
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = add i64 %.sroa.0.0.lcssa.i28, %i.ed
  %i.ef = and i64 %i.ee, %.val9                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !noundef !31
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %bb.p, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !prof !33

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
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.eq, align 1, !noalias !1318
  %i.er = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer
  %i.es = bitcast <16 x i1> %i.er to i16          ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.es, 0
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !prof !37

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.p, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.em, %bb.p ], [ %i.ef, %._crit_edge.i27 ] ; 4 uses
  %i.et = sub i64 %.sroa.04.0.i64, %.sroa.0.07.i24
  %i.eu = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24
  %i.ev = xor i64 %i.eu, %i.et
  %.unshifted.i = and i64 %i.ev, %.val9
  %i.ew = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ew, label %bb.q, label %bb.r, !prof !39

bb.q:                                             ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ex = lshr i64 %i.dy, 57
  %i.ey = trunc nuw nsw i64 %i.ex to i8           ; 2 uses
  %i.ez = add i64 %.sroa.04.0.i64, -16
  %i.fa = and i64 %.val9, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i64
  store i8 %i.ey, ptr %i.fb, align 1, !noalias !1315
  %i.fc = load ptr, ptr %0, align 8, !noalias !1315, !nonnull !31, !noundef !31
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fa
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  store i8 %i.ey, ptr %i.fe, align 1, !noalias !1315
  br label %12

bb.r:                                             ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.ff = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !1315, !noundef !31
  %i.fi = lshr i64 %i.dy, 57
  %i.fj = trunc nuw nsw i64 %i.fi to i8           ; 2 uses
  %i.fk = add i64 %.sroa.0.0.i5.i30, -16
  %i.fl = and i64 %i.fk, %.val9
  store i8 %i.fj, ptr %i.fg, align 1, !noalias !1315
  %i.fm = load ptr, ptr %0, align 8, !noalias !1315, !nonnull !31, !noundef !31
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.fl
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  store i8 %i.fj, ptr %i.fo, align 1, !noalias !1315
  %i.fp = icmp eq i8 %i.fh, -1
  br i1 %i.fp, label %bb.s, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319), !noalias !1315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320), !noalias !1315
  %.sroa.0.0.copyload.i.i.i.a = load i64, ptr %i.dp, align 1, !alias.scope !1319, !noalias !1321
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.ff, align 1, !alias.scope !1320, !noalias !1322
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !alias.scope !1319, !noalias !1321
  store i64 %.sroa.0.0.copyload.i.i.i.a, ptr %i.ff, align 1, !alias.scope !1320, !noalias !1322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.fq = load ptr, ptr %0, align 8, !alias.scope !1323, !noalias !1324, !nonnull !31, !noundef !31 ; 2 uses
  %5 = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.dq
  %i.fr = getelementptr inbounds i8, ptr %5, i64 -8
  %.val3.i20.a = load i64, ptr %i.fr, align 8, !noalias !1325, !noundef !31 ; 3 uses
  %6 = icmp ult i64 %.val3.i20.a, %3
  br i1 %6, label %.lr.ph, label %._crit_edge

bb.s:                                             ; preds = %bb.r
  %7 = add i64 %.sroa.04.0.i64, -16
  %i.fs = load i64, ptr %i.i, align 8, !noalias !1315, !noundef !31
  %8 = and i64 %i.fs, %7
  %9 = load ptr, ptr %0, align 8, !noalias !1315, !nonnull !31, !noundef !31
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.04.0.i64
  store i8 -1, ptr %10, align 1, !noalias !1315
  %i.ft = load ptr, ptr %0, align 8, !noalias !1315, !nonnull !31, !noundef !31
  %11 = getelementptr i8, ptr %i.ft, i64 %8
  %i.fu = getelementptr i8, ptr %11, i64 16
  store i8 -1, ptr %i.fu, align 1, !noalias !1315
  %i.fv = load i64, ptr %i.dp, align 1, !noalias !1315
  store i64 %i.fv, ptr %i.ff, align 1, !noalias !1315
  br label %12

12:                                               ; preds = %bb.s, %bb.q, %.lr.ph65
  %exitcond.not = icmp eq i64 %.sroa.04.0.i64, %i.dk
  br i1 %exitcond.not, label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph65

bb.t:                                             ; preds = %bb.o
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !1315
  unreachable

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %12
  %.pre = load i64, ptr %i.i, align 8, !noalias !1315 ; 2 uses
  %.pre98 = add i64 %.pre, 1
  %i.fx = lshr i64 %.pre98, 3
  %i.fy = mul nuw i64 %i.fx, 7
  br label %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.fy, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.fz = phi i64 [ %.pre, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 8
  %.sroa.01.0.i = select i1 %i.ga, i64 %i.fz, i64 %.pre-phi
  %i.gb = load i64, ptr %i.e, align 8, !noalias !1315, !noundef !31
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = sub i64 %.sroa.01.0.i, %i.gb
  store i64 %i.gd, ptr %i.gc, align 8, !noalias !1315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1314
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #55, !noalias !1326
  unreachable

_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, %bb.c, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ge = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gf = insertvalue { i64, i64 } %i.ge, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gf
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBV_6string6StringEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1351, !noalias !1352, !noundef !31 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1351, !noalias !1352, !noundef !31 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1353 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1355
  call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 1041) 24, i64 noundef range(i64 1, 0) %.sroa.0.0.i9, i1 noundef zeroext %3) #53
  %i.u = load ptr, ptr %i.a, align 8, !noalias !1355, !noundef !31 ; 10 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !1355 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !1355 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1355
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.b) #51, !noalias !1356
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !1355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1355
  store ptr %i.e, ptr %i.b, align 8, !noalias !1355
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1355
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1355
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1355
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1355
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1355
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1355
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1357, !noalias !1358, !nonnull !31, !noundef !31 ; 3 uses
  %i.ac = load i64, ptr %i.f, align 8, !alias.scope !1357, !noalias !1358, !noundef !31 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = ptrtoint ptr %i.u to i64
  br i1 %i.ad, label %._crit_edge30, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %.val419 = load <16 x i8>, ptr %i.ab, align 16
  %i.af = icmp sgt <16 x i8> %.val419, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.029 = phi ptr [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ab, %.preheader.preheader ] ; 2 uses
  %.sroa.5.028 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.027 = phi i64 [ %i.bg, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ]
  %.sroa.13.026 = phi i16 [ %i.be, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ag, %.preheader.preheader ] ; 2 uses
  %.not.i221 = icmp eq i16 %.sroa.13.026, 0
  br i1 %.not.i221, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.123 = phi ptr [ %i.ah, %.noexc3 ], [ %.sroa.0.029, %.preheader ] ; 2 uses
  %.sroa.5.122 = phi i64 [ %i.ak, %.noexc3 ], [ %.sroa.5.028, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.123) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.123, i64 16 ; 3 uses
  %.val20 = load <16 x i8>, ptr %i.ah, align 16
  %i.ai = icmp sgt <16 x i8> %.val20, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = add i64 %.sroa.5.122, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.aj, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge30.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !1357, !noalias !1358
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !1359, !noalias !1360
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge30

._crit_edge30:                                    ; preds = %._crit_edge30.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge30.loopexit ], [ %i.ab, %bb.g ] ; 2 uses
  %i.al = phi i64 [ %.pre, %._crit_edge30.loopexit ], [ 0, %bb.g ]
  %i.am = sub i64 %i.z, %i.al
  store i64 %i.ae, ptr %0, align 8, !alias.scope !1359, !noalias !1360
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.j, align 8, !alias.scope !1361, !noalias !1362 ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !alias.scope !1361, !noalias !1362
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %i.an, align 8, !alias.scope !1363, !noalias !1364
  %i.ao = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge30
  %i.ap = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 24 ; 2 uses
  %i.aq = add i64 %i.ap, 24
  %i.ar = add i64 %i.ap, 39                       ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.aq
  call void @llvm.assume(i1 %i.as), !noalias !1356
  %i.at = and i64 %i.ar, -16                      ; 3 uses
  %i.au = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.av = add i64 %i.au, %i.at                    ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at
  %i.ax = icmp ult i64 %i.av, 9223372036854775793
  call void @llvm.assume(i1 %i.aw), !noalias !1356
  call void @llvm.assume(i1 %i.ax), !noalias !1356
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !1356
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.at
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.az
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !1365
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge30, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1355
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.026, %.preheader ], [ %i.aj, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.028, %.preheader ], [ %i.ak, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.029, %.preheader ], [ %i.ah, %.noexc3 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.027, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !1366, !noalias !1367, !nonnull !31, !noundef !31
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.bi
end_hunk_0
