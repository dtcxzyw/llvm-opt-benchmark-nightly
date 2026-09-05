Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.2?download=true
inline.NumInlined: 83
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1E_IB2g_NtB2Y_18NamespaceStaticSetEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB5p_11VacantEntryB1D_B3F_E12insert_entry0ECsj1ugBVjDER0_8xml5ever:bb.a
  %i.im = zext i16 %i.il to i64                   ; 5 uses
  %i.in = add i16 %i.il, 1
  %i.io = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 8 ; 2 uses
  %i.ip = add nuw nsw i64 %.sroa.5.0.i, 1         ; 7 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.im
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.epilog-lcssa
  store i64 %i.dd, ptr %i.iq, align 8, !alias.scope !126, !noalias !125
  %i.ir = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 96
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.sroa.5.0.i
  store i64 %storemerge183, ptr %i.is, align 8, !alias.scope !127, !noalias !125
  br label %bb.bp

bb.bo:                                            ; preds = %.epilog-lcssa
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  %i.iu = sub nuw nsw i64 %i.im, %.sroa.5.0.i
  %i.iv = shl nuw nsw i64 %i.iu, 3                ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.it, ptr nonnull align 8 %i.iq, i64 %i.iv, i1 false), !alias.scope !126, !noalias !125
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 96 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.5.0.i ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ip
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.ix, i64 %i.iv, i1 false), !alias.scope !127, !noalias !125
  store i64 %i.dd, ptr %i.iq, align 8, !alias.scope !126, !noalias !125
  store i64 %storemerge183, ptr %i.ix, align 8, !alias.scope !127, !noalias !125
  %i.iz = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 192 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ip
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.sroa.5.0.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jc, ptr nonnull align 8 %i.ja, i64 %i.iv, i1 false), !alias.scope !128, !noalias !125
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jd = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 192 ; 6 uses
  %i.je = add nuw nsw i64 %i.im, 2                ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.ip
  store ptr %i.de, ptr %i.jf, align 8, !alias.scope !128, !noalias !125
  store i16 %i.in, ptr %i.ik, align 2, !noalias !125
  %i.jg = icmp samesign ult i64 %i.ip, %i.je
  br i1 %i.jg, label %.lr.ph.i.i11.i.preheader, label %.loopexit72

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bp
  %i.jh = add nuw nsw i64 %i.im, 1
  %i.ji = sub nsw i64 %i.jh, %.sroa.5.0.i
  %i.jj = sub nsw i64 %i.im, %.sroa.5.0.i
  %xtraiter551 = and i64 %i.ji, 3                 ; 2 uses
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jk, %.lr.ph.i.i11.i.prol ], [ %i.ip, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jl = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.0.06.i.i12.i.prol
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !125, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jn, align 8, !noalias !125
  %i.jo = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 184
  store i16 %i.jo, ptr %i.jp, align 8, !noalias !125
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter551
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !86

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.ip, %.lr.ph.i.i11.i.preheader ], [ %i.jk, %.lr.ph.i.i11.i.prol ]
  %i.jq = icmp ult i64 %i.jj, 3
  br i1 %i.jq, label %.loopexit72, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kg, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.0.06.i.i12.i
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !125, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jt, align 8, !noalias !125
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 184
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !125
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jr
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !125, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jy, align 8, !noalias !125
  %i.jz = trunc nuw nsw i64 %i.jr to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 184
  store i16 %i.jz, ptr %i.ka, align 8, !noalias !125
  %i.kb = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jw
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !125, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.kd, align 8, !noalias !125
  %i.ke = trunc nuw nsw i64 %i.jw to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 184
  store i16 %i.ke, ptr %i.kf, align 8, !noalias !125
  %i.kg = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kh = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.kb
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !125, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.kj, align 8, !noalias !125
  %i.kk = trunc nuw nsw i64 %i.kb to i16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 184
  store i16 %i.kk, ptr %i.kl, align 8, !noalias !125
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kg, %i.je
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit72, label %.lr.ph.i.i11.i

bb.bq:                                            ; preds = %bb.bs, %bb.br
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !111
  unreachable

bb.br:                                            ; preds = %.loopexit73, %.loopexit.split-lp, %bb.bl
  %.pn.ph.i29 = phi { ptr, i32 } [ %.pn.i.i, %bb.bl ], [ %lpad.loopexit, %.loopexit73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d) #19
          to label %bb.bs unwind label %bb.bq, !noalias !111

bb.bs:                                            ; preds = %bb.br
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #19
          to label %.critedge22 unwind label %bb.bq, !noalias !111

.loopexit72:                                      ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.kn = load ptr, ptr %i.da, align 8, !noalias !105, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.kn, null
  br i1 %.not.i, label %._crit_edge, label %bb.ak

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit, %bb.u, %bb.bu
  %spec.select31.i.sink = phi ptr [ %spec.select31.i, %.loopexit ], [ %i.m, %bb.u ], [ %spec.select31.i, %bb.bu ]
  %spec.select.i.sink = phi i64 [ %spec.select.i, %.loopexit ], [ %i.cf, %bb.u ], [ %spec.select.i, %bb.bu ]
  %.sroa.510.0.i.sink = phi i64 [ %.sroa.510.0.i, %.loopexit ], [ %i.w, %bb.u ], [ %.sroa.510.0.i, %bb.bu ]
  store ptr %spec.select31.i.sink, ptr %0, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.sink, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i.sink, ptr %i.kp, align 8
  ret void

bb.bu:                                            ; preds = %bb.ad
  %i.kq = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.kr = add nuw nsw i16 %i.cu, 1
  store i16 %i.kr, ptr %i.ck, align 2, !noalias !106
  %i.ks = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kq
  store i64 %.lcssa161, ptr %i.kt, align 8, !noalias !106
  %i.ku = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kq
  store i64 %storemerge.lcssa, ptr %i.kv, align 8, !noalias !106
  %i.kw = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.kw
  store ptr %.lcssa168, ptr %i.kx, align 8, !noalias !106
  store ptr %i.cj, ptr %.lcssa168, align 8, !noalias !106
  %i.ky = trunc nuw nsw i64 %i.kw to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %.lcssa168, i64 184
  store i16 %i.ky, ptr %i.kz, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bt

.critedge22:                                      ; preds = %bb.bs, %bb.aj, %bb.ag, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.s ], [ %.pn.ph.i29, %bb.bs ], [ %i.cy, %bb.aj ], [ %i.cw, %bb.ag ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1z_IB2b_NtB2T_18NamespaceStaticSetEENtB1i_14LeafOrInternalE11search_treeB1y_ECsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %.fr = freeze i64 %i.a                          ; 6 uses
  %.not.i = icmp eq i64 %.fr, 0
  %i.b = trunc i64 %.fr to i8
  %i.c = and i8 %i.b, 3
  %i.d = lshr i64 %.fr, 32                        ; 3 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8 ; 4 uses
  %i.f = icmp ult i64 %i.d, %i.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !nonnull !4, !align !8 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = lshr i64 %.fr, 4
  %i.k = and i64 %i.j, 15
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.m = inttoptr i64 %.fr to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br i1 %.not.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.a, %4
  %.sroa.3.0.us = phi i64 [ %7, %4 ], [ %2, %bb.a ] ; 3 uses
  %.sroa.0.0.us = phi ptr [ %6, %4 ], [ %1, %bb.a ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 186
  %i.p = load i16, ptr %i.o, align 2, !noalias !141, !noundef !4
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %.split78.us.us, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us

_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us: ; preds = %.split.us.us
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !142, !noalias !143, !noundef !4
  %.not1.i.us.us.not = icmp eq i64 %i.s, 0
  br i1 %.not1.i.us.us.not, label %.split84.us, label %.split78.us.us

.split78.us.us:                                   ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us, %.split.us.us
  %i.t = icmp eq i64 %.sroa.3.0.us, 0
  br i1 %i.t, label %.split84.us, label %4

4:                                                ; preds = %.split78.us.us
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 192
  %6 = load ptr, ptr %5, align 8, !nonnull !4, !noundef !4
  %7 = add i64 %.sroa.3.0.us, -1
  br label %.split.us.us

.split:                                           ; preds = %bb.a, %bb.p
  %.sroa.3.0 = phi i64 [ %i.bj, %bb.p ], [ %2, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.bi, %bb.p ], [ %1, %bb.a ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 186
  %i.w = load i16, ptr %i.v, align 2, !noalias !141, !noundef !4 ; 2 uses
  %i.x = zext i16 %i.w to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.z = icmp eq i16 %i.w, 0
  br i1 %i.z, label %.split78, label %.lr.ph

bb.b:                                             ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit
  %i.aa = icmp eq ptr %i.ab, %i.y
  br i1 %i.aa, label %.split78, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.b
  %.sroa.0.01.i160 = phi ptr [ %i.ab, %bb.b ], [ %i.u, %.split ] ; 3 uses
  %.sroa.8.0.i159 = phi i64 [ %i.ac, %bb.b ], [ 0, %.split ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i160, i64 8 ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.8.0.i159, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ad = load i64, ptr %.sroa.0.01.i160, align 8, !alias.scope !142, !noalias !143, !noundef !4 ; 6 uses
  %.not2.i = icmp eq i64 %i.ad, 0
  br i1 %.not2.i, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ae = icmp eq i64 %.fr, %i.ad
  br i1 %i.ae, label %.split84.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.c, label %bb.e [
    i8 0, label %bb.f
    i8 1, label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.m, align 8, !noalias !144, !nonnull !4, !noundef !4
  %i.ag = load i64, ptr %i.n, align 8, !noalias !144, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.h, align 8, !noalias !144, !nonnull !4, !noundef !4
  %i.ai = load i64, ptr %i.i, align 8, !noalias !144, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !144
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.d, %bb.h, %bb.f
  %.sroa.4.0.i.i.i = phi i64 [ %i.ag, %bb.f ], [ %i.ai, %bb.h ], [ %i.k, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.af, %bb.f ], [ %i.ah, %bb.h ], [ %i.l, %bb.d ]
  %i.aj = trunc i64 %i.ad to i8
  %i.ak = and i8 %i.aj, 3
  switch i8 %i.ak, label %bb.j [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

bb.j:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  unreachable

bb.k:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.al = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !145, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noalias !145, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.l:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ap = lshr i64 %i.ad, 4
  %i.aq = and i64 %i.ap, 15
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i160, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.m:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.as = lshr i64 %i.ad, 32                      ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.e
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.as ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noalias !145, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !145, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !145
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i: ; preds = %bb.n, %bb.l, %bb.k
  %.sroa.4.0.i6.i.i = phi i64 [ %i.ao, %bb.k ], [ %i.aq, %bb.l ], [ %i.ax, %bb.n ] ; 2 uses
  %.sroa.0.0.i7.i.i = phi ptr [ %i.am, %bb.k ], [ %i.ar, %bb.l ], [ %i.av, %bb.n ]
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i, i64 %.sroa.4.0.i6.i.i)
  %i.ay = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i, ptr nonnull %.sroa.0.0.i7.i.i, i64 %spec.store.select.i.i) ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %.sroa.4.0.i.i.i, %.sroa.4.0.i6.i.i
  %spec.select.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  br label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit

_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit: ; preds = %.lr.ph, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i
  %.sroa.0.0.i51 = phi i8 [ 1, %.lr.ph ], [ %i.bc, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i ]
  switch i8 %.sroa.0.0.i51, label %default.unreachable.i [
    i8 -1, label %.split78
    i8 0, label %.split84.us
    i8 1, label %bb.b
  ]

default.unreachable.i:                            ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit
  unreachable

.split78:                                         ; preds = %bb.b, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit, %.split
  %.sroa.4.0.i.ph = phi i64 [ %i.x, %.split ], [ %i.x, %bb.b ], [ %.sroa.8.0.i159, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit ] ; 3 uses
  %i.bd = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.bd, label %.split84.us, label %bb.p

.split84.us:                                      ; preds = %.split78, %bb.c, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us, %.split78.us.us
  %.us-phi86.sink = phi ptr [ %.sroa.0.0.us, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us ], [ %.sroa.0.0, %bb.c ], [ %.sroa.0.0.us, %.split78.us.us ], [ %.sroa.0.0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit ], [ %.sroa.0.0, %.split78 ]
  %.sink = phi i64 [ %.sroa.3.0.us, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us ], [ %.sroa.3.0, %bb.c ], [ 0, %.split78.us.us ], [ %.sroa.3.0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit ], [ 0, %.split78 ]
  %.us-phi85.sink = phi i64 [ 0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us ], [ %.sroa.8.0.i159, %bb.c ], [ 0, %.split78.us.us ], [ %.sroa.8.0.i159, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit ], [ %.sroa.4.0.i.ph, %.split78 ]
  %storemerge = phi i64 [ 0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us ], [ 0, %bb.c ], [ 1, %.split78.us.us ], [ 0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit ], [ 1, %.split78 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi86.sink, ptr %i.be, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.us-phi85.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.p:                                             ; preds = %.split78
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 192
  %i.bg = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.4.0.i.ph
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4
  %i.bj = add i64 %.sroa.3.0, -1
  br label %.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1B_IB2d_NtB2V_18NamespaceStaticSetEENtB1i_14LeafOrInternalE11search_treeB1A_ECsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %3, align 8, !alias.scope !158
  %.fr39.i = freeze i64 %i.a                      ; 7 uses
  %.not.i.i = icmp eq i64 %.fr39.i, 0
  %i.b = trunc i64 %.fr39.i to i8
  %i.c = and i8 %i.b, 3                           ; 2 uses
  %i.d = lshr i64 %.fr39.i, 32                    ; 3 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !158
  %.fr40.i = freeze i64 %i.e                      ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !158, !nonnull !4, !align !8 ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.d ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = lshr i64 %.fr39.i, 4
  %i.j = and i64 %i.i, 15                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.l = inttoptr i64 %.fr39.i to ptr             ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %.not.i.i, label %.split.us.i.us, label %.split

.split.us.i.us:                                   ; preds = %bb.a, %bb.c
  %.sroa.3.0.us = phi i64 [ %i.v, %bb.c ], [ %2, %bb.a ] ; 3 uses
  %.sroa.0.0.us = phi ptr [ %i.u, %bb.c ], [ %1, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 186
  %i.o = load i16, ptr %i.n, align 2, !noalias !158, !noundef !4
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.b, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.i.us

_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.i.us: ; preds = %.split.us.i.us
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !159, !noalias !160, !noundef !4
  %.not1.i.us.not.i.us = icmp eq i64 %i.r, 0
  br i1 %.not1.i.us.not.i.us, label %.split127.us, label %bb.b

bb.b:                                             ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.i.us, %.split.us.i.us
  %i.s = icmp eq i64 %.sroa.3.0.us, 0
  br i1 %i.s, label %.split127.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.v = add i64 %.sroa.3.0.us, -1
  br label %.split.us.i.us

.split:                                           ; preds = %bb.a
  %i.w = icmp ult i64 %i.d, %.fr40.i
  br i1 %i.w, label %.split.i.us, label %.split.i

.split.i.us:                                      ; preds = %.split, %bb.l
  %.sroa.3.0.us130 = phi i64 [ %i.bk, %bb.l ], [ %2, %.split ] ; 4 uses
  %.sroa.0.0.us131 = phi ptr [ %i.bj, %bb.l ], [ %1, %.split ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us131, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us131, i64 186
  %i.z = load i16, ptr %i.y, align 2, !noalias !158, !noundef !4 ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %.idx.i.us132 = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.us132
  %i.ac = icmp eq i16 %i.z, 0
  br i1 %i.ac, label %.loopexit.us, label %.lr.ph277

.split.split.us.i.us:                             ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us
  %i.ad = icmp eq ptr %i.ae, %i.ab
  br i1 %i.ad, label %.loopexit.us, label %.lr.ph277

.lr.ph277:                                        ; preds = %.split.i.us, %.split.split.us.i.us
  %.sroa.0.01.us23.i.us276 = phi ptr [ %i.ae, %.split.split.us.i.us ], [ %i.x, %.split.i.us ] ; 3 uses
  %.sroa.8.0.us22.i.us275 = phi i64 [ %i.af, %.split.split.us.i.us ], [ 0, %.split.i.us ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us23.i.us276, i64 8 ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.8.0.us22.i.us275, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.ag = load i64, ptr %.sroa.0.01.us23.i.us276, align 8, !alias.scope !159, !noalias !160, !noundef !4 ; 6 uses
  %.not2.i.us.i.us = icmp eq i64 %i.ag, 0
  br i1 %.not2.i.us.i.us, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph277
  %i.ah = icmp eq i64 %.fr39.i, %i.ag
  br i1 %i.ah, label %.split127.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %i.c, label %.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us
    i8 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.g, align 8, !noalias !161, !nonnull !4, !noundef !4
  %i.aj = load i64, ptr %i.h, align 8, !noalias !161, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.l, align 8, !noalias !161, !nonnull !4, !noundef !4
  %i.al = load i64, ptr %i.m, align 8, !noalias !161, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us: ; preds = %bb.e, %bb.g, %bb.f
  %.sroa.4.0.i.i.i.us.i.us = phi i64 [ %i.al, %bb.g ], [ %i.aj, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i.us.i.us = phi ptr [ %i.ak, %bb.g ], [ %i.ai, %bb.f ], [ %i.k, %bb.e ]
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 3
  switch i8 %i.an, label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us.unreachabledefault [
    i8 0, label %bb.k
    i8 1, label %bb.j
    i8 2, label %bb.h
  ]

bb.h:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us
  %i.ao = lshr i64 %i.ag, 32                      ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %.fr40.i
  br i1 %i.ap, label %bb.i, label %.split35.us.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ao ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !162, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.us.i.us

bb.j:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us
  %i.au = lshr i64 %i.ag, 4
  %i.av = and i64 %i.au, 15
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us23.i.us276, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.us.i.us

bb.k:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us
  %i.ax = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !162, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.us.i.us

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.us.i.us: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.4.0.i6.i.i.us.i.us = phi i64 [ %i.ba, %bb.k ], [ %i.av, %bb.j ], [ %i.at, %bb.i ] ; 2 uses
  %.sroa.0.0.i7.i.i.us.i.us = phi ptr [ %i.ay, %bb.k ], [ %i.aw, %bb.j ], [ %i.ar, %bb.i ]
  %spec.store.select.i.i.us.i.us = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.us.i.us, i64 %.sroa.4.0.i6.i.i.us.i.us)
  %i.bb = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.us.i.us, ptr nonnull %.sroa.0.0.i7.i.i.us.i.us, i64 %spec.store.select.i.i.us.i.us) ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = sub i64 %.sroa.4.0.i.i.i.us.i.us, %.sroa.4.0.i6.i.i.us.i.us
  %spec.select.i.i.us.i.us = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.us.i.us, i64 0)
  br label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us

_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us: ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.us.i.us, %.lr.ph277
  %.sroa.0.0.i6.us25.i.us = phi i8 [ 1, %.lr.ph277 ], [ %i.bf, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.us.i.us ]
  switch i8 %.sroa.0.0.i6.us25.i.us, label %.split21.us.i [
    i8 -1, label %.loopexit.us
    i8 0, label %.split127.us
    i8 1, label %.split.split.us.i.us
  ]

.loopexit.us:                                     ; preds = %.split.split.us.i.us, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us, %.split.i.us
  %.sroa.4.0.i.ph.ph.us = phi i64 [ %i.aa, %.split.i.us ], [ %i.aa, %.split.split.us.i.us ], [ %.sroa.8.0.us22.i.us275, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us ] ; 3 uses
  %4 = icmp eq i64 %.sroa.3.0.us130, 0
  br i1 %4, label %.split127.us, label %bb.l

bb.l:                                             ; preds = %.loopexit.us
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us131, i64 192
  %i.bh = icmp samesign ult i64 %.sroa.4.0.i.ph.ph.us, 12
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.sroa.4.0.i.ph.ph.us
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !noundef !4
  %i.bk = add i64 %.sroa.3.0.us130, -1
  br label %.split.i.us

.unreachabledefault:                              ; preds = %bb.e
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us.unreachabledefault: ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.us.i.us
  unreachable

.split.i:                                         ; preds = %.split, %bb.u
  %.sroa.3.0 = phi i64 [ %i.cy, %bb.u ], [ %2, %.split ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.cx, %bb.u ], [ %1, %.split ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 186
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !158, !noundef !4 ; 2 uses
  %i.bo = zext i16 %i.bn to i64                   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.bo, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i
  %i.bq = icmp eq i16 %i.bn, 0
  br i1 %i.bq, label %.loopexit55, label %.lr.ph

.split.split.i:                                   ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i
  %i.br = icmp eq ptr %i.bs, %i.bp
  br i1 %i.br, label %.loopexit55, label %.lr.ph

.lr.ph:                                           ; preds = %.split.i, %.split.split.i
  %.sroa.0.01.i273 = phi ptr [ %i.bs, %.split.split.i ], [ %i.bl, %.split.i ] ; 3 uses
  %.sroa.8.0.i272 = phi i64 [ %i.bt, %.split.split.i ], [ 0, %.split.i ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i273, i64 8 ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.8.0.i272, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.bu = load i64, ptr %.sroa.0.01.i273, align 8, !alias.scope !159, !noalias !160, !noundef !4 ; 6 uses
  %.not2.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not2.i.i, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bv = icmp eq i64 %.fr39.i, %i.bu
  br i1 %i.bv, label %.split127.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %i.c, label %.unreachabledefault38.i [
    i8 0, label %bb.o
    i8 1, label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i
    i8 2, label %bb.p
  ]

.unreachabledefault38.i:                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.l, align 8, !noalias !161, !nonnull !4, !noundef !4
  %i.bx = load i64, ptr %i.m, align 8, !noalias !161, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %.fr40.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !161
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.bx, %bb.o ], [ %i.j, %bb.n ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bw, %bb.o ], [ %i.k, %bb.n ]
  %i.by = trunc i64 %i.bu to i8
  %i.bz = and i8 %i.by, 3
  switch i8 %i.bz, label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.unreachabledefault.i [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
  ]

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.unreachabledefault.i: ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  unreachable

bb.q:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %i.ca = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !162, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i

bb.r:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %i.ce = lshr i64 %i.bu, 4
  %i.cf = and i64 %i.ce, 15
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i273, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i

bb.s:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i.i
  %i.ch = lshr i64 %i.bu, 32                      ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %.fr40.i
  br i1 %i.ci, label %bb.t, label %.split35.us.i

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ch ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !162, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !162, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i

.split35.us.i:                                    ; preds = %bb.s, %bb.h
  %.us-phi36.i = phi i64 [ %i.ao, %bb.h ], [ %i.ch, %bb.s ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi36.i, i64 noundef %.fr40.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !162
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i: ; preds = %bb.t, %bb.r, %bb.q
  %.sroa.4.0.i6.i.i.i = phi i64 [ %i.cd, %bb.q ], [ %i.cf, %bb.r ], [ %i.cm, %bb.t ] ; 2 uses
  %.sroa.0.0.i7.i.i.i = phi ptr [ %i.cb, %bb.q ], [ %i.cg, %bb.r ], [ %i.ck, %bb.t ]
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i, i64 %.sroa.4.0.i6.i.i.i)
  %i.cn = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i, ptr nonnull %.sroa.0.0.i7.i.i.i, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp eq i32 %i.cn, 0
  %i.cq = sub i64 %.sroa.4.0.i.i.i.i, %.sroa.4.0.i6.i.i.i
  %spec.select.i.i.i = select i1 %i.cp, i64 %i.cq, i64 %i.co
  %i.cr = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i

_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i, %.lr.ph
  %.sroa.0.0.i6.i = phi i8 [ 1, %.lr.ph ], [ %i.cr, %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i.i ]
  switch i8 %.sroa.0.0.i6.i, label %.split21.us.i [
    i8 -1, label %.loopexit55
    i8 0, label %.split127.us
    i8 1, label %.split.split.i
  ]

.split21.us.i:                                    ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us
  unreachable

.loopexit55:                                      ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i, %.split.split.i, %.split.i
  %.sroa.4.0.i.ph.ph56 = phi i64 [ %i.bo, %.split.i ], [ %.sroa.8.0.i272, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i ], [ %i.bo, %.split.split.i ] ; 3 uses
  %i.cs = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.cs, label %.split127.us, label %bb.u

.split127.us:                                     ; preds = %.loopexit55, %bb.m, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i, %.loopexit.us, %bb.d, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.i.us, %bb.b
  %.us-phi129.sink = phi ptr [ %.sroa.0.0.us, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.i.us ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0.us131, %.loopexit.us ], [ %.sroa.0.0.us131, %bb.d ], [ %.sroa.0.0.us, %bb.b ], [ %.sroa.0.0.us131, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us ], [ %.sroa.0.0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i ], [ %.sroa.0.0, %.loopexit55 ]
  %.sink = phi i64 [ %.sroa.3.0.us, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.i.us ], [ %.sroa.3.0, %bb.m ], [ 0, %.loopexit.us ], [ %.sroa.3.0.us130, %bb.d ], [ 0, %bb.b ], [ %.sroa.3.0.us130, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us ], [ %.sroa.3.0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i ], [ 0, %.loopexit55 ]
  %.us-phi128.sink = phi i64 [ 0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.i.us ], [ %.sroa.8.0.i272, %bb.m ], [ %.sroa.4.0.i.ph.ph.us, %.loopexit.us ], [ %.sroa.8.0.us22.i.us275, %bb.d ], [ 0, %bb.b ], [ %.sroa.8.0.us22.i.us275, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us ], [ %.sroa.8.0.i272, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i ], [ %.sroa.4.0.i.ph.ph56, %.loopexit55 ]
  %storemerge = phi i64 [ 0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.i.us ], [ 0, %bb.m ], [ 1, %.loopexit.us ], [ 0, %bb.d ], [ 1, %bb.b ], [ 0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us24.i.us ], [ 0, %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.i ], [ 1, %.loopexit55 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi129.sink, ptr %i.ct, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.us-phi128.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.u:                                             ; preds = %.loopexit55
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 192
  %i.cv = icmp samesign ult i64 %.sroa.4.0.i.ph.ph56, 12
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.sroa.4.0.i.ph.ph56
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !4, !noundef !4
  %i.cy = add i64 %.sroa.3.0, -1
  br label %.split.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1T_IB2v_NtB3d_18NamespaceStaticSetEENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !167, !noundef !4 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.0.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.06 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = add i64 %.sroa.3.06, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.06, 0
  %..i = select i1 %.not.i, i64 192, i64 288
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.07, i64 noundef %..i, i64 noundef 8) #21, !noalias !168
  %i.g = load ptr, ptr %i.e, align 8, !noalias !167, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.e, %.lr.ph ]
  %.not.i3 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i4 = select i1 %.not.i3, i64 192, i64 288
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %..i4, i64 noundef 8) #21, !noalias !168
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1T_IB2v_NtB3d_18NamespaceStaticSetEENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 186
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.039 = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.038 = phi i64 [ %i.ab, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
end_hunk_0
