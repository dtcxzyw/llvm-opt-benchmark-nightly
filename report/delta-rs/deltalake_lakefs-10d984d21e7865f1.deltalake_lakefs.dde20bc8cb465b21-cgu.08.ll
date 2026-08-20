inline.NumInlined: 308
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE14reserve_rehashNCNvXs2_B1t_INtB1t_7DashMapBY_B27_EINtNtB1t_1t3MapBY_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.da = add i64 %i.cu, %i.cw                    ; 3 uses
  %i.db = add i64 %i.cy, %i.cz                    ; 2 uses
  %i.dc = call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 17)
  %i.dd = xor i64 %i.da, %i.dc                    ; 3 uses
  %i.de = call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 21)
  %i.df = xor i64 %i.de, %i.db                    ; 3 uses
  %i.dg = call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32)
  %i.dh = xor i64 %i.db, %i.cr
  %i.di = xor i64 %i.dg, 255
  %i.dj = add i64 %i.dh, %i.dd                    ; 3 uses
  %i.dk = add i64 %i.df, %i.di                    ; 2 uses
  %i.dl = call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 13)
  %i.dm = xor i64 %i.dj, %i.dl                    ; 3 uses
  %i.dn = call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 16)
  %i.do = xor i64 %i.dn, %i.dk                    ; 3 uses
  %i.dp = call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 32)
  %i.dq = add i64 %i.dm, %i.dk                    ; 3 uses
  %i.dr = add i64 %i.do, %i.dp                    ; 2 uses
  %i.ds = call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 17)
  %i.dt = xor i64 %i.dq, %i.ds                    ; 3 uses
  %i.du = call noundef i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 21)
  %i.dv = xor i64 %i.du, %i.dr                    ; 3 uses
  %i.dw = call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 32)
  %i.dx = add i64 %i.dt, %i.dr                    ; 3 uses
  %i.dy = add i64 %i.dv, %i.dw                    ; 2 uses
  %i.dz = call noundef i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 13)
  %i.ea = xor i64 %i.dz, %i.dx                    ; 3 uses
  %i.eb = call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 16)
  %i.ec = xor i64 %i.eb, %i.dy                    ; 3 uses
  %i.ed = call noundef i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  %i.ee = add i64 %i.ea, %i.dy                    ; 3 uses
  %i.ef = add i64 %i.ec, %i.ed                    ; 2 uses
  %i.eg = call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 17)
  %i.eh = xor i64 %i.eg, %i.ee                    ; 3 uses
  %i.ei = call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 21)
  %i.ej = xor i64 %i.ei, %i.ef                    ; 3 uses
  %i.ek = call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32)
  %i.el = add i64 %i.eh, %i.ef
  %i.em = add i64 %i.ej, %i.ek                    ; 2 uses
  %i.en = call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 13)
  %i.eo = xor i64 %i.en, %i.el                    ; 3 uses
  %i.ep = call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 16)
  %i.eq = xor i64 %i.ep, %i.em                    ; 2 uses
  %i.er = add i64 %i.eo, %i.em                    ; 3 uses
  %i.es = call noundef i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 17)
  %i.et = call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 21)
  %i.eu = call noundef i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 32)
  %i.ev = xor i64 %i.et, %i.es
  %i.ew = xor i64 %i.ev, %i.eu
  %i.ex = xor i64 %i.ew, %i.er                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30
  %.sroa.0.07.i = and i64 %i.ex, %i.as            ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !56
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.0.i14, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.fa, %bb.n ], [ %i.fr, %.lr.ph.i ]
  %i.fb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.fc
  %i.fe = and i64 %i.fd, %i.as                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noundef !8
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.o, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

bb.o:                                             ; preds = %._crit_edge.i
  %.val2.i.i13 = load <16 x i8>, ptr %i.av, align 16
  %i.fi = icmp slt <16 x i8> %.val2.i.i13, zeroinitializer
  %i.fj = bitcast <16 x i1> %i.fi to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.fj, 0
  %i.fk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fj, i1 true)
  %i.fl = zext nneg i16 %i.fk to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i14, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.n ]
  %i.fm = phi i64 [ %i.fn, %.lr.ph.i ], [ 0, %bb.n ]
  %i.fn = add i64 %i.fm, 16                       ; 2 uses
  %i.fo = add i64 %i.fn, %.sroa.0.010.i
  %.sroa.0.0.i14 = and i64 %i.fo, %i.as           ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.i14
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.fp, align 1, !noalias !56
  %i.fq = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.fr = bitcast <16 x i1> %i.fq to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.fr, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit: ; preds = %bb.o, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.fl, %bb.o ], [ %i.fe, %._crit_edge.i ] ; 3 uses
  %i.fs = lshr i64 %i.ex, 57
  %i.ft = trunc nuw nsw i64 %i.fs to i8           ; 2 uses
  %i.fu = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.fv = and i64 %i.fu, %i.as
  %i.fw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.0.0.i5.i
  store i8 %i.ft, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.av, i64 %i.fv
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.ft, ptr %i.fy, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !23, !noalias !24, !nonnull !8, !noundef !8 ; 3 uses
  %.neg.i.i = mul i64 %i.ce, -40
  %i.ga = getelementptr i8, ptr %i.fz, i64 %.neg.i.i
  %i.gb = getelementptr i8, ptr %i.ga, i64 -40
  %.neg61.i.i = mul i64 %.sroa.0.0.i5.i, -40
  %i.gc = getelementptr i8, ptr %i.av, i64 %.neg61.i.i
  %i.gd = getelementptr i8, ptr %i.gc, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gd, ptr noundef nonnull align 1 dereferenceable(40) %i.gb, i64 40, i1 false)
  %i.ge = icmp eq i64 %i.cf, 0
  br i1 %i.ge, label %._crit_edge57.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.t, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %i.hr, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !59 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.m, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59
  br label %bb.ab

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.gf = lshr i64 %i.m, 4
  %i.gg = and i64 %i.m, 15
  %.not10.i.i.i.i = icmp ne i64 %i.gg, 0
  %i.gh = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.gf, %i.gh ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.gi = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.gi, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.q

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.01.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gv, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod112 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.gj = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.01.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.gj, align 16, !noalias !59
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.gk = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.gl = or <2 x i64> %i.gk, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gl, ptr %i.gj, align 16, !noalias !59
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 16)
  %i.go = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.go, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59
  store ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCs3LITIwzqf1g_4uuid4UuidINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsj34PGqTgg0L_16deltalake_lakefs, ptr %i.gm, align 8, !noalias !59
  store i64 40, ptr %i.gn, align 8, !noalias !59
  store ptr %0, ptr %i.b, align 8, !noalias !59
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.gq = load ptr, ptr %2, align 8, !nonnull !8, !align !34
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.new
  %.sroa.01.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.gv, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.q ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.01.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.gs, align 16, !noalias !59
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.gt = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.gu = or <2 x i64> %i.gt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gu, ptr %i.gs, align 16, !noalias !59
  %i.gv = add i64 %.sroa.01.08.i.i, 32            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.01.08.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.gx, align 16, !noalias !59
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.gy = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.gz = or <2 x i64> %i.gy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.gz, ptr %i.gx, align 16, !noalias !59
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.q

bb.r:                                             ; preds = %bb.z, %._crit_edge.i.i
  %.sroa.04.06.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.ha, %bb.z ] ; 9 uses
  %i.ha = add nuw i64 %.sroa.04.06.i, 1           ; 2 uses
  %i.hb = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !8, !noundef !8 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.sroa.04.06.i
  %i.hd = load i8, ptr %i.hc, align 1, !noundef !8
  %i.he = icmp eq i8 %i.hd, -128
  br i1 %i.he, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %.neg.i = mul i64 %i.ha, -40
  %i.hf = getelementptr inbounds i8, ptr %i.hb, i64 %.neg.i ; 7 uses
  %4 = sub nsw i64 0, %.sroa.04.06.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 24 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 32 ; 2 uses
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.i.preheader.i, %bb.s
  %i.hk = phi ptr [ %.pre.i, %.preheader.i.preheader.i ], [ %i.hb, %bb.s ]
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %5 = getelementptr inbounds [40 x i8], ptr %i.hk, i64 %4
  %i.hl = getelementptr inbounds i8, ptr %5, i64 -40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65
  %i.hm = load <2 x i64>, ptr %i.gr, align 8, !noalias !67 ; 3 uses
  %i.hn = shufflevector <2 x i64> %i.hm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ho = xor <2 x i64> %i.hn, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.ho, ptr %i.a, align 16, !alias.scope !68, !noalias !65
  %i.hp = shufflevector <2 x i64> %i.hm, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.hq = xor <2 x i64> %i.hp, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.hq, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !68, !noalias !65
  store <2 x i64> %i.hm, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !68, !noalias !65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !68, !noalias !65
  invoke void @_RINvXs_Cs3LITIwzqf1g_4uuidNtB5_4UuidNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hl, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardQNtNtNtBL_3raw5inner13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %common.resume unwind label %bb.aa

bb.u:                                             ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i18 = load i64, ptr %i.a, align 16, !alias.scope !71, !noalias !65
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !alias.scope !71, !noalias !65
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !71, !noalias !65 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !alias.scope !71, !noalias !65
  %i.hs = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i, align 16, !alias.scope !71, !noalias !65, !noundef !8
  %i.ht = shl i64 %i.hs, 56
  %i.hu = load i64, ptr %i.gp, align 8, !alias.scope !71, !noalias !65, !noundef !8
  %i.hv = or i64 %i.ht, %i.hu                     ; 2 uses
  %i.hw = xor i64 %i.hv, %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %i.hx = add i64 %.sroa.17.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i18 ; 3 uses
  %i.hy = add i64 %i.hw, %.sroa.10.0.copyload.i.i.i.i.i ; 2 uses
  %i.hz = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 13)
  %i.ia = xor i64 %i.hz, %i.hx                    ; 3 uses
  %i.ib = call noundef i64 @llvm.fshl.i64(i64 %i.hw, i64 %i.hw, i64 16)
  %i.ic = xor i64 %i.ib, %i.hy                    ; 3 uses
  %i.id = call noundef i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 32)
  %i.ie = add i64 %i.hy, %i.ia                    ; 3 uses
  %i.if = add i64 %i.ic, %i.id                    ; 2 uses
  %i.ig = call noundef i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 17)
  %i.ih = xor i64 %i.ie, %i.ig                    ; 3 uses
  %i.ii = call noundef i64 @llvm.fshl.i64(i64 %i.ic, i64 %i.ic, i64 21)
  %i.ij = xor i64 %i.ii, %i.if                    ; 3 uses
  %i.ik = call noundef i64 @llvm.fshl.i64(i64 %i.ie, i64 %i.ie, i64 32)
  %i.il = xor i64 %i.if, %i.hv
  %i.im = xor i64 %i.ik, 255
  %i.in = add i64 %i.il, %i.ih                    ; 3 uses
  %i.io = add i64 %i.ij, %i.im                    ; 2 uses
  %i.ip = call noundef i64 @llvm.fshl.i64(i64 %i.ih, i64 %i.ih, i64 13)
  %i.iq = xor i64 %i.in, %i.ip                    ; 3 uses
  %i.ir = call noundef i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 16)
  %i.is = xor i64 %i.ir, %i.io                    ; 3 uses
  %i.it = call noundef i64 @llvm.fshl.i64(i64 %i.in, i64 %i.in, i64 32)
  %i.iu = add i64 %i.iq, %i.io                    ; 3 uses
  %i.iv = add i64 %i.is, %i.it                    ; 2 uses
  %i.iw = call noundef i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 17)
  %i.ix = xor i64 %i.iu, %i.iw                    ; 3 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 21)
  %i.iz = xor i64 %i.iy, %i.iv                    ; 3 uses
  %i.ja = call noundef i64 @llvm.fshl.i64(i64 %i.iu, i64 %i.iu, i64 32)
  %i.jb = add i64 %i.ix, %i.iv                    ; 3 uses
  %i.jc = add i64 %i.iz, %i.ja                    ; 2 uses
  %i.jd = call noundef i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 13)
  %i.je = xor i64 %i.jd, %i.jb                    ; 3 uses
  %i.jf = call noundef i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 16)
  %i.jg = xor i64 %i.jf, %i.jc                    ; 3 uses
  %i.jh = call noundef i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 32)
  %i.ji = add i64 %i.je, %i.jc                    ; 3 uses
  %i.jj = add i64 %i.jg, %i.jh                    ; 2 uses
  %i.jk = call noundef i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 17)
  %i.jl = xor i64 %i.jk, %i.ji                    ; 3 uses
  %i.jm = call noundef i64 @llvm.fshl.i64(i64 %i.jg, i64 %i.jg, i64 21)
  %i.jn = xor i64 %i.jm, %i.jj                    ; 3 uses
  %i.jo = call noundef i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 32)
  %i.jp = add i64 %i.jl, %i.jj
  %i.jq = add i64 %i.jn, %i.jo                    ; 2 uses
  %i.jr = call noundef i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 13)
  %i.js = xor i64 %i.jr, %i.jp                    ; 3 uses
  %i.jt = call noundef i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 16)
  %i.ju = xor i64 %i.jt, %i.jq                    ; 2 uses
  %i.jv = add i64 %i.js, %i.jq                    ; 3 uses
  %i.jw = call noundef i64 @llvm.fshl.i64(i64 %i.js, i64 %i.js, i64 17)
  %i.jx = call noundef i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 21)
  %i.jy = call noundef i64 @llvm.fshl.i64(i64 %i.jv, i64 %i.jv, i64 32)
  %i.jz = xor i64 %i.jx, %i.jw
  %i.ka = xor i64 %i.jz, %i.jy
  %i.kb = xor i64 %i.ka, %i.jv                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65
  %.val.i19 = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !8, !noundef !8 ; 7 uses
  %.val12.i = load i64, ptr %i.j, align 8, !alias.scope !59, !noundef !8 ; 6 uses
  %.sroa.0.07.i.i = and i64 %i.kb, %.val12.i      ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i19, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.kc, align 1, !noalias !76
  %i.kd = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ke = bitcast <16 x i1> %i.kd to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ke, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %bb.u
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.u ], [ %.sroa.0.0.i.i21, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.ke, %bb.u ], [ %i.kv, %.lr.ph.i16.i ]
  %i.kf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.kg = zext nneg i16 %i.kf to i64
  %i.kh = add i64 %.sroa.0.0.lcssa.i.i, %i.kg
  %i.ki = and i64 %i.kh, %.val12.i                ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i19, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !noundef !8
  %i.kl = icmp sgt i8 %i.kk, -1
  br i1 %i.kl, label %bb.v, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i

bb.v:                                             ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i19, align 16
  %i.km = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.kn = bitcast <16 x i1> %i.km to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.kn, 0
  %i.ko = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.kn, i1 true)
  %i.kp = zext nneg i16 %i.ko to i64
  call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i

.lr.ph.i16.i:                                     ; preds = %bb.u, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i21, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %bb.u ]
  %i.kq = phi i64 [ %i.kr, %.lr.ph.i16.i ], [ 0, %bb.u ]
  %i.kr = add i64 %i.kq, 16                       ; 2 uses
  %i.ks = add i64 %i.kr, %.sroa.0.010.i.i
  %.sroa.0.0.i.i21 = and i64 %i.ks, %.val12.i     ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.val.i19, i64 %.sroa.0.0.i.i21
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.kt, align 1, !noalias !76
  %i.ku = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.kv = bitcast <16 x i1> %i.ku to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.kv, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i: ; preds = %bb.v, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.kp, %bb.v ], [ %i.ki, %._crit_edge.i15.i ] ; 4 uses
  %i.kw = sub i64 %.sroa.04.06.i, %.sroa.0.07.i.i
  %i.kx = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.ky = xor i64 %i.kx, %i.kw
  %.unshifted.i = and i64 %i.ky, %.val12.i
  %i.kz = icmp ult i64 %.unshifted.i, 16
  br i1 %i.kz, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i
  %.neg11.i = mul i64 %.sroa.0.0.i5.i.i, -40
  %i.la = getelementptr i8, ptr %.val.i19, i64 %.neg11.i ; 5 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 -40    ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.val.i19, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !noundef !8
  %i.le = lshr i64 %i.kb, 57
  %i.lf = trunc nuw nsw i64 %i.le to i8           ; 2 uses
  %i.lg = add i64 %.sroa.0.0.i5.i.i, -16
  %i.lh = and i64 %i.lg, %.val12.i
  store i8 %i.lf, ptr %i.lc, align 1
  %i.li = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !8, !noundef !8
  %i.lj = getelementptr i8, ptr %i.li, i64 %i.lh
  %i.lk = getelementptr i8, ptr %i.lj, i64 16
  store i8 %i.lf, ptr %i.lk, align 1
  %i.ll = icmp eq i8 %i.ld, -1
  br i1 %i.ll, label %bb.y, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %.sroa.0.0.copyload.i.i.i.i20 = load i64, ptr %i.hf, align 1, !alias.scope !79, !noalias !82
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.lb, align 1, !alias.scope !82, !noalias !79
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.hf, align 1, !alias.scope !79, !noalias !82
  store i64 %.sroa.0.0.copyload.i.i.i.i20, ptr %i.lb, align 1, !alias.scope !82, !noalias !79
  %i.lm = getelementptr i8, ptr %i.la, i64 -32    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.hg, align 1, !alias.scope !84, !noalias !86
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.lm, align 1, !alias.scope !86, !noalias !84
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.hg, align 1, !alias.scope !84, !noalias !86
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.lm, align 1, !alias.scope !86, !noalias !84
  %i.ln = getelementptr i8, ptr %i.la, i64 -24    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.hh, align 1, !alias.scope !88, !noalias !90
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.ln, align 1, !alias.scope !90, !noalias !88
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.hh, align 1, !alias.scope !88, !noalias !90
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.ln, align 1, !alias.scope !90, !noalias !88
  %i.lo = getelementptr i8, ptr %i.la, i64 -16    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.sroa.0.0.copyload.i.i.i.3.i = load i64, ptr %i.hi, align 1, !alias.scope !92, !noalias !94
  %.sroa.02.0.copyload.i.i.i.3.i = load i64, ptr %i.lo, align 1, !alias.scope !94, !noalias !92
  store i64 %.sroa.02.0.copyload.i.i.i.3.i, ptr %i.hi, align 1, !alias.scope !92, !noalias !94
  store i64 %.sroa.0.0.copyload.i.i.i.3.i, ptr %i.lo, align 1, !alias.scope !94, !noalias !92
  %i.lp = getelementptr i8, ptr %i.la, i64 -8     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %.sroa.0.0.copyload.i.i.i.4.i = load i64, ptr %i.hj, align 1, !alias.scope !96, !noalias !98
  %.sroa.02.0.copyload.i.i.i.4.i = load i64, ptr %i.lp, align 1, !alias.scope !98, !noalias !96
  store i64 %.sroa.02.0.copyload.i.i.i.4.i, ptr %i.hj, align 1, !alias.scope !96, !noalias !98
  store i64 %.sroa.0.0.copyload.i.i.i.4.i, ptr %i.lp, align 1, !alias.scope !98, !noalias !96
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !100, !noalias !101
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.x:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner16find_insert_slot.exit.i
  %i.lq = lshr i64 %i.kb, 57
  %i.lr = trunc nuw nsw i64 %i.lq to i8           ; 2 uses
  %i.ls = add i64 %.sroa.04.06.i, -16
  %i.lt = and i64 %.val12.i, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %.val.i19, i64 %.sroa.04.06.i
  store i8 %i.lr, ptr %i.lu, align 1
  %i.lv = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !8, !noundef !8
  %i.lw = getelementptr i8, ptr %i.lv, i64 %i.lt
  %i.lx = getelementptr i8, ptr %i.lw, i64 16
  store i8 %i.lr, ptr %i.lx, align 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ly = add i64 %.sroa.04.06.i, -16
  %i.lz = load i64, ptr %i.j, align 8, !alias.scope !59, !noundef !8
  %i.ma = and i64 %i.lz, %i.ly
  %i.mb = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !8, !noundef !8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.sroa.04.06.i
  store i8 -1, ptr %i.mc, align 1
  %i.md = load ptr, ptr %0, align 8, !alias.scope !59, !nonnull !8, !noundef !8
  %i.me = getelementptr i8, ptr %i.md, i64 %i.ma
  %i.mf = getelementptr i8, ptr %i.me, i64 16
  store i8 -1, ptr %i.mf, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.lb, ptr noundef nonnull align 1 dereferenceable(40) %i.hf, i64 40, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.r
  %exitcond.not.i = icmp eq i64 %.sroa.04.06.i, %i.k
  br i1 %exitcond.not.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, label %bb.r

bb.aa:                                            ; preds = %bb.t
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.z
  %.pre12.i = load i64, ptr %i.j, align 8, !alias.scope !59
  %.pre12.i.fr = freeze i64 %.pre12.i             ; 3 uses
  %.pre13.i = add i64 %.pre12.i.fr, 1
  %i.mh = lshr i64 %.pre13.i, 3
  %i.mi = mul nuw i64 %i.mh, 7
  %i.mj = icmp ult i64 %.pre12.i.fr, 8
  %spec.select = select i1 %i.mj, i64 %.pre12.i.fr, i64 %i.mi
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !59
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.mk = phi i64 [ %i.g, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.ml = phi i64 [ 0, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mn = sub i64 %i.ml, %i.mk
  store i64 %i.mn, ptr %i.mm, align 8, !alias.scope !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.c, %bb.ab
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.ab ], [ %.sroa.12.036, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -9223372036854775807, %bb.ab ], [ %.sroa.7.037, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %i.mo = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.mp = insertvalue { i64, i64 } %i.mo, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.mp
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
  %i.c = load i64, ptr %i.b, align 8, !range !102, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !103, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !102, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !103, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardNtNtNtBL_3raw5inner13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtB1z_5alloc5inner6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.a, align 8, !alias.scope !104, !noundef !8 ; 3 uses
  %i.b = icmp eq i64 %.val3.i, 0
  br i1 %i.b, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !104 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !104
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = sub nsw i64 0, %i.l
  %i.t = getelementptr inbounds i8, ptr %.val2.i, i64 %i.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #29, !noalias !104
  br label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtB11_5alloc5inner6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %_RNvMs1_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbZMnTeWjWd9_9hashbrown10scopeguard10ScopeGuardQNtNtNtBL_3raw5inner13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !107, !noundef !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !107
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !107 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !107, !noundef !8 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.04.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !107, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !107, !noundef !8
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.k = add i64 %.sroa.04.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !107, !noundef !8
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !107
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !107, !nonnull !8, !noundef !8
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !107
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !107, !nonnull !8, !noundef !8
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg6.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !107, !inline_history !110
  %i.s = load i64, ptr %i.e, align 8, !noalias !107, !noundef !8
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !107
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

_RNvXs1_NtCsbZMnTeWjWd9_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !107, !noundef !8 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.01.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !107, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.01.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !107
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.a = load i64, ptr %0, align 8, !range !114, !alias.scope !111, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !121, !nonnull !8, !align !34, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !121, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !121, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !121, !noundef !8
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !122
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
  %i.a = load i64, ptr %0, align 8, !range !114, !alias.scope !123, !noundef !8
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
  %i.a = load i64, ptr %0, align 8, !range !126, !noundef !8 ; 3 uses
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
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !8, !align !34, !noundef !8 ; 5 uses
  %i.k = load ptr, ptr %.val28, align 8, !invariant.load !8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.k(ptr noundef nonnull %.val27)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !102, !invariant.load !8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !103, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !102, !invariant.load !8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !103, !invariant.load !8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #29
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.l
end_hunk_0
