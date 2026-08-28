Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10write_args:bb.a
  store ptr %.sroa.7.092.i.i.i, ptr %i.ki, align 8, !alias.scope !3581, !noalias !3584
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i

bb.as:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB28_.exit.i.i.i.i
  %i.kj = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i39.i.i.i, i64 %i.kf
  %i.kk = sub nuw nsw i64 %i.kd, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.kl = shl nuw nsw i64 %i.kk, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kj, ptr nonnull align 8 %i.kg, i64 %i.kl, i1 false), !alias.scope !3586, !noalias !3587
  store i64 %.sroa.0.sroa.0.087.i.i.i, ptr %i.kg, align 8, !alias.scope !3578, !noalias !3580
  %.sroa.735.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i64 %.sroa.0.sroa.7.086.i.i.i, ptr %.sroa.735.0..sroa_idx36.i.i.i, align 8, !alias.scope !3578, !noalias !3580
  %.sroa.842.0..sroa_idx43.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.842.0..sroa_idx43.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, i64 16, i1 false), !noalias !3506
  %i.km = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 360 ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.sroa.5.0.i.i.i.i ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kf
  %i.kp = shl nuw nsw i64 %i.kk, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ko, ptr nonnull align 8 %i.kn, i64 %i.kp, i1 false), !alias.scope !3581, !noalias !3584
  store ptr %.sroa.7.092.i.i.i, ptr %i.kn, align 8, !alias.scope !3581, !noalias !3584
  %i.kq = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 456 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kf
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.sroa.5.0.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kt, ptr nonnull align 8 %i.kr, i64 %i.kp, i1 false), !alias.scope !3588, !noalias !3591
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i: ; preds = %bb.as, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEB1b_.exit.i9.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %spec.select.i39.i.i.i, i64 456 ; 6 uses
  %i.kv = add nuw nsw i64 %i.kd, 2                ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kf
  store ptr %.sroa.10.089.i.i.i, ptr %i.kw, align 8, !alias.scope !3588, !noalias !3591
  store i16 %i.ke, ptr %i.kb, align 2, !noalias !3591
  %i.kx = icmp samesign ult i64 %i.kf, %i.kv
  br i1 %i.kx, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i
  %i.ky = add nuw nsw i64 %i.kd, 1
  %i.kz = sub nsw i64 %i.ky, %.sroa.5.0.i.i.i.i
  %i.la = sub nsw i64 %i.kd, %.sroa.5.0.i.i.i.i
  %xtraiter171 = and i64 %i.kz, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.lb, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.kf, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.lb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.lc = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.lc)
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !3591, !nonnull !13, !noundef !13 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.lf, align 8, !noalias !3591
  %i.lg = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 448
  store i16 %i.lg, ptr %i.lh, align 8, !noalias !3591
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter171
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !3592

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.kf, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.lb, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.li = icmp ult i64 %i.la, 3
  br i1 %i.li, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.mb, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.lj = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !3591, !nonnull !13, !noundef !13 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.lm, align 8, !noalias !3591
  %i.ln = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 448
  store i16 %i.ln, ptr %i.lo, align 8, !noalias !3591
  %i.lp = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lj
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !3591, !nonnull !13, !noundef !13 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ls, align 8, !noalias !3591
  %i.lt = trunc nuw nsw i64 %i.lj to i16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 448
  store i16 %i.lt, ptr %i.lu, align 8, !noalias !3591
  %i.lv = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lp
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !3591, !nonnull !13, !noundef !13 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.ly, align 8, !noalias !3591
  %i.lz = trunc nuw nsw i64 %i.lp to i16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 448
  store i16 %i.lz, ptr %i.ma, align 8, !noalias !3591
  %i.mb = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.mc = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  call void @llvm.assume(i1 %i.mc)
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.lv
  %i.me = load ptr, ptr %i.md, align 8, !noalias !3591, !nonnull !13, !noundef !13 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 352
  store ptr %spec.select.i39.i.i.i, ptr %i.mf, align 8, !noalias !3591
  %i.mg = trunc nuw nsw i64 %i.lv to i16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 448
  store i16 %i.mg, ptr %i.mh, align 8, !noalias !3591
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.mb, %i.kv
  br i1 %exitcond.not.i.i13.i.i.i.i.3, label %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i

_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i10.i.i.i.i
  store i64 %.sroa.0.i.i.sroa.4.0.copyload.i.i.i, ptr %.sroa.521.i.i.i, align 8, !noalias !3593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.i.sroa.5.i.i.i, i64 16, i1 false), !noalias !3593
  br label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i

_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i
  %.sroa.14.0.i.i.i = phi ptr [ %i.hp, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.823.0.i.i.i = phi ptr [ %i.ic, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.019.0.i.i.i = phi i64 [ %.sroa.0.i.i.sroa.0.0.copyload.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ undef, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sink42.i.sroa.phi.i.i.i = phi ptr [ %.sroa.16.i.i.i, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ %.sroa.521.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ %.sroa.521.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.521.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sink.i40.i.i.i = phi i64 [ %i.fa, %_RNvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1m_8InternalENtB1m_4EdgeE10insert_fitB27_.exit15.i.i.i.i ], [ -1, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjNtNtB8_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEEB2z_.exit.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i ], [ -1, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sink.i40.i.i.i, ptr %.sink42.i.sroa.phi.i.i.i, align 8, !alias.scope !3507, !noalias !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.i.sroa.5.i.i.i)
  %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i = load i64, ptr %.sroa.521.i.i.i, align 8, !range !127, !noalias !3482, !noundef !13 ; 3 uses
  %.not37.i.i.i = icmp eq i64 %.sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.i.0..sroa.521.i.i.0..sroa.521.i.i.0..sroa.521.i.0..sroa.521.i.0..sroa.521.0..sroa.521.0..sroa.521.8..i.i.i, -1
  br i1 %.not37.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !3482
  %.sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.i.0..sroa.16.i.i.0..sroa.16.i.i.0..sroa.16.i.0..sroa.16.i.0..sroa.16.0..sroa.16.0..sroa.16.64..i.i.i = load i64, ptr %.sroa.16.i.i.i, align 8, !noalias !3482, !noundef !13 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ez, i64 352
  %i.mj = load ptr, ptr %i.mi, align 8, !noalias !3483, !noundef !13 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i44, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB28_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i)
  br label %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i

_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i: ; preds = %bb.au, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjNtNtBf_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entry0B1Q_.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.8.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i

bb.av:                                            ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE5entryB1C_.exit.thread72.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3594
  %i.mk = call noalias noundef align 8 dereferenceable_or_null(456) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 456, i64 noundef range(i64 1, 9) 8) #43, !noalias !3594 ; 8 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %bb.aw, label %_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1X_.exit.i.i, !prof !269

bb.aw:                                            ; preds = %bb.av
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 456) #46, !noalias !3594
  unreachable

_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1X_.exit.i.i: ; preds = %bb.av
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 352
  store ptr null, ptr %i.mm, align 8, !noalias !3594
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 450
  store ptr %i.mk, ptr %i.u, align 8, !alias.scope !3359, !noalias !3595
  store i64 0, ptr %i.v, align 8, !alias.scope !3359, !noalias !3595
  store i16 1, ptr %i.mn, align 2, !noalias !3596
  store <2 x i64> %i.cf, ptr %i.mk, align 8, !noalias !3601
  %.sroa.939.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store ptr %.sroa.7.0.copyload18.i, ptr %.sroa.939.0..sroa_idx46.i, align 8, !noalias !3601
  %.sroa.1048.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  store i64 %.sroa.9.0.copyload22.i, ptr %.sroa.1048.0..sroa_idx55.i, align 8, !noalias !3601
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 360
  store ptr %i.aw, ptr %i.mo, align 8, !noalias !3596
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i

_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i: ; preds = %_RINvMs8_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1X_.exit.i.i, %_RINvMsN_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjNtNtBc_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Y_11VacantEntryB1D_B21_E12insert_entry0EB28_.exit.i.i
  %i.mp = load i64, ptr %i.w, align 8, !alias.scope !3359, !noalias !3595, !noundef !13
  %i.mq = add i64 %i.mp, 1
  store i64 %i.mq, ptr %i.w, align 8, !alias.scope !3359, !noalias !3595
  br label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit

_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit: ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE5entryB1C_.exit.thread.i, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjNtNtBd_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE12insert_entryB1O_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.mr = icmp eq ptr %.sroa.0.1, %i.x
  br i1 %i.mr, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.us.i
  %.sroa.0.090 = phi i64 [ %.sroa.0.092, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.i ], [ %.sroa.0.092, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtBW_12HelpTemplate10write_args0INtB7_5FnMutTRRRNtNtNtB10_7builder3arg3ArgEE8call_mutB10_.exit.thread5.us.i ], [ %..i, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE6insertB1C_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3602)
  call void @llvm.experimental.noalias.scope.decl(metadata !3605)
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mw = load i8, ptr %i.y, align 1, !range !1313, !alias.scope !3602, !noalias !3607, !noundef !13
  %i.mx = trunc nuw i8 %i.mw to i1                ; 2 uses
  %.val.i.i.i.i.i46 = load ptr, ptr %i.ms, align 8, !alias.scope !3602, !noalias !3605, !nonnull !13, !align !1660 ; 4 uses
  %i.my = load i8, ptr %i.mv, align 8, !range !1313, !alias.scope !3602, !noalias !3605
  %.fr25.i = freeze i8 %i.my
  %i.mz = trunc i8 %.fr25.i to i1
  %i.na = add i64 %.sroa.0.090, 4                 ; 3 uses
  %i.nb = load i64, ptr %0, align 8, !alias.scope !3602, !noalias !3605 ; 3 uses
  %.not9.i.i.i.i.i.i = icmp ult i64 %i.nb, %i.na
  %i.nc = uitofp i64 %i.na to float
  %i.nd = uitofp i64 %i.nb to float
  %i.ne = fdiv float %i.nc, %i.nd
  %4 = fcmp ogt float %i.ne, 4.000000e-01
  %i.nf = sub nuw i64 %i.nb, %i.na
  br i1 %i.mz, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.loopexit
  br i1 %i.mx, label %.lr.ph.i.split.us.split.us.i, label %.lr.ph.i.split.us.split.i

.lr.ph.i.split.us.split.us.i:                     ; preds = %.lr.ph.i.split.us.i, %.backedge.i.us.us.i
  %i.ng = phi ptr [ %i.nn, %.backedge.i.us.us.i ], [ %1, %.lr.ph.i.split.us.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3614)
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !3615, !noalias !3616, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 592
  %.val.i.i.i.us.us.i = load i32, ptr %i.ni, align 8, !noalias !3617, !noundef !13 ; 2 uses
  %i.nj = and i32 %.val.i.i.i.us.us.i, 4
  %.not.i.i.i.i.us.us.i = icmp ne i32 %i.nj, 0
  %i.nk = and i32 %.val.i.i.i.us.us.i, 8200
  %or.cond.i48 = icmp eq i32 %i.nk, 8192
  %or.cond47.i = or i1 %.not.i.i.i.i.us.us.i, %or.cond.i48
  br i1 %or.cond47.i, label %.backedge.i.us.us.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.us.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.us.i: ; preds = %.lr.ph.i.split.us.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3617
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr nonnull %.val.i.i.i.i.i46, i8 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.nh) #43, !noalias !3617
  %i.nl = load ptr, ptr %i.mt, align 8, !noalias !3617, !nonnull !13, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !3618)
  call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  %.val.i.i.i.i.i.us.us.i = load i64, ptr %i.q, align 8, !range !14, !alias.scope !3621, !noalias !3617, !noundef !13 ; 2 uses
  %i.nm = icmp eq i64 %.val.i.i.i.i.i.us.us.i, 0
  br i1 %i.nm, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i, label %bb.ax

bb.ax:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.us.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef %.val.i.i.i.i.i.us.us.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3624
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i

.backedge.i.us.us.i:                              ; preds = %.lr.ph.i.split.us.split.us.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 2 uses
  %.not12.i.us.us.i = icmp eq ptr %i.nn, %i.x
  br i1 %.not12.i.us.us.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.split.us.split.us.i

.lr.ph.i.split.us.split.i:                        ; preds = %.lr.ph.i.split.us.i, %.backedge.i.us.i
  %i.no = phi ptr [ %i.nv, %.backedge.i.us.i ], [ %1, %.lr.ph.i.split.us.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3614)
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !3615, !noalias !3616, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 592
  %.val.i.i.i.us.i = load i32, ptr %i.nq, align 8, !noalias !3617, !noundef !13 ; 2 uses
  %i.nr = and i32 %.val.i.i.i.us.i, 4
  %.not.i.i.i.i.us.i = icmp ne i32 %i.nr, 0
  %i.ns = and i32 %.val.i.i.i.us.i, 4104
  %or.cond48.i = icmp eq i32 %i.ns, 4096
  %or.cond15 = or i1 %.not.i.i.i.i.us.i, %or.cond48.i
  br i1 %or.cond15, label %.backedge.i.us.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.i: ; preds = %.lr.ph.i.split.us.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3617
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr nonnull %.val.i.i.i.i.i46, i8 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.np) #43, !noalias !3617
  %i.nt = load ptr, ptr %i.mt, align 8, !noalias !3617, !nonnull !13, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !3618)
  call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  %.val.i.i.i.i.i.us.i = load i64, ptr %i.q, align 8, !range !14, !alias.scope !3621, !noalias !3617, !noundef !13 ; 2 uses
  %i.nu = icmp eq i64 %.val.i.i.i.i.i.us.i, 0
  br i1 %i.nu, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nt, i64 noundef %.val.i.i.i.i.i.us.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3624
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i

.backedge.i.us.i:                                 ; preds = %.lr.ph.i.split.us.split.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 2 uses
  %.not12.i.us.i = icmp eq ptr %i.nv, %i.x
  br i1 %.not12.i.us.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.split.us.split.i

.lr.ph.i.split.i:                                 ; preds = %.loopexit
  br i1 %i.mx, label %.lr.ph.i.split.split.us.i, label %.lr.ph.i.split.split.i

.lr.ph.i.split.split.us.i:                        ; preds = %.lr.ph.i.split.i, %.backedge.i.us17.i
  %i.nw = phi ptr [ %i.od, %.backedge.i.us17.i ], [ %1, %.lr.ph.i.split.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3614)
  %i.nx = load ptr, ptr %i.nw, align 8, !alias.scope !3615, !noalias !3616, !nonnull !13, !align !239, !noundef !13 ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 592
  %.val.i.i.i.us4.i = load i32, ptr %i.ny, align 8, !noalias !3617, !noundef !13 ; 2 uses
  %i.nz = and i32 %.val.i.i.i.us4.i, 4
  %.not.i.i.i.i.us5.i = icmp ne i32 %i.nz, 0
  %i.oa = and i32 %.val.i.i.i.us4.i, 8200
  %or.cond24.i = icmp eq i32 %i.oa, 8192
  %or.cond49.i = or i1 %.not.i.i.i.i.us5.i, %or.cond24.i
  br i1 %or.cond49.i, label %.backedge.i.us17.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us12.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us12.i: ; preds = %.lr.ph.i.split.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3617
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr nonnull %.val.i.i.i.i.i46, i8 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.nx) #43, !noalias !3617
  %i.ob = load ptr, ptr %i.mt, align 8, !noalias !3617, !nonnull !13, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !3618)
  call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  %.val.i.i.i.i.i.us15.i = load i64, ptr %i.q, align 8, !range !14, !alias.scope !3621, !noalias !3617, !noundef !13 ; 2 uses
  %i.oc = icmp eq i64 %.val.i.i.i.i.i.us15.i, 0
  br i1 %i.oc, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i, label %bb.az

bb.az:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us12.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ob, i64 noundef %.val.i.i.i.i.i.us15.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3624
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i

.backedge.i.us17.i:                               ; preds = %.lr.ph.i.split.split.us.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  %.not12.i.us18.i = icmp eq ptr %i.od, %i.x
  br i1 %.not12.i.us18.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.split.split.us.i

.lr.ph.i.split.split.i:                           ; preds = %.lr.ph.i.split.i, %.backedge.i.i
  %i.oe = phi ptr [ %i.of, %.backedge.i.i ], [ %1, %.lr.ph.i.split.i ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3614)
  %i.og = load ptr, ptr %i.oe, align 8, !alias.scope !3615, !noalias !3616, !nonnull !13, !align !239, !noundef !13 ; 4 uses
  %i.oh = getelementptr i8, ptr %i.og, i64 592    ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.oh, align 8, !noalias !3617, !noundef !13 ; 2 uses
  %i.oi = and i32 %.val.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp ne i32 %i.oi, 0
  %i.oj = and i32 %.val.i.i.i.i, 4104
  %or.cond50.i = icmp eq i32 %i.oj, 4096
  %or.cond16 = or i1 %.not.i.i.i.i.i, %or.cond50.i
  br i1 %or.cond16, label %.backedge.i.i, label %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i

_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i: ; preds = %.lr.ph.i.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3617
  call fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9spec_vals(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr nonnull %.val.i.i.i.i.i46, i8 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %i.og) #43, !noalias !3617
  %i.ok = load ptr, ptr %i.mt, align 8, !noalias !3617, !nonnull !13, !noundef !13 ; 2 uses
  %i.ol = load i64, ptr %i.mu, align 8, !noalias !3617, !noundef !13
  call void @llvm.experimental.noalias.scope.decl(metadata !3618)
  %i.om = load i32, ptr %i.oh, align 8, !alias.scope !3618, !noalias !3625, !noundef !13
  %i.on = and i32 %i.om, 8
  %.not27.i = icmp eq i32 %i.on, 0
  br i1 %.not27.i, label %bb.ba, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i

bb.ba:                                            ; preds = %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 488 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !range !127, !alias.scope !3618, !noalias !3625, !noundef !13
  %.not.i.i.i.i.i.i = icmp eq i64 %i.op, -1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 512 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !range !127, !alias.scope !3628, !noalias !3631
  %.not.i.i.i.i.i.i.i.i47 = icmp eq i64 %i.or, -1
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i47, ptr @_RNvNvXs_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strRNtB6_9StyledStrNtNtCsj6eKBz9Db1c_4core7default7Default7default7DEFAULT, ptr %i.oq
  %.sroa.03.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.oo ; 2 uses
  %i.os = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 8
  %.sroa.03.0.val.i.i.i.i.i.i = load ptr, ptr %i.os, align 8, !noalias !3625, !nonnull !13, !noundef !13
  %i.ot = getelementptr i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 16
  %.sroa.03.0.val10.i.i.i.i.i.i = load i64, ptr %i.ot, align 8, !noalias !3625, !noundef !13
  %i.ou = call fastcc noundef i64 @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr13display_width(ptr nonnull %.sroa.03.0.val.i.i.i.i.i.i, i64 %.sroa.03.0.val10.i.i.i.i.i.i) #42, !noalias !3633
  %i.ov = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ok, i64 noundef %i.ol) #42, !noalias !3634
  br i1 %.not9.i.i.i.i.i.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ow = add i64 %i.ov, %i.ou
  %i.ox = icmp ugt i64 %i.ow, %i.nf
  %spec.select.i = select i1 %4, i1 %i.ox, i1 false
  br label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i

_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ false, %bb.ba ], [ %spec.select.i, %bb.bb ], [ true, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !14, !alias.scope !3621, !noalias !3617, !noundef !13 ; 2 uses
  %i.oy = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.oy, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ok, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !3624
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i: ; preds = %bb.bc, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate18arg_next_line_help.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3617
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i, %.lr.ph.i.split.split.i
  %.not12.i.i = icmp eq ptr %i.of, %i.x
  br i1 %.not12.i.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, label %.lr.ph.i.split.split.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i: ; preds = %bb.az, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us12.i, %bb.ay, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.i, %bb.ax, %_RNCNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB7_12HelpTemplate14will_args_wrap0Bb_.exit.thread.i.i.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3617
  br label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit

_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i, %.backedge.i.i, %.backedge.i.us17.i, %.backedge.i.us.i, %.backedge.i.us.us.i, %bb.a, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i
  %.sroa.0.090216 = phi i64 [ %.sroa.0.090, %.backedge.i.us17.i ], [ 2, %bb.a ], [ %.sroa.0.090, %.backedge.i.us.us.i ], [ %.sroa.0.090, %.backedge.i.us.i ], [ %.sroa.0.090, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i ], [ %.sroa.0.090, %.backedge.i.i ], [ %.sroa.0.090, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i ] ; 3 uses
  %.lcssa.i.i = phi i1 [ false, %.backedge.i.us17.i ], [ false, %bb.a ], [ false, %.backedge.i.us.us.i ], [ false, %.backedge.i.us.i ], [ true, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtBQ_6output13help_templateNtB42_12HelpTemplate14will_args_wrap0NCINvNvB1z_3any5checkB38_NCB3W_s_0E0E0B3d_EBQ_.exit.sink.split.i ], [ false, %.backedge.i.i ], [ true, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3any5checkRRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgNCNvMs1_NtNtB1j_6output13help_templateNtB29_12HelpTemplate14will_args_wraps_0E0B1j_.exit.i.i.i ] ; 3 uses
  %i.oz = load ptr, ptr %i.u, align 8, !noundef !13 ; 2 uses
  %.not39 = icmp ne ptr %i.oz, null               ; 3 uses
  %i.pa = load i64, ptr %i.v, align 8
  %i.pb = load i64, ptr %i.w, align 8
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.47.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.pi = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.neg6.i.i = add i64 %.sroa.0.090216, -4
  %.sroa.4.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.po = add i64 %.sroa.0.090216, 2
  %i.pp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.pq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.20.0.ph = select i1 %.not39, i64 %i.pb, i64 0
  %.sroa.12.0.ph = select i1 %.not39, i64 %i.pa, i64 undef
  %i.ps = load ptr, ptr %i.pd, align 8, !nonnull !13, !align !239 ; 8 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16 ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 2 uses
  %i.pv = load i8, ptr %i.y, align 1              ; 2 uses
  %i.pw = trunc nuw i8 %i.pv to i1
  %or.cond = select i1 %.lcssa.i.i, i1 %i.pw, i1 false
  %.val13.i.pre = load i8, ptr %i.y, align 1
  %.pre = load ptr, ptr %i.pd, align 8
  %.val12.i = load ptr, ptr %i.pe, align 8, !nonnull !13, !align !1660 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.val12.i, i64 42 ; 3 uses
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9write_arg.exit
  %.sroa.23.0 = phi i64 [ %.sroa.23.1, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9write_arg.exit ], [ 0, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit ] ; 3 uses
  %.sroa.20.0 = phi i64 [ %.sroa.20.1, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9write_arg.exit ], [ %.sroa.20.0.ph, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sroa.12.1, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9write_arg.exit ], [ %.sroa.12.0.ph, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit ] ; 7 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.1, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9write_arg.exit ], [ %i.pc, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit ] ; 3 uses
  %.sroa.53.0 = phi ptr [ %.sroa.53.1, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9write_arg.exit ], [ null, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit ] ; 3 uses
  %.sroa.02.0 = phi i1 [ %.sroa.02.2, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate9write_arg.exit ], [ %.not39, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate14will_args_wrap.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.88)
  call void @llvm.experimental.noalias.scope.decl(metadata !3635)
  %i.py = icmp eq i64 %.sroa.20.0, 0
  br i1 %i.py, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4IterTjNtNtB1g_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEENtNtNtB8_6traits8iterator8Iterator4nextB2y_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pz = add i64 %.sroa.20.0, -1
  br i1 %.sroa.02.0, label %bb.bf, label %.critedge.i.i

bb.bf:                                            ; preds = %bb.be
  %.not.i.i.i49 = icmp eq ptr %.sroa.53.0, null
  br i1 %.not.i.i.i49, label %bb.bg, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.qa = inttoptr i64 %.sroa.8.0 to ptr          ; 3 uses
  %i.qb = icmp eq i64 %.sroa.12.0, 0
  br i1 %i.qb, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i, label %.lr.ph.i.i.i52.preheader

.lr.ph.i.i.i52.preheader:                         ; preds = %bb.bg
  %xtraiter176 = and i64 %.sroa.12.0, 7           ; 2 uses
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.lr.ph.i.i.i52.prol.loopexit, label %.lr.ph.i.i.i52.prol

.lr.ph.i.i.i52.prol:                              ; preds = %.lr.ph.i.i.i52.preheader, %.lr.ph.i.i.i52.prol
  %.sroa.013.017.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i52.prol ], [ %i.qa, %.lr.ph.i.i.i52.preheader ]
  %.sroa.011.016.i.i.i.prol = phi i64 [ %i.qd, %.lr.ph.i.i.i52.prol ], [ %.sroa.12.0, %.lr.ph.i.i.i52.preheader ]
  %prol.iter178 = phi i64 [ %prol.iter178.next, %.lr.ph.i.i.i52.prol ], [ 0, %.lr.ph.i.i.i52.preheader ]
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.prol, i64 456
  %i.qd = add i64 %.sroa.011.016.i.i.i.prol, -1   ; 2 uses
  %.sroa.013.0.i.i.i.prol = load ptr, ptr %i.qc, align 8, !noalias !3638, !nonnull !13, !noundef !13 ; 3 uses
  %prol.iter178.next = add i64 %prol.iter178, 1   ; 2 uses
  %prol.iter178.cmp.not = icmp eq i64 %prol.iter178.next, %xtraiter176
  br i1 %prol.iter178.cmp.not, label %.lr.ph.i.i.i52.prol.loopexit, label %.lr.ph.i.i.i52.prol, !llvm.loop !3644

.lr.ph.i.i.i52.prol.loopexit:                     ; preds = %.lr.ph.i.i.i52.prol, %.lr.ph.i.i.i52.preheader
  %.sroa.013.0.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i52.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i52.prol ]
  %.sroa.013.017.i.i.i.unr = phi ptr [ %i.qa, %.lr.ph.i.i.i52.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i52.prol ]
  %.sroa.011.016.i.i.i.unr = phi i64 [ %.sroa.12.0, %.lr.ph.i.i.i52.preheader ], [ %i.qd, %.lr.ph.i.i.i52.prol ]
  %i.qe = icmp ult i64 %.sroa.12.0, 8
  br i1 %i.qe, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i, label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph.i.i.i52.prol.loopexit, %.lr.ph.i.i.i52
  %.sroa.013.017.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i52 ], [ %.sroa.013.017.i.i.i.unr, %.lr.ph.i.i.i52.prol.loopexit ]
  %.sroa.011.016.i.i.i = phi i64 [ %i.qn, %.lr.ph.i.i.i52 ], [ %.sroa.011.016.i.i.i.unr, %.lr.ph.i.i.i52.prol.loopexit ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i, i64 456
  %.sroa.013.0.i.i.i = load ptr, ptr %i.qf, align 8, !noalias !3638, !nonnull !13, !noundef !13
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i, i64 456
  %.sroa.013.0.i.i.i.1 = load ptr, ptr %i.qg, align 8, !noalias !3638, !nonnull !13, !noundef !13
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.1, i64 456
  %.sroa.013.0.i.i.i.2 = load ptr, ptr %i.qh, align 8, !noalias !3638, !nonnull !13, !noundef !13
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.2, i64 456
  %.sroa.013.0.i.i.i.3 = load ptr, ptr %i.qi, align 8, !noalias !3638, !nonnull !13, !noundef !13
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.3, i64 456
  %.sroa.013.0.i.i.i.4 = load ptr, ptr %i.qj, align 8, !noalias !3638, !nonnull !13, !noundef !13
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.4, i64 456
  %.sroa.013.0.i.i.i.5 = load ptr, ptr %i.qk, align 8, !noalias !3638, !nonnull !13, !noundef !13
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.5, i64 456
  %.sroa.013.0.i.i.i.6 = load ptr, ptr %i.ql, align 8, !noalias !3638, !nonnull !13, !noundef !13
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.6, i64 456
  %i.qn = add i64 %.sroa.011.016.i.i.i, -8        ; 2 uses
  %.sroa.013.0.i.i.i.7 = load ptr, ptr %i.qm, align 8, !noalias !3638, !nonnull !13, !noundef !13 ; 2 uses
  %i.qo = icmp eq i64 %i.qn, 0
  br i1 %i.qo, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i, label %.lr.ph.i.i.i52

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i: ; preds = %.lr.ph.i.i.i52.prol.loopexit, %.lr.ph.i.i.i52, %bb.bg, %bb.bf
  %.sroa.59.0.copyload.i.i.i = phi i64 [ %.sroa.12.0, %bb.bf ], [ 0, %bb.bg ], [ 0, %.lr.ph.i.i.i52 ], [ 0, %.lr.ph.i.i.i52.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i = phi i64 [ %.sroa.8.0, %bb.bf ], [ 0, %bb.bg ], [ 0, %.lr.ph.i.i.i52 ], [ 0, %.lr.ph.i.i.i52.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i = phi ptr [ %.sroa.53.0, %bb.bf ], [ %i.qa, %bb.bg ], [ %.sroa.013.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i52.prol.loopexit ], [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i52 ] ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i, i64 450
  %i.qq = load i16, ptr %i.qp, align 2, !noalias !3645, !noundef !13
  %i.qr = zext i16 %i.qq to i64
  %i.qs = icmp ult i64 %.sroa.59.0.copyload.i.i.i, %i.qr
  br i1 %i.qs, label %bb.bj, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i, %bb.bh
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.qu, %bb.bh ], [ %.sroa.07.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.qw, %bb.bh ], [ %.sroa.48.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 352
  %i.qu = load ptr, ptr %i.qt, align 8, !noalias !3654, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i50 = icmp eq ptr %i.qu, null
  br i1 %.not.i.i.i.i.i.i50, label %bb.bi, label %bb.bh

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.bh
  %i.qv = zext i16 %i.qy to i64
  br label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qw = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 448
  %i.qy = load i16, ptr %i.qx, align 8, !noalias !3654 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 450
  %i.ra = load i16, ptr %i.qz, align 2, !noalias !3645, !noundef !13
  %i.rb = icmp ult i16 %i.qy, %i.ra
  br i1 %i.rb, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #44, !noalias !3657
  unreachable

bb.bj:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.qv, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i = phi i64 [ %i.qw, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i = phi ptr [ %i.qu, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgE10init_frontB2e_.exit.i.i ] ; 4 uses
  %i.rc = icmp eq i64 %.sroa.7.0.ph.i.i.i.i, 0
  br i1 %i.rc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.rd = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i, 1
  br label %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterTjNtNtBb_6string6StringERNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1y_.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.re = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i, 11
  call void @llvm.assume(i1 %i.re)
  %i.rf = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i, i64 464
  %i.rg = getelementptr [8 x i8], ptr %i.rf, i64 %.sroa.10.0.ph.i.i.i.i ; 2 uses
  %xtraiter179 = and i64 %.sroa.7.0.ph.i.i.i.i, 7 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bl, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.rh, %.prol.preheader ], [ %i.rg, %bb.bl ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i, %bb.bl ]
  %prol.iter181 = phi i64 [ %prol.iter181.next, %.prol.preheader ], [ 0, %bb.bl ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
end_hunk_0
