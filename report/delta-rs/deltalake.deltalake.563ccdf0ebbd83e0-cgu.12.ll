inline.NumInlined: 5547
inline.NumDeleted: 1701
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtCs4j34XAPZOn0_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs7p2uQeJxui2_9deltalake:bb.a
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !5493, !noundef !4 ; 2 uses
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %.not.i.i20 = icmp eq ptr %i.cc, null
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %.not.i.i20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i21 = load ptr, ptr %i.ch, align 8, !noalias !5493, !noundef !4 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i22 = load i64, ptr %i.ci, align 8, !noalias !5493, !noundef !4 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i21, i64 %.val1.i.i22
  %i.ck = icmp samesign eq i64 %.val1.i.i22, 0
  br i1 %i.ck, label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i22, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !5505

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %.val.i.i21, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i22, 8
  br i1 %i.cq, label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !5498, !noalias !5501, !noundef !4
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !1436, !noalias !5493, !noundef !4
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit

_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0 = phi i64 [ %i.cb, %_RINvXsz_NtNtCs4j34XAPZOn0_4http6header4nameNtB6_10HeaderNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake.exit ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCsgbCypRs12E4_4pyo35types5tuple16array_into_tupleKj1_ECs7p2uQeJxui2_9deltalake(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = tail call noundef ptr @PyTuple_New(i64 noundef 1) #41 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgbCypRs12E4_4pyo33err17panic_after_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #42
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.02.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.02.sroa.2.0..sroa_idx, align 8
  %.sroa.02.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %0, ptr %.sroa.02.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = inttoptr i64 %0 to ptr
  %i.e = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull %i.d) #41 ; 0 uses
  store i64 1, ptr %i.a, align 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1B_5types3any5PyAnyEEj1_NtB4_11PartialDrop12partial_dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.02.sroa.3.0..sroa_idx, i64 noundef 1, i64 noundef 1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEKj1_EEECs7p2uQeJxui2_9deltalake.exit26 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.b) #41
  br label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEKj1_EEECs7p2uQeJxui2_9deltalake.exit26: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.e, %bb.g
  %.pn2330 = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.f, %bb.e ]
  resume { ptr, i32 } %.pn2330

bb.g:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = inttoptr i64 %0 to ptr                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  tail call void @_Py_DecRef(ptr noundef nonnull %i.h) #41
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCsgbCypRs12E4_4pyo35types5tuple16array_into_tupleKj2_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = tail call noundef ptr @PyTuple_New(i64 noundef 2) #41 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgbCypRs12E4_4pyo33err17panic_after_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #42
          to label %bb.c unwind label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.d = load ptr, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !5507, !nonnull !4, !noundef !4
  %i.e = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull %i.d) #41 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5507, !nonnull !4, !noundef !4
  %i.h = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull %i.g) #41 ; 0 uses
  store i64 2, ptr %i.a, align 8
  store i64 2, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1B_5types3any5PyAnyEEj2_NtB4_11PartialDrop12partial_dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.3.0..sroa_idx, i64 noundef 2, i64 noundef 2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEKj2_EEECs7p2uQeJxui2_9deltalake.exit21 unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.b) #41
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEKj2_EEECs7p2uQeJxui2_9deltalake.exit21: ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn1924 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %.pn1924

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBM_5types3any5PyAnyEj2_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0) #43
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCsgbCypRs12E4_4pyo35types5tuple16array_into_tupleKj4_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %i.b = tail call noundef ptr @PyTuple_New(i64 noundef 4) #41 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgbCypRs12E4_4pyo33err17panic_after_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #42
          to label %bb.c unwind label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.d = load ptr, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !5514, !nonnull !4, !noundef !4
  %i.e = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull %i.d) #41 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5514, !nonnull !4, !noundef !4
  %i.h = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull %i.g) #41 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5514, !nonnull !4, !noundef !4
  %i.k = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 2, ptr noundef nonnull %i.j) #41 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5514, !nonnull !4, !noundef !4
  %i.n = tail call noundef i32 @PyTuple_SetItem(ptr noundef nonnull %i.b, i64 noundef 3, ptr noundef nonnull %i.m) #41 ; 0 uses
  store i64 4, ptr %i.a, align 8
  store i64 4, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1B_5types3any5PyAnyEEj4_NtB4_11PartialDrop12partial_dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.01.sroa.3.0..sroa_idx, i64 noundef 4, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEKj4_EEECs7p2uQeJxui2_9deltalake.exit21 unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.b) #41
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtB4_5array4iter8IntoIterINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1Z_5types3any5PyAnyEKj4_EEECs7p2uQeJxui2_9deltalake.exit21: ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn1924 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %.pn1924

bb.f:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeAINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtBM_5types3any5PyAnyEj4_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %0) #43
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsgbCypRs12E4_4pyo35types7capsule18capsule_destructorNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderNCINvMB2_NtB2_9PyCapsule3newBX_E0ECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 2 uses
  %i.b = alloca [232 x i8], align 8               ; 9 uses
  %i.c = tail call noundef ptr @PyCapsule_GetName(ptr noundef %0) #41
  %i.d = tail call noundef ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef %i.c) #41 ; 5 uses
  %i.e = tail call noundef ptr @PyCapsule_GetContext(ptr noundef %0) #41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(224) %i.d, i64 224, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.val = load ptr, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 232
  %.val3 = load i64, ptr %i.g, align 8            ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %.val, align 1
  %i.i = icmp eq i64 %.val3, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val3, i64 noundef 1) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 240, i64 noundef 8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 224, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr %i.e, ptr %i.j, align 8
  invoke void @_RNvXs1_NtCs9kEa9DYq95x_14datafusion_ffi14table_providerNtB5_17FFI_TableProviderNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(224) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9kEa9DYq95x_14datafusion_ffi5proto23logical_extension_codec25FFI_LogicalExtensionCodecECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(144) %i.l) #43
          to label %.critedge.body unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  invoke void @_RNvXs1_NtNtCs9kEa9DYq95x_14datafusion_ffi5proto23logical_extension_codecNtB5_25FFI_LogicalExtensionCodecNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke void @_RNvXs1_NtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_providerNtB5_23FFI_TaskContextProviderNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.critedge.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  invoke void @_RNvXs1_NtNtCs9kEa9DYq95x_14datafusion_ffi9execution17task_ctx_providerNtB5_23FFI_TaskContextProviderNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RNCINvMNtNtCsgbCypRs12E4_4pyo35types7capsuleNtB5_9PyCapsule3newNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderE0Cs7p2uQeJxui2_9deltalake.exit unwind label %.critedge

.critedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderECs7p2uQeJxui2_9deltalake.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.critedge.body

_RNCINvMNtNtCsgbCypRs12E4_4pyo35types7capsuleNtB5_9PyCapsule3newNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9kEa9DYq95x_14datafusion_ffi14table_provider17FFI_TableProviderECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.critedge.body:                                   ; preds = %.critedge, %bb.f, %bb.d
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsgbCypRs12E4_4pyo35types7capsule18capsule_destructorNtNtCsfYVtenZkBsn_12arrow_schema3ffi15FFI_ArrowSchemaNCINvMB2_NtB2_9PyCapsule3newBX_E0ECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = tail call noundef ptr @PyCapsule_GetName(ptr noundef %0) #41
  %i.d = tail call noundef ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef %i.c) #41 ; 5 uses
  %i.e = tail call noundef ptr @PyCapsule_GetContext(ptr noundef %0) #41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.val = load ptr, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 80
  %.val3 = load i64, ptr %i.g, align 8            ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %.val, align 1
  %i.i = icmp eq i64 %.val3, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val3, i64 noundef 1) #41
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 88, i64 noundef 8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.e, ptr %i.j, align 8
  invoke void @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema3ffiNtB4_15FFI_ArrowSchemaNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %_RNCINvMNtNtCsgbCypRs12E4_4pyo35types7capsuleNtB5_9PyCapsule3newNtNtCsfYVtenZkBsn_12arrow_schema3ffi15FFI_ArrowSchemaE0Cs7p2uQeJxui2_9deltalake.exit unwind label %.critedge

.critedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49
  unreachable

_RNCINvMNtNtCsgbCypRs12E4_4pyo35types7capsuleNtB5_9PyCapsule3newNtNtCsfYVtenZkBsn_12arrow_schema3ffi15FFI_ArrowSchemaE0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs6Po7BT7Nknu_5alloc3ffi5c_str7CStringEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store ptr %i.d, ptr %i.a, align 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !5521
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE9drop_slowB32_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1l_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCskQDtHcQtBkN_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
