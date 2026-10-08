Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx_core-b15a2cb6e65040fa.rustworkx_core.897a2dc821fa0a7e-cgu.0?download=true
inline.NumInlined: 863
inline.NumDeleted: 438
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexuE0ECsbNMRYq9Xj9a_14rustworkx_core:bb.a
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.br
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !351
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %._crit_edge63, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !339
  br label %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.059, %.preheader ], [ %i.bd, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.061, %.preheader ], [ %i.be, %.noexc2 ] ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.062, %.preheader ], [ %i.bb, %.noexc2 ]
  %i.bt = add i16 %.sroa.13.1.lcssa, -1
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = and i16 %i.bt, %.sroa.13.1.lcssa
  %i.bx = add i64 %.sroa.5.1.lcssa, %i.bv         ; 2 uses
  %i.by = add i64 %.sroa.9.060, -1                ; 2 uses
  %i.bz = sub nsw i64 0, %i.bx
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %.val3.i = load i64, ptr %i.cb, align 8, !noalias !352, !noundef !5 ; 3 uses
  %i.cc = icmp ult i64 %.val3.i, %3
  br i1 %i.cc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.val3.i
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !352, !noundef !5 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ce, %i.aq            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !353
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.m ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %bb.m ], [ %i.cy, %.lr.ph.i ]
  %i.ci = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.aq                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !5
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.at, align 16
  %i.cp = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cq, 0
  %i.cr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cq, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.m ]
  %i.ct = phi i64 [ %i.cu, %.lr.ph.i ], [ 0, %bb.m ]
  %i.cu = add i64 %i.ct, 16                       ; 2 uses
  %i.cv = add i64 %i.cu, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cv, %i.aq           ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !353
  %i.cx = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cs, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.cz = lshr i64 %i.ce, 57
  %i.da = trunc nuw nsw i64 %i.cz to i8           ; 2 uses
  %i.db = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dc = and i64 %i.db, %i.aq
  %i.dd = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i5.i
  store i8 %i.da, ptr %i.dd, align 1
  %i.de = getelementptr i8, ptr %i.at, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store i8 %i.da, ptr %i.df, align 1
  %i.dg = shl i64 %i.bx, 3
  %i.dh = sub nuw nsw i64 -8, %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.ax, i64 %i.dh
  %i.dj = shl i64 %.sroa.0.0.i5.i, 3
  %i.dk = sub nuw nsw i64 -8, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.at, i64 %i.dk
  %i.dm = load i64, ptr %i.di, align 1
  store i64 %i.dm, ptr %i.dl, align 8
  %i.dn = icmp eq i64 %i.by, 0
  br i1 %i.dn, label %._crit_edge63, label %.preheader

common.resume:                                    ; preds = %bb.s, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.ep, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %.val12.i = load ptr, ptr %0, align 8, !alias.scope !354 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  br label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.do = lshr i64 %i.k, 4
  %i.dp = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dp, 0
  %i.dq = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.do, %i.dq ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dr = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.01.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eb, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod149 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.ds = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.ds, align 16, !noalias !354
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !354
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.61.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.val12.i, i64 %.61.i, i1 false), !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  store ptr null, ptr %i.dv, align 8, !noalias !354
  store i64 8, ptr %i.dw, align 8, !noalias !354
  store ptr %0, ptr %i.a, align 8, !noalias !354
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.01.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.eb, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dy, align 16, !noalias !354
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dz = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ea = or <2 x i64> %i.dz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ea, ptr %i.dy, align 16, !noalias !354
  %i.eb = add i64 %.sroa.01.08.i.i, 32            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ed, align 16, !noalias !354
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ee = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ef = or <2 x i64> %i.ee, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ef, ptr %i.ed, align 16, !noalias !354
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

bb.q:                                             ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.04.018.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.eg, %bb.x ] ; 10 uses
  %i.eg = add nuw i64 %.sroa.04.018.i, 1
  %i.eh = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !5, !noundef !5 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.04.018.i
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !5
  %.not.i12 = icmp eq i8 %i.ej, -128
  br i1 %.not.i12, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %.neg.i = xor i64 %.sroa.04.018.i, -1
  %.neg10.i = shl i64 %.neg.i, 3
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 %.neg10.i ; 3 uses
  %i.el = sub nsw i64 0, %.sroa.04.018.i          ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.el
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -8
  %.val3.i13.i = load i64, ptr %i.en, align 8, !noalias !355, !noundef !5 ; 3 uses
  %i.eo = icmp ult i64 %.val3.i13.i, %3
  br i1 %i.eo, label %.lr.ph.i14, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.r, %.preheader.i.preheader.i
  %.val3.i.lcssa.i = phi i64 [ %.val3.i.i17.a, %.preheader.i.preheader.i ], [ %.val3.i13.i, %bb.r ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.val3.i.lcssa.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #27
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %._crit_edge.i13
  unreachable

bb.s:                                             ; preds = %._crit_edge.i13
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #28
          to label %common.resume unwind label %bb.y

.lr.ph.i14:                                       ; preds = %bb.r, %.preheader.i.preheader.i
  %.val3.i14.i = phi i64 [ %.val3.i.i17.a, %.preheader.i.preheader.i ], [ %.val3.i13.i, %bb.r ]
  %i.eq = phi ptr [ %i.gm, %.preheader.i.preheader.i ], [ %i.eh, %bb.r ] ; 7 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.val3.i14.i
  %i.es = load i64, ptr %i.er, align 8, !noalias !356, !noundef !5 ; 3 uses
  %.val11.i = load i64, ptr %i.h, align 8, !alias.scope !354, !noundef !5 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val11.i, %i.es      ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.et, align 1, !noalias !357
  %i.eu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i15.i, label %._crit_edge.i14.i, !prof !7

._crit_edge.i14.i:                                ; preds = %.lr.ph.i15.i, %.lr.ph.i14
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %.lr.ph.i14 ], [ %.sroa.0.0.i.i18, %.lr.ph.i15.i ]
  %.lcssa.i.i = phi i16 [ %i.ev, %.lr.ph.i14 ], [ %i.fm, %.lr.ph.i15.i ]
  %i.ew = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ex = zext nneg i16 %i.ew to i64
  %i.ey = add i64 %.sroa.0.0.lcssa.i.i, %i.ex
  %i.ez = and i64 %i.ey, %.val11.i                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !noundef !5
  %i.fc = icmp sgt i8 %i.fb, -1
  br i1 %i.fc, label %bb.t, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !6

bb.t:                                             ; preds = %._crit_edge.i14.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.eq, align 16
  %i.fd = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.fe = bitcast <16 x i1> %i.fd to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fe, 0
  %i.ff = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fe, i1 true)
  %i.fg = zext nneg i16 %i.ff to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i14, %.lr.ph.i15.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i15.i ], [ %.sroa.0.07.i.i, %.lr.ph.i14 ]
  %i.fh = phi i64 [ %i.fi, %.lr.ph.i15.i ], [ 0, %.lr.ph.i14 ]
  %i.fi = add i64 %i.fh, 16                       ; 2 uses
  %i.fj = add i64 %i.fi, %.sroa.0.010.i.i
  %.sroa.0.0.i.i18 = and i64 %i.fj, %.val11.i     ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.0.i.i18
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fk, align 1, !noalias !357
  %i.fl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fm = bitcast <16 x i1> %i.fl to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fm, 0
  br i1 %.not.i.i.i, label %.lr.ph.i15.i, label %._crit_edge.i14.i, !prof !8

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.t, %._crit_edge.i14.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fg, %bb.t ], [ %i.ez, %._crit_edge.i14.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.04.018.i, %.sroa.0.07.i.i
  %i.fo = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fp = xor i64 %i.fo, %i.fn
  %.unshifted.i = and i64 %i.fp, %.val11.i
  %i.fq = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fq, label %bb.u, label %bb.v, !prof !9

bb.u:                                             ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fr = lshr i64 %i.es, 57
  %i.fs = trunc nuw nsw i64 %i.fr to i8           ; 2 uses
  %i.ft = add i64 %.sroa.04.018.i, -16
  %i.fu = and i64 %.val11.i, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.04.018.i
  store i8 %i.fs, ptr %i.fv, align 1
  %i.fw = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !5, !noundef !5
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.fu
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fs, ptr %i.fy, align 1
  br label %bb.x

bb.v:                                             ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fz = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.ga = sub nuw nsw i64 -8, %i.fz
  %i.gb = getelementptr inbounds i8, ptr %i.eq, i64 %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !noundef !5
  %i.ge = lshr i64 %i.es, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i8           ; 2 uses
  %i.gg = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gh = and i64 %i.gg, %.val11.i
  store i8 %i.gf, ptr %i.gc, align 1
  %i.gi = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !5, !noundef !5
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gh
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store i8 %i.gf, ptr %i.gk, align 1
  %i.gl = icmp eq i8 %i.gd, -1
  br i1 %i.gl, label %bb.w, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %.sroa.0.0.copyload.i.i.i.i.a = load i64, ptr %i.ek, align 1, !alias.scope !358, !noalias !359
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.gb, align 1, !alias.scope !359, !noalias !358
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ek, align 1, !alias.scope !358, !noalias !359
  store i64 %.sroa.0.0.copyload.i.i.i.i.a, ptr %i.gb, align 1, !alias.scope !359, !noalias !358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.gm = load ptr, ptr %0, align 8, !alias.scope !361, !noalias !362, !nonnull !5, !noundef !5 ; 2 uses
  %5 = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.el
  %i.gn = getelementptr inbounds i8, ptr %5, i64 -8
  %.val3.i.i17.a = load i64, ptr %i.gn, align 8, !noalias !363, !noundef !5 ; 3 uses
  %6 = icmp ult i64 %.val3.i.i17.a, %3
  br i1 %6, label %.lr.ph.i14, label %._crit_edge.i13

bb.w:                                             ; preds = %bb.v
  %7 = add i64 %.sroa.04.018.i, -16
  %i.go = load i64, ptr %i.h, align 8, !alias.scope !354, !noundef !5
  %8 = and i64 %i.go, %7
  %9 = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !5, !noundef !5
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.04.018.i
  store i8 -1, ptr %10, align 1
  %i.gp = load ptr, ptr %0, align 8, !alias.scope !354, !nonnull !5, !noundef !5
  %11 = getelementptr i8, ptr %i.gp, i64 %8
  %i.gq = getelementptr i8, ptr %11, i64 16
  store i8 -1, ptr %i.gq, align 1
  %i.gr = load i64, ptr %i.ek, align 1
  store i64 %i.gr, ptr %i.gb, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.q
  %exitcond.not.i = icmp eq i64 %.sroa.04.018.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %bb.q

bb.y:                                             ; preds = %bb.s
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #29
  unreachable

_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !354
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre37.i = add i64 %.pre.i.fr, 1
  %i.gt = lshr i64 %.pre37.i, 3
  %i.gu = mul nuw i64 %i.gt, 7
  %i.gv = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.gv, i64 %.pre.i.fr, i64 %i.gu
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !354
  br label %bb.z

bb.z:                                             ; preds = %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gw = phi i64 [ %i.e, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gx = phi i64 [ 0, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gz = sub i64 %i.gx, %i.gw
  store i64 %i.gz, ptr %i.gy, align 8, !alias.scope !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !354
  br label %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit

_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit.thread, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.035, %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit.thread ], [ undef, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.036, %_RINvMsa_NtCslcZTgAvcSNH_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB8_5alloc5inner6GlobalECsbNMRYq9Xj9a_14rustworkx_core.exit.thread ], [ -1, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtBG_5alloc5inner6GlobalE0EECsbNMRYq9Xj9a_14rustworkx_core.exit ]
  %i.ha = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hb = insertvalue { i64, i64 } %i.ha, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hb
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECsbNMRYq9Xj9a_14rustworkx_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 4, 49) %1, i64 noundef range(i64 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %2, 15
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.b, label %bb.l, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw i64 %2, 3
  %i.d = udiv i64 %i.c, 7
  %i.e = add nsw i64 %i.d, -1
  %i.f = tail call range(i64 2, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 false)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = shl nuw nsw i64 1, %i.g
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %2, 4
  %i.j = and i64 %2, 8
  %..i = add nuw nsw i64 %i.j, 8
  %.sroa.03.0.i = select i1 %i.i, i64 4, i64 %..i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.i.ph = phi i64 [ %i.h, %bb.c ], [ %.sroa.03.0.i, %bb.d ] ; 5 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 4, 49) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  %i.n = icmp ugt i64 %i.m, -16
  br i1 %i.n, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i64 %i.m, 15
  %i.p = and i64 %i.o, -16                        ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.r = add i64 %i.q, %i.p                       ; 6 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = icmp ugt i64 %i.r, 9223372036854775792
  %or.cond.i = or i1 %i.s, %i.t
  br i1 %or.cond.i, label %bb.h, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !10

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.g
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %bb.p, label %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i

_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !366
  %i.v = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !366 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.j, label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %3, label %bb.i, label %bb.o, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27, !noalias !366
  unreachable

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i
  br i1 %3, label %bb.k, label %bb.o, !prof !6

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs87CvPiUlf0m_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.r) #30, !noalias !366
  unreachable

bb.l:                                             ; preds = %bb.b
  br i1 %3, label %bb.m, label %bb.n, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.h, %bb.j
  %.sroa.11.0.ph = phi i64 [ %i.r, %bb.j ], [ undef, %bb.h ]
  %.sroa.7.0.ph = phi i64 [ 16, %bb.j ], [ 0, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.ph, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0.ph, ptr %i.y, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %.sroa.0.0.i.i7.i = phi ptr [ %i.v, %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i7.i, i64 %i.p ; 2 uses
  %i.aa = add nsw i64 %.sroa.4.0.i.ph, -1         ; 2 uses
  %i.ab = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.ac = lshr i64 %.sroa.4.0.i.ph, 3
  %i.ad = mul nuw nsw i64 %i.ac, 7
  %.sroa.02.0.i = select i1 %i.ab, i64 %i.aa, i64 %i.ad
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.z, i8 -1, i64 %i.q, i1 false)
  store ptr %i.z, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !369 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !369, !nonnull !5, !noundef !5
  %i.h = shl nuw i64 %.val8.i.i, 2
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 9) 4) #26, !noalias !369
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, label %.lr.ph.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEECsbNMRYq9Xj9a_14rustworkx_core.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit
  %i.k = mul nuw i64 %.val2, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 9) 8) #26
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit6

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEEECsbNMRYq9Xj9a_14rustworkx_core.exit6: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecIBw_NtNtCs68Jln09rRqb_8petgraph10graph_impl9EdgeIndexEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCsbNMRYq9Xj9a_14rustworkx_core.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_TNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexB1d_EEEECsbNMRYq9Xj9a_14rustworkx_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
end_hunk_0
