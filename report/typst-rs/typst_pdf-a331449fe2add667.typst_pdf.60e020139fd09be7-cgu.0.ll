Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB22_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB24_4link14LinkAnnotationj1_EE0EB24_:bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.br, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 16) #41, !noalias !2890
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %._crit_edge64, %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2878
  br label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.bc, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.bd, %.noexc2 ] ; 2 uses
  %.sroa.020.1.lcssa = phi ptr [ %.sroa.020.063, %.preheader ], [ %i.ba, %.noexc2 ]
  %i.bs = add i16 %.sroa.13.1.lcssa, -1
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = and i16 %i.bs, %.sroa.13.1.lcssa
  %i.bw = add i64 %.sroa.5.1.lcssa, %i.bu         ; 2 uses
  %i.bx = add i64 %.sroa.9.061, -1                ; 2 uses
  %i.by = sub nsw i64 0, %i.bw
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %.val3.i = load i64, ptr %i.ca, align 8, !noalias !2891, !noundef !10 ; 3 uses
  %i.cb = icmp ult i64 %.val3.i, %3
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #42
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %.val3.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !2891, !noundef !10 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ce, %i.ap            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !2892
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !22

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.m ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ch, %bb.m ], [ %i.cy, %.lr.ph.i ]
  %i.ci = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cj
  %i.cl = and i64 %i.ck, %i.ap                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !10
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.n, label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !13

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.as, align 16
  %i.cp = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cq, 0
  %i.cr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cq, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.m ]
  %i.ct = phi i64 [ %i.cu, %.lr.ph.i ], [ 0, %bb.m ]
  %i.cu = add i64 %i.ct, 16                       ; 2 uses
  %i.cv = add i64 %i.cu, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.cv, %i.ap           ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !2892
  %i.cx = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !23

_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cs, %bb.n ], [ %i.cl, %._crit_edge.i ] ; 3 uses
  %i.cz = lshr i64 %i.ce, 57
  %i.da = trunc nuw nsw i64 %i.cz to i8           ; 2 uses
  %i.db = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.dc = and i64 %i.db, %i.ap
  %i.dd = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i5.i
  store i8 %i.da, ptr %i.dd, align 1
  %i.de = getelementptr i8, ptr %i.as, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store i8 %i.da, ptr %i.df, align 1
  %i.dg = shl i64 %i.bw, 3
  %i.dh = sub nuw nsw i64 -8, %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.aw, i64 %i.dh
  %i.dj = shl i64 %.sroa.0.0.i5.i, 3
  %i.dk = sub nuw nsw i64 -8, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.as, i64 %i.dk
  %i.dm = load i64, ptr %i.di, align 1
  store i64 %i.dm, ptr %i.dl, align 8
  %i.dn = icmp eq i64 %i.bx, 0
  br i1 %i.dn, label %._crit_edge64, label %.preheader

common.resume:                                    ; preds = %bb.s, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.k ], [ %i.ep, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  %.val12.i = load ptr, ptr %0, align 8, !alias.scope !2893 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2893
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
  %lcmp.mod148 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.ds = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.ds, align 16, !noalias !2893
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !2893
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.61.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.val12.i, i64 %.61.i, i1 false), !noalias !2893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2893
  store ptr null, ptr %i.dv, align 8, !noalias !2893
  store i64 8, ptr %i.dw, align 8, !noalias !2893
  store ptr %0, ptr %i.a, align 8, !noalias !2893
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.01.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.eb, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dy, align 16, !noalias !2893
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dz = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ea = or <2 x i64> %i.dz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ea, ptr %i.dy, align 16, !noalias !2893
  %i.eb = add i64 %.sroa.01.08.i.i, 32            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %.sroa.01.08.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ed, align 16, !noalias !2893
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ee = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ef = or <2 x i64> %i.ee, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ef, ptr %i.ed, align 16, !noalias !2893
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

bb.q:                                             ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.04.018.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.eg, %bb.x ] ; 10 uses
  %i.eg = add nuw i64 %.sroa.04.018.i, 1
  %i.eh = load ptr, ptr %0, align 8, !alias.scope !2893, !nonnull !10, !noundef !10 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.04.018.i
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !10
  %.not.i13 = icmp eq i8 %i.ej, -128
  br i1 %.not.i13, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %.neg.i = xor i64 %.sroa.04.018.i, -1
  %.neg10.i = shl i64 %.neg.i, 3
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 %.neg10.i ; 3 uses
  %i.el = sub nsw i64 0, %.sroa.04.018.i          ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.el
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -8
  %.val3.i13.i = load i64, ptr %i.en, align 8, !noalias !2894, !noundef !10 ; 3 uses
  %i.eo = icmp ult i64 %.val3.i13.i, %3
  br i1 %i.eo, label %.lr.ph.i15, label %._crit_edge.i14

._crit_edge.i14:                                  ; preds = %bb.r, %.preheader.preheader.i
  %.val3.i.lcssa.i = phi i64 [ %.val3.i.i18.a, %.preheader.preheader.i ], [ %.val3.i13.i, %bb.r ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i.lcssa.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #42
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %._crit_edge.i14
  unreachable

bb.s:                                             ; preds = %._crit_edge.i14
  %i.ep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #44
          to label %common.resume unwind label %bb.y

.lr.ph.i15:                                       ; preds = %bb.r, %.preheader.preheader.i
  %.val3.i14.i = phi i64 [ %.val3.i.i18.a, %.preheader.preheader.i ], [ %.val3.i13.i, %bb.r ]
  %i.eq = phi ptr [ %i.gn, %.preheader.preheader.i ], [ %i.eh, %bb.r ] ; 7 uses
  %i.er = getelementptr inbounds nuw [112 x i8], ptr %2, i64 %.val3.i14.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 96
  %i.et = load i64, ptr %i.es, align 8, !noalias !2895, !noundef !10 ; 3 uses
  %.val11.i = load i64, ptr %i.h, align 8, !alias.scope !2893, !noundef !10 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val11.i, %i.et      ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.eu, align 1, !noalias !2896
  %i.ev = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ew = bitcast <16 x i1> %i.ev to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i15.i, label %._crit_edge.i14.i, !prof !22

._crit_edge.i14.i:                                ; preds = %.lr.ph.i15.i, %.lr.ph.i15
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %.lr.ph.i15 ], [ %.sroa.0.0.i.i19, %.lr.ph.i15.i ]
  %.lcssa.i.i = phi i16 [ %i.ew, %.lr.ph.i15 ], [ %i.fn, %.lr.ph.i15.i ]
  %i.ex = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = add i64 %.sroa.0.0.lcssa.i.i, %i.ey
  %i.fa = and i64 %i.ez, %.val11.i                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noundef !10
  %i.fd = icmp sgt i8 %i.fc, -1
  br i1 %i.fd, label %bb.t, label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !13

bb.t:                                             ; preds = %._crit_edge.i14.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.eq, align 16
  %i.fe = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ff = bitcast <16 x i1> %i.fe to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.ff, 0
  %i.fg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ff, i1 true)
  %i.fh = zext nneg i16 %i.fg to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15, %.lr.ph.i15.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i19, %.lr.ph.i15.i ], [ %.sroa.0.07.i.i, %.lr.ph.i15 ]
  %i.fi = phi i64 [ %i.fj, %.lr.ph.i15.i ], [ 0, %.lr.ph.i15 ]
  %i.fj = add i64 %i.fi, 16                       ; 2 uses
  %i.fk = add i64 %i.fj, %.sroa.0.010.i.i
  %.sroa.0.0.i.i19 = and i64 %i.fk, %.val11.i     ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.0.i.i19
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fl, align 1, !noalias !2896
  %i.fm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fn = bitcast <16 x i1> %i.fm to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i.i.i, label %.lr.ph.i15.i, label %._crit_edge.i14.i, !prof !23

_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.t, %._crit_edge.i14.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fh, %bb.t ], [ %i.fa, %._crit_edge.i14.i ] ; 4 uses
  %i.fo = sub i64 %.sroa.04.018.i, %.sroa.0.07.i.i
  %i.fp = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fq = xor i64 %i.fp, %i.fo
  %.unshifted.i = and i64 %i.fq, %.val11.i
  %i.fr = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fr, label %bb.u, label %bb.v, !prof !16

bb.u:                                             ; preds = %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fs = lshr i64 %i.et, 57
  %i.ft = trunc nuw nsw i64 %i.fs to i8           ; 2 uses
  %i.fu = add i64 %.sroa.04.018.i, -16
  %i.fv = and i64 %.val11.i, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.04.018.i
  store i8 %i.ft, ptr %i.fw, align 1
  %i.fx = load ptr, ptr %0, align 8, !alias.scope !2893, !nonnull !10, !noundef !10
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fv
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  store i8 %i.ft, ptr %i.fz, align 1
  br label %bb.x

bb.v:                                             ; preds = %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ga = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.gb = sub nuw nsw i64 -8, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %i.eq, i64 %i.gb ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !noundef !10
  %i.gf = lshr i64 %i.et, 57
  %i.gg = trunc nuw nsw i64 %i.gf to i8           ; 2 uses
  %i.gh = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gi = and i64 %i.gh, %.val11.i
  store i8 %i.gg, ptr %i.gd, align 1
  %i.gj = load ptr, ptr %0, align 8, !alias.scope !2893, !nonnull !10, !noundef !10
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gi
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  store i8 %i.gg, ptr %i.gl, align 1
  %i.gm = icmp eq i8 %i.ge, -1
  br i1 %i.gm, label %bb.w, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %.sroa.0.0.copyload.i.i.i.i.a = load i64, ptr %i.ek, align 1, !alias.scope !2897, !noalias !2898
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.gc, align 1, !alias.scope !2898, !noalias !2897
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ek, align 1, !alias.scope !2897, !noalias !2898
  store i64 %.sroa.0.0.copyload.i.i.i.i.a, ptr %i.gc, align 1, !alias.scope !2898, !noalias !2897
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2899)
  %i.gn = load ptr, ptr %0, align 8, !alias.scope !2900, !noalias !2901, !nonnull !10, !noundef !10 ; 2 uses
  %5 = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.el
  %i.go = getelementptr inbounds i8, ptr %5, i64 -8
  %.val3.i.i18.a = load i64, ptr %i.go, align 8, !noalias !2902, !noundef !10 ; 3 uses
  %6 = icmp ult i64 %.val3.i.i18.a, %3
  br i1 %6, label %.lr.ph.i15, label %._crit_edge.i14

bb.w:                                             ; preds = %bb.v
  %7 = add i64 %.sroa.04.018.i, -16
  %i.gp = load i64, ptr %i.h, align 8, !alias.scope !2893, !noundef !10
  %8 = and i64 %i.gp, %7
  %9 = load ptr, ptr %0, align 8, !alias.scope !2893, !nonnull !10, !noundef !10
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.04.018.i
  store i8 -1, ptr %10, align 1
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !2893, !nonnull !10, !noundef !10
  %11 = getelementptr i8, ptr %i.gq, i64 %8
  %i.gr = getelementptr i8, ptr %11, i64 16
  store i8 -1, ptr %i.gr, align 1
  %i.gs = load i64, ptr %i.ek, align 1
  store i64 %i.gs, ptr %i.gc, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.q
  %exitcond.not.i = icmp eq i64 %.sroa.04.018.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %bb.q

bb.y:                                             ; preds = %bb.s
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.x
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !2893
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre37.i = add i64 %.pre.i.fr, 1
  %i.gu = lshr i64 %.pre37.i, 3
  %i.gv = mul nuw i64 %i.gu, 7
  %i.gw = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.gw, i64 %.pre.i.fr, i64 %i.gv
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !2893
  br label %bb.z

bb.z:                                             ; preds = %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gx = phi i64 [ %i.e, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gy = phi i64 [ 0, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ha = sub i64 %i.gy, %i.gx
  store i64 %i.ha, ptr %i.gz, align 8, !alias.scope !2893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2893
  br label %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtB6_5alloc5inner6GlobalECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.036, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.thread ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.z ], [ %.sroa.7.037, %_RINvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtB6_5alloc5inner6GlobalECs8jFhWeO2DFb_9typst_pdf.exit.thread ], [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtB1u_5alloc5inner6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit ]
  %i.hb = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hc = insertvalue { i64, i64 } %i.hb, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hc
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTINtNtCs3oUPovFnLWP_4core6option6OptionRINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB28_6layout3abs3AbsEEEjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2926, !noalias !2927, !noundef !10 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2926, !noalias !2927, !noundef !10 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !2928 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2930
  call fastcc void @_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 49) 16, i64 noundef %..i, i1 noundef zeroext %3) #40
  %i.u = load ptr, ptr %i.a, align 8, !noalias !2930, !noundef !10 ; 10 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !2930 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !2930 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2930
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #44, !noalias !2931
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !2930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2930
  store ptr %i.e, ptr %i.b, align 8, !noalias !2930
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2930
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2930
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !2930
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2930
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2930
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2930
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !2932, !noalias !2933, !nonnull !10, !noundef !10 ; 3 uses
  %i.ac = load i64, ptr %i.f, align 8, !alias.scope !2932, !noalias !2933, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = ptrtoint ptr %i.u to i64
  br i1 %i.ad, label %._crit_edge28, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %.val317 = load <16 x i8>, ptr %i.ab, align 16
  %i.af = icmp sgt <16 x i8> %.val317, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.027 = phi ptr [ %.sroa.0.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ab, %.preheader.preheader ] ; 2 uses
  %.sroa.5.026 = phi i64 [ %.sroa.5.1.lcssa, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.025 = phi i64 [ %i.bg, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ac, %.preheader.preheader ]
  %.sroa.13.024 = phi i16 [ %i.be, %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ], [ %i.ag, %.preheader.preheader ] ; 2 uses
  %.not.i119 = icmp eq i16 %.sroa.13.024, 0
  br i1 %.not.i119, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.121 = phi ptr [ %i.ah, %.noexc2 ], [ %.sroa.0.027, %.preheader ] ; 2 uses
  %.sroa.5.120 = phi i64 [ %i.ak, %.noexc2 ], [ %.sroa.5.026, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.121) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.121, i64 16 ; 3 uses
  %.val18 = load <16 x i8>, ptr %i.ah, align 16
  %i.ai = icmp sgt <16 x i8> %.val18, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = add i64 %.sroa.5.120, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.aj, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge28.loopexit:                           ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !2932, !noalias !2933
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !2934, !noalias !2935
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge28.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge28.loopexit ], [ %i.ab, %bb.g ] ; 2 uses
  %i.al = phi i64 [ %.pre, %._crit_edge28.loopexit ], [ 0, %bb.g ]
  %i.am = sub i64 %i.z, %i.al
  store i64 %i.ae, ptr %0, align 8, !alias.scope !2934, !noalias !2935
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.j, align 8, !alias.scope !2936, !noalias !2937 ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !alias.scope !2936, !noalias !2937
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %i.an, align 8, !alias.scope !2938, !noalias !2939
  %i.ao = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge28
  %i.ap = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 4 ; 2 uses
  %i.aq = add i64 %i.ap, 16
  %i.ar = add i64 %i.ap, 31                       ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.aq
  call void @llvm.assume(i1 %i.as), !noalias !2931
  %i.at = and i64 %i.ar, -16                      ; 3 uses
  %i.au = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.av = add i64 %i.au, %i.at                    ; 4 uses
  %i.aw = icmp uge i64 %i.av, %i.at
  %i.ax = icmp ult i64 %i.av, 9223372036854775793
  call void @llvm.assume(i1 %i.aw), !noalias !2931
  call void @llvm.assume(i1 %i.ax), !noalias !2931
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ], !noalias !2931
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.at
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.az
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 16) #41, !noalias !2940
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %._crit_edge28, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2930
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.024, %.preheader ], [ %i.aj, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.026, %.preheader ], [ %i.ak, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.027, %.preheader ], [ %i.ah, %.noexc2 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs0_1__9MultiCalluuEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEEEEECs8jFhWeO2DFb_9typst_pdf:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3694)
  %i.e = load i64, ptr %i.d, align 8, !range !24, !alias.scope !3695, !noundef !10 ; 3 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3698)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3699, !nonnull !10, !noundef !10
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !3699
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla8graphics5image9ImageReprE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3700)
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !3701, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !3701
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.c, align 8, !alias.scope !3702 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs0_1__9MultiCalluuEEECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3702, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs0_1__9MultiCalluuEEECs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !3702 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs0_1__9MultiCalluuEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEEEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !3702, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs0_1__9MultiCalluuEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla8graphics5image5ImageNtNtCs1xwejQucwHj_5alloc6string6StringEEEECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs0_1__9MultiCalluuEEECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsaixNeEcpA3e_4slab5EntryINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtB18_7memoize10CacheEntryINtNvNtB18_5inputs_1__9MultiCalluEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla4text4font4FontINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !29, !noundef !10
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla4text4font4FontINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla4text4font4FontINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3716)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3717)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3718, !noundef !10 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3721)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3722, !nonnull !10, !noundef !10
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !3722
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla4text4font4FontINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEEECs8jFhWeO2DFb_9typst_pdf.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsidf7BFzONoc_6krilla4util9PrehashedNtNtNtBL_4text4font4ReprEE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla4text4font4FontINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEEECs8jFhWeO2DFb_9typst_pdf.exit

bb.e:                                             ; preds = %bb.b
  %.val1.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !3718
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %i.d, i64 %.val1.i.i.i), !noalias !3723
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluEINtNtB4_6result6ResultNtNtNtCsidf7BFzONoc_6krilla4text4font4FontINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEEEEECs8jFhWeO2DFb_9typst_pdf.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3751)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3751, !noundef !10 ; 2 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !3751 ; 2 uses
  %i.d = icmp eq i64 %.promoted.i, %i.c
  %.pre = load i64, ptr %0, align 8               ; 4 uses
  br i1 %i.d, label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = icmp ugt i64 %.pre, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3752, !noalias !3753, !nonnull !10
  %.sink11.i.i = select i1 %i.e, ptr %i.g, ptr %i.f
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i, %.lr.ph.i
  %i.h = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i ] ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !3751
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sink11.i.i, i64 %i.h ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.5.0.copyload.i, 16
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %bb.b
  %.sroa.09.0.copyload.i = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !3754
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, %bb.b
  %i.l = icmp eq i64 %i.i, %i.c
  br i1 %i.l, label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b

_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3756)
  %i.m = icmp ugt i64 %.pre, 1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.n = icmp eq i64 %.pre, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !3758, !noundef !10 ; 2 uses
  %i.p = icmp ugt i64 %.val9.i.i.i, 16
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !3759, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %.val9.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !3760
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf.exit

bb.d:                                             ; preds = %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !3761, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3761, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3762)
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !3763, !noalias !3764, !noundef !10 ; 2 uses
  %i.z = icmp ugt i64 %.val9.i.i.i.i.i, 16
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.val8.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !3762, !noalias !3764, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i, i64 noundef %.val9.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !3765
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aa = icmp eq i64 %i.x, %i.u
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, %bb.d
  %i.ab = mul nuw i64 %.pre, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3764
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c, %.lr.ph.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %i.a = load i64, ptr %0, align 8, !alias.scope !3770, !noundef !10 ; 6 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.b, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c)
          to label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit unwind label %bb.b

2:                                                ; preds = %.lr.ph8
  %3 = add nuw nsw i64 %.sroa.0.1.i.i7, 1         ; 2 uses
  %4 = icmp eq i64 %3, %i.a
  br i1 %4, label %common.resume.i, label %.lr.ph8

bb.b:                                             ; preds = %.lr.ph
  %5 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = icmp eq i64 %i.a, 1
  br i1 %i.d, label %common.resume.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b, %2
  %.sroa.0.1.i.i7 = phi i64 [ %3, %2 ], [ 1, %bb.b ] ; 2 uses
  %6 = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %.sroa.0.1.i.i7
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %6) #44
          to label %2 unwind label %bb.c

common.resume.i:                                  ; preds = %2, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i ], [ %5, %bb.b ], [ %5, %2 ]
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %.lr.ph8
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !3770, !nonnull !10, !noundef !10 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3770, !noundef !10 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1c_.exit.i, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1c_.exit.i, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i.i9 = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i.i9
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i.i9, 1   ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.j)
          to label %bb.e unwind label %bb.g, !noalias !3771

bb.f:                                             ; preds = %.lr.ph12
  %i.l = add i64 %.sroa.0.1.i.i.i.i11, 1          ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i, label %.lr.ph12

bb.g:                                             ; preds = %.lr.ph10
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i.i11 = phi i64 [ %i.l, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i.i11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.p) #44
          to label %bb.f unwind label %bb.h, !noalias !3771

bb.h:                                             ; preds = %.lr.ph12
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !3771
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i: ; preds = %bb.f, %bb.g
  %i.r = mul nuw i64 %i.a, 88
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3771
  br label %common.resume.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1c_.exit.i: ; preds = %bb.e, %bb.d
  %i.s = mul nuw i64 %i.a, 88
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3771
  br label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %.preheader.preheader, %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1c_.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4Attrj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  %i.a = load i64, ptr %0, align 8, !alias.scope !3776, !noundef !10 ; 3 uses
  %i.b = icmp ugt i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4Attrj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.d)
  br label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4Attrj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3776, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3776, !noundef !10 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %.sroa.0.07.i.i.i.i
  %i.k = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1   ; 2 uses
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 dereferenceable(40) %i.j), !noalias !3777
  %i.l = icmp eq i64 %i.k, %i.h
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.c
  %i.m = mul nuw i64 %i.a, 40
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3777
  br label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4Attrj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4Attrj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %.lr.ph.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrEECs8jFhWeO2DFb_9typst_pdf.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3794)
  %i.a = load i64, ptr %0, align 8, !alias.scope !3794, !noundef !10 ; 3 uses
  %i.b = icmp ugt i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3795)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !3796, !noundef !10 ; 2 uses
  %i.e = icmp ugt i64 %.val9.i.i, 16
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i.i = load ptr, ptr %i.f, align 8, !alias.scope !3797, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %.val9.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !3798
  br label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3794, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3794, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3799)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.012.i.i.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.012.i.i.i.i, 1  ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val9.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !3800, !noalias !3801, !noundef !10 ; 2 uses
  %i.o = icmp ugt i64 %.val9.i.i.i.i, 16
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.val8.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !3799, !noalias !3801, !nonnull !10, !noundef !10
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i, i64 noundef %.val9.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !3802
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.p = icmp eq i64 %i.m, %i.j
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %bb.c
  %i.q = mul nuw i64 %i.a, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !3801
  br label %_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXsx_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.b, %.lr.ph.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdEECs8jFhWeO2DFb_9typst_pdf.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsidf7BFzONoc_6krilla4text4font4FontINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellNtB1c_13FontContainerEEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3819)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !3820, !nonnull !10, !noundef !10
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !3820
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsidf7BFzONoc_6krilla4util9PrehashedNtNtNtBL_4text4font4ReprEE9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3822)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3823, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !3823, !noundef !10
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !noalias !3823
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCsidf7BFzONoc_6krilla4text13FontContainerEEECs8jFhWeO2DFb_9typst_pdf.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCsidf7BFzONoc_6krilla4text13FontContainerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCsidf7BFzONoc_6krilla4text13FontContainerEEECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3825)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3826, !nonnull !10, !noundef !10 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !3826, !noundef !10
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !3826
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCsidf7BFzONoc_6krilla4text13FontContainerEEECs8jFhWeO2DFb_9typst_pdf.exit2

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell7RefCellNtNtCsidf7BFzONoc_6krilla4text13FontContainerEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCsidf7BFzONoc_6krilla4text13FontContainerEEECs8jFhWeO2DFb_9typst_pdf.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCsidf7BFzONoc_6krilla4text13FontContainerEEECs8jFhWeO2DFb_9typst_pdf.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla4text4font4FontECs8jFhWeO2DFb_9typst_pdf.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCsidf7BFzONoc_6krilla4text13FontContainerEEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEEB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !19, !noundef !10
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3836, !noundef !10 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !3836 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3836
  %i.h = icmp eq i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !3837, !noalias !3838, !noundef !10
  %i.j = icmp ugt i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3837, !noalias !3838, !nonnull !10
  %.sink11.i.i.i = select i1 %i.j, ptr %i.l, ptr %i.k
  br label %bb.d

bb.d:                                             ; preds = %.noexc.i, %.lr.ph.i.i
  %i.m = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %.noexc.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert7convert:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.hh
  call void @llvm.experimental.noalias.scope.decl(metadata !18770)
  %.val.i23.i.i = load i64, ptr %i.abz, align 8, !range !24, !alias.scope !18770, !noalias !18771, !noundef !10 ; 2 uses
  %i.akr = icmp sgt i64 %.val.i23.i.i, 0
  br i1 %i.akr, label %bb.hi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i24.i.i

bb.hi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i.i.i.i
  %.val2.i29.i.i = load ptr, ptr %i.aca, align 8, !alias.scope !18770, !noalias !18771, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i29.i.i, i64 noundef %.val.i23.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18772
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i24.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i24.i.i: ; preds = %bb.hi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i.i.i.i
  %i.aks = icmp eq i64 %.pr.i.i.i.i.i.i.i.i, 0
  br i1 %i.aks, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i27.i.i, label %bb.hj

bb.hj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i24.i.i
  %.val4.i26.i.i = load ptr, ptr %i.acb, align 8, !alias.scope !18770, !noalias !18771, !nonnull !10, !noundef !10
  %i.akt = shl nuw i64 %.pr.i.i.i.i.i.i.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i26.i.i, i64 noundef %i.akt, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18773
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i27.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i27.i.i: ; preds = %bb.hj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i24.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18774), !noalias !18775
  %i.aku = load i64, ptr %i.acc, align 8, !range !38, !alias.scope !18776, !noalias !18771, !noundef !10 ; 3 uses
  %i.akv = icmp eq i64 %i.aku, -2
  br i1 %i.akv, label %bb.hk, label %bb.hr

bb.hk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i27.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18777)
  %i.akw = load ptr, ptr %i.acd, align 8, !alias.scope !18777, !noalias !18752, !noundef !10 ; 2 uses
  %i.akx = icmp eq ptr %i.akw, null
  br i1 %i.akx, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.experimental.noalias.scope.decl(metadata !18778)
  call void @llvm.experimental.noalias.scope.decl(metadata !18779)
  call void @llvm.experimental.noalias.scope.decl(metadata !18780)
  %i.aky = load ptr, ptr %i.ace, align 8, !alias.scope !18781, !noalias !18752, !nonnull !10, !noundef !10
  %i.akz = atomicrmw sub ptr %i.aky, i64 1 release, align 8, !noalias !18782
  %i.ala = icmp eq i64 %i.akz, 1
  br i1 %i.ala, label %.invoke176.i.i, label %.noexc.i.i.i.i.i.i.i

.invoke176.i.i:                                   ; preds = %bb.hu, %bb.hl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination11XyzDestReprE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ace) #38
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ia, !noalias !18783

bb.hm:                                            ; preds = %bb.hk
  call void @llvm.experimental.noalias.scope.decl(metadata !18784)
  %i.alb = atomicrmw sub ptr %i.akw, i64 1 release, align 8, !noalias !18785
  %i.alc = icmp eq i64 %i.alb, 1
  br i1 %i.alc, label %bb.hn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i57.i.i

bb.hn:                                            ; preds = %bb.hm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsidf7BFzONoc_6krilla(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.acd) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i57.i.i unwind label %bb.ho, !noalias !18783

bb.ho:                                            ; preds = %bb.hn
  %i.ald = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18786)
  call void @llvm.experimental.noalias.scope.decl(metadata !18787)
  %i.ale = load ptr, ptr %i.ace, align 8, !alias.scope !18788, !noalias !18752, !nonnull !10, !noundef !10
  %i.alf = atomicrmw sub ptr %i.ale, i64 1 release, align 8, !noalias !18789
  %i.alg = icmp eq i64 %i.alf, 1
  br i1 %i.alg, label %bb.hp, label %.body55.i.i

bb.hp:                                            ; preds = %bb.ho
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ace) #38
          to label %.body55.i.i unwind label %bb.hq, !noalias !18783

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i57.i.i: ; preds = %bb.hn, %bb.hm
  call void @llvm.experimental.noalias.scope.decl(metadata !18790)
  call void @llvm.experimental.noalias.scope.decl(metadata !18791)
  %i.alh = load ptr, ptr %i.ace, align 8, !alias.scope !18792, !noalias !18752, !nonnull !10, !noundef !10
  %i.ali = atomicrmw sub ptr %i.alh, i64 1 release, align 8, !noalias !18793
  %i.alj = icmp eq i64 %i.ali, 1
  br i1 %i.alj, label %.invoke.i.i128, label %.noexc.i.i.i.i.i.i.i

.invoke.i.i128:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i57.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ace) #38
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ia, !noalias !18783

bb.hq:                                            ; preds = %bb.hp
  %i.alk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18783
  unreachable

bb.hr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i27.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18794), !noalias !18775
  switch i64 %i.aku, label %bb.hs [
    i64 -1, label %bb.ht
    i64 0, label %.noexc.i.i.i.i.i.i.i
  ]

bb.hs:                                            ; preds = %bb.hr
  %.val1.i.i.i28.i.i = load ptr, ptr %i.acd, align 8, !alias.scope !18795, !noalias !18771, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i28.i.i, i64 noundef %i.aku, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18796
  br label %.noexc.i.i.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hr
  call void @llvm.experimental.noalias.scope.decl(metadata !18797)
  %i.all = load ptr, ptr %i.acd, align 8, !alias.scope !18797, !noalias !18752, !noundef !10 ; 2 uses
  %i.alm = icmp eq ptr %i.all, null
  br i1 %i.alm, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !18798)
  call void @llvm.experimental.noalias.scope.decl(metadata !18799)
  call void @llvm.experimental.noalias.scope.decl(metadata !18800)
  %i.aln = load ptr, ptr %i.ace, align 8, !alias.scope !18801, !noalias !18752, !nonnull !10, !noundef !10
  %i.alo = atomicrmw sub ptr %i.aln, i64 1 release, align 8, !noalias !18802
  %i.alp = icmp eq i64 %i.alo, 1
  br i1 %i.alp, label %.invoke176.i.i, label %.noexc.i.i.i.i.i.i.i

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !18803)
  %i.alq = atomicrmw sub ptr %i.all, i64 1 release, align 8, !noalias !18804
  %i.alr = icmp eq i64 %i.alq, 1
  br i1 %i.alr, label %bb.hw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i

bb.hw:                                            ; preds = %bb.hv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsidf7BFzONoc_6krilla(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.acd) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i unwind label %bb.hx, !noalias !18783

bb.hx:                                            ; preds = %bb.hw
  %i.als = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18805)
  call void @llvm.experimental.noalias.scope.decl(metadata !18806)
  %i.alt = load ptr, ptr %i.ace, align 8, !alias.scope !18807, !noalias !18752, !nonnull !10, !noundef !10
  %i.alu = atomicrmw sub ptr %i.alt, i64 1 release, align 8, !noalias !18808
  %i.alv = icmp eq i64 %i.alu, 1
  br i1 %i.alv, label %bb.hy, label %.body55.i.i

bb.hy:                                            ; preds = %bb.hx
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ace) #38
          to label %.body55.i.i unwind label %bb.hz, !noalias !18783

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.hw, %bb.hv
  call void @llvm.experimental.noalias.scope.decl(metadata !18809)
  call void @llvm.experimental.noalias.scope.decl(metadata !18810)
  %i.alw = load ptr, ptr %i.ace, align 8, !alias.scope !18811, !noalias !18752, !nonnull !10, !noundef !10
  %i.alx = atomicrmw sub ptr %i.alw, i64 1 release, align 8, !noalias !18812
  %i.aly = icmp eq i64 %i.alx, 1
  br i1 %i.aly, label %.invoke.i.i128, label %.noexc.i.i.i.i.i.i.i

bb.hz:                                            ; preds = %bb.hy
  %i.alz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18783
  unreachable

.noexc.i.i.i.i.i.i.i:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %bb.hu, %bb.hs, %bb.hr, %.invoke.i.i128, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i57.i.i, %.invoke176.i.i, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !18766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !18766
  %i.ama = icmp eq i64 %i.akp, %i.akf
  br i1 %i.ama, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i.i.i.loopexit.i.i, label %bb.hh

bb.ia:                                            ; preds = %.invoke.i.i128, %.invoke176.i.i
  %i.amb = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i

.body55.i.i:                                      ; preds = %bb.ia, %bb.hy, %bb.hx, %bb.hp, %bb.ho
  %eh.lpad-body56.i.i = phi { ptr, i32 } [ %i.als, %bb.hx ], [ %i.als, %bb.hy ], [ %i.amb, %bb.ia ], [ %i.ald, %bb.hp ], [ %i.ald, %bb.ho ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.sroa.4235.0..sroa_idx.i) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i unwind label %bb.ib, !noalias !18762

bb.ib:                                            ; preds = %.body55.i.i
  %i.amc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18762
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i.i.i.loopexit.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %bb.hh
  %.pre.i.i127 = load i64, ptr %.sroa.4235.0..sroa_idx.i, align 8, !alias.scope !18813, !noalias !18759
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i.i.i.loopexit.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i.i.i.i.i
  %i.amd = phi i64 [ %.pre.i.i127, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i.i.i.loopexit.i.i ], [ %.pre119.pre.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !18766
  call void @llvm.experimental.noalias.scope.decl(metadata !18814)
  call void @llvm.experimental.noalias.scope.decl(metadata !18815), !noalias !18816
  %i.ame = icmp ugt i64 %i.amd, 1
  br i1 %i.ame, label %bb.iu, label %.preheader.i.preheader.i.i

.preheader.i.preheader.i.i:                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i.i.i.i.i
  %i.amf = icmp eq i64 %i.amd, 0
  br i1 %i.amf, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.preheader.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18817)
  %.val.i43.i.i = load i64, ptr %i.acu, align 8, !range !24, !alias.scope !18817, !noalias !18759, !noundef !10 ; 2 uses
  %i.amg = icmp sgt i64 %.val.i43.i.i, 0
  br i1 %i.amg, label %bb.ic, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i44.i.i

bb.ic:                                            ; preds = %.lr.ph.preheader.i.i
  %.val2.i49.i.i = load ptr, ptr %i.acv, align 8, !alias.scope !18817, !noalias !18759, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i49.i.i, i64 noundef %.val.i43.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18818
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i44.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i44.i.i: ; preds = %bb.ic, %.lr.ph.preheader.i.i
  %.val3.i45.i.i = load i64, ptr %i.aby, align 8, !alias.scope !18817, !noalias !18759 ; 2 uses
  %i.amh = icmp eq i64 %.val3.i45.i.i, 0
  br i1 %i.amh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i47.i.i, label %bb.id

bb.id:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i44.i.i
  %.val4.i46.i.i = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !alias.scope !18817, !noalias !18759, !nonnull !10, !noundef !10
  %i.ami = shl nuw i64 %.val3.i45.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i46.i.i, i64 noundef %i.ami, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18819
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i47.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i47.i.i: ; preds = %bb.id, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i44.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18820), !noalias !18816
  %i.amj = load i64, ptr %i.acw, align 8, !range !38, !alias.scope !18821, !noalias !18759, !noundef !10 ; 3 uses
  %i.amk = icmp eq i64 %i.amj, -2
  br i1 %i.amk, label %bb.ie, label %bb.il

bb.ie:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i47.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18822)
  %i.aml = load ptr, ptr %i.acx, align 8, !alias.scope !18822, !noalias !18752, !noundef !10 ; 2 uses
  %i.amm = icmp eq ptr %i.aml, null
  br i1 %i.amm, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  call void @llvm.experimental.noalias.scope.decl(metadata !18823)
  call void @llvm.experimental.noalias.scope.decl(metadata !18824)
  call void @llvm.experimental.noalias.scope.decl(metadata !18825)
  %i.amn = load ptr, ptr %i.acy, align 8, !alias.scope !18826, !noalias !18752, !nonnull !10, !noundef !10
  %i.amo = atomicrmw sub ptr %i.amn, i64 1 release, align 8, !noalias !18827
  %i.amp = icmp eq i64 %i.amo, 1
  br i1 %i.amp, label %.invoke178.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i

.invoke178.i.i:                                   ; preds = %bb.io, %bb.if
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination11XyzDestReprE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.acy) #38
          to label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i unwind label %6, !noalias !18783

bb.ig:                                            ; preds = %bb.ie
  call void @llvm.experimental.noalias.scope.decl(metadata !18828)
  %i.amq = atomicrmw sub ptr %i.aml, i64 1 release, align 8, !noalias !18829
  %i.amr = icmp eq i64 %i.amq, 1
  br i1 %i.amr, label %bb.ih, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i85.i.i

bb.ih:                                            ; preds = %bb.ig
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsidf7BFzONoc_6krilla(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.acx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i85.i.i unwind label %bb.ii, !noalias !18783

bb.ii:                                            ; preds = %bb.ih
  %i.ams = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18830)
  call void @llvm.experimental.noalias.scope.decl(metadata !18831)
  %i.amt = load ptr, ptr %i.acy, align 8, !alias.scope !18832, !noalias !18752, !nonnull !10, !noundef !10
  %i.amu = atomicrmw sub ptr %i.amt, i64 1 release, align 8, !noalias !18833
  %i.amv = icmp eq i64 %i.amu, 1
  br i1 %i.amv, label %bb.ij, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ii
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.acy) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i unwind label %bb.ik, !noalias !18783

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i85.i.i: ; preds = %bb.ih, %bb.ig
  call void @llvm.experimental.noalias.scope.decl(metadata !18834)
  call void @llvm.experimental.noalias.scope.decl(metadata !18835)
  %i.amw = load ptr, ptr %i.acy, align 8, !alias.scope !18836, !noalias !18752, !nonnull !10, !noundef !10
  %i.amx = atomicrmw sub ptr %i.amw, i64 1 release, align 8, !noalias !18837
  %i.amy = icmp eq i64 %i.amx, 1
  br i1 %i.amy, label %.invoke177.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i

.invoke177.i.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i78.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i85.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.acy) #38
          to label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i unwind label %6, !noalias !18783

bb.ik:                                            ; preds = %bb.ij
  %i.amz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18783
  unreachable

bb.il:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i47.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18838), !noalias !18816
  switch i64 %i.amj, label %bb.im [
    i64 -1, label %bb.in
    i64 0, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i
  ]

bb.im:                                            ; preds = %bb.il
  %.val1.i.i.i48.i.i = load ptr, ptr %i.acx, align 8, !alias.scope !18839, !noalias !18759, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i48.i.i, i64 noundef %i.amj, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18840
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i

bb.in:                                            ; preds = %bb.il
  call void @llvm.experimental.noalias.scope.decl(metadata !18841)
  %i.ana = load ptr, ptr %i.acx, align 8, !alias.scope !18841, !noalias !18752, !noundef !10 ; 2 uses
  %i.anb = icmp eq ptr %i.ana, null
  br i1 %i.anb, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  call void @llvm.experimental.noalias.scope.decl(metadata !18842)
  call void @llvm.experimental.noalias.scope.decl(metadata !18843)
  call void @llvm.experimental.noalias.scope.decl(metadata !18844)
  %i.anc = load ptr, ptr %i.acy, align 8, !alias.scope !18845, !noalias !18752, !nonnull !10, !noundef !10
  %i.and = atomicrmw sub ptr %i.anc, i64 1 release, align 8, !noalias !18846
  %i.ane = icmp eq i64 %i.and, 1
  br i1 %i.ane, label %.invoke178.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i

bb.ip:                                            ; preds = %bb.in
  call void @llvm.experimental.noalias.scope.decl(metadata !18847)
  %i.anf = atomicrmw sub ptr %i.ana, i64 1 release, align 8, !noalias !18848
  %i.ang = icmp eq i64 %i.anf, 1
  br i1 %i.ang, label %bb.iq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i78.i.i

bb.iq:                                            ; preds = %bb.ip
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsidf7BFzONoc_6krilla(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.acx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i78.i.i unwind label %bb.ir, !noalias !18783

bb.ir:                                            ; preds = %bb.iq
  %i.anh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18849)
  call void @llvm.experimental.noalias.scope.decl(metadata !18850)
  %i.ani = load ptr, ptr %i.acy, align 8, !alias.scope !18851, !noalias !18752, !nonnull !10, !noundef !10
  %i.anj = atomicrmw sub ptr %i.ani, i64 1 release, align 8, !noalias !18852
  %i.ank = icmp eq i64 %i.anj, 1
  br i1 %i.ank, label %bb.is, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i

bb.is:                                            ; preds = %bb.ir
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.acy) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i unwind label %bb.it, !noalias !18783

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i78.i.i: ; preds = %bb.iq, %bb.ip
  call void @llvm.experimental.noalias.scope.decl(metadata !18853)
  call void @llvm.experimental.noalias.scope.decl(metadata !18854)
  %i.anl = load ptr, ptr %i.acy, align 8, !alias.scope !18855, !noalias !18752, !nonnull !10, !noundef !10
  %i.anm = atomicrmw sub ptr %i.anl, i64 1 release, align 8, !noalias !18856
  %i.ann = icmp eq i64 %i.anm, 1
  br i1 %i.ann, label %.invoke177.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i

bb.it:                                            ; preds = %bb.is
  %i.ano = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18783
  unreachable

6:                                                ; preds = %.invoke177.i.i, %.invoke178.i.i
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i

bb.iu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i.i.i.i.i
  %i.anp = load ptr, ptr %i.aby, align 8, !alias.scope !18813, !noalias !18759, !nonnull !10, !noundef !10 ; 4 uses
  %i.anq = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !alias.scope !18813, !noalias !18759, !noundef !10 ; 4 uses
  %i.anr = icmp eq i64 %i.anq, 0
  br i1 %i.anr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1c_.exit.i.i.i.i, label %.lr.ph85.i.i

.lr.ph85.i.i:                                     ; preds = %bb.iu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i
  %.sroa.0.0.i.i.i.i.i84.i.i = phi i64 [ %i.ant, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i ], [ 0, %bb.iu ] ; 2 uses
  %i.ans = getelementptr inbounds nuw [88 x i8], ptr %i.anp, i64 %.sroa.0.0.i.i.i.i.i84.i.i ; 14 uses
  %i.ant = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i84.i.i, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18857)
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ans, i64 24
  %.val.i33.i.i = load i64, ptr %i.anu, align 8, !range !24, !alias.scope !18857, !noalias !18858, !noundef !10 ; 2 uses
  %i.anv = icmp sgt i64 %.val.i33.i.i, 0
  br i1 %i.anv, label %bb.iv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i34.i.i

bb.iv:                                            ; preds = %.lr.ph85.i.i
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ans, i64 32
  %.val2.i39.i.i = load ptr, ptr %i.anw, align 8, !alias.scope !18857, !noalias !18858, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i39.i.i, i64 noundef %.val.i33.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18859
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i34.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i34.i.i: ; preds = %bb.iv, %.lr.ph85.i.i
  %.val3.i35.i.i = load i64, ptr %i.ans, align 8, !alias.scope !18857, !noalias !18858 ; 2 uses
  %i.anx = icmp eq i64 %.val3.i35.i.i, 0
  br i1 %i.anx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i37.i.i, label %bb.iw

bb.iw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i34.i.i
  %i.any = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %.val4.i36.i.i = load ptr, ptr %i.any, align 8, !alias.scope !18857, !noalias !18858, !nonnull !10, !noundef !10
  %i.anz = shl nuw i64 %.val3.i35.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i36.i.i, i64 noundef %i.anz, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18860
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i37.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i37.i.i: ; preds = %bb.iw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i34.i.i
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ans, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !18861), !noalias !18862
  %i.aob = load i64, ptr %i.aoa, align 8, !range !38, !alias.scope !18863, !noalias !18858, !noundef !10 ; 3 uses
  %i.aoc = icmp eq i64 %i.aob, -2
  br i1 %i.aoc, label %bb.ix, label %bb.je

bb.ix:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i37.i.i
  %i.aod = getelementptr inbounds nuw i8, ptr %i.ans, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18864)
  %i.aoe = load ptr, ptr %i.aod, align 8, !alias.scope !18864, !noalias !18783, !noundef !10 ; 2 uses
  %i.aof = icmp eq ptr %i.aoe, null
  br i1 %i.aof, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.aog = getelementptr inbounds nuw i8, ptr %i.ans, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18865)
  call void @llvm.experimental.noalias.scope.decl(metadata !18866)
  call void @llvm.experimental.noalias.scope.decl(metadata !18867)
  %i.aoh = load ptr, ptr %i.aog, align 8, !alias.scope !18868, !noalias !18783, !nonnull !10, !noundef !10
  %i.aoi = atomicrmw sub ptr %i.aoh, i64 1 release, align 8, !noalias !18869
  %i.aoj = icmp eq i64 %i.aoi, 1
  br i1 %i.aoj, label %.invoke180.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i

.invoke180.i.i:                                   ; preds = %bb.jh, %bb.iy
  %i.aok = phi ptr [ %i.apc, %bb.jh ], [ %i.aog, %bb.iy ]
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination11XyzDestReprE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aok) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i unwind label %bb.jo, !noalias !18783

bb.iz:                                            ; preds = %bb.ix
  call void @llvm.experimental.noalias.scope.decl(metadata !18870)
  %i.aol = atomicrmw sub ptr %i.aoe, i64 1 release, align 8, !noalias !18871
  %i.aom = icmp eq i64 %i.aol, 1
  br i1 %i.aom, label %bb.ja, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i71.i.i

bb.ja:                                            ; preds = %bb.iz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsidf7BFzONoc_6krilla(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aod) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i71.i.i unwind label %bb.jb, !noalias !18783

bb.jb:                                            ; preds = %bb.ja
  %i.aon = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ans, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18872)
  call void @llvm.experimental.noalias.scope.decl(metadata !18873)
  %i.aop = load ptr, ptr %i.aoo, align 8, !alias.scope !18874, !noalias !18783, !nonnull !10, !noundef !10
  %i.aoq = atomicrmw sub ptr %i.aop, i64 1 release, align 8, !noalias !18875
  %i.aor = icmp eq i64 %i.aoq, 1
  br i1 %i.aor, label %bb.jc, label %.body68.i.i

bb.jc:                                            ; preds = %bb.jb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aoo) #38
          to label %.body68.i.i unwind label %bb.jd, !noalias !18783

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i71.i.i: ; preds = %bb.ja, %bb.iz
  %i.aos = getelementptr inbounds nuw i8, ptr %i.ans, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18876)
  call void @llvm.experimental.noalias.scope.decl(metadata !18877)
  %i.aot = load ptr, ptr %i.aos, align 8, !alias.scope !18878, !noalias !18783, !nonnull !10, !noundef !10
  %i.aou = atomicrmw sub ptr %i.aot, i64 1 release, align 8, !noalias !18879
  %i.aov = icmp eq i64 %i.aou, 1
  br i1 %i.aov, label %.invoke179.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i

.invoke179.i.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i64.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i71.i.i
  %i.aow = phi ptr [ %i.apn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i64.i.i ], [ %i.aos, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i71.i.i ]
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aow) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i unwind label %bb.jo, !noalias !18783

bb.jd:                                            ; preds = %bb.jc
  %i.aox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18783
  unreachable

bb.je:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i37.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18880), !noalias !18862
  switch i64 %i.aob, label %bb.jf [
    i64 -1, label %bb.jg
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i
  ]

bb.jf:                                            ; preds = %bb.je
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.ans, i64 56
  %.val1.i.i.i38.i.i = load ptr, ptr %i.aoy, align 8, !alias.scope !18881, !noalias !18858, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i38.i.i, i64 noundef %i.aob, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18882
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i

bb.jg:                                            ; preds = %bb.je
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.ans, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18883)
  %i.apa = load ptr, ptr %i.aoz, align 8, !alias.scope !18883, !noalias !18783, !noundef !10 ; 2 uses
  %i.apb = icmp eq ptr %i.apa, null
  br i1 %i.apb, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ans, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18884)
  call void @llvm.experimental.noalias.scope.decl(metadata !18885)
  call void @llvm.experimental.noalias.scope.decl(metadata !18886)
  %i.apd = load ptr, ptr %i.apc, align 8, !alias.scope !18887, !noalias !18783, !nonnull !10, !noundef !10
  %i.ape = atomicrmw sub ptr %i.apd, i64 1 release, align 8, !noalias !18888
  %i.apf = icmp eq i64 %i.ape, 1
  br i1 %i.apf, label %.invoke180.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i

bb.ji:                                            ; preds = %bb.jg
  call void @llvm.experimental.noalias.scope.decl(metadata !18889)
  %i.apg = atomicrmw sub ptr %i.apa, i64 1 release, align 8, !noalias !18890
  %i.aph = icmp eq i64 %i.apg, 1
  br i1 %i.aph, label %bb.jj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i64.i.i

bb.jj:                                            ; preds = %bb.ji
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsidf7BFzONoc_6krilla(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aoz) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i64.i.i unwind label %bb.jk, !noalias !18783

bb.jk:                                            ; preds = %bb.jj
  %i.api = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ans, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18891)
  call void @llvm.experimental.noalias.scope.decl(metadata !18892)
  %i.apk = load ptr, ptr %i.apj, align 8, !alias.scope !18893, !noalias !18783, !nonnull !10, !noundef !10
  %i.apl = atomicrmw sub ptr %i.apk, i64 1 release, align 8, !noalias !18894
  %i.apm = icmp eq i64 %i.apl, 1
  br i1 %i.apm, label %bb.jl, label %.body68.i.i

bb.jl:                                            ; preds = %bb.jk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsidf7BFzONoc_6krilla11interactive11destination14XyzDestinationE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.apj) #38
          to label %.body68.i.i unwind label %bb.jm, !noalias !18783

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i64.i.i: ; preds = %bb.jj, %bb.ji
  %i.apn = getelementptr inbounds nuw i8, ptr %i.ans, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18895)
  call void @llvm.experimental.noalias.scope.decl(metadata !18896)
  %i.apo = load ptr, ptr %i.apn, align 8, !alias.scope !18897, !noalias !18783, !nonnull !10, !noundef !10
  %i.app = atomicrmw sub ptr %i.apo, i64 1 release, align 8, !noalias !18898
  %i.apq = icmp eq i64 %i.app, 1
  br i1 %i.apq, label %.invoke179.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i

bb.jm:                                            ; preds = %bb.jl
  %i.apr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18783
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i64.i.i, %bb.jh, %bb.jf, %bb.je, %.invoke179.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i71.i.i, %.invoke180.i.i, %bb.iy
  %i.aps = icmp eq i64 %i.ant, %i.anq
  br i1 %i.aps, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1c_.exit.i.i.i.i, label %.lr.ph85.i.i

bb.jn:                                            ; preds = %.lr.ph1915
  %i.apt = add i64 %.sroa.0.1.i.i.i.i.i.i.i1914, 1 ; 2 uses
  %i.apu = icmp eq i64 %i.apt, %i.anq
  br i1 %i.apu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i.i.i.i, label %.lr.ph1915

bb.jo:                                            ; preds = %.invoke179.i.i, %.invoke180.i.i
  %i.apv = landingpad { ptr, i32 }
          cleanup
  br label %.body68.i.i

.body68.i.i:                                      ; preds = %bb.jo, %bb.jl, %bb.jk, %bb.jc, %bb.jb
  %eh.lpad-body69.i.i = phi { ptr, i32 } [ %i.api, %bb.jk ], [ %i.api, %bb.jl ], [ %i.apv, %bb.jo ], [ %i.aon, %bb.jc ], [ %i.aon, %bb.jb ]
  %i.apw = icmp eq i64 %i.ant, %i.anq
  br i1 %i.apw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i.i.i.i, label %.lr.ph1915

.lr.ph1915:                                       ; preds = %.body68.i.i, %bb.jn
  %.sroa.0.1.i.i.i.i.i.i.i1914 = phi i64 [ %i.apt, %bb.jn ], [ %i.ant, %.body68.i.i ] ; 2 uses
  %i.apx = getelementptr inbounds nuw [88 x i8], ptr %i.anp, i64 %.sroa.0.1.i.i.i.i.i.i.i1914
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.apx) #44
          to label %bb.jn unwind label %bb.jp, !noalias !18858

bb.jp:                                            ; preds = %.lr.ph1915
  %i.apy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18858
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i.i.i.i: ; preds = %bb.jn, %.body68.i.i
  %i.apz = mul nuw i64 %i.amd, 88
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anp, i64 noundef %i.apz, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18858
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1c_.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit42.i.i, %bb.iu
  %i.aqa = mul nuw i64 %i.amd, 88
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.anp, i64 noundef %i.aqa, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !18858
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i.i.i.i, %6, %bb.is, %bb.ir, %bb.ij, %bb.ii, %.body55.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body56.i.i, %.body55.i.i ], [ %eh.lpad-body69.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1j_.exit.i.i.i.i.i ], [ %i.anh, %bb.ir ], [ %i.anh, %bb.is ], [ %7, %6 ], [ %i.ams, %bb.ij ], [ %i.ams, %bb.ii ]
  store i64 0, ptr %i.fd, align 8, !alias.scope !18899, !noalias !18759
  br label %.body.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB1c_.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i78.i.i, %bb.io, %bb.im, %bb.il, %.invoke177.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtBG_6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i85.i.i, %.invoke178.i.i, %bb.if, %.preheader.i.preheader.i.i
  store i64 0, ptr %i.fd, align 8, !alias.scope !18899, !noalias !18759
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EB1G_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB1K_.exit.i.i.i.i, %bb.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !18900)
  %i.aqb = load ptr, ptr %.sroa.5237.sroa.3.0..sroa.5237.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !18901, !noalias !18902, !noundef !10
  %.not.i4.i.i.i.i = icmp eq ptr %i.aqb, null
  br i1 %.not.i4.i.i.i.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18903)
  %i.aqc = load ptr, ptr %.sroa.5237.sroa.6.0..sroa.5237.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !18904, !noalias !18905, !nonnull !10, !noundef !10
  %i.aqd = load ptr, ptr %.sroa.5237.sroa.4.0..sroa.5237.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !18904, !noalias !18905, !nonnull !10, !noundef !10 ; 6 uses
  %i.aqe = icmp eq ptr %i.aqd, %i.aqc
  br i1 %i.aqe, label %bb.jr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEEB1B_.exit.i.i.i.i

bb.jr:                                            ; preds = %bb.jq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18906)
  %i.aqf = load i64, ptr %.sroa.4236.0..sroa_idx.i, align 8, !range !19, !alias.scope !18907, !noalias !18908, !noundef !10
  %i.aqg = trunc nuw i64 %i.aqf to i1
  br i1 %i.aqg, label %bb.js, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread5.i.i

bb.js:                                            ; preds = %bb.jr
  %i.aqh = load i64, ptr %i.acf, align 8, !alias.scope !18909, !noalias !18910, !noundef !10 ; 3 uses
  %i.aqi = load i64, ptr %i.acg, align 8, !alias.scope !18909, !noalias !18910, !noundef !10 ; 3 uses
  %i.aqj = icmp eq i64 %i.aqh, %i.aqi
  br i1 %i.aqj, label %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.thread.i.i, label %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i

_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.thread.i.i: ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !18911
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i

_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i: ; preds = %bb.js
  %i.aqk = add i64 %i.aqh, 1                      ; 3 uses
  store i64 %i.aqk, ptr %i.acf, align 8, !alias.scope !18909, !noalias !18910
  %i.aql = load i64, ptr %.sroa.5237.0..sroa_idx.i, align 8, !alias.scope !18912, !noalias !18913, !noundef !10
  %i.aqm = icmp ugt i64 %i.aql, 1
  %i.aqn = load ptr, ptr %i.ach, align 8, !alias.scope !18912, !noalias !18913, !nonnull !10
  %.sink11.i.i.i.i7.i.i.i.i = select i1 %i.aqm, ptr %i.aqn, ptr %i.ach ; 2 uses
  %i.aqo = getelementptr inbounds nuw [88 x i8], ptr %.sink11.i.i.i.i7.i.i.i.i, i64 %i.aqh ; 2 uses
  %.sroa.047.0.copyload.i.i.i.i = load i64, ptr %i.aqo, align 8, !noalias !18914 ; 2 uses
  %.not.i9.i.i.i.i = icmp eq i64 %.sroa.047.0.copyload.i.i.i.i, -1
  br i1 %.not.i9.i.i.i.i, label %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i

_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i: ; preds = %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18915)
  call void @llvm.experimental.noalias.scope.decl(metadata !18916)
  call void @llvm.experimental.noalias.scope.decl(metadata !18917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !18918
  %i.aqp = icmp eq i64 %i.aqk, %i.aqi
  br i1 %i.aqp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i, label %.lr.ph.i.i.i.i11.i.i.i.i

.lr.ph.i.i.i.i11.i.i.i.i:                         ; preds = %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i, %.noexc.i.i.i18.i.i.i.i
  %i.aqq = phi i64 [ %i.aqr, %.noexc.i.i.i18.i.i.i.i ], [ %i.aqk, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i ] ; 2 uses
  %i.aqr = add i64 %i.aqq, 1                      ; 3 uses
  store i64 %i.aqr, ptr %i.acf, align 8, !alias.scope !18919, !noalias !18908
  %i.aqs = getelementptr inbounds nuw [88 x i8], ptr %.sink11.i.i.i.i7.i.i.i.i, i64 %i.aqq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ev, ptr noundef nonnull align 8 dereferenceable(88) %i.aqs, i64 88, i1 false), !noalias !18914
  %.pr.i.i.i.i13.i.i.i.i = load i64, ptr %i.ev, align 8, !noalias !18918 ; 3 uses
  %.not.i.i.i.i14.i.i.i.i = icmp eq i64 %.pr.i.i.i.i13.i.i.i.i, -1
  br i1 %.not.i.i.i.i14.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i15.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i15.i.i.i.i: ; preds = %.lr.ph.i.i.i.i11.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18920)
  %.val.i.i.i124 = load i64, ptr %i.acz, align 8, !range !24, !alias.scope !18920, !noalias !18921, !noundef !10 ; 2 uses
  %i.aqt = icmp sgt i64 %.val.i.i.i124, 0
  br i1 %i.aqt, label %bb.jt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

bb.jt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i15.i.i.i.i
  %.val2.i.i.i = load ptr, ptr %i.ada, align 8, !alias.scope !18920, !noalias !18921, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val.i.i.i124, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18922
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %bb.jt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i15.i.i.i.i
  %i.aqu = icmp eq i64 %.pr.i.i.i.i13.i.i.i.i, 0
  br i1 %i.aqu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i, label %bb.ju

bb.ju:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  %.val4.i.i.i = load ptr, ptr %i.adb, align 8, !alias.scope !18920, !noalias !18921, !nonnull !10, !noundef !10
  %i.aqv = shl nuw i64 %.pr.i.i.i.i13.i.i.i.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.aqv, i64 noundef range(i64 1, -9223372036854775807) 4) #41, !noalias !18923
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i: ; preds = %bb.ju, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18924), !noalias !18925
  %i.aqw = load i64, ptr %i.adc, align 8, !range !38, !alias.scope !18926, !noalias !18921, !noundef !10 ; 3 uses
  %i.aqx = icmp eq i64 %i.aqw, -2
  br i1 %i.aqx, label %.invoke181.i.i, label %bb.jv

bb.jv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18927), !noalias !18925
  switch i64 %i.aqw, label %bb.jw [
    i64 -1, label %.invoke181.i.i
    i64 0, label %.noexc.i.i.i18.i.i.i.i
  ]

bb.jw:                                            ; preds = %bb.jv
  %.val1.i.i.i.i.i = load ptr, ptr %i.add, align 8, !alias.scope !18928, !noalias !18921, !nonnull !10, !noundef !10
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.aqw, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !18929
  br label %.noexc.i.i.i18.i.i.i.i

.invoke181.i.i:                                   ; preds = %bb.jv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit7.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla11interactive11destination11DestinationECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %i.add)
          to label %.noexc.i.i.i18.i.i.i.i unwind label %bb.jx, !noalias !18783

.noexc.i.i.i18.i.i.i.i:                           ; preds = %.invoke181.i.i, %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !18918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !18918
  %i.aqy = icmp eq i64 %i.aqr, %i.aqi
  br i1 %i.aqy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i, label %.lr.ph.i.i.i.i11.i.i.i.i

bb.jx:                                            ; preds = %.invoke181.i.i
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.sroa.5237.0..sroa_idx.i) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i unwind label %bb.jy, !noalias !18914

bb.jy:                                            ; preds = %bb.jx
  %i.ara = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !18914
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i: ; preds = %.noexc.i.i.i18.i.i.i.i, %.lr.ph.i.i.i.i11.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.thread.i21.i.i.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !18918
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.sroa.5237.0..sroa_idx.i)
          to label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread8.i.i unwind label %bb.jz, !noalias !18914

bb.jz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread8.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEB1f_.exit.i.i19.i.i.i.i
  store i64 0, ptr %.sroa.4236.0..sroa_idx.i, align 8, !alias.scope !18907, !noalias !18908
  br label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread5.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i: ; preds = %bb.jz, %bb.jx
  %eh.lpad-body.i17.i.i.i.i = phi { ptr, i32 } [ %i.arb, %bb.jz ], [ %i.aqz, %bb.jx ]
  store i64 0, ptr %.sroa.4236.0..sroa_idx.i, align 8, !alias.scope !18907, !noalias !18908
  br label %.body.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_EEEB1B_.exit.i.i.i.i: ; preds = %bb.jq
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqd, i64 112
  store ptr %i.arc, ptr %.sroa.5237.sroa.4.0..sroa.5237.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !18904, !noalias !18905
  %.sroa.525.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aqd, align 8, !noalias !18930 ; 3 uses
  %.sroa.525.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %.sroa.525.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.525.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !18930
  %.sroa.525.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqd, i64 16
  %.sroa.525.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.525.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !18930 ; 2 uses
  %.sroa.525.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqd, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.7.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.525.sroa.7.0..sroa_idx.i.i.i.i, i64 72, i1 false), !noalias !18931
  %i.ard = icmp ugt i64 %.sroa.525.sroa.0.0.copyload.i.i.i.i, 1 ; 3 uses
  %spec.select61.i.i.i.i = select i1 %i.ard, i64 0, i64 %.sroa.525.sroa.6.0.copyload.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ard, i64 %.sroa.525.sroa.0.0.copyload.i.i.i.i, i64 0
  %.sink10.i.i.i.i.i.i = select i1 %i.ard, i64 %.sroa.525.sroa.6.0.copyload.i.i.i.i, i64 %.sroa.525.sroa.0.0.copyload.i.i.i.i
  store i64 1, ptr %i.fd, align 8, !alias.scope !18932, !noalias !18933
  store i64 %spec.select.i.i.i.i, ptr %.sroa.4235.0..sroa_idx.i, align 8, !alias.scope !18932, !noalias !18933
  store i64 %.sroa.525.sroa.5.0.copyload.i.i.i.i, ptr %i.aby, align 8, !alias.scope !18932, !noalias !18933
  store i64 %spec.select61.i.i.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !alias.scope !18932, !noalias !18933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.7.i.i.i.i, i64 72, i1 false), !noalias !18933
  store i64 0, ptr %i.abw, align 8, !alias.scope !18932, !noalias !18933
  store i64 %.sink10.i.i.i.i.i.i, ptr %i.abx, align 8, !alias.scope !18932, !noalias !18933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.7.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18756)
  br label %bb.hg

.body.i.i:                                        ; preds = %.invoke.i, %bb.kv, %bb.ku, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit16.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i
  %.pn.i.i123 = phi { ptr, i32 } [ %lpad.phi15.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsidf7BFzONoc_6krilla4geom4RectEECs8jFhWeO2DFb_9typst_pdf.exit16.i.i ], [ %eh.lpad-body.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i.i.i.i.i ], [ %eh.lpad-body.i17.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEEB11_.exit.i16.i.i.i.i ], [ %lpad.phi15.i.i, %.invoke.i ], [ %lpad.phi15.i.i, %bb.kv ], [ %lpad.phi15.i.i, %bb.ku ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2d_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB2f_4link14LinkAnnotationj1_EEEEB2f_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.fd) #44
          to label %.body.i117 unwind label %bb.ks, !noalias !18783

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i: ; preds = %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i
  %.pn182.i.i = phi ptr [ %i.aqo, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i ], [ %i.akk, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.14.i.i = phi i64 [ %.sroa.047.0.copyload.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i6.i.i.i.i ], [ %.sroa.043.0.copyload.i.i.i.i, %_RNvYNvYINtCsiSzwKAiqS6b_8smallvec8IntoIterANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1E_3ops8function6FnOnceTQB5_EE9call_onceBJ_.exit.i.i.i.i.i ]
  %.sroa.649.0..sroa_idx.i.i.sink.i.i = getelementptr inbounds nuw i8, ptr %.pn182.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !noalias !18752
  store i64 %.sroa.0.14.i.i, ptr %i.fc, align 8, !noalias !18752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.649.0..sroa_idx.i.i.sink.i.i, i64 80, i1 false)
  %i.are = load i64, ptr %i.aci, align 8, !noalias !18752, !noundef !10 ; 7 uses
  %i.arf = icmp eq i64 %i.are, 1
  br i1 %i.arf, label %bb.ka, label %bb.kb

_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread5.i.i: ; preds = %bb.jr, %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.thread8.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB2d_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB2f_4link14LinkAnnotationj1_EEEEB2f_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.fd)
          to label %bb.kw unwind label %.loopexit308.i

bb.ka:                                            ; preds = %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsjFU9swAW47b_8indexmap3map4iter10IntoValuesINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtB20_6groups5GroupEINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtB22_4link14LinkAnnotationj1_EEENtNtNtB9_6traits8iterator8Iterator4nextB22_.exit.i.i
  %i.arg = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !18752, !nonnull !10, !noundef !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ack, ptr noundef nonnull align 4 dereferenceable(16) %i.arg, i64 16, i1 false), !noalias !18783
  %i.arh = getelementptr inbounds nuw i8, ptr %.pn182.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acl, ptr noundef nonnull align 8 dereferenceable(24) %i.arh, i64 24, i1 false)
  store i64 -1, ptr %i.fb, align 8, !noalias !18752
  store i64 -2, ptr %i.acm, align 8, !noalias !18752
end_hunk_2
begin_hunk_3_@llvm.fabs.v2f32
!18618 = !{!17637}
!18619 = !{!17639}
!18620 = !{!17641}
!18621 = !{!17641, !17639, !17637, !17635, !17633, !17631}
!18622 = !{!17643}
!18623 = !{!17643, !17641, !17639, !17637, !17635, !17633, !17631}
!18624 = !{!17645, !17643, !17641, !17639, !17637, !17635, !17633, !17631, !17534, !17532}
!18625 = !{!17647, !17643, !17641, !17639, !17637, !17635, !17633, !17631, !17534, !17532}
!18626 = !{!17649}
!18627 = !{!17643, !17641, !17639, !17637, !17635, !17633, !17631, !17534, !17532}
!18628 = !{!17651, !17643, !17641, !17639, !17637, !17635, !17633, !17631, !17534, !17532}
!18629 = !{!17641, !17639, !17637, !17635, !17633, !17631, !17534, !17532}
!18630 = !{!17666, !17664, !17663, !17661, !17660, !17658, !17656, !17654, !17653, !17534}
!18631 = !{!17668, !17664, !17663, !17661, !17660, !17658, !17656, !17654, !17653, !17534}
!18632 = !{!17656, !17654, !17653, !17534}
!18633 = !{!17670, !17534, !17532}
!18634 = !{!17672}
!18635 = !{!17672, !17534, !17533, !17531, !17532}
!18636 = !{!17676, !17674, !17672}
!18637 = !{!17679, !17678, !17677, !17534, !17533, !17531, !17532}
!18638 = !{!17674, !17672}
!18639 = !{!17678, !17677, !17534, !17533, !17531, !17532}
!18640 = !{!17681, !17678, !17534, !17532}
!18641 = !{!17683, !17678, !17534, !17532}
!18642 = !{!17678, !17534, !17532}
!18643 = !{!17686, !17685, !17534, !17532}
!18644 = !{!17686}
!18645 = !{!17686, !17672}
!18646 = !{!17685, !17534, !17533, !17531, !17532}
!18647 = !{!17686, !17534, !17532}
!18648 = !{!17688}
!18649 = !{!17690}
!18650 = !{!17694, !17692, !17690, !17688, !17534, !17532}
!18651 = !{!17696}
!18652 = !{!17698}
!18653 = !{!17698, !17696, !17690, !17688}
!18654 = !{!17698, !17696, !17534, !17532}
!18655 = !{!17700}
!18656 = !{!17702}
!18657 = !{!17702, !17700, !17690, !17688}
!18658 = !{!17702, !17700, !17534, !17532}
!18659 = !{!17704, !17534, !17532}
!18660 = !{!17706}
!18661 = !{!17707}
!18662 = !{!17712, !17711, !17710, !17708, !17706, !17707}
!18663 = !{!17708, !17706}
!18664 = !{!17708, !17706, !17707}
!18665 = !{!17714}
!18666 = !{!17715}
!18667 = !{!17716, !17714, !17715, !17708, !17706, !17707}
!18668 = !{!17714, !17706}
!18669 = !{!17716, !17715, !17708, !17707}
!18670 = !{!17716, !17714, !17708, !17706}
!18671 = !{!17718}
!18672 = !{!17719, !17716, !17714, !17715, !17708, !17706, !17707}
!18673 = !{!17721, !17719, !17718, !17716, !17714, !17708, !17706}
!18674 = !{!17715, !17707}
!18675 = !{!17725, !17723, !17716, !17714, !17708, !17706}
!18676 = !{!17727}
!18677 = !{!17728}
!18678 = !{!17727, !17716, !17714, !17708, !17706}
!18679 = !{!17730}
!18680 = !{!17730, !17727}
!18681 = !{!17728, !17716, !17714, !17715, !17708, !17706, !17707}
!18682 = !{!17732}
!18683 = !{!17734}
!18684 = !{!17734, !17732, !17730, !17727}
!18685 = !{!17736, !17735, !17728, !17716, !17714, !17715, !17708, !17706, !17707}
!18686 = !{!17738, !17734, !17736, !17732, !17735, !17730, !17727, !17728, !17716, !17714, !17708, !17706}
!18687 = !{!17740, !17734, !17736, !17732, !17735, !17730, !17727, !17728, !17716, !17714, !17708, !17706}
!18688 = !{!17727, !17728, !17716, !17714, !17708, !17706}
!18689 = !{!17742}
!18690 = !{!17743, !17716, !17714, !17708, !17706}
!18691 = !{!17706, !17707}
!18692 = !{!17746, !17745, !17708, !17706}
!18693 = !{!17746, !17708, !17706}
!18694 = !{!17749, !17748}
!18695 = !{!17751}
!18696 = !{!17752}
!18697 = !{!17753}
!18698 = !{!17756, !17755, !17751, !17754, !17752, !17753}
!18699 = !{!17757}
!18700 = !{!17757, !17751}
!18701 = !{!17756, !17755, !17754, !17752, !17753}
!18702 = !{!17757, !17752}
!18703 = !{!17756, !17755, !17751, !17754, !17753}
!18704 = !{!17757, !17753}
!18705 = !{!17756, !17755, !17751, !17754, !17752}
!18706 = !{!17749}
!18707 = !{!17761, !17759, !17749}
!18708 = !{!17748}
!18709 = !{!17759}
!18710 = !{!17761}
!18711 = !{!17763}
!18712 = !{!17765}
!18713 = !{!17765, !17763, !17761, !17759, !17749}
!18714 = !{!17767, !17766, !17748}
!18715 = !{!17769, !17765, !17767, !17763, !17766, !17761, !17759}
!18716 = !{!17771, !17765, !17767, !17763, !17766, !17761, !17759}
!18717 = !{!"llvm.loop.unswitch.partial.disable"}
!18718 = !{!17774}
!18719 = !{!17776}
!18720 = !{!17777}
!18721 = !{!17776, !17777}
!18722 = !{!17777, !17749, !17748}
!18723 = !{!17779}
!18724 = !{!17779, !17749, !17748}
!18725 = !{!17781}
!18726 = !{!17783}
!18727 = !{!17784, !17749, !17748}
!18728 = !{!17784}
!18729 = !{!17784, !17783}
!18730 = !{!17786}
!18731 = !{!17788}
!18732 = !{!17788, !17786, !17749}
!18733 = !{!17790}
!18734 = !{!17792}
!18735 = !{!17792, !17790, !17788, !17786, !17749}
!18736 = !{!17794, !17793, !17748}
!18737 = !{!17796, !17792, !17794, !17790, !17793, !17788, !17786}
!18738 = !{!17798, !17792, !17794, !17790, !17793, !17788, !17786}
!18739 = !{!17800}
!18740 = !{!17802}
!18741 = !{!17802, !17749}
!18742 = !{!17805, !17804, !17803, !17748}
!18743 = !{!17802, !17805, !17804, !17803}
!18744 = !{!17810, !17809, !17808, !17807, !17802, !17805, !17804, !17803, !17749, !17748}
!18745 = !{!17812, !17802, !17749}
!18746 = !{!17814, !17802, !17805, !17804, !17803}
!18747 = !{!17802, !17805, !17804, !17803, !17749, !17748}
!18748 = !{!17819, !17818, !17817, !17816, !17802, !17805, !17804, !17803, !17749, !17748}
!18749 = !{!17821}
!18750 = !{!17823}
!18751 = !{!17829, !17828, !17826, !17825}
!18752 = !{!17832, !17831, !17749, !17748}
!18753 = !{!17832, !17749, !17748}
!18754 = !{!17834}
!18755 = !{!17836}
!18756 = !{!17838}
!18757 = !{!17842, !17840, !17838, !17836, !17834}
!18758 = !{!17847, !17846, !17845, !17844, !17843, !17832, !17831, !17749, !17748}
!18759 = !{!17845, !17844, !17843, !17832, !17831, !17749, !17748}
!18760 = !{!17849, !17842, !17840, !17838, !17836, !17834}
!18761 = !{!17850, !17847, !17846, !17845, !17844, !17843, !17832, !17831, !17749, !17748}
!18762 = !{!17845, !17844, !17843, !17831}
!18763 = !{!17852}
!18764 = !{!17854}
!18765 = !{!17856}
!18766 = !{!17856, !17854, !17852, !17845, !17838, !17844, !17836, !17843, !17834, !17832, !17831, !17749, !17748}
!18767 = !{!17858, !17856, !17854, !17852, !17838, !17836, !17834}
!18768 = !{!17859, !17845, !17844, !17843, !17832, !17831, !17749, !17748}
!18769 = !{!17856, !17854, !17852, !17838, !17836, !17834}
!18770 = !{!17861}
!18771 = !{!17854, !17852, !17845, !17838, !17844, !17843, !17832, !17831, !17749, !17748}
!18772 = !{!17863, !17861, !17854, !17852, !17845, !17838, !17844, !17843, !17831}
!18773 = !{!17861, !17854, !17852, !17845, !17838, !17844, !17843, !17831}
!18774 = !{!17865}
!18775 = !{!17854, !17852, !17845, !17838, !17844, !17843}
!18776 = !{!17865, !17861}
!18777 = !{!17867}
!18778 = !{!17869}
!18779 = !{!17871}
!18780 = !{!17873}
!18781 = !{!17873, !17871, !17869, !17867}
!18782 = !{!17873, !17871, !17869, !17867, !17831}
!18783 = !{!17831}
!18784 = !{!17875}
!18785 = !{!17879, !17877, !17875, !17867, !17831}
!18786 = !{!17881}
!18787 = !{!17883}
!18788 = !{!17883, !17881, !17875, !17867}
!18789 = !{!17883, !17881, !17831}
!18790 = !{!17885}
!18791 = !{!17887}
!18792 = !{!17887, !17885, !17875, !17867}
!18793 = !{!17887, !17885, !17831}
!18794 = !{!17889}
!18795 = !{!17889, !17865, !17861}
!18796 = !{!17891, !17889, !17865, !17861, !17854, !17852, !17845, !17838, !17844, !17843, !17831}
!18797 = !{!17893}
!18798 = !{!17895}
!18799 = !{!17897}
!18800 = !{!17899}
!18801 = !{!17899, !17897, !17895, !17893}
!18802 = !{!17899, !17897, !17895, !17893, !17831}
!18803 = !{!17901}
!18804 = !{!17905, !17903, !17901, !17893, !17831}
!18805 = !{!17907}
!18806 = !{!17909}
!18807 = !{!17909, !17907, !17901, !17893}
!18808 = !{!17909, !17907, !17831}
!18809 = !{!17911}
!18810 = !{!17913}
!18811 = !{!17913, !17911, !17901, !17893}
!18812 = !{!17913, !17911, !17831}
!18813 = !{!17917, !17915}
!18814 = !{!17915}
!18815 = !{!17917}
!18816 = !{!17845, !17844, !17843}
!18817 = !{!17919}
!18818 = !{!17921, !17919, !17845, !17844, !17843, !17831}
!18819 = !{!17919, !17845, !17844, !17843, !17831}
!18820 = !{!17923}
!18821 = !{!17923, !17919}
!18822 = !{!17925}
!18823 = !{!17927}
!18824 = !{!17929}
!18825 = !{!17931}
!18826 = !{!17931, !17929, !17927, !17925}
!18827 = !{!17931, !17929, !17927, !17925, !17831}
!18828 = !{!17933}
!18829 = !{!17937, !17935, !17933, !17925, !17831}
!18830 = !{!17939}
!18831 = !{!17941}
!18832 = !{!17941, !17939, !17933, !17925}
!18833 = !{!17941, !17939, !17831}
!18834 = !{!17943}
!18835 = !{!17945}
!18836 = !{!17945, !17943, !17933, !17925}
!18837 = !{!17945, !17943, !17831}
!18838 = !{!17947}
!18839 = !{!17947, !17923, !17919}
!18840 = !{!17949, !17947, !17923, !17919, !17845, !17844, !17843, !17831}
!18841 = !{!17951}
!18842 = !{!17953}
!18843 = !{!17955}
!18844 = !{!17957}
!18845 = !{!17957, !17955, !17953, !17951}
!18846 = !{!17957, !17955, !17953, !17951, !17831}
!18847 = !{!17959}
!18848 = !{!17963, !17961, !17959, !17951, !17831}
!18849 = !{!17965}
!18850 = !{!17967}
!18851 = !{!17967, !17965, !17959, !17951}
!18852 = !{!17967, !17965, !17831}
!18853 = !{!17969}
!18854 = !{!17971}
!18855 = !{!17971, !17969, !17959, !17951}
!18856 = !{!17971, !17969, !17831}
!18857 = !{!17973}
!18858 = !{!17975, !17917, !17915, !17845, !17844, !17843, !17831}
!18859 = !{!17977, !17973, !17975, !17917, !17915, !17845, !17844, !17843, !17831}
!18860 = !{!17973, !17975, !17917, !17915, !17845, !17844, !17843, !17831}
!18861 = !{!17979}
!18862 = !{!17975, !17917, !17915, !17845, !17844, !17843}
!18863 = !{!17979, !17973}
!18864 = !{!17981}
!18865 = !{!17983}
!18866 = !{!17985}
!18867 = !{!17987}
!18868 = !{!17987, !17985, !17983, !17981}
!18869 = !{!17987, !17985, !17983, !17981, !17831}
!18870 = !{!17989}
!18871 = !{!17993, !17991, !17989, !17981, !17831}
!18872 = !{!17995}
!18873 = !{!17997}
!18874 = !{!17997, !17995, !17989, !17981}
!18875 = !{!17997, !17995, !17831}
!18876 = !{!17999}
!18877 = !{!18001}
!18878 = !{!18001, !17999, !17989, !17981}
!18879 = !{!18001, !17999, !17831}
!18880 = !{!18003}
!18881 = !{!18003, !17979, !17973}
!18882 = !{!18005, !18003, !17979, !17973, !17975, !17917, !17915, !17845, !17844, !17843, !17831}
!18883 = !{!18007}
!18884 = !{!18009}
!18885 = !{!18011}
!18886 = !{!18013}
!18887 = !{!18013, !18011, !18009, !18007}
!18888 = !{!18013, !18011, !18009, !18007, !17831}
!18889 = !{!18015}
!18890 = !{!18019, !18017, !18015, !18007, !17831}
!18891 = !{!18021}
!18892 = !{!18023}
!18893 = !{!18023, !18021, !18015, !18007}
!18894 = !{!18023, !18021, !17831}
!18895 = !{!18025}
!18896 = !{!18027}
!18897 = !{!18027, !18025, !18015, !18007}
!18898 = !{!18027, !18025, !17831}
!18899 = !{!17838, !17836, !17834}
!18900 = !{!18029}
!18901 = !{!18029, !17836, !17834}
!18902 = !{!18030, !17844, !17843, !17832, !17831, !17749, !17748}
!18903 = !{!18032}
!18904 = !{!18034, !18032, !18029, !17836, !17834}
!18905 = !{!18036, !18035, !18030, !17844, !17843, !17832, !17831, !17749, !17748}
!18906 = !{!18038}
!18907 = !{!18038, !17836, !17834}
!18908 = !{!18039, !17844, !17843, !17832, !17831, !17749, !17748}
!18909 = !{!18043, !18041, !18038, !17836, !17834}
!18910 = !{!18045, !18044, !18039, !17844, !17843, !17832, !17831, !17749, !17748}
!18911 = !{!18051, !18049, !18047, !18039, !18038, !17844, !17836, !17843, !17834, !17832, !17831, !17749, !17748}
!18912 = !{!18053, !18043, !18041, !18038, !17836, !17834}
!18913 = !{!18054, !18045, !18044, !18039, !17844, !17843, !17832, !17831, !17749, !17748}
!18914 = !{!18039, !17844, !17843, !17831}
!18915 = !{!18055}
!18916 = !{!18056}
!18917 = !{!18057}
!18918 = !{!18057, !18056, !18055, !18039, !18038, !17844, !17836, !17843, !17834, !17832, !17831, !17749, !17748}
!18919 = !{!18057, !18056, !18055, !18038, !17836, !17834}
!18920 = !{!18059}
!18921 = !{!18056, !18055, !18039, !18038, !17844, !17843, !17832, !17831, !17749, !17748}
!18922 = !{!18061, !18059, !18056, !18055, !18039, !18038, !17844, !17843, !17831}
!18923 = !{!18059, !18056, !18055, !18039, !18038, !17844, !17843, !17831}
!18924 = !{!18063}
!18925 = !{!18056, !18055, !18039, !18038, !17844, !17843}
!18926 = !{!18063, !18059}
!18927 = !{!18065}
!18928 = !{!18065, !18063, !18059}
!18929 = !{!18067, !18065, !18063, !18059, !18056, !18055, !18039, !18038, !17844, !17843, !17831}
!18930 = !{!18032, !18029, !17844, !17843, !17831}
!18931 = !{!17844, !17843, !17831}
!18932 = !{!17836, !17834}
!18933 = !{!17844, !17843, !17832, !17831, !17749, !17748}
!18934 = !{!18069}
!18935 = !{!18071}
!18936 = !{!18073, !18071, !18069, !17831}
!18937 = !{!18075}
!18938 = !{!18077, !18075}
!18939 = !{!18089, !18088, !18087, !18085, !18083, !18081, !18079, !18071, !18069, !17831}
!18940 = !{!18093, !18091, !18088, !18075, !18087, !18085, !18083, !18081, !18079, !18071, !18069, !17831}
!18941 = !{!18071, !18069}
!18942 = !{!18095, !17832, !17831}
!18943 = !{!17832, !17831}
!18944 = !{!18097, !17831}
!18945 = !{!18099}
!18946 = !{!17831, !17749, !17748}
!18947 = !{!18101}
!18948 = !{!18101, !18099}
!18949 = !{!18103, !18101, !18099, !17831}
!18950 = !{!18105}
!18951 = !{!18107}
!18952 = !{!18109}
!18953 = !{!18110, !18109, !18107}
!18954 = !{!18114, !18112, !18109}
!18955 = !{!18115, !18110}
!18956 = !{!18110}
!18957 = !{!18117}
!18958 = !{!18117, !18110}
!18959 = !{!18109, !18107}
!18960 = !{!18119}
!18961 = !{!18124, !18123, !18121}
!18962 = !{!18119, !18124, !18123, !18121}
!18963 = !{!18119, !18124, !18123, !18125, !18121, !18107}
!18964 = !{!18121, !18107}
!18965 = !{!18128}
!18966 = !{!18129, !18128, !18107}
!18967 = !{!18131, !18128}
!18968 = !{!18129}
!18969 = !{!18134, !18133, !18129}
!18970 = !{!18134, !18129}
!18971 = !{!18128, !18107}
!18972 = !{!18136}
!18973 = !{!18138}
!18974 = !{!18143, !18142, !18140}
!18975 = !{!18138, !18143, !18142, !18140}
!18976 = !{!18138, !18143, !18142, !18144, !18140, !18107}
!18977 = !{!18140, !18107}
!18978 = !{!18147}
!18979 = !{!18149, !18147}
!18980 = !{!18150}
!18981 = !{!18152, !18150, !18147}
!18982 = !{i8 -2, i8 4}
!18983 = !{!18154}
!18984 = !{!18160, !18158, !18156}
!18985 = !{!18154, !18160, !18158, !18156}
!18986 = !{!18154, !18160, !18158, !18156, !18107}
!18987 = !{!18158, !18156}
!18988 = !{!18163}
!18989 = !{!18171, !18169, !18167, !18165}
!18990 = !{!18173, !18107}
!18991 = !{i8 -1, i8 10}
!18992 = !{!18179, !18177, !18175}
!18993 = !{!18182, !18181}
!18994 = !{!18182}
!18995 = !{!18184}
!18996 = !{!18186}
!18997 = !{!18188}
!18998 = !{!18192, !18190}
!18999 = !{!18194}
!19000 = !{!18196}
!19001 = !{!18198}
!19002 = !{!18200}
!19003 = !{!18202, !18200}
!19004 = !{!18203}
!19005 = !{!18203, !18200}
!19006 = !{!18205}
!19007 = !{!18207}
!19008 = !{!18209, !18207}
!19009 = !{!18211, !18207}
!19010 = !{!18207, !18203}
!19011 = !{!18213}
!19012 = !{!18214}
!19013 = !{!18213, !18203}
!19014 = !{!18213, !18214}
!19015 = !{!18216, !18214}
!19016 = !{!18213, !18203, !18200}
!19017 = !{!18213, !18214, !18203}
!19018 = !{!18218}
!19019 = !{!18219}
!19020 = !{!18219, !18218}
!19021 = !{!18222, !18221, !18219, !18218}
!19022 = !{!18227, !18225, !18224, !18219, !18218}
!19023 = !{!18229}
!19024 = !{!18231}
!19025 = !{!18231, !18229}
!19026 = !{!18247, !18246, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19027 = !{!18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19028 = !{!18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19029 = !{!18249}
!19030 = !{!18255, !18253, !18251, !18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19031 = !{!18249, !18255, !18253, !18251, !18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19032 = !{!18253, !18251, !18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19033 = !{!18258}
!19034 = !{!18265, !18264, !18262, !18260, !18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19035 = !{!18258, !18265, !18264, !18262, !18260, !18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19036 = !{!18258, !18265, !18264, !18266, !18262, !18260, !18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19037 = !{!18268}
!19038 = !{!18262, !18260, !18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19039 = !{!18270, !18247, !18231, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
!19040 = !{!18274, !18272, !18246, !18229, !18245, !18243, !18242, !18240, !18239, !18237, !18236, !18234, !18233, !18225, !18224, !18219, !18218}
end_hunk_3
