inline.NumInlined: 308
inline.NumDeleted: 157
begin_hunk_0_@_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a

._crit_edge50:                                    ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.._crit_edge50_crit_edge, %._crit_edge50.loopexit
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %i.gc, %._crit_edge50.loopexit ], [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.._crit_edge50_crit_edge ]
  %i.bn = phi i64 [ %.pre61, %._crit_edge50.loopexit ], [ 0, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.._crit_edge50_crit_edge ]
  %i.bo = sub i64 %.sroa.03.0.i.i, %i.bn
  store i64 %i.ay, ptr %0, align 8, !alias.scope !25, !noalias !28
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.j, align 8, !alias.scope !41, !noalias !43 ; 3 uses
  store i64 %i.as, ptr %i.j, align 8, !alias.scope !41, !noalias !43
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bo, ptr %i.bp, align 8, !alias.scope !45, !noalias !47
  %i.bq = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge50
  %i.br = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 40 ; 2 uses
  %i.bs = add i64 %i.br, 40
  %i.bt = add i64 %i.br, 55                       ; 2 uses
  %i.bu = icmp uge i64 %i.bt, %i.bs
  call void @llvm.assume(i1 %i.bu)
  %i.bv = and i64 %i.bt, -16                      ; 3 uses
  %i.bw = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bx = add i64 %i.bw, %i.bv                    ; 3 uses
  %i.by = icmp uge i64 %i.bx, %i.bv
  %i.bz = icmp ult i64 %i.bx, 9223372036854775793
  call void @llvm.assume(i1 %i.by)
  call void @llvm.assume(i1 %i.bz)
  %i.ca = sub nsw i64 0, %i.bv
  %i.cb = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.ca
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !49
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %._crit_edge50, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.046, %.preheader ], [ %i.bl, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.048, %.preheader ], [ %i.bm, %.noexc3 ] ; 2 uses
  %.sroa.017.1.lcssa = phi ptr [ %.sroa.017.049, %.preheader ], [ %i.bi, %.noexc3 ]
  %i.cc = add i16 %.sroa.13.1.lcssa, -1
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = and i16 %i.cc, %.sroa.13.1.lcssa
  %i.cg = add i64 %.sroa.5.1.lcssa, %i.ce         ; 2 uses
  %i.ch = add i64 %.sroa.9.047, -1                ; 2 uses
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [40 x i8], ptr %i.bh, i64 %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33
  %i.cl = load <2 x i64>, ptr %i.be, align 8, !noalias !33 ; 3 uses
  %i.cm = shufflevector <2 x i64> %i.cl, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cn = xor <2 x i64> %i.cm, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.cn, ptr %i.c, align 16, !alias.scope !54, !noalias !33
  %i.co = shufflevector <2 x i64> %i.cl, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = xor <2 x i64> %i.co, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.cp, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !54, !noalias !33
  store <2 x i64> %i.cl, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !54, !noalias !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !54, !noalias !33
  invoke void @_RINvXs_Cs3LITIwzqf1g_4uuidNtB5_4UuidNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.n unwind label %bb.m

bb.n:                                             ; preds = %._crit_edge
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.c, align 16, !alias.scope !57, !noalias !33
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !57, !noalias !33
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !57, !noalias !33 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !57, !noalias !33
  %i.cq = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !57, !noalias !33, !noundef !8
  %i.cr = shl i64 %i.cq, 56
  %i.cs = load i64, ptr %i.bf, align 8, !alias.scope !57, !noalias !33, !noundef !8
  %i.ct = or i64 %i.cr, %i.cs                     ; 2 uses
  %i.cu = xor i64 %i.ct, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.cv = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.cw = add i64 %i.cu, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.cx = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.cy = xor i64 %i.cx, %i.cv                    ; 3 uses
  %i.cz = call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 16)
  %i.da = xor i64 %i.cz, %i.cw                    ; 3 uses
  %i.db = call noundef i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 32)
  %i.dc = add i64 %i.cw, %i.cy                    ; 3 uses
  %i.dd = add i64 %i.da, %i.db                    ; 2 uses
  %i.de = call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 17)
  %i.df = xor i64 %i.dc, %i.de                    ; 3 uses
  %i.dg = call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 21)
  %i.dh = xor i64 %i.dg, %i.dd                    ; 3 uses
  %i.di = call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 32)
  %i.dj = xor i64 %i.dd, %i.ct
  %i.dk = xor i64 %i.di, 255
  %i.dl = add i64 %i.dj, %i.df                    ; 3 uses
  %i.dm = add i64 %i.dh, %i.dk                    ; 2 uses
  %i.dn = call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 13)
  %i.do = xor i64 %i.dl, %i.dn                    ; 3 uses
  %i.dp = call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 16)
  %i.dq = xor i64 %i.dp, %i.dm                    ; 3 uses
  %i.dr = call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 32)
  %i.ds = add i64 %i.do, %i.dm                    ; 3 uses
  %i.dt = add i64 %i.dq, %i.dr                    ; 2 uses
  %i.du = call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 17)
  %i.dv = xor i64 %i.ds, %i.du                    ; 3 uses
  %i.dw = call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 21)
  %i.dx = xor i64 %i.dw, %i.dt                    ; 3 uses
  %i.dy = call noundef i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 32)
  %i.dz = add i64 %i.dv, %i.dt                    ; 3 uses
  %i.ea = add i64 %i.dx, %i.dy                    ; 2 uses
  %i.eb = call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 13)
  %i.ec = xor i64 %i.eb, %i.dz                    ; 3 uses
  %i.ed = call noundef i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 16)
  %i.ee = xor i64 %i.ed, %i.ea                    ; 3 uses
  %i.ef = call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 32)
  %i.eg = add i64 %i.ec, %i.ea                    ; 3 uses
  %i.eh = add i64 %i.ee, %i.ef                    ; 2 uses
  %i.ei = call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 17)
  %i.ej = xor i64 %i.ei, %i.eg                    ; 3 uses
  %i.ek = call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 21)
  %i.el = xor i64 %i.ek, %i.eh                    ; 3 uses
  %i.em = call noundef i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 32)
  %i.en = add i64 %i.ej, %i.eh
  %i.eo = add i64 %i.el, %i.em                    ; 2 uses
  %i.ep = call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 13)
  %i.eq = xor i64 %i.ep, %i.en                    ; 3 uses
  %i.er = call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 16)
  %i.es = xor i64 %i.er, %i.eo                    ; 2 uses
  %i.et = add i64 %i.eq, %i.eo                    ; 3 uses
  %i.eu = call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 17)
  %i.ev = call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 21)
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 32)
  %i.ex = xor i64 %i.ev, %i.eu
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = xor i64 %i.ey, %i.et                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33
  %.sroa.0.07.i = and i64 %i.ez, %i.as            ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.fa, align 1, !noalias !62
  %i.fb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.fc = bitcast <16 x i1> %i.fb to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.fc, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.fc, %bb.n ], [ %i.fu, %.lr.ph.i ]
  %i.fd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.fe
  %i.fg = and i64 %i.ff, %i.as                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !noundef !8
  %i.fj = icmp sgt i8 %i.fi, -1
  br i1 %i.fj, label %bb.o, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.o:                                             ; preds = %._crit_edge.i
  %i.fk = load <16 x i8>, ptr %i.av, align 16, !noalias !65
  %i.fl = icmp slt <16 x i8> %i.fk, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.fm, 0
  %i.fn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fm, i1 true)
  %i.fo = zext nneg i16 %i.fn to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.fp = phi i64 [ %i.fq, %.lr.ph.i ], [ 0, %bb.n ]
  %i.fq = add i64 %i.fp, 16                       ; 2 uses
  %i.fr = add i64 %i.fq, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.fr, %i.as            ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.fs, align 1, !noalias !62
  %i.ft = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.fu = bitcast <16 x i1> %i.ft to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.fu, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.fo, %bb.o ], [ %i.fg, %._crit_edge.i ] ; 3 uses
  %i.fv = lshr i64 %i.ez, 57
  %i.fw = trunc nuw nsw i64 %i.fv to i8           ; 2 uses
  %i.fx = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.fy = and i64 %i.fx, %i.as
  %i.fz = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.i5.i
  store i8 %i.fw, ptr %i.fz, align 1
  %i.ga = getelementptr i8, ptr %i.av, i64 %i.fy
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store i8 %i.fw, ptr %i.gb, align 1
  %i.gc = load ptr, ptr %0, align 8, !alias.scope !23, !noalias !24, !nonnull !8, !noundef !8 ; 3 uses
  %.neg.i.i = mul i64 %i.cg, -40
  %i.gd = getelementptr i8, ptr %i.gc, i64 %.neg.i.i
  %i.ge = getelementptr i8, ptr %i.gd, i64 -40
  %.neg61.i.i = mul i64 %.sroa.0.0.i5.i, -40
  %i.gf = getelementptr i8, ptr %i.av, i64 %.neg61.i.i
  %i.gg = getelementptr i8, ptr %i.gf, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gg, ptr noundef nonnull align 1 dereferenceable(40) %i.ge, i64 40, i1 false)
  %i.gh = icmp eq i64 %i.ch, 0
  br i1 %i.gh, label %._crit_edge50.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.t, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %i.hz, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8 ; 5 uses
  %.not5.i.i = icmp eq i64 %i.m, 0
  br i1 %.not5.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  br label %bb.ab

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.gi = lshr i64 %i.m, 4
  %i.gj = and i64 %i.m, 15
  %.not10.i.i.i.i = icmp ne i64 %i.gj, 0
  %i.gk = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.gi, %i.gk ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.gl = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.gl, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.q

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.01.06.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ha, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod105 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.gm = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.01.06.i.i.epil.init ; 2 uses
  %i.gn = load <16 x i8>, ptr %i.gm, align 16, !noalias !71
  %.lobit.i.i.i.epil = ashr <16 x i8> %i.gn, splat (i8 7)
  %i.go = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.gp = or <2 x i64> %i.go, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gp, ptr %i.gm, align 16, !noalias !74
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 16)
  %i.gs = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  store ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs, ptr %i.gq, align 8, !noalias !68
  store i64 40, ptr %i.gr, align 8, !noalias !68
  store ptr %0, ptr %i.b, align 8, !noalias !68
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.gu = load ptr, ptr %2, align 8, !nonnull !8, !align !37
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.new
  %.sroa.01.06.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ha, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.q ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.01.06.i.i ; 2 uses
  %i.gx = load <16 x i8>, ptr %i.gw, align 16, !noalias !71
  %.lobit.i.i.i = ashr <16 x i8> %i.gx, splat (i8 7)
  %i.gy = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.gz = or <2 x i64> %i.gy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gz, ptr %i.gw, align 16, !noalias !74
  %i.ha = add i64 %.sroa.01.06.i.i, 32            ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.01.06.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hd = load <16 x i8>, ptr %i.hc, align 16, !noalias !71
  %.lobit.i.i.i.1 = ashr <16 x i8> %i.hd, splat (i8 7)
  %i.he = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.hf = or <2 x i64> %i.he, splat (i64 -9187201950435737472)
  store <2 x i64> %i.hf, ptr %i.hc, align 16, !noalias !74
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.q

bb.r:                                             ; preds = %bb.z, %._crit_edge.i.i
  %.sroa.04.06.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.hg, %bb.z ] ; 9 uses
  %i.hg = add nuw i64 %.sroa.04.06.i, 1           ; 2 uses
  %i.hh = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.sroa.04.06.i
  %i.hj = load i8, ptr %i.hi, align 1, !noundef !8
  %i.hk = icmp eq i8 %i.hj, -128
  br i1 %i.hk, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %.neg.i = mul i64 %i.hg, -40
  %i.hl = getelementptr inbounds i8, ptr %i.hh, i64 %.neg.i ; 7 uses
  %i.hm = sub nsw i64 0, %.sroa.04.06.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 24 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.i.preheader.i, %bb.s
  %i.hr = phi ptr [ %.pre.i, %.preheader.i.preheader.i ], [ %i.hh, %bb.s ]
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.hs = getelementptr inbounds [40 x i8], ptr %i.hr, i64 %i.hm
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  %i.hu = load <2 x i64>, ptr %i.gv, align 8, !noalias !82 ; 3 uses
  %i.hv = shufflevector <2 x i64> %i.hu, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.hw = xor <2 x i64> %i.hv, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.hw, ptr %i.a, align 16, !alias.scope !83, !noalias !80
  %i.hx = shufflevector <2 x i64> %i.hu, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = xor <2 x i64> %i.hx, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.hy, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !83, !noalias !80
  store <2 x i64> %i.hu, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !83, !noalias !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !83, !noalias !80
  invoke void @_RINvXs_Cs3LITIwzqf1g_4uuidNtB5_4UuidNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ht, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardQNtNtNtBL_3raw5inner13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %common.resume unwind label %bb.aa

bb.u:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i13 = load i64, ptr %i.a, align 16, !alias.scope !86, !noalias !80
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !alias.scope !86, !noalias !80
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !86, !noalias !80 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !alias.scope !86, !noalias !80
  %i.ia = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i, align 16, !alias.scope !86, !noalias !80, !noundef !8
  %i.ib = shl i64 %i.ia, 56
  %i.ic = load i64, ptr %i.gt, align 8, !alias.scope !86, !noalias !80, !noundef !8
  %i.id = or i64 %i.ib, %i.ic                     ; 2 uses
  %i.ie = xor i64 %i.id, %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %i.if = add i64 %.sroa.17.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i13 ; 3 uses
  %i.ig = add i64 %i.ie, %.sroa.10.0.copyload.i.i.i.i.i ; 2 uses
  %i.ih = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 13)
  %i.ii = xor i64 %i.ih, %i.if                    ; 3 uses
  %i.ij = call noundef i64 @llvm.fshl.i64(i64 %i.ie, i64 %i.ie, i64 16)
  %i.ik = xor i64 %i.ij, %i.ig                    ; 3 uses
  %i.il = call noundef i64 @llvm.fshl.i64(i64 %i.if, i64 %i.if, i64 32)
  %i.im = add i64 %i.ig, %i.ii                    ; 3 uses
  %i.in = add i64 %i.ik, %i.il                    ; 2 uses
  %i.io = call noundef i64 @llvm.fshl.i64(i64 %i.ii, i64 %i.ii, i64 17)
  %i.ip = xor i64 %i.im, %i.io                    ; 3 uses
  %i.iq = call noundef i64 @llvm.fshl.i64(i64 %i.ik, i64 %i.ik, i64 21)
  %i.ir = xor i64 %i.iq, %i.in                    ; 3 uses
  %i.is = call noundef i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 32)
  %i.it = xor i64 %i.in, %i.id
  %i.iu = xor i64 %i.is, 255
  %i.iv = add i64 %i.it, %i.ip                    ; 3 uses
  %i.iw = add i64 %i.ir, %i.iu                    ; 2 uses
  %i.ix = call noundef i64 @llvm.fshl.i64(i64 %i.ip, i64 %i.ip, i64 13)
  %i.iy = xor i64 %i.iv, %i.ix                    ; 3 uses
  %i.iz = call noundef i64 @llvm.fshl.i64(i64 %i.ir, i64 %i.ir, i64 16)
  %i.ja = xor i64 %i.iz, %i.iw                    ; 3 uses
  %i.jb = call noundef i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 32)
  %i.jc = add i64 %i.iy, %i.iw                    ; 3 uses
  %i.jd = add i64 %i.ja, %i.jb                    ; 2 uses
  %i.je = call noundef i64 @llvm.fshl.i64(i64 %i.iy, i64 %i.iy, i64 17)
  %i.jf = xor i64 %i.jc, %i.je                    ; 3 uses
  %i.jg = call noundef i64 @llvm.fshl.i64(i64 %i.ja, i64 %i.ja, i64 21)
  %i.jh = xor i64 %i.jg, %i.jd                    ; 3 uses
  %i.ji = call noundef i64 @llvm.fshl.i64(i64 %i.jc, i64 %i.jc, i64 32)
  %i.jj = add i64 %i.jf, %i.jd                    ; 3 uses
  %i.jk = add i64 %i.jh, %i.ji                    ; 2 uses
  %i.jl = call noundef i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 13)
  %i.jm = xor i64 %i.jl, %i.jj                    ; 3 uses
  %i.jn = call noundef i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 16)
  %i.jo = xor i64 %i.jn, %i.jk                    ; 3 uses
  %i.jp = call noundef i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 32)
  %i.jq = add i64 %i.jm, %i.jk                    ; 3 uses
  %i.jr = add i64 %i.jo, %i.jp                    ; 2 uses
  %i.js = call noundef i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 17)
  %i.jt = xor i64 %i.js, %i.jq                    ; 3 uses
  %i.ju = call noundef i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 21)
  %i.jv = xor i64 %i.ju, %i.jr                    ; 3 uses
  %i.jw = call noundef i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 32)
  %i.jx = add i64 %i.jt, %i.jr
  %i.jy = add i64 %i.jv, %i.jw                    ; 2 uses
  %i.jz = call noundef i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 13)
  %i.ka = xor i64 %i.jz, %i.jx                    ; 3 uses
  %i.kb = call noundef i64 @llvm.fshl.i64(i64 %i.jv, i64 %i.jv, i64 16)
  %i.kc = xor i64 %i.kb, %i.jy                    ; 2 uses
  %i.kd = add i64 %i.ka, %i.jy                    ; 3 uses
  %i.ke = call noundef i64 @llvm.fshl.i64(i64 %i.ka, i64 %i.ka, i64 17)
  %i.kf = call noundef i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 21)
  %i.kg = call noundef i64 @llvm.fshl.i64(i64 %i.kd, i64 %i.kd, i64 32)
  %i.kh = xor i64 %i.kf, %i.ke
  %i.ki = xor i64 %i.kh, %i.kg
  %i.kj = xor i64 %i.ki, %i.kd                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  %.val.i14 = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8 ; 7 uses
  %.val12.i = load i64, ptr %i.j, align 8, !alias.scope !68, !noundef !8 ; 6 uses
  %.sroa.0.07.i.i = and i64 %i.kj, %.val12.i      ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.kk, align 1, !noalias !91
  %i.kl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.km = bitcast <16 x i1> %i.kl to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.km, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %bb.u
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.u ], [ %.sroa.0.0.i.i16, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.km, %bb.u ], [ %i.le, %.lr.ph.i16.i ]
  %i.kn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ko = zext nneg i16 %i.kn to i64
  %i.kp = add i64 %.sroa.0.0.lcssa.i.i, %i.ko
  %i.kq = and i64 %i.kp, %.val12.i                ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !noundef !8
  %i.kt = icmp sgt i8 %i.ks, -1
  br i1 %i.kt, label %bb.v, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i

bb.v:                                             ; preds = %._crit_edge.i15.i
end_hunk_0
begin_hunk_1_@_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i: ; preds = %bb.v, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ky, %bb.v ], [ %i.kq, %._crit_edge.i15.i ] ; 4 uses
  %i.lf = sub i64 %.sroa.04.06.i, %.sroa.0.07.i.i
  %i.lg = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.lh = xor i64 %i.lg, %i.lf
  %.unshifted.i = and i64 %i.lh, %.val12.i
  %i.li = icmp ult i64 %.unshifted.i, 16
  br i1 %i.li, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i
  %.neg11.i = mul i64 %.sroa.0.0.i5.i.i, -40
  %i.lj = getelementptr i8, ptr %.val.i14, i64 %.neg11.i ; 5 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 -40    ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !noundef !8
  %i.ln = lshr i64 %i.kj, 57
  %i.lo = trunc nuw nsw i64 %i.ln to i8           ; 2 uses
  %i.lp = add i64 %.sroa.0.0.i5.i.i, -16
  %i.lq = and i64 %i.lp, %.val12.i
  store i8 %i.lo, ptr %i.ll, align 1
  %i.lr = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8
  %i.ls = getelementptr i8, ptr %i.lr, i64 %i.lq
  %i.lt = getelementptr i8, ptr %i.ls, i64 16
  store i8 %i.lo, ptr %i.lt, align 1
  %i.lu = icmp eq i8 %i.lm, -1
  br i1 %i.lu, label %bb.y, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %.sroa.0.0.copyload.i.i.i.i15 = load i64, ptr %i.hl, align 1, !alias.scope !97, !noalias !100
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.lk, align 1, !alias.scope !100, !noalias !97
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.hl, align 1, !alias.scope !97, !noalias !100
  store i64 %.sroa.0.0.copyload.i.i.i.i15, ptr %i.lk, align 1, !alias.scope !100, !noalias !97
  %i.lv = getelementptr i8, ptr %i.lj, i64 -32    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.hn, align 1, !alias.scope !102, !noalias !104
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.lv, align 1, !alias.scope !104, !noalias !102
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.hn, align 1, !alias.scope !102, !noalias !104
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.lv, align 1, !alias.scope !104, !noalias !102
  %i.lw = getelementptr i8, ptr %i.lj, i64 -24    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.ho, align 1, !alias.scope !106, !noalias !108
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.lw, align 1, !alias.scope !108, !noalias !106
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.ho, align 1, !alias.scope !106, !noalias !108
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.lw, align 1, !alias.scope !108, !noalias !106
  %i.lx = getelementptr i8, ptr %i.lj, i64 -16    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %.sroa.0.0.copyload.i.i.i.3.i = load i64, ptr %i.hp, align 1, !alias.scope !110, !noalias !112
  %.sroa.02.0.copyload.i.i.i.3.i = load i64, ptr %i.lx, align 1, !alias.scope !112, !noalias !110
  store i64 %.sroa.02.0.copyload.i.i.i.3.i, ptr %i.hp, align 1, !alias.scope !110, !noalias !112
  store i64 %.sroa.0.0.copyload.i.i.i.3.i, ptr %i.lx, align 1, !alias.scope !112, !noalias !110
  %i.ly = getelementptr i8, ptr %i.lj, i64 -8     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %.sroa.0.0.copyload.i.i.i.4.i = load i64, ptr %i.hq, align 1, !alias.scope !114, !noalias !116
  %.sroa.02.0.copyload.i.i.i.4.i = load i64, ptr %i.ly, align 1, !alias.scope !116, !noalias !114
  store i64 %.sroa.02.0.copyload.i.i.i.4.i, ptr %i.hq, align 1, !alias.scope !114, !noalias !116
  store i64 %.sroa.0.0.copyload.i.i.i.4.i, ptr %i.ly, align 1, !alias.scope !116, !noalias !114
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !118, !noalias !119
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.x:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i
  %i.lz = lshr i64 %i.kj, 57
  %i.ma = trunc nuw nsw i64 %i.lz to i8           ; 2 uses
  %i.mb = add i64 %.sroa.04.06.i, -16
  %i.mc = and i64 %.val12.i, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.val.i14, i64 %.sroa.04.06.i
  store i8 %i.ma, ptr %i.md, align 1
  %i.me = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8
  %i.mf = getelementptr i8, ptr %i.me, i64 %i.mc
  %i.mg = getelementptr i8, ptr %i.mf, i64 16
  store i8 %i.ma, ptr %i.mg, align 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.mh = add i64 %.sroa.04.06.i, -16
  %i.mi = load i64, ptr %i.j, align 8, !alias.scope !68, !noundef !8
  %i.mj = and i64 %i.mi, %i.mh
  %i.mk = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.sroa.04.06.i
  store i8 -1, ptr %i.ml, align 1
  %i.mm = load ptr, ptr %0, align 8, !alias.scope !68, !nonnull !8, !noundef !8
  %i.mn = getelementptr i8, ptr %i.mm, i64 %i.mj
  %i.mo = getelementptr i8, ptr %i.mn, i64 16
  store i8 -1, ptr %i.mo, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.lk, ptr noundef nonnull align 1 dereferenceable(40) %i.hl, i64 40, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.r
  %exitcond.not.i = icmp eq i64 %.sroa.04.06.i, %i.k
  br i1 %exitcond.not.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, label %bb.r

bb.aa:                                            ; preds = %bb.t
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.z
  %.pre12.i = load i64, ptr %i.j, align 8, !alias.scope !68
  %.pre12.i.fr = freeze i64 %.pre12.i             ; 3 uses
  %.pre13.i = add i64 %.pre12.i.fr, 1
  %i.mq = lshr i64 %.pre13.i, 3
  %i.mr = mul nuw i64 %i.mq, 7
  %i.ms = icmp ult i64 %.pre12.i.fr, 8
  %spec.select = select i1 %i.ms, i64 %.pre12.i.fr, i64 %i.mr
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !68
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.mt = phi i64 [ %i.g, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.mu = phi i64 [ 0, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mw = sub i64 %i.mu, %i.mt
  store i64 %i.mw, ptr %i.mv, align 8, !alias.scope !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.c, %bb.ab
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.ab ], [ %.sroa.12.032, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -9223372036854775807, %bb.ab ], [ %.sroa.7.031, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %i.mx = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.my = insertvalue { i64, i64 } %i.mx, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.my
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE7reserveNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14reserve_rehashNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0EB2K_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !122, !noundef !8 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !122, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !122 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !122
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = sub nsw i64 0, %i.l
  %i.t = getelementptr inbounds i8, ptr %.val2.i, i64 %i.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #29, !noalias !122
  br label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardQNtNtNtBL_3raw5inner13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !125, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !125
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !125 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !125, !noundef !8 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.04.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !125, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !125, !noundef !8
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.k = add i64 %.sroa.04.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !125, !noundef !8
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !125
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !125, !nonnull !8, !noundef !8
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !125
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !125, !nonnull !8, !noundef !8
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg6.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !125, !inline_history !128
  %i.s = load i64, ptr %i.e, align 8, !noalias !125, !noundef !8
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !125
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !125, !noundef !8 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.01.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !125, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.01.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !125
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = load i64, ptr %0, align 8, !range !132, !alias.scope !129, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !139, !nonnull !8, !align !37, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !139, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !139, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !139, !noundef !8
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !140
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !132, !alias.scope !141, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !144, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.k
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.v
    i64 5, label %bb.ab
    i64 6, label %bb.ae
    i64 7, label %bb.ah
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 9, label %bb.ak
    i64 10, label %bb.an
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.bz, %bb.ca, %bb.bt, %bb.bu, %bb.bn, %bb.bo, %bb.bh, %bb.bi, %bb.bb, %bb.bc, %.body56, %.body51, %.body46, %.body41, %.body36, %.body, %bb.au, %bb.av, %bb.z, %bb.aa, %bb.t, %bb.u, %bb.i, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.bt ], [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.ai, %bb.t ], [ %i.aw, %bb.z ], [ %i.cc, %bb.au ], [ %eh.lpad-body57, %.body56 ], [ %i.cu, %bb.bb ], [ %i.dl, %bb.bh ], [ %i.ec, %bb.bn ], [ %i.q, %bb.j ], [ %i.ai, %bb.u ], [ %i.aw, %bb.aa ], [ %i.cc, %bb.av ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body37, %.body36 ], [ %eh.lpad-body42, %.body41 ], [ %eh.lpad-body47, %.body46 ], [ %eh.lpad-body52, %.body51 ], [ %i.cu, %bb.bc ], [ %i.dl, %bb.bi ], [ %i.ec, %bb.bo ], [ %i.et, %bb.bu ], [ %i.fk, %bb.ca ], [ %i.fk, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.i, align 8           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.k = load ptr, ptr %.val28, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.k(ptr noundef nonnull %.val27)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #29
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30 unwind label %bb.aq

bb.n:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !145, !noundef !8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.aa, align 8, !alias.scope !145 ; 6 uses
  %i.ab = icmp eq ptr %.val.i, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ac = load ptr, ptr %.val1.i, align 8, !invariant.load !8, !noalias !145 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.ac(ptr noundef nonnull %.val.i)
          to label %bb.r unwind label %bb.t, !noalias !145

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !120, !invariant.load !8, !noalias !145 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !121, !invariant.load !8, !noalias !145
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #29, !noalias !145
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !120, !invariant.load !8, !noalias !145 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !121, !invariant.load !8, !noalias !145
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #29, !noalias !145
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.ao, align 8          ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load ptr, ptr %i.ap, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.aq = load ptr, ptr %.val26, align 8, !invariant.load !8 ; 2 uses
  %.not.i31 = icmp eq ptr %i.aq, null
  br i1 %.not.i31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.aq(ptr noundef nonnull %.val25)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, -9223372036854775808) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.z:                                             ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, -9223372036854775808) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #29
  br label %common.resume

bb.ab:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i35 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body36 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i35: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38 unwind label %bb.ax

bb.ae:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i40 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body41 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i40: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit43 unwind label %bb.bd

bb.ah:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body46 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit48 unwind label %bb.bj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.by, %bb.bx, %bb.bs, %bb.br, %bb.bm, %bb.bl, %bb.bg, %bb.bf, %bb.ba, %bb.az, %bb.at, %bb.as, %bb.y, %bb.x, %bb.s, %bb.r, %bb.o, %bb.h, %bb.g, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a
  ret void

bb.ak:                                            ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i50 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body51 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i50: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53 unwind label %bb.bp

bb.an:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i55 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body56 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i55: ; preds = %bb.an
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit58 unwind label %bb.bv

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.aq
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.aq ], [ %i.x, %bb.l ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.bt, align 8, !nonnull !8, !align !37, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val23, ptr nonnull %.val24) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.bu, align 8          ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load ptr, ptr %i.bv, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.bw = load ptr, ptr %.val22, align 8, !invariant.load !8 ; 2 uses
  %.not.i59 = icmp eq ptr %i.bw, null
  br i1 %.not.i59, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.bw(ptr noundef nonnull %.val21)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit30
  %i.bx = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, -9223372036854775808) %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.au:                                            ; preds = %bb.ar
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cg = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, -9223372036854775808) %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #29
  br label %common.resume

bb.aw:                                            ; preds = %.body, %.body36, %.body41, %.body46, %.body51, %.body56
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i35
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.body36:                                          ; preds = %bb.ac, %bb.ax
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.cj, %bb.ax ], [ %i.bd, %bb.ac ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19 = load ptr, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.cl, align 8, !nonnull !8, !align !37, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val19, ptr nonnull %.val20) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i35
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.cm, align 8          ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.cn, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.co = load ptr, ptr %.val18, align 8, !invariant.load !8 ; 2 uses
  %.not.i62 = icmp eq ptr %i.co, null
  br i1 %.not.i62, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.co(ptr noundef nonnull %.val17)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit38
  %i.cp = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, -9223372036854775808) %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bb:                                            ; preds = %bb.ay
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cy = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, -9223372036854775808) %i.cw, i64 noundef range(i64 1, 536870913) %i.cz) #29
  br label %common.resume

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i40
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body41

.body41:                                          ; preds = %bb.af, %bb.bd
  %eh.lpad-body42 = phi { ptr, i32 } [ %i.da, %bb.bd ], [ %i.bg, %bb.af ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.dc, align 8, !nonnull !8, !align !37, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val15, ptr nonnull %.val16) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i40
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.dd, align 8          ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.de, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.df = load ptr, ptr %.val14, align 8, !invariant.load !8 ; 2 uses
  %.not.i65 = icmp eq ptr %i.df, null
  br i1 %.not.i65, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit43
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.df(ptr noundef nonnull %.val13)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit43
  %i.dg = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, -9223372036854775808) %i.dh, i64 noundef range(i64 1, 536870913) %i.dk) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bh:                                            ; preds = %bb.be
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %common.resume, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dp = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, -9223372036854775808) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #29
  br label %common.resume

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %bb.ai, %bb.bj
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.dr, %bb.bj ], [ %i.bj, %bb.ai ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.dt, align 8, !nonnull !8, !align !37, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val11, ptr nonnull %.val12) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit48: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i45
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.du, align 8           ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.dv, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.dw = load ptr, ptr %.val10, align 8, !invariant.load !8 ; 2 uses
  %.not.i68 = icmp eq ptr %i.dw, null
  br i1 %.not.i68, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  invoke void %i.dw(ptr noundef nonnull %.val9)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit48
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, -9223372036854775808) %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bn:                                            ; preds = %bb.bk
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %common.resume, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, -9223372036854775808) %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #29
  br label %common.resume

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i50
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.body51:                                          ; preds = %bb.al, %bb.bp
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.ei, %bb.bp ], [ %i.bm, %bb.al ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load ptr, ptr %i.ek, align 8, !nonnull !8, !align !37, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val7, ptr nonnull %.val8) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i50
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.el, align 8           ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.em, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.en = load ptr, ptr %.val6, align 8, !invariant.load !8 ; 2 uses
  %.not.i71 = icmp eq ptr %i.en, null
  br i1 %.not.i71, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.en(ptr noundef nonnull %.val5)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit53
  %i.eo = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.er = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, -9223372036854775808) %i.ep, i64 noundef range(i64 1, 536870913) %i.es) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bt:                                            ; preds = %bb.bq
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %common.resume, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ex = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, -9223372036854775808) %i.ev, i64 noundef range(i64 1, 536870913) %i.ey) #29
  br label %common.resume

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i55
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.body56:                                          ; preds = %bb.ao, %bb.bv
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.ez, %bb.bv ], [ %i.bp, %bb.ao ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.fb, align 8, !nonnull !8, !align !37, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val3, ptr nonnull %.val4) #30
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit58: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i55
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.fc, align 8            ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.fd, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.fe = load ptr, ptr %.val2, align 8, !invariant.load !8 ; 2 uses
  %.not.i74 = icmp eq ptr %i.fe, null
  br i1 %.not.i74, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit58
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fe(ptr noundef nonnull %.val)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit58
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.bz:                                            ; preds = %bb.bw
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %common.resume, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #29
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !148, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.h
    i64 2, label %bb.k
    i64 3, label %bb.n
    i64 4, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit4 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.y, %.body7, %.body10, %.body, %bb.r, %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body11, %.body10 ], [ %i.j, %bb.f ], [ %i.r, %bb.o ], [ %i.u, %bb.r ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body8, %.body7 ], [ %i.ag, %bb.y ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit4: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i6 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body7 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i6: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9 unwind label %bb.u

bb.k:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body10 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.w

bb.n:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs.exit14 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs.exit14: ; preds = %bb.n
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.t

bb.q:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17: ; preds = %bb.q
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs.exit14, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit4
  ret void

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i6
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.body7:                                           ; preds = %bb.i, %bb.u
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.w, %bb.u ], [ %i.l, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x) #30
          to label %common.resume unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit9: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i6
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y)
  br label %bb.t

bb.v:                                             ; preds = %.body, %.body10, %.body7
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body10

.body10:                                          ; preds = %bb.l, %bb.w
  %eh.lpad-body11 = phi { ptr, i32 } [ %i.aa, %bb.w ], [ %i.o, %bb.l ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab) #30
          to label %common.resume unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %bb.t

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.x ], [ %i.g, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae) #30
          to label %common.resume unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit20 unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit20: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit
    i64 1, label %bb.c
  ], !prof !149

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #29
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8            ; 6 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !120, !invariant.load !8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !121, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !150

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !150

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #32
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.aa = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.x
  br i1 %i.ab, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !415
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !409, !noalias !412, !nonnull !8, !noundef !8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !409, !noalias !412, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !415
  store ptr %i.a, ptr %i.n, align 8, !noalias !419
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.i1.i.i.i = phi i64 [ 0, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %.sroa.02.0.i2.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.d ], [ %i.am, %bb.e ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.04.0.i1.i.i.i
  %i.am = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %.sroa.02.0.i2.i.i.i, ptr noundef nonnull align 8 %i.al), !noalias !409 ; 2 uses
  %i.an = add nuw i64 %.sroa.04.0.i1.i.i.i, 1     ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.ak
  br i1 %i.ao, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.e

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %.sroa.0.0.i3.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ], [ %i.am, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !8 ; 2 uses
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.0.0.i3.i.i.i)
  %.not = icmp ugt i64 %2, %.sroa.0.0.i
  br i1 %.not, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #32
  unreachable

bb.g:                                             ; preds = %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf9remainingCsj34PGqTgg0L_16deltalake_lakefs.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !428, !noalias !430, !noundef !8
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !428, !noalias !430, !noundef !8 ; 2 uses
  %i.av = load i64, ptr %.val, align 8, !range !120, !alias.scope !428, !noalias !430, !noundef !8 ; 2 uses
  %.not13.i.i = icmp ult i64 %i.au, %i.av
  %i.aw = select i1 %.not13.i.i, i64 0, i64 %i.av
  %.sroa.05.0.i.i = sub nuw i64 %i.au, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !428, !noalias !430, !nonnull !8, !noundef !8
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %.sroa.05.0.i.i ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val16.i.i = load i64, ptr %i.ba, align 8, !noalias !431, !noundef !8 ; 2 uses
  %i.bb = icmp eq i64 %.val16.i.i, %2
  br i1 %i.bb, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.n, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !431
  call void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4iterCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val), !noalias !430
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.bc = load ptr, ptr %i.j, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !435
  store ptr %i.a, ptr %i.i, align 8, !noalias !436
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = sub nuw i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 5
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.sroa.04.0.i.i.i.i2 = phi i64 [ 0, %bb.j ], [ %i.bm, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i.i.i3 = phi i64 [ 0, %bb.j ], [ %i.bl, %bb.k ]
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %.sroa.04.0.i.i.i.i2
  %i.bl = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %.sroa.02.0.i.i.i.i3, ptr noundef nonnull align 8 %i.bk), !noalias !439 ; 2 uses
  %i.bm = add nuw i64 %.sroa.04.0.i.i.i.i2, 1     ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.bj
  br i1 %i.bn, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4, label %bb.k

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4: ; preds = %bb.k, %bb.i
  %.sroa.0.0.i.i.i.i5 = phi i64 [ 0, %bb.i ], [ %i.bl, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !435
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !432, !noalias !431, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !435
  store ptr %i.a, ptr %i.h, align 8, !noalias !440
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub nuw i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 5
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.04.0.i1.i.i.i6 = phi i64 [ 0, %bb.l ], [ %i.bz, %bb.m ] ; 2 uses
  %.sroa.02.0.i2.i.i.i7 = phi i64 [ %.sroa.0.0.i.i.i.i5, %bb.l ], [ %i.by, %bb.m ]
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %.sroa.04.0.i1.i.i.i6
  %i.by = call noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %.sroa.02.0.i2.i.i.i7, ptr noundef nonnull align 8 %i.bx), !noalias !439 ; 2 uses
  %i.bz = add nuw i64 %.sroa.04.0.i1.i.i.i6, 1    ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.bw
  br i1 %i.ca, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.m

_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.m, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4
  %.sroa.0.0.i3.i.i.i8 = phi i64 [ %.sroa.0.0.i.i.i.i5, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjQNCINvNtNtB1x_8adapters3map8map_foldRBQ_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2Z_7BufListBQ_ENtNtNtBU_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1v_5accumjNtB4D_3Sum3sumINtB2i_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterBQ_EB2S_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i4 ], [ %i.by, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !431
  %.not14.i.i = icmp ugt i64 %2, %.sroa.0.0.i3.i.i.i8
  br i1 %.not14.i.i, label %bb.q, label %bb.r, !prof !9

bb.n:                                             ; preds = %bb.h
  %i.cb = icmp ugt i64 %.val16.i.i, %2
  br i1 %i.cb, label %bb.p, label %bb.i

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !431
  call void @_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf13copy_to_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %2), !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !431
  invoke void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9pop_frontCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.af unwind label %bb.ae, !noalias !430

bb.p:                                             ; preds = %bb.n
  call void @_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf13copy_to_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %2), !noalias !428
  br label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.q:                                             ; preds = %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @_RINvNtCs2pqxYH9ZEk8_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32, !noalias !430
  unreachable

bb.r:                                             ; preds = %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !431
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !446
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !447
  %i.cc = load i64, ptr %i.g, align 8, !range !448, !noalias !446, !noundef !8
  %i.cd = trunc nuw i64 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !449, !noalias !446, !noundef !8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.cd, label %bb.s, label %_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit.i.i, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !446
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #33, !noalias !447
  unreachable

_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit.i.i: ; preds = %bb.r
  %i.ci = load ptr, ptr %i.cg, align 8, !noalias !446, !nonnull !8, !noundef !8
  %i.cj = icmp ule i64 %2, %i.cf
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !446
  %i.ck = lshr i64 %i.cf, 10
  %i.cl = call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.ck, i1 false)
  %i.cm = sub nuw nsw i64 64, %i.cl
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cm, i64 7)
  %i.cn = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i, 2
  %i.co = getelementptr i8, ptr null, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  store ptr %i.ci, ptr %i.k, align 8, !alias.scope !450, !noalias !453
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 0, ptr %i.cq, align 8, !alias.scope !450, !noalias !453
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %i.cf, ptr %i.cr, align 8, !alias.scope !450, !noalias !453
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.cp, ptr %i.cs, align 8, !alias.scope !450, !noalias !453
  %i.ct = icmp eq i64 %.sroa.0.0.i3.i.i.i8, %2
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit.i.i
  invoke void @_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef %2)
          to label %bb.v unwind label %bb.ac, !noalias !430

bb.u:                                             ; preds = %_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit.i.i
  invoke void @_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.v unwind label %bb.ac, !noalias !430

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8, !noalias !431, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.5.0.copyload.i.i = load i64, ptr %i.cq, align 8, !noalias !431 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %i.cr, align 8, !noalias !431
  %.sroa.8.0.copyload.i.i = load ptr, ptr %i.cs, align 8, !noalias !431 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !431
  %i.cu = ptrtoint ptr %.sroa.8.0.copyload.i.i to i64 ; 2 uses
  %i.cv = and i64 %i.cu, 1
  %.not.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i, label %bb.x, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.v
  %i.cw = lshr i64 %i.cu, 5                       ; 7 uses
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.cx
  %i.cz = add i64 %i.cw, %.sroa.5.0.copyload.i.i
  %i.da = add i64 %i.cw, %.sroa.7.0.copyload.i.i  ; 2 uses
  %i.db = icmp sgt i64 %i.da, -1
  call void @llvm.assume(i1 %i.db)
  store i64 %i.da, ptr %i.f, align 8, !noalias !458
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cy, ptr %i.dc, align 8, !noalias !458
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.cz, ptr %i.dd, align 8, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !458
  call void @_RNvXsE_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !noalias !430
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !458
  store i64 %i.cw, ptr %i.d, align 8, !noalias !463
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !460, !noalias !458, !noundef !8 ; 4 uses
  %.not.i.i.i.i = icmp ugt i64 %i.cw, %i.df
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.z, !prof !9

bb.w:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !463
  store i64 %i.df, ptr %i.c, align 8, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !463
  store ptr %i.d, ptr %i.b, align 8, !noalias !463
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !463
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.dg, align 8, !noalias !463
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !463
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #32
          to label %.noexc.i.i.i unwind label %bb.y, !noalias !464

.noexc.i.i.i:                                     ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.dh, align 8, !alias.scope !465, !noalias !466
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload.i.i, ptr %i.di, align 8, !alias.scope !465, !noalias !466
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload.i.i, ptr %i.dj, align 8, !alias.scope !465, !noalias !466
  store ptr @_RNvNtCs9Ct3XQYJhun_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !alias.scope !465, !noalias !466
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.dl = load ptr, ptr %i.e, align 8, !alias.scope !473, !noalias !458, !nonnull !8, !align !37, !noundef !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !474, !nonnull !8, !noundef !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !473, !noalias !458, !noundef !8
  invoke void %i.dn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dq, i64 noundef %i.df)
          to label %.body.thread.i.i unwind label %bb.aa, !noalias !464, !inline_history !475

bb.z:                                             ; preds = %.noexc.i.i
  %i.dr = sub nuw i64 %i.df, %i.cw
  store i64 %i.dr, ptr %i.de, align 8, !alias.scope !460, !noalias !458
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !460, !noalias !458, !noundef !8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.cw
  store ptr %i.du, ptr %i.ds, align 8, !alias.scope !460, !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !458
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !464
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !431
  br label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs.exit

.body.thread.i.i:                                 ; preds = %bb.ae, %bb.ac, %bb.y
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.ac ], [ %i.dk, %bb.y ], [ %i.dx, %bb.ae ]
  resume { ptr, i32 } %.pn.i.i

bb.ac:                                            ; preds = %bb.u, %bb.t
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.body.thread.i.i unwind label %bb.ad, !noalias !430

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !430
  unreachable

bb.ae:                                            ; preds = %bb.ag, %bb.o
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.dy = load ptr, ptr %i.m, align 8, !alias.scope !482, !noalias !431, !nonnull !8, !align !37, !noundef !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !483, !nonnull !8, !noundef !8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !482, !noalias !431, !noundef !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !482, !noalias !431, !noundef !8
  invoke void %i.ea(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef %i.ed, i64 noundef %i.ef)
          to label %.body.thread.i.i unwind label %bb.ad, !noalias !430, !inline_history !475

bb.af:                                            ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.eg = load ptr, ptr %i.l, align 8, !alias.scope !484, !noalias !431, !noundef !8 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !493, !nonnull !8, !noundef !8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !494, !noalias !431, !noundef !8
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !494, !noalias !431, !noundef !8
  invoke void %i.ej(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.em, i64 noundef %i.eo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.ae, !noalias !430, !inline_history !495

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !431
  br label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.p, %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.ep = sub i64 %i.aq, %2
  store i64 %i.ep, ptr %i.ap, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !496, !noundef !8
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !496, !noundef !8 ; 2 uses
  %i.e = load i64, ptr %.val, align 8, !range !120, !alias.scope !496, !noundef !8 ; 2 uses
  %.not7.i.i = icmp ult i64 %i.d, %i.e
  %i.f = select i1 %.not7.i.i, i64 0, i64 %i.e
  %.sroa.03.0.i.i = sub nuw i64 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !496, !nonnull !8, !noundef !8
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.03.0.i.i ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !496, !nonnull !8, !noundef !8
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val8.i.i = load i64, ptr %i.k, align 8, !noalias !496, !noundef !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0.i.i = phi i64 [ %.val8.i.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.i.i = phi ptr [ %.val.i.i, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %.sroa.3.0.i.i)
  %i.o = insertvalue { ptr, i64 } %i.l, i64 %.sroa.0.0.i, 1
  ret { ptr, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !align !37, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %.not22.i.i = icmp eq i64 %1, 0
  br i1 %.not22.i.i, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf7advanceCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %.lr.ph.i.i
  %.sroa.0.023.i.i = phi i64 [ %1, %.lr.ph.i.i ], [ %i.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 4 uses
  %i.j = load i64, ptr %i.d, align 8, !alias.scope !499, !noundef !8
  %.not9.i.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i.i, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.e, align 8, !alias.scope !499, !noundef !8 ; 2 uses
  %i.l = load i64, ptr %.val, align 8, !range !120, !alias.scope !499, !noundef !8 ; 2 uses
  %.not10.i.i = icmp ult i64 %i.k, %i.l
  %i.m = select i1 %.not10.i.i, i64 0, i64 %i.l
  %.sroa.04.0.i.i = sub nuw i64 %i.k, %i.m
  %i.n = load ptr, ptr %i.f, align 8, !alias.scope !499, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.04.0.i.i ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 3 uses
  %.val.i.i = load i64, ptr %i.p, align 8, !noundef !8 ; 4 uses
  %i.q = icmp ugt i64 %.val.i.i, %.sroa.0.023.i.i
  br i1 %i.q, label %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i, label %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i

_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.f
  store i64 0, ptr %i.p, align 8, !alias.scope !502
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
end_hunk_2
