Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.02?download=true
inline.NumInlined: 6791
inline.NumDeleted: 2228
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12lower_ty_ext:bb.a
bb.aj:                                            ; preds = %_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6selectBR_.exit.i.i
  %i.ii = invoke { i64, i64 } @_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvMNtCs39E2wp1vf7X_6intern6internINtB3A_8InternedB1y_E6new_gcs_0EB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ie, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNvXsw_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB7_10TyInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i1 noundef zeroext true) #49
          to label %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3s_8InternedB1y_E6new_gcs_0EB1E_.exit.i.i.i unwind label %bb.at, !noalias !12655 ; 0 uses

_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3s_8InternedB1y_E6new_gcs_0EB1E_.exit.i.i.i: ; preds = %bb.aj, %_RNvMNtCs39E2wp1vf7X_6intern6internINtB2_8InternedNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE6selectBR_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12659
  store ptr %i.r, ptr %i.q, align 8, !noalias !12659
  %i.ij = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ie, ptr %i.ij, align 8, !noalias !12659
  %.val.i.i.i = load ptr, ptr %i.ie, align 8, !alias.scope !12658, !noalias !12661, !nonnull !11, !noundef !11 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.ik, align 8, !alias.scope !12658, !noalias !12661, !noundef !11 ; 3 uses
  %i.il = lshr i64 %i.ht, 57
  %i.im = trunc nuw nsw i64 %i.il to i8           ; 3 uses
  %i.in = insertelement <16 x i8> poison, i8 %i.im, i64 0
  %i.io = shufflevector <16 x i8> %i.in, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aq, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3s_8InternedB1y_E6new_gcs_0EB1E_.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.ht, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3s_8InternedB1y_E6new_gcs_0EB1E_.exit.i.i.i ], [ %i.jk, %bb.aq ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3s_8InternedB1y_E6new_gcs_0EB1E_.exit.i.i.i ], [ %.sroa.4.1.i.i.i.i, %bb.aq ]
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3s_8InternedB1y_E6new_gcs_0EB1E_.exit.i.i.i ], [ %.sroa.01.1.i.i.i.i, %bb.aq ]
  %i.ip = phi i64 [ 0, %_RINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE7reserveNCNvMNtCs39E2wp1vf7X_6intern6internINtB3s_8InternedB1y_E6new_gcs_0EB1E_.exit.i.i.i ], [ %i.jj, %bb.aq ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i, %.val5.i.i.i ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i18.i.i.i.i = load <16 x i8>, ptr %i.iq, align 1, !noalias !12662 ; 3 uses
  %i.ir = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, %i.io
  %i.is = bitcast <16 x i1> %i.ir to i16
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %.sroa.05.0.i.i.i.i = phi i16 [ %i.is, %bb.ak ], [ %i.iw, %bb.am ] ; 4 uses
  %.not.i.i.i.i148 = icmp eq i16 %.sroa.05.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i148, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.it = add i16 %.sroa.05.0.i.i.i.i, -1
  %i.iu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i.i.i.i, i1 true)
  %i.iv = zext nneg i16 %i.iu to i64
  %i.iw = and i16 %i.it, %.sroa.05.0.i.i.i.i
  %i.ix = add i64 %.sroa.0.017.i.i.i.i, %i.iv
  %i.iy = and i64 %i.ix, %.val5.i.i.i             ; 2 uses
  %i.iz = call fastcc noundef zeroext i1 @_RNCINvMs6_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB8_8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvMNtCs39E2wp1vf7X_6intern6internINtB3M_8InternedB1A_E6new_gc0NCB3J_s_0E0B1G_(ptr noundef nonnull %i.q, i64 noundef %i.iy) #51, !noalias !12655, !inline_history !4
  br i1 %i.iz, label %bb.av, label %bb.al

bb.an:                                            ; preds = %bb.al
  %.not11.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i, 1
  br i1 %.not11.i.i.i.i, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ja = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, zeroinitializer
  %i.jb = bitcast <16 x i1> %i.ja to i16          ; 2 uses
  %.not.i.i.i.i.i149 = icmp eq i16 %i.jb, 0
  br i1 %.not.i.i.i.i.i149, label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jb, i1 true)
  %i.jd = zext nneg i16 %i.jc to i64
  %i.je = add i64 %.sroa.0.017.i.i.i.i, %i.jd
  %i.jf = and i64 %i.je, %.val5.i.i.i
  br label %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i

_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %.sroa.4.1.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i, %bb.an ], [ %i.jf, %bb.ap ], [ undef, %bb.ao ] ; 3 uses
  %.sroa.01.1.i.i.i.i = phi i64 [ 1, %bb.an ], [ 1, %bb.ap ], [ 0, %bb.ao ]
  %i.jg = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, splat (i8 -1)
  %i.jh = bitcast <16 x i1> %i.jg to i16
  %i.ji = icmp eq i16 %i.jh, 0
  br i1 %i.ji, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.jj = add i64 %i.ip, 16                       ; 2 uses
  %i.jk = add i64 %i.jj, %.sroa.0.017.i.i.i.i
  br label %bb.ak

bb.ar:                                            ; preds = %_RNvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.1.i.i.i.i
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !12655, !noundef !11
  %i.jn = icmp sgt i8 %i.jm, -1
  br i1 %i.jn, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %.val62.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !12655
  %i.jo = icmp slt <16 x i8> %.val62.i.i.i.i.i, zeroinitializer
  %i.jp = bitcast <16 x i1> %i.jo to i16          ; 2 uses
  %.not.i22.i.i.i.i = icmp ne i16 %i.jp, 0
  %i.jq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.jp, i1 true)
  %i.jr = zext nneg i16 %i.jq to i64
  call void @llvm.assume(i1 %.not.i22.i.i.i.i)
  br label %bb.aw

bb.at:                                            ; preds = %bb.ax, %bb.aj
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = cmpxchg ptr %i.ib, i64 -4, i64 0 release monotonic, align 8, !noalias !12655
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.jt, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %.body, label %bb.au, !prof !18

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ib)
          to label %.body unwind label %bb.bb, !noalias !12655

bb.av:                                            ; preds = %bb.am
  %i.ju = sub nsw i64 0, %i.iy
  %i.jv = getelementptr inbounds [8 x i8], ptr %.val.i.i.i, i64 %i.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12656
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %i.jv, i64 -8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !12655
  br label %bb.ay

bb.aw:                                            ; preds = %bb.as, %bb.ar
  %.sroa.3.0.i.i.ph.i.i = phi i64 [ %i.jr, %bb.as ], [ %.sroa.4.1.i.i.i.i, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12656
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !12655
  %i.jw = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 4, 98305) 48, i64 noundef range(i64 4, 9) 8) #48, !noalias !12655 ; 5 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.ax, label %bb.ba, !prof !16

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #50
          to label %.noexc9.i.i unwind label %bb.at, !noalias !12655

.noexc9.i.i:                                      ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ba, %bb.av
  %i.jy = phi ptr [ %.pre.i.i, %bb.av ], [ %i.jw, %bb.ba ]
  %i.jz = cmpxchg ptr %i.ib, i64 -4, i64 0 release monotonic, align 8, !noalias !12655
  %.sroa.18.0.in.i.i.i.i10.i.i = extractvalue { i64, i1 } %i.jz, 1
  br i1 %.sroa.18.0.in.i.i.i.i10.i.i, label %.noexc52, label %bb.az, !prof !18

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ib)
          to label %.noexc52 unwind label %bb.b

bb.ba:                                            ; preds = %bb.aw
  store i64 1, ptr %i.jw, align 8, !noalias !12655
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.t, i64 40, i1 false), !noalias !12655
  call void @llvm.experimental.noalias.scope.decl(metadata !12663)
  %i.ka = load ptr, ptr %i.ie, align 8, !alias.scope !12663, !noalias !12655, !nonnull !11, !noundef !11 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %.sroa.3.0.i.i.ph.i.i ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !12664, !noundef !11
  %i.kd = and i8 %i.kc, 1
  %i.ke = zext nneg i8 %i.kd to i64
  %i.kf = add i64 %.sroa.3.0.i.i.ph.i.i, -16
  %i.kg = load i64, ptr %i.ik, align 8, !alias.scope !12663, !noalias !12655, !noundef !11
  %i.kh = and i64 %i.kg, %i.kf
  store i8 %i.im, ptr %i.kb, align 1, !noalias !12664
  %i.ki = getelementptr i8, ptr %i.ka, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 16
  store i8 %i.im, ptr %i.kj, align 1, !noalias !12664
  %i.kk = load <2 x i64>, ptr %i.if, align 8, !alias.scope !12663, !noalias !12655
  %i.kl = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ke, i64 0
  %i.km = sub <2 x i64> %i.kk, %i.kl
  store <2 x i64> %i.km, ptr %i.if, align 8, !alias.scope !12663, !noalias !12655
  %i.kn = sub nsw i64 0, %.sroa.3.0.i.i.ph.i.i
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.kn
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 -8
  store ptr %i.jw, ptr %i.kp, align 8, !noalias !12664
  br label %bb.ay

bb.bb:                                            ; preds = %bb.au
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !12655
  unreachable

.noexc52:                                         ; preds = %bb.ay, %bb.az
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !12655
  br label %.noexc47

bb.bc:                                            ; preds = %bb.g
  %i.ks = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !12625, !nonnull !11, !noundef !11
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i32, ptr %i.ku, align 4, !noalias !12625, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12665
  invoke void @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12lower_ty_ext(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %i.kv)
          to label %.noexc53 unwind label %bb.b, !inline_history !12466

.noexc53:                                         ; preds = %bb.bc
  %i.kw = load ptr, ptr %i.v, align 8, !noalias !12665, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12665
  %i.kx = load ptr, ptr %i.ks, align 8, !noalias !12625, !nonnull !11, !noundef !11 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 4, !range !49, !noalias !12625, !noundef !11
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !12625, !nonnull !11, !align !12, !noundef !11
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2272
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !12625, !nonnull !11, !noundef !11
  %i.ld = trunc nuw i32 %i.ky to i1
  br i1 %i.ld, label %bb.bd, label %.noexc54

bb.bd:                                            ; preds = %.noexc53
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !noalias !12625
  %i.lg = invoke noundef nonnull ptr @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext14lower_lifetime(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(272) %1, i32 noundef %i.lf)
          to label %..noexc54_crit_edge unwind label %bb.b

..noexc54_crit_edge:                              ; preds = %bb.bd
  %.pre = load ptr, ptr %i.ks, align 8, !noalias !12625
  br label %.noexc54

.noexc54:                                         ; preds = %..noexc54_crit_edge, %.noexc53
  %i.lh = phi ptr [ %i.kx, %.noexc53 ], [ %.pre, %..noexc54_crit_edge ]
  %.sroa.02.0.i = phi ptr [ %i.lc, %.noexc53 ], [ %i.lg, %..noexc54_crit_edge ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  %i.lj = load i8, ptr %i.li, align 4, !range !14, !noalias !12625, !noundef !11
  %i.lk = trunc nuw i8 %i.lj to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !12625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 16 dereferenceable(32) %i.cg, i64 32, i1 false), !noalias !12625
  %i.ll = invoke noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE7new_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.bl, ptr noundef nonnull %.sroa.02.0.i, ptr noundef nonnull %i.kw, i1 noundef zeroext %i.lk)
          to label %.noexc55 unwind label %bb.b, !inline_history !12429

.noexc55:                                         ; preds = %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12625
  br label %.noexc47

bb.be:                                            ; preds = %bb.g
  %i.lm = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.ln = load i32, ptr %i.lm, align 4, !noalias !12625, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !12666
  invoke void @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12lower_ty_ext(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %i.ln)
          to label %.noexc56 unwind label %bb.b, !inline_history !12466

.noexc56:                                         ; preds = %bb.be
  %i.lo = load ptr, ptr %i.w, align 8, !noalias !12666, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12666
  %i.lp = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !noalias !12625, !noundef !11
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !12625, !nonnull !11, !align !12, !noundef !11
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !12625, !nonnull !11, !noundef !11
  %i.lu = invoke fastcc noundef nonnull ptr @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_expr_as_const(ptr noalias nofree noundef align 8 dereferenceable(272) %1, i32 noundef %i.lq, ptr noundef nonnull %i.lt)
          to label %.noexc57 unwind label %bb.b

.noexc57:                                         ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !12625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 16 dereferenceable(32) %i.cg, i64 32, i1 false), !noalias !12625
  %i.lv = invoke noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE24new_array_with_const_len(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.bk, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.lu)
          to label %.noexc58 unwind label %bb.b, !inline_history !12429

.noexc58:                                         ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12625
  br label %.noexc47

bb.bf:                                            ; preds = %bb.g
  %i.lw = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !noalias !12625, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12667
  invoke void @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12lower_ty_ext(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %i.lx)
          to label %.noexc59 unwind label %bb.b, !inline_history !12466

.noexc59:                                         ; preds = %bb.bf
  %i.ly = load ptr, ptr %i.x, align 8, !noalias !12667, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !12625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 16 dereferenceable(32) %i.cg, i64 32, i1 false), !noalias !12625
  %i.lz = invoke noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE9new_slice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.bj, ptr noundef nonnull %i.ly)
          to label %.noexc60 unwind label %bb.b, !inline_history !12429

.noexc60:                                         ; preds = %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !12625
  br label %.noexc47

bb.bg:                                            ; preds = %bb.g
  %i.ma = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !noalias !12625, !nonnull !11, !noundef !11 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12668)
  call void @llvm.experimental.noalias.scope.decl(metadata !12669)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 32, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !alias.scope !12669, !noalias !12668, !nonnull !11, !noundef !11 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.mf = load i64, ptr %i.me, align 8, !alias.scope !12669, !noalias !12668, !noundef !11 ; 4 uses
  %.not.i119 = icmp eq i64 %i.mf, 0
  br i1 %.not.i119, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #47
          to label %.noexc130 unwind label %bb.b, !inline_history !12491

.noexc130:                                        ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.mg = getelementptr [16 x i8], ptr %i.md, i64 %i.mf ; 2 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 -16
  %i.mi = getelementptr i8, ptr %i.mg, i64 -8
  %i.mj = load i32, ptr %i.mi, align 8, !noalias !12669, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.mk, i64 16, i1 false), !noalias !12669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !12670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12670
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef %i.mf, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc131 unwind label %bb.b, !inline_history !12491

.noexc131:                                        ; preds = %bb.bi
  %i.ml = load i64, ptr %i.ab, align 8, !range !23, !noalias !12670, !noundef !11
  %i.mm = trunc nuw i64 %i.ml to i1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !range !24, !noalias !12670, !noundef !11 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.mm, label %bb.bj, label %bb.bk, !prof !16

bb.bj:                                            ; preds = %.noexc131
  %i.mq = load i64, ptr %i.mp, align 8, !noalias !12670
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.mo, i64 %i.mq) #50
          to label %.noexc132 unwind label %bb.b, !inline_history !12491

.noexc132:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %.noexc131
  %i.mr = load ptr, ptr %i.mp, align 8, !noalias !12670, !nonnull !11, !noundef !11
  %i.ms = icmp ule i64 %i.mf, %i.mo
  call void @llvm.assume(i1 %i.ms)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12670
  store i64 %i.mo, ptr %i.ad, align 8, !noalias !12670
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr %i.mr, ptr %i.mt, align 8, !noalias !12670
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
  store i64 0, ptr %i.mu, align 8, !noalias !12670
  %i.mv = load ptr, ptr %i.mb, align 8, !alias.scope !12669, !noalias !12668, !align !12, !noundef !11 ; 2 uses
  %.not6.i = icmp eq ptr %i.mv, null
  br i1 %.not6.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mw = getelementptr i8, ptr %i.mb, i64 8
  %.val7.i = load i64, ptr %i.mw, align 8, !alias.scope !12669, !noalias !12668, !noundef !11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.3.0.i = phi i64 [ %.val7.i, %bb.bl ], [ 0, %bb.bk ]
  %.sroa.0.0.i121 = phi ptr [ %i.mv, %bb.bl ], [ inttoptr (i64 8 to ptr), %bb.bk ]
  invoke fastcc void @_RNvMs0_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext15push_bound_vars(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i121, i64 noundef range(i64 0, 1152921504606846976) %.sroa.3.0.i)
          to label %.noexc.i122 unwind label %bb.bu, !noalias !12669, !inline_history !12492

.noexc.i122:                                      ; preds = %bb.bm
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 3 uses
  %i.my = load i32, ptr %i.mx, align 4, !alias.scope !12671, !noalias !12672, !noundef !11 ; 2 uses
  %i.mz = add i32 %i.my, 1                        ; 2 uses
  %i.na = icmp ult i32 %i.mz, -255
  br i1 %i.na, label %bb.bo, label %bb.bn, !prof !18

bb.bn:                                            ; preds = %.noexc.i122
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #47
          to label %.noexc8.i unwind label %bb.bu, !noalias !12669, !inline_history !12492

.noexc8.i:                                        ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %.noexc.i122
  store i32 %i.mz, ptr %i.mx, align 4, !alias.scope !12671, !noalias !12672
  call void @llvm.experimental.noalias.scope.decl(metadata !12673)
  store i8 0, ptr %i.mk, align 8, !alias.scope !12673, !noalias !12674
  %.sroa.4.0..sroa_idx.i194 = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 0, ptr %.sroa.4.0..sroa_idx.i194, align 1, !alias.scope !12673, !noalias !12674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12675
  store ptr %i.md, ptr %i.d, align 8, !noalias !12675
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.mh, ptr %i.nb, align 8, !noalias !12675
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %i.nc, align 8, !noalias !12675
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterTINtNtB1Q_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEENCNCNvMs1_NtBM_5lowerNtB5t_17TyLoweringContext12lower_fn_ptrs_00EEBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc195 unwind label %bb.bu, !inline_history !12500

.noexc195:                                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12675
  %i.nd = invoke noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %.noexc196 unwind label %bb.bu

.noexc196:                                        ; preds = %.noexc195
  store i8 1, ptr %i.mk, align 8, !noalias !12674
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.nd, ptr %.sroa.4250.0..sroa_idx, align 8, !noalias !12674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12676
  invoke void @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12lower_ty_ext(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %i.mj)
          to label %.noexc197 unwind label %bb.bu, !inline_history !12500

.noexc197:                                        ; preds = %.noexc196
  %i.ne = load ptr, ptr %i.b, align 8, !noalias !12676, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12676
  %i.nf = load i64, ptr %i.mu, align 8, !alias.scope !12677, !noalias !12674, !noundef !11 ; 3 uses
  %i.ng = load i64, ptr %i.ad, align 8, !range !20, !alias.scope !12677, !noalias !12674, !noundef !11
  %i.nh = icmp eq i64 %i.nf, %i.ng
  br i1 %i.nh, label %bb.bp, label %.noexc9.i

bb.bp:                                            ; preds = %.noexc197
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #49
          to label %.noexc9.i unwind label %bb.bu, !inline_history !12500

.noexc9.i:                                        ; preds = %.noexc197, %bb.bp
  %i.ni = load ptr, ptr %i.mt, align 8, !alias.scope !12677, !noalias !12674, !nonnull !11, !noundef !11
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nf
  store ptr %i.ne, ptr %i.nj, align 8, !noalias !12674
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12lower_ty_ext:bb.a
  %.sroa.010.0 = phi i8 [ %i.abh, %bb.fy ], [ %i.abg, %bb.fv ], [ %i.abg, %bb.fv ]
  %i.abi = load ptr, ptr @_RNvNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_ext10___CALLSITE, align 8, !nonnull !11, !align !12, !noundef !11
  %i.abj = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abi, i8 noundef %.sroa.010.0)
          to label %bb.fz unwind label %bb.b

bb.fy:                                            ; preds = %bb.fw
  %.not = icmp eq i8 %i.abh, 0
  br i1 %.not, label %bb.fu, label %bb.fx

bb.fz:                                            ; preds = %bb.fx
  br i1 %i.abj, label %bb.ga, label %bb.fu

bb.ga:                                            ; preds = %bb.fz
  %i.abk = load ptr, ptr @_RNvNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_ext10___CALLSITE, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  store ptr %i.cp, ptr %i.cl, align 8
  store ptr %i.cl, ptr %i.cm, align 8
  %i.abm = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr @209, ptr %i.abm, align 8
  store i64 1, ptr %i.cn, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cm, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.abl, ptr %i.abn, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn)
          to label %bb.gc unwind label %bb.b

bb.gb:                                            ; preds = %bb.gc, %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 40, i1 false)
  %i.abo = load i64, ptr %i.co, align 8, !range !29, !noundef !11
  %.not39 = icmp eq i64 %i.abo, 2
  br i1 %.not39, label %bb.c, label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.gb

bb.gd:                                            ; preds = %bb.gb
  %i.abp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.abp)
          to label %bb.c unwind label %bb.b

bb.ge:                                            ; preds = %.noexc47, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !12625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !12625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.abq = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.abr = icmp ult i64 %i.abq, 3
  br i1 %i.abr, label %bb.gf, label %bb.gk

bb.gf:                                            ; preds = %bb.ge
  %i.abs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_exts_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.abs, label %bb.gg [
    i8 0, label %bb.gk
    i8 1, label %bb.gh
    i8 2, label %bb.gh
  ], !prof !28

bb.gg:                                            ; preds = %bb.gf
  %i.abt = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_exts_10___CALLSITE)
          to label %bb.gi unwind label %bb.b      ; 2 uses

bb.gh:                                            ; preds = %bb.gf, %bb.gf, %bb.gi
  %.sroa.018.0 = phi i8 [ %i.abt, %bb.gi ], [ %i.abs, %bb.gf ], [ %i.abs, %bb.gf ]
  %i.abu = load ptr, ptr @_RNvNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_exts_10___CALLSITE, align 8, !nonnull !11, !align !12, !noundef !11
  %i.abv = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abu, i8 noundef %.sroa.018.0)
          to label %bb.gj unwind label %bb.b

bb.gi:                                            ; preds = %bb.gg
  %i.abw = icmp eq i8 %i.abt, 0
  br i1 %i.abw, label %bb.gk, label %bb.gh

bb.gj:                                            ; preds = %bb.gh
  br i1 %i.abv, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gi, %bb.gf, %bb.ge, %_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_exts_0B9_.exit, %bb.gj
  %i.abx = trunc nuw i8 %.sroa.021.1 to i1
  %i.aby = load i64, ptr %i.co, align 8, !range !29
  %.not.i.i = icmp ne i64 %i.aby, 2
  %or.cond263.not = select i1 %i.abx, i1 %.not.i.i, i1 false
  br i1 %or.cond263.not, label %bb.gm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.abz = load ptr, ptr @_RNvNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_exts_10___CALLSITE, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store ptr %0, ptr %i.ch, align 8
  store ptr %i.ch, ptr %i.ci, align 8
  %i.acb = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @210, ptr %i.acb, align 8
  store i64 1, ptr %i.cj, align 8
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 1, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %i.aca, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cj)
          to label %_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_exts_0B9_.exit unwind label %bb.b

_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext12lower_ty_exts_0B9_.exit: ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.gk

bb.gm:                                            ; preds = %bb.gk
  %i.acc = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.acc)
          to label %.thread253 unwind label %.thread254

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit86: ; preds = %bb.gt, %.body
  %i.acd = trunc nuw i8 %.sroa.023.0.lpad-body to i1
  br i1 %i.acd, label %bb.gv, label %common.resume

.thread254:                                       ; preds = %bb.gm
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.gr, %bb.gq, %bb.gp, %.thread253, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  ret void

.thread253:                                       ; preds = %bb.gm
  %.pr = load i64, ptr %i.co, align 8, !alias.scope !12741 ; 2 uses
  %.not.i.i83 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i83, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.gn

bb.gn:                                            ; preds = %.thread253
  %i.acf = load i64, ptr %i.acc, align 8, !range !26, !alias.scope !12742, !noundef !11
  %i.acg = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.co, i64 noundef %i.acf)
          to label %bb.gp unwind label %bb.go     ; 0 uses

bb.go:                                            ; preds = %bb.gn
  %i.ach = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.co) #46
          to label %common.resume unwind label %bb.gs

bb.gp:                                            ; preds = %bb.gn
  call void @llvm.experimental.noalias.scope.decl(metadata !12743)
  call void @llvm.experimental.noalias.scope.decl(metadata !12744)
  call void @llvm.experimental.noalias.scope.decl(metadata !12745)
  call void @llvm.experimental.noalias.scope.decl(metadata !12746)
  %i.aci = icmp eq i64 %.pr, 0
  br i1 %i.aci, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.acj = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12747)
  call void @llvm.experimental.noalias.scope.decl(metadata !12748)
  %i.ack = load ptr, ptr %i.acj, align 8, !alias.scope !12749, !nonnull !11, !noundef !11
  %i.acl = atomicrmw sub ptr %i.ack, i64 1 release, align 8, !noalias !12750
  %i.acm = icmp eq i64 %i.acl, 1
  br i1 %i.acm, label %bb.gr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.gr:                                            ; preds = %bb.gq
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.acj) #49
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty.exit

bb.gs:                                            ; preds = %bb.go
  %i.acn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit86, %bb.gv, %bb.go
  %common.resume.op = phi { ptr, i32 } [ %i.ach, %bb.go ], [ %.pn258, %bb.gv ], [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit86 ]
  resume { ptr, i32 } %common.resume.op

bb.gt:                                            ; preds = %.body
  %i.aco = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aco)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit86 unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gv
  %i.acp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.gv:                                            ; preds = %.thread254, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit86
  %.pn258 = phi { ptr, i32 } [ %i.ace, %.thread254 ], [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit86 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.co) #46
          to label %common.resume unwind label %bb.gu
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext14lower_lifetime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  %i.e = alloca [16 x i8], align 4                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12774)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !12774, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.h = zext i32 %1 to i64                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noalias !12774, !noundef !11 ; 2 uses
  %i.k = icmp ugt i64 %i.j, %i.h
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !12774, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.h ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !range !12775, !noalias !12774, !noundef !11 ; 2 uses
  %i.p = icmp ne i32 %i.o, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i32 %i.o, 9
  br i1 %i.q, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #47, !noalias !12774
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !12774, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !12774, !noundef !11 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %.idx.i = shl nuw nsw i64 %i.v, 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner13BoundVarKindsEuINtNtNtBf_3ops12control_flow11ControlFlowNtNtB3n_6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB52_NCNvMs1_NtB3p_5lowerNtB68_17TyLoweringContext28find_and_lower_hrtb_lifetime0E0E0B3p_.exit.i.i, %.lr.ph.i.preheader.i
  %.sroa.8.0.i = phi i64 [ %i.al, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner13BoundVarKindsEuINtNtNtBf_3ops12control_flow11ControlFlowNtNtB3n_6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB52_NCNvMs1_NtB3p_5lowerNtB68_17TyLoweringContext28find_and_lower_hrtb_lifetime0E0E0B3p_.exit.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.y = phi ptr [ %i.z, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner13BoundVarKindsEuINtNtNtBf_3ops12control_flow11ControlFlowNtNtB3n_6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB52_NCNvMs1_NtB3p_5lowerNtB68_17TyLoweringContext28find_and_lower_hrtb_lifetime0E0E0B3p_.exit.i.i ], [ %i.x, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %.val.i.i = load ptr, ptr %i.aa, align 8, !noalias !12776, !nonnull !11, !noundef !11 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 -16
  %.val7.i.i = load i64, ptr %i.ab, align 8, !noalias !12776, !noundef !11 ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.val7.i.i, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i.i.i.i.i
  %i.ad = icmp eq i64 %.val7.i.i, 0
  br i1 %i.ad, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner13BoundVarKindsEuINtNtNtBf_3ops12control_flow11ControlFlowNtNtB3n_6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB52_NCNvMs1_NtB3p_5lowerNtB68_17TyLoweringContext28find_and_lower_hrtb_lifetime0E0E0B3p_.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %.lr.ph.i.i
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !12777, !nonnull !11, !noundef !11
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs33K2ylI4knu_10hir_expand4name4NameuINtNtNtBf_3ops12control_flow11ControlFlowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB3q_NCNCNvMs1_NtB3w_5lowerNtB54_17TyLoweringContext28find_and_lower_hrtb_lifetime00E0E0B3w_.exit.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i32 [ %i.aj, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs33K2ylI4knu_10hir_expand4name4NameuINtNtNtBf_3ops12control_flow11ControlFlowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB3q_NCNCNvMs1_NtB3w_5lowerNtB54_17TyLoweringContext28find_and_lower_hrtb_lifetime00E0E0B3w_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.af = phi ptr [ %i.ai, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs33K2ylI4knu_10hir_expand4name4NameuINtNtNtBf_3ops12control_flow11ControlFlowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB3q_NCNCNvMs1_NtB3w_5lowerNtB54_17TyLoweringContext28find_and_lower_hrtb_lifetime00E0E0B3w_.exit.i.i.i.i.i.i ], [ %.val.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !12778, !nonnull !11, !noundef !11
  %i.ag = icmp eq ptr %.val.i.i.i.i.i.i, %i.ae
  br i1 %i.ag, label %bb.e, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs33K2ylI4knu_10hir_expand4name4NameuINtNtNtBf_3ops12control_flow11ControlFlowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB3q_NCNCNvMs1_NtB3w_5lowerNtB54_17TyLoweringContext28find_and_lower_hrtb_lifetime00E0E0B3w_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = icmp samesign ult i64 %.sroa.8.0.i, 4294967041
  br i1 %i.ah, label %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext28find_and_lower_hrtb_lifetime.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #47, !noalias !12779
  unreachable

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs33K2ylI4knu_10hir_expand4name4NameuINtNtNtBf_3ops12control_flow11ControlFlowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB3q_NCNCNvMs1_NtB3w_5lowerNtB54_17TyLoweringContext28find_and_lower_hrtb_lifetime00E0E0B3w_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.aj = add i32 %.sroa.8.0.i.i.i.i.i, 1
  %i.ak = icmp eq ptr %i.ai, %i.ac
  br i1 %i.ak, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner13BoundVarKindsEuINtNtNtBf_3ops12control_flow11ControlFlowNtNtB3n_6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB52_NCNvMs1_NtB3p_5lowerNtB68_17TyLoweringContext28find_and_lower_hrtb_lifetime0E0E0B3p_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner13BoundVarKindsEuINtNtNtBf_3ops12control_flow11ControlFlowNtNtB3n_6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB52_NCNvMs1_NtB3p_5lowerNtB68_17TyLoweringContext28find_and_lower_hrtb_lifetime0E0E0B3p_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs33K2ylI4knu_10hir_expand4name4NameuINtNtNtBf_3ops12control_flow11ControlFlowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB3q_NCNCNvMs1_NtB3w_5lowerNtB54_17TyLoweringContext28find_and_lower_hrtb_lifetime00E0E0B3w_.exit.i.i.i.i.i.i, %.lr.ph.i.i
  %i.al = add nuw nsw i64 %.sroa.8.0.i, 1
  %i.am = icmp eq ptr %i.t, %i.z
  br i1 %i.am, label %.loopexit, label %.lr.ph.i.i

_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext28find_and_lower_hrtb_lifetime.exit: ; preds = %bb.e
  %i.an = trunc nuw i64 %.sroa.8.0.i to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ap = tail call fastcc noundef nonnull ptr @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext17hrtb_region_param(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %0, i32 noundef %.sroa.8.0.i.i.i.i.i, i32 noundef %i.an, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.ao), !noalias !12780
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12region_param.exit, %bb.p, %bb.h, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext28find_and_lower_hrtb_lifetime.exit
  %.sroa.0.0 = phi ptr [ %i.ap, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext28find_and_lower_hrtb_lifetime.exit ], [ %i.au, %bb.h ], [ %.sroa.0.0.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12region_param.exit ], [ %i.bv, %bb.p ]
  ret ptr %.sroa.0.0

.loopexit:                                        ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner13BoundVarKindsEuINtNtNtBf_3ops12control_flow11ControlFlowNtNtB3n_6region6RegionENCINvNvB1e_8find_map5checkTjB25_EB52_NCNvMs1_NtB3p_5lowerNtB68_17TyLoweringContext28find_and_lower_hrtb_lifetime0E0E0B3p_.exit.i.i, %bb.d, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !11, !align !12, !noundef !11
  call void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver16resolve_lifetime(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
  %i.as = load i32, ptr %i.e, align 4, !range !12781, !noundef !11 ; 2 uses
  switch i32 %i.as, label %bb.i [
    i32 -2, label %bb.h
    i32 -1, label %bb.p
  ]

bb.h:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = tail call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region5error(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.at)
  br label %bb.g

bb.i:                                             ; preds = %.loopexit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.as, ptr %i.d, align 4
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !12782, !nonnull !11, !align !12, !noundef !11
  %i.ax = tail call noundef nonnull align 8 ptr @_RINvMNtNtCshzWfHUSfYae_4core4cell4onceINtB3_8OnceCellNtNtCs8K4cjrcxBsw_6hir_ty8generics8GenericsE15get_or_try_initNCINvB2_11get_or_initNCNvMs1_NtBT_5lowerNtB2h_17TyLoweringContext8generics0E0zEBT_(ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %0)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.az = load i8, ptr %i.ay, align 1, !range !14, !noundef !11
  %i.ba = trunc nuw i8 %i.az to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.bb = call { i32, i1 } @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics18lifetime_param_idx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ax, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c, i1 noundef zeroext %i.ba) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bc = extractvalue { i32, i1 } %i.bb, 0       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12783)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !range !49, !alias.scope !12783, !noalias !12784, !noundef !11
  %i.bf = trunc nuw i32 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !12783, !noalias !12784
  %.not.i = icmp uge i32 %i.bc, %i.bh
  %or.cond.not.i = select i1 %i.bf, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = extractvalue { i32, i1 } %i.bb, 1
  br i1 %i.bi, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !12783, !noalias !12784, !nonnull !11, !align !12, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2272
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !12785, !nonnull !11, !noundef !11
  br label %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12region_param.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12785
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bn, i64 32, i1 false), !noalias !12784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !12783
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.bc, ptr %i.bo, align 4, !noalias !12785
  %i.bp = call noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB2_6Region15new_early_param(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.a), !noalias !12785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12785
  br label %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12region_param.exit

bb.m:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !12783, !noalias !12784, !noundef !11 ; 2 uses
  %i.bs = icmp ult i32 %i.br, -255
  br i1 %i.bs, label %bb.o, label %bb.n, !prof !18

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #47, !noalias !12785
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bt = call fastcc noundef nonnull ptr @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext17hrtb_region_param(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %0, i32 noundef %i.bc, i32 noundef %i.br, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.d)
  br label %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12region_param.exit

_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext12region_param.exit: ; preds = %bb.k, %bb.l, %bb.o
  %.sroa.0.0.i = phi ptr [ %i.bm, %bb.k ], [ %i.bt, %bb.o ], [ %i.bp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.p:                                             ; preds = %.loopexit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = tail call noundef nonnull ptr @_RNvXs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6RegionNtNtB7_8interner10DbInternerE10new_static(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.bu)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext15lower_dyn_trait(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [152 x i8], align 8               ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
end_hunk_1
begin_hunk_2_@_RNvMsH_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate9as_clause:_RNvMsH_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate13expect_clause.exit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics13has_no_params(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(72) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noundef !11  ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.e = icmp eq i32 %i.a, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_8Generics13has_no_params0EBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.o, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !13064, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !13064, !noundef !11 ; 2 uses
  %i.i = icmp ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noalias !13064, !noundef !11 ; 2 uses
  %i.l = icmp ult i64 %i.k, 576460752303423488
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %i.k, %i.h
  %i.n = icmp eq i64 %i.m, 0                      ; 2 uses
  %.not = xor i1 %i.n, true
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  %or.cond = select i1 %.not, i1 true, i1 %i.p
  br i1 %or.cond, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_8Generics13has_no_params0EBU_.exit, label %.lr.ph

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMs_BS_NtBS_8Generics13has_no_params0EBU_.exit: ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.n, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics16provenance_split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i32, ptr %1, align 8, !noundef !11  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13074)
  switch i32 %i.b, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit [
    i32 2, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsE6map_orjNCNvMs_BL_NtBL_8Generics10len_parent0EBN_.exit.thread
    i32 0, label %bb.b
  ], !prof !13075

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsE6map_orjNCNvMs_BL_NtBL_8Generics10len_parent0EBN_.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !13074, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !13074, !noundef !11 ; 2 uses
  %i.f = icmp ult i64 %i.e, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noalias !13074, !noundef !11 ; 2 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, %i.e
  br label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #47, !noalias !13076
  unreachable

_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit: ; preds = %bb.a, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsE6map_orjNCNvMs_BL_NtBL_8Generics10len_parent0EBN_.exit.thread
  %.sroa.02.0.i29 = phi i64 [ %i.j, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsE6map_orjNCNvMs_BL_NtBL_8Generics10len_parent0EBN_.exit.thread ], [ 0, %bb.a ]
  %i.k = zext i32 %i.b to i64
  %i.l = getelementptr i8, ptr %1, i64 -24
  %i.m = getelementptr [32 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !11, !align !12, !noundef !11 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !11 ; 4 uses
  %i.q = icmp ult i64 %i.p, 576460752303423488
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.p
  store ptr %i.s, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  %i.u = call noundef range(i64 0, 1152921504606846976) i64 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB2X_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldTINtB2X_3IdxB1P_ERB1P_EjjNCINvNvXs1_NtB8_6filterINtB5e_6FilterppEB3J_5count8to_usizeB4E_NCNvMs3_B1R_NtB1R_13GenericParams24len_late_bound_lifetimes0E0NCINvXsK_NtB3N_5accumjNtB7d_3Sum3sumIBO_BN_B53_EE0E0ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0) ; 2 uses
  %i.v = icmp samesign ule i64 %i.u, %i.p
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !11 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1Y_8adapters9enumerateINtB2N_9EnumeratepEB1S_4fold9enumerateRBQ_uNCINvNtB2P_3map8map_foldTjB3Q_ETINtCsbq3eHDLgq0Z_8la_arena3IdxBQ_EB3Q_EuNCNvMsm_B4u_INtB4u_5ArenaBQ_E4iter0NCINvNvB1S_8for_each4callB4q_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB6e_8Generics16provenance_split0E0E0E0EB6g_.exit, label %.preheader

.preheader:                                       ; preds = %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i
  %.sroa.023.0 = phi i64 [ %.sroa.023.1, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ], [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ] ; 4 uses
  %.sroa.022.0 = phi i8 [ %.sroa.022.1, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ], [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ] ; 3 uses
  %.sroa.020.0 = phi i64 [ %.sroa.020.1, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ], [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ], [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ] ; 4 uses
  %.sroa.01.0.i = phi i64 [ %i.ah, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ], [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.01.0.i ; 2 uses
  %.val.i18 = load i64, ptr %i.ab, align 8, !range !23, !alias.scope !13077, !noalias !13078, !noundef !11
  %i.ac = trunc nuw i64 %.val.i18 to i1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.ad = add i64 %.sroa.0.0, 1
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i

bb.d:                                             ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %i.ab, i64 24
  %.val8.i = load i8, ptr %i.ae, align 8, !alias.scope !13077, !noalias !13078 ; 2 uses
  switch i8 %.val8.i, label %default.unreachable.i.i.i.i.i [
    i8 0, label %bb.e
    i8 1, label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i
    i8 2, label %bb.f
  ]

default.unreachable.i.i.i.i.i:                    ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.sroa.023.0, 1
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ag = add i64 %.sroa.020.0, 1
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i: ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  %.sroa.023.1 = phi i64 [ %.sroa.023.0, %bb.c ], [ %i.af, %bb.e ], [ %.sroa.023.0, %bb.f ], [ %.sroa.023.0, %bb.d ] ; 2 uses
  %.sroa.022.1 = phi i8 [ %.sroa.022.0, %bb.c ], [ %.sroa.022.0, %bb.e ], [ %.sroa.022.0, %bb.f ], [ %.val8.i, %bb.d ] ; 2 uses
  %.sroa.020.1 = phi i64 [ %.sroa.020.0, %bb.c ], [ %.sroa.020.0, %bb.e ], [ %i.ag, %bb.f ], [ %.sroa.020.0, %bb.d ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.ad, %bb.c ], [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.d ] ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.z
  br i1 %i.ai, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1Y_8adapters9enumerateINtB2N_9EnumeratepEB1S_4fold9enumerateRBQ_uNCINvNtB2P_3map8map_foldTjB3Q_ETINtCsbq3eHDLgq0Z_8la_arena3IdxBQ_EB3Q_EuNCNvMsm_B4u_INtB4u_5ArenaBQ_E4iter0NCINvNvB1S_8for_each4callB4q_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB6e_8Generics16provenance_split0E0E0E0EB6g_.exit, label %.preheader

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1Y_8adapters9enumerateINtB2N_9EnumeratepEB1S_4fold9enumerateRBQ_uNCINvNtB2P_3map8map_foldTjB3Q_ETINtCsbq3eHDLgq0Z_8la_arena3IdxBQ_EB3Q_EuNCNvMsm_B4u_INtB4u_5ArenaBQ_E4iter0NCINvNvB1S_8for_each4callB4q_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB6e_8Generics16provenance_split0E0E0E0EB6g_.exit: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit
  %.sroa.023.2 = phi i64 [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ], [ %.sroa.023.1, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ]
  %.sroa.022.2 = phi i8 [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ], [ %.sroa.022.1, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ]
  %.sroa.020.2 = phi i64 [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ], [ %.sroa.020.1, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ]
  %.sroa.0.2 = phi i64 [ 0, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit ], [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDatauNCINvNtBb_3map8map_foldTjB21_ETINtCsbq3eHDLgq0Z_8la_arena3IdxB22_EB21_EuNCNvMsm_B3C_INtB3C_5ArenaB22_E4iter0NCINvNvB1e_8for_each4callB3y_NCNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB5o_8Generics16provenance_split0E0E0E0B5q_.exit.i ]
  %i.aj = sub nuw nsw i64 %i.p, %i.u
  store i64 %.sroa.02.0.i29, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.022.2, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.023.2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.020.2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aj, ptr %i.ao, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 576460752303423488) i64 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics18len_lifetimes_self(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13081)
  %i.b = load i32, ptr %0, align 8, !alias.scope !13081, !noundef !11 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #47, !noalias !13081
  unreachable

_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics5owner.exit: ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr i8, ptr %0, i64 -24
  %i.e = getelementptr [32 x i8], ptr %i.d, i64 %i.c
  %.val = load ptr, ptr %i.e, align 8, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 4 uses
  %i.h = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %.sroa.42.0..sroa_idx.i, align 8
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8
  %i.l = call noundef range(i64 0, 1152921504606846976) i64 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB2X_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldTINtB2X_3IdxB1P_ERB1P_EjjNCINvNvXs1_NtB8_6filterINtB5e_6FilterppEB3J_5count8to_usizeB4E_NCNvMs3_B1R_NtB1R_13GenericParams24len_late_bound_lifetimes0E0NCINvXsK_NtB3N_5accumjNtB7d_3Sum3sumIBO_BN_B53_EE0E0ECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0) ; 2 uses
  %i.m = icmp samesign ule i64 %i.l, %i.g
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = sub nuw nsw i64 %i.g, %i.l
  ret i64 %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i1 } @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics18lifetime_param_idx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [160 x i8], align 8               ; 25 uses
  %i.d = alloca [16 x i8], align 4                ; 9 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 4 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.4.0.copyload.fr = freeze i32 %.sroa.4.0.copyload ; 9 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13111)
  %i.e = load i32, ptr %0, align 8, !alias.scope !13111, !noalias !13112, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i32 %i.e, label %bb.q [
    i32 2, label %bb.b
    i32 1, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit.thread
  ], !prof !59

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !range !30, !alias.scope !13113, !noalias !13114, !noundef !11 ; 3 uses
  %i.i = icmp samesign ugt i32 %i.h, 2
  %i.j = zext nneg i32 %i.h to i64
  %i.k = add nsw i64 %i.j, -2
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 2 uses
  %i.m = icmp samesign ult i32 %.sroa.0.0.copyload, 3 ; 2 uses
  %i.n = zext nneg i32 %.sroa.0.0.copyload to i64
  %i.o = add nsw i64 %i.n, -2
  %i.p = select i1 %i.m, i64 0, i64 %i.o
  %i.q = icmp eq i64 %i.l, %i.p
  br i1 %i.q, label %bb.c, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  switch i64 %i.l, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.m)
  %i.r = icmp eq i32 %i.h, %.sroa.0.0.copyload
  br i1 %i.r, label %bb.f, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !13115, !noalias !13116, !noundef !11
  %i.u = icmp eq i32 %i.t, %.sroa.13.0.copyload   ; 3 uses
  switch i32 %.sroa.0.0.copyload, label %default.unreachable [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.x, %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  br i1 %i.u, label %.split23, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.f
  br i1 %i.u, label %.split27, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.f
  br i1 %i.u, label %.split35, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split23:                                         ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !range !45, !alias.scope !13115, !noalias !13116, !noundef !11
  %i.x = icmp eq i32 %i.w, %.sroa.4.0.copyload.fr
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.x, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

.split27:                                         ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !range !45, !alias.scope !13115, !noalias !13116, !noundef !11
  %i.ab = icmp eq i32 %i.aa, %.sroa.4.0.copyload.fr
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.ab, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

.split35:                                         ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !range !45, !alias.scope !13115, !noalias !13116, !noundef !11
  %i.af = icmp eq i32 %i.ae, %.sroa.4.0.copyload.fr
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.af, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.aj = icmp eq i32 %i.ai, %.sroa.13.0.copyload
  br i1 %i.aj, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.am = icmp eq i32 %i.al, %.sroa.13.0.copyload
  br i1 %i.am, label %.split33, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.ap = icmp eq i32 %i.ao, %.sroa.13.0.copyload
  br i1 %i.ap, label %.split29, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.as = icmp eq i32 %i.ar, %.sroa.13.0.copyload
  br i1 %i.as, label %.split25, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.av = icmp eq i32 %i.au, %.sroa.13.0.copyload
  br i1 %i.av, label %.split, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

bb.o:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.ay = icmp eq i32 %i.ax, %.sroa.13.0.copyload
  br i1 %i.ay, label %.split31, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

.split33:                                         ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !range !45, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.bb = icmp eq i32 %i.ba, %.sroa.4.0.copyload.fr
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.bb, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

.split29:                                         ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !range !45, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.bf = icmp eq i32 %i.be, %.sroa.4.0.copyload.fr
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.bf, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

.split25:                                         ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !range !45, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.bj = icmp eq i32 %i.bi, %.sroa.4.0.copyload.fr
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.bj, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

.split:                                           ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !range !45, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.bn = icmp eq i32 %i.bm, %.sroa.4.0.copyload.fr
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.bn, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

.split31:                                         ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !range !45, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.br = icmp eq i32 %i.bq, %.sroa.4.0.copyload.fr
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.br, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.o, %bb.b, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.e, %bb.g, %bb.h, %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !range !45, !alias.scope !13113, !noalias !13114, !noundef !11
  %i.bw = icmp eq i32 %i.bv, %.sroa.4.0.copyload.fr
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.bw, label %bb.p, label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

bb.p:                                             ; preds = %.split35, %.split33, %.split31, %.split29, %.split27, %.split25, %.split23, %.split, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  br label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #47, !noalias !13117
  unreachable

_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit: ; preds = %bb.p, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread, %.split, %.split23, %.split25, %.split27, %.split29, %.split31, %.split33, %.split35
  %.sroa.0.0.i = phi ptr [ %i.ag, %.split35 ], [ %i.f, %bb.p ], [ %i.bx, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ %i.bt, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread ], [ %i.bo, %.split ], [ %i.y, %.split23 ], [ %i.bk, %.split25 ], [ %i.ac, %.split27 ], [ %i.bg, %.split29 ], [ %i.bs, %.split31 ], [ %i.bc, %.split33 ] ; 13 uses
  br i1 %2, label %bb.s, label %bb.r

_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit.thread: ; preds = %bb.a
  br i1 %2, label %.thread, label %bb.r

.thread:                                          ; preds = %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13118
  br label %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit.i

bb.r:                                             ; preds = %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit.thread, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit
  %.sroa.0.0.i41 = phi ptr [ %i.f, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit.thread ], [ %.sroa.0.0.i, %_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics10find_owner.exit ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41, i64 20
end_hunk_2
begin_hunk_3_@_RNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtB5_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.az, ptr %i.au, align 8, !noalias !15265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !15265
  %i.ba = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !15265
  %i.bb = icmp ugt i64 %i.ba, 2                   ; 3 uses
  br i1 %i.bb, label %bb.c, label %bb.cz

bb.b:                                             ; preds = %bb.do, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.kx, %bb.do ], [ %eh.lpad-body.i, %.body.i ] ; 3 uses
  br i1 %i.bb, label %.thread76.i, label %bb.eg

bb.c:                                             ; preds = %bb.dj, %bb.dh, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !15265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !15265
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %1, ptr %i.bc, align 8, !noalias !15265
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %2, ptr %i.bd, align 8, !noalias !15265
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.be, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aw, i64 12, i1 false), !noalias !15266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.av, i64 16, i1 false), !noalias !15267
  %i.bf = load ptr, ptr %i.au, align 8, !noalias !15265, !nonnull !11, !noundef !11 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  store ptr %i.bf, ptr %i.bg, align 8, !noalias !15265
  call void @llvm.experimental.noalias.scope.decl(metadata !15268)
  call void @llvm.experimental.noalias.scope.decl(metadata !15269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !15270
  invoke void @_RNvNtCs8K4cjrcxBsw_6hir_ty8generics8generics(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ah, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.be)
          to label %.noexc.i unwind label %bb.dk, !noalias !15271

.noexc.i:                                         ; preds = %bb.c
  %i.bh = load i32, ptr %i.ah, align 8, !alias.scope !15272, !noalias !15270, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #47
          to label %.noexc.i.i unwind label %bb.cy, !noalias !15273

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr [32 x i8], ptr %i.ah, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -16
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !15274, !noalias !15270, !nonnull !11, !align !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !15270
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.442.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false), !noalias !15270
  store i64 1, ptr %i.ag, align 8, !noalias !15270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !15270
  invoke void @_RNvXsj_NtCsileJQcQObtj_7hir_def8resolverNtB7_12GenericDefIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.af, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.be, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2)
          to label %bb.h unwind label %bb.g, !noalias !15273

.body.i.i:                                        ; preds = %bb.cv, %bb.cr, %bb.i, %bb.g
  %.pn73.i.i = phi { ptr, i32 } [ %.pn71.i.i, %bb.i ], [ %i.jl, %bb.cr ], [ %i.bo, %bb.g ], [ %i.jp, %bb.cv ] ; 2 uses
  %i.bm = load i64, ptr %i.ag, align 8, !range !23, !alias.scope !15275, !noalias !15270, !noundef !11
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.body.i, label %bb.f

bb.f:                                             ; preds = %.body.i.i
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.442.0..sroa_idx.i.i)
          to label %.body.i unwind label %bb.ch, !noalias !15273

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeEECs8K4cjrcxBsw_6hir_ty.exit.i163.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i, %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !15270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !15270
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aw, i64 12, i1 false), !noalias !15266
  store i32 0, ptr %i.ad, align 4, !noalias !15270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15270
  store i8 2, ptr %i.ac, align 8, !noalias !15270
  invoke void @_RNvMs0_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext3new(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.ae, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bl, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.be, ptr noundef nonnull align 8 %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.ac, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.j, !noalias !15273

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i, %bb.j
  %.pn71.i.i = phi { ptr, i32 } [ %i.bq, %bb.j ], [ %.pn67.pn.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(48) %i.af) #46
          to label %.body.i.i unwind label %bb.ch, !noalias !15273

bb.j:                                             ; preds = %bb.ct, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit154.i.i, %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15270
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false), !noalias !15270
  %i.bs = load i64, ptr %i.ag, align 8, !range !23, !noalias !15270, !noundef !11
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %bb.m, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.bu = invoke noundef i32 @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics23type_or_const_param_idx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.442.0..sroa_idx.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.al)
          to label %bb.p unwind label %bb.n, !noalias !15273

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #50
          to label %bb.o unwind label %bb.n, !noalias !15273

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i: ; preds = %.noexc170.i.i, %.thread302.i.i, %.thread310.i.i, %bb.s, %bb.n
  %.pn67.pn.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp332.i.i, %.thread310.i.i ], [ %lpad.thr_comm.split-lp318.i.i, %bb.s ], [ %i.bv, %bb.n ], [ %.pn67.pn309.i.i, %.thread302.i.i ], [ %.pn67.pn309.i.i, %.noexc170.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5lower17TyLoweringContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.ae) #46
          to label %bb.i unwind label %bb.ch, !noalias !15273

bb.n:                                             ; preds = %bb.cp, %bb.p, %bb.m, %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i

bb.o:                                             ; preds = %bb.cf, %bb.m
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.bw = invoke noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty9new_param(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.al, i32 noundef %i.bu)
          to label %bb.q unwind label %bb.n, !noalias !15273

bb.q:                                             ; preds = %bb.p
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.al, align 8, !alias.scope !15269, !noalias !15276 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !15269, !noalias !15276 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !15269, !noalias !15276 ; 9 uses
  %i.bx = icmp eq i32 %.sroa.01.0.copyload.i.i, 7
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !alias.scope !15269, !noalias !15276 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  %or.cond.i.i = select i1 %i.bx, i1 %i.ca, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_10TraitItems22query_with_diagnostics(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, i32 noundef %.sroa.5.0.copyload.i.i, i32 noundef %.sroa.6.0.copyload.i.i)
          to label %bb.t unwind label %.thread319.i.i, !noalias !15273

.thread319.i.i:                                   ; preds = %bb.ce, %bb.cd, %bb.x, %bb.v, %bb.t, %bb.r
  %.sroa.16.1.ph.i.i = phi ptr [ undef, %bb.r ], [ undef, %bb.t ], [ undef, %bb.v ], [ undef, %bb.x ], [ %.sroa.16.2.i.i, %bb.ce ], [ %.sroa.16.2.i.i, %bb.cd ]
  %.sroa.0.1.ph.i.i = phi i32 [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.x ], [ %.sroa.0.2.i.i, %bb.ce ], [ %.sroa.0.2.i.i, %bb.cd ]
  %lpad.thr_comm317.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread302.i.i

bb.s:                                             ; preds = %bb.bo, %bb.bn
  %lpad.thr_comm.split-lp318.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i

bb.t:                                             ; preds = %bb.r
  %i.cc = invoke { i32, i32 } @_RNvMs5_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_10TraitItems23associated_type_by_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
          to label %bb.u unwind label %.thread319.i.i, !noalias !15273 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.cd = extractvalue { i32, i32 } %i.cc, 0      ; 2 uses
  %i.ce = extractvalue { i32, i32 } %i.cc, 1
  %.not.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15270
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %.sroa.5.0.copyload.i.i, ptr %i.cf, align 4, !alias.scope !15277, !noalias !15270
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %.sroa.6.0.copyload.i.i, ptr %i.cg, align 4, !alias.scope !15277, !noalias !15270
  store i32 7, ptr %i.ab, align 4, !alias.scope !15277, !noalias !15270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !15270
  %i.ch = invoke noundef nonnull ptr @_RNvXsu_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent11GenericArgsNtNtB7_8interner10DbInternerE17identity_for_item(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.ab)
          to label %bb.w unwind label %.thread319.i.i, !noalias !15273 ; 2 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15270
  %i.ci = atomicrmw add ptr %i.ch, i64 1 monotonic, align 8, !noalias !15273
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %bb.x, label %bb.y, !prof !16

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #50
          to label %.noexc93.i.i unwind label %.thread319.i.i, !noalias !15273

.noexc93.i.i:                                     ; preds = %bb.x
  unreachable

.thread333.loopexit.i.i:                          ; preds = %bb.co, %bb.cl, %bb.ck, %bb.bx, %bb.bp, %bb.bh, %bb.bf, %bb.bd, %bb.ba, %_RNvXsb_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtNtB7_3hir8type_ref6PathIdE5index.exit.i.i, %bb.ai, %bb.ah
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  store i64 %i.eb, ptr %i.aa, align 8, !noalias !15270
  br label %.thread325.i.i

.thread333.loopexit.split-lp.i.i:                 ; preds = %bb.bw, %bb.br, %bb.aw, %.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread325.i.i

.thread310.i.i:                                   ; preds = %.noexc.i.i.i
  %lpad.thr_comm.split-lp332.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i

bb.y:                                             ; preds = %bb.w, %bb.u, %bb.q
  %.sroa.16.2.i.i = phi ptr [ undef, %bb.u ], [ undef, %bb.q ], [ %i.ch, %bb.w ] ; 16 uses
  %.sroa.14.0.i.i = phi i32 [ undef, %bb.u ], [ undef, %bb.q ], [ %i.ce, %bb.w ] ; 4 uses
  %.sroa.0.2.i.i = phi i32 [ 0, %bb.u ], [ 0, %bb.q ], [ %i.cd, %bb.w ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !15270
  store i64 -1, ptr %i.aa, align 8, !noalias !15270
  %i.ck = load i32, ptr %.sroa.442.0..sroa_idx.i.i, align 8, !alias.scope !15278, !noalias !15270, !noundef !11 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %._crit_edge.thread.i.i, label %.lr.ph493.i.i

.lr.ph493.i.i:                                    ; preds = %bb.y
  %i.cm = zext i32 %i.ck to i64
  %.idx.i.i = shl nuw nsw i64 %i.cm, 5
  %.add.i.i = or disjoint i64 %.idx.i.i, 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 168 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 68
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ct = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.cu = icmp samesign ult i32 %.sroa.01.0.copyload.i.i, 3 ; 2 uses
  %i.cv = zext nneg i32 %.sroa.01.0.copyload.i.i to i64
  %i.cw = add nsw i64 %i.cv, -2
  %i.cx = select i1 %i.cu, i64 0, i64 %i.cw       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0..sroa_idx.i109.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.024.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.024.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.not62.i.i = icmp eq i32 %.sroa.0.2.i.i, 0     ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 9 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.aa

.loopexit.i.i:                                    ; preds = %.backedge.i.i, %bb.aa
  %.lcssa805807.i.i = phi i32 [ %.lcssa805808.i.i, %bb.aa ], [ %i.ef, %.backedge.i.i ]
  %.lcssa736738.i.i = phi i32 [ %.lcssa736739.i.i, %bb.aa ], [ %.val.i.i129655.i.i, %.backedge.i.i ] ; 3 uses
  %.val2.i.i647.i.i = phi ptr [ %.val2.i.i648.i.i, %bb.aa ], [ %.val4.i.i135465.i.i, %.backedge.i.i ] ; 3 uses
  %.val2.i.i587.i.i = phi ptr [ %.val2.i.i588.i.i, %bb.aa ], [ %.val4.i.i135465.i.i, %.backedge.i.i ]
  %.sroa.6284.sroa.0.0.copyload582.i.i = phi i32 [ %.sroa.6284.sroa.0.0.copyload583.i.i, %bb.aa ], [ %i.eg, %.backedge.i.i ] ; 3 uses
  %.lcssa420.i.i = phi i64 [ %.sroa.67.0.idx492.i.i, %bb.aa ], [ %i.eh, %.backedge.i.i ] ; 4 uses
  %i.dn = icmp eq i64 %.sroa.67.0.add.i.i, 16
  br i1 %i.dn, label %._crit_edge.i.i, label %bb.aa

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %.not.i.i.i = icmp eq i64 %.lcssa420.i.i, -1
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i
  br i1 %.not62.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEBF_.exit.i.i, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.2.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15279
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.16.2.i.i, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !noalias !15280, !noundef !11
  store ptr %.sroa.16.2.i.i, ptr %i.q, align 8, !noalias !15279
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !noalias !15279
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.noexc97.i.i unwind label %.thread310.i.i, !noalias !15273

.noexc97.i.i:                                     ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15279
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEBF_.exit.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.y
  %.not.i.i95.i.i = icmp eq i32 %.sroa.0.2.i.i, 0
  br i1 %.not.i.i95.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionE7or_elseNCNCNvNvXs0_NvBK_s6_1__NtB22_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s0_0EBM_.exit.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEBF_.exit.i.i

bb.aa:                                            ; preds = %.loopexit.i.i, %.lr.ph493.i.i
  %.lcssa805808.i.i = phi i32 [ undef, %.lr.ph493.i.i ], [ %.lcssa805807.i.i, %.loopexit.i.i ] ; 2 uses
  %.lcssa736739.i.i = phi i32 [ undef, %.lr.ph493.i.i ], [ %.lcssa736738.i.i, %.loopexit.i.i ] ; 2 uses
  %.val2.i.i648.i.i = phi ptr [ undef, %.lr.ph493.i.i ], [ %.val2.i.i647.i.i, %.loopexit.i.i ]
  %.val2.i.i588.i.i = phi ptr [ undef, %.lr.ph493.i.i ], [ %.val2.i.i587.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.6284.sroa.0.0.copyload583.i.i = phi i32 [ undef, %.lr.ph493.i.i ], [ %.sroa.6284.sroa.0.0.copyload582.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.67.0.idx508.i.i = phi i64 [ %.add.i.i, %.lr.ph493.i.i ], [ %.sroa.67.0.add.i.i, %.loopexit.i.i ]
  %.sroa.67.0.idx492.i.i = phi i64 [ -1, %.lr.ph493.i.i ], [ %.lcssa420.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.67.0.add.i.i = add nsw i64 %.sroa.67.0.idx508.i.i, -32 ; 3 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.ag, i64 %.sroa.67.0.add.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15281)
  call void @llvm.experimental.noalias.scope.decl(metadata !15282)
  %i.dr = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !15282, !noalias !15283, !nonnull !11, !align !12, !noundef !11
  store ptr %i.ds, ptr %i.cn, align 8, !alias.scope !15281, !noalias !15284, !captures !50
  %i.dt = getelementptr inbounds nuw i8, ptr %.ptr.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.dt, i64 12, i1 false), !alias.scope !15285, !noalias !15270
  store i32 0, ptr %i.co, align 8, !alias.scope !15281, !noalias !15284
  %.val91.i.i = load ptr, ptr %.ptr.i.i, align 8, !noalias !15270, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val91.i.i, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !15273, !nonnull !11, !noundef !11 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val91.i.i, i64 56
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !15273, !noundef !11 ; 2 uses
  %.idx494.i.i = shl nuw nsw i64 %i.dx, 5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx494.i.i
  %i.dz = icmp eq i64 %i.dx, 0
  br i1 %i.dz, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.backedge.i.i
  %i.ea = phi i32 [ %i.ef, %.backedge.i.i ], [ %.lcssa805808.i.i, %bb.aa ] ; 37 uses
  %.val1.i.i138.i.i = phi i32 [ %.val.i.i129655.i.i, %.backedge.i.i ], [ %.lcssa736739.i.i, %bb.aa ] ; 29 uses
  %.val4.i.i135466.i.i = phi ptr [ %.val4.i.i135465.i.i, %.backedge.i.i ], [ %.val2.i.i588.i.i, %bb.aa ] ; 46 uses
  %.val1.i.i138.i.i.a = phi i32 [ %i.eg, %.backedge.i.i ], [ %.sroa.6284.sroa.0.0.copyload583.i.i, %bb.aa ] ; 38 uses
  %.sroa.011.0434.i.i = phi ptr [ %i.ec, %.backedge.i.i ], [ %i.dv, %bb.aa ] ; 6 uses
  %i.eb = phi i64 [ %i.eh, %.backedge.i.i ], [ %.sroa.67.0.idx492.i.i, %bb.aa ] ; 37 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.011.0434.i.i, i64 32 ; 2 uses
  %i.ed = load i32, ptr %.sroa.011.0434.i.i, align 8, !range !49, !noalias !15273, !noundef !11
  %i.ee = trunc nuw i32 %i.ed to i1
  br i1 %i.ee, label %.backedge.i.i, label %bb.ab

.backedge.i.i:                                    ; preds = %bb.bc, %bb.bb, %_RNCNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s1_0Bf_.exit.i.i, %bb.cn, %bb.cm, %bb.cj, %bb.ci, %bb.ca, %bb.by, %bb.bg, %bb.az, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i, %bb.ak, %bb.aj, %.noexc102.i.i, %bb.ag, %bb.ae, %bb.ac, %bb.ab, %.lr.ph.i.i
  %i.ef = phi i32 [ %i.ea, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %i.ea, %.lr.ph.i.i ], [ %i.ea, %bb.ab ], [ %i.hp, %bb.by ], [ %i.ea, %bb.ac ], [ %i.ea, %bb.an ], [ %i.ea, %bb.as ], [ %i.ea, %bb.ar ], [ %i.ea, %bb.aq ], [ %i.ea, %bb.ap ], [ %i.ea, %bb.ao ], [ %i.ea, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i ], [ %i.ea, %bb.at ], [ %i.ea, %bb.ak ], [ %i.ea, %bb.ae ], [ %i.ea, %bb.aj ], [ %i.ea, %.noexc102.i.i ], [ %i.ea, %bb.ag ], [ %i.ea, %bb.az ], [ %i.ea, %bb.bg ], [ %i.ea, %bb.ca ], [ %i.ea, %_RNCNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s1_0Bf_.exit.i.i ], [ %i.ea, %bb.cn ], [ %i.ea, %bb.ci ], [ %i.ea, %bb.cj ], [ %i.ea, %bb.cm ], [ %i.ea, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i ], [ %i.ea, %bb.bb ], [ %i.ea, %bb.bc ] ; 2 uses
  %.val.i.i129655.i.i = phi i32 [ %.val1.i.i138.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %.val1.i.i138.i.i, %.lr.ph.i.i ], [ %.val1.i.i138.i.i, %bb.ab ], [ %i.hp, %bb.by ], [ %.val1.i.i138.i.i, %bb.ac ], [ %.val1.i.i138.i.i, %bb.an ], [ %.val1.i.i138.i.i, %bb.as ], [ %.val1.i.i138.i.i, %bb.ar ], [ %.val1.i.i138.i.i, %bb.aq ], [ %.val1.i.i138.i.i, %bb.ap ], [ %.val1.i.i138.i.i, %bb.ao ], [ %.val1.i.i138.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i ], [ %.val1.i.i138.i.i, %bb.at ], [ %.val1.i.i138.i.i, %bb.ak ], [ %.val1.i.i138.i.i, %bb.ae ], [ %.val1.i.i138.i.i, %bb.aj ], [ %.val1.i.i138.i.i, %.noexc102.i.i ], [ %.val1.i.i138.i.i, %bb.ag ], [ %.val1.i.i138.i.i, %bb.az ], [ %.val1.i.i138.i.i, %bb.bg ], [ %.val1.i.i138.i.i, %bb.ca ], [ %.val1.i.i138.i.i, %_RNCNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s1_0Bf_.exit.i.i ], [ %.val1.i.i138.i.i, %bb.cn ], [ %.val1.i.i138.i.i, %bb.ci ], [ %.val1.i.i138.i.i, %bb.cj ], [ %.val1.i.i138.i.i, %bb.cm ], [ %.val1.i.i138.i.i, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i ], [ %.val1.i.i138.i.i, %bb.bb ], [ %.val1.i.i138.i.i, %bb.bc ] ; 2 uses
  %.val4.i.i135465.i.i = phi ptr [ %.val4.i.i135466.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %.val4.i.i135466.i.i, %.lr.ph.i.i ], [ %.val4.i.i135466.i.i, %bb.ab ], [ %i.hu, %bb.by ], [ %.val4.i.i135466.i.i, %bb.ac ], [ %.val4.i.i135466.i.i, %bb.an ], [ %.val4.i.i135466.i.i, %bb.as ], [ %.val4.i.i135466.i.i, %bb.ar ], [ %.val4.i.i135466.i.i, %bb.aq ], [ %.val4.i.i135466.i.i, %bb.ap ], [ %.val4.i.i135466.i.i, %bb.ao ], [ %.val4.i.i135466.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i ], [ %.val4.i.i135466.i.i, %bb.at ], [ %.val4.i.i135466.i.i, %bb.ak ], [ %.val4.i.i135466.i.i, %bb.ae ], [ %.val4.i.i135466.i.i, %bb.aj ], [ %.val4.i.i135466.i.i, %.noexc102.i.i ], [ %.val4.i.i135466.i.i, %bb.ag ], [ %.val4.i.i135466.i.i, %bb.az ], [ %.val4.i.i135466.i.i, %bb.bg ], [ %.val4.i.i135466.i.i, %bb.ca ], [ %.val4.i.i135466.i.i, %_RNCNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s1_0Bf_.exit.i.i ], [ %.val4.i.i135466.i.i, %bb.cn ], [ %.val4.i.i135466.i.i, %bb.ci ], [ %.val4.i.i135466.i.i, %bb.cj ], [ %.val4.i.i135466.i.i, %bb.cm ], [ %.val4.i.i135466.i.i, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i ], [ %.val4.i.i135466.i.i, %bb.bb ], [ %.val4.i.i135466.i.i, %bb.bc ] ; 3 uses
  %i.eg = phi i32 [ %.val1.i.i138.i.i.a, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %.val1.i.i138.i.i.a, %.lr.ph.i.i ], [ %.val1.i.i138.i.i.a, %bb.ab ], [ %i.hr, %bb.by ], [ %.val1.i.i138.i.i.a, %bb.ac ], [ %.val1.i.i138.i.i.a, %bb.an ], [ %.val1.i.i138.i.i.a, %bb.as ], [ %.val1.i.i138.i.i.a, %bb.ar ], [ %.val1.i.i138.i.i.a, %bb.aq ], [ %.val1.i.i138.i.i.a, %bb.ap ], [ %.val1.i.i138.i.i.a, %bb.ao ], [ %.val1.i.i138.i.i.a, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i ], [ %.val1.i.i138.i.i.a, %bb.at ], [ %.val1.i.i138.i.i.a, %bb.ak ], [ %.val1.i.i138.i.i.a, %bb.ae ], [ %.val1.i.i138.i.i.a, %bb.aj ], [ %.val1.i.i138.i.i.a, %.noexc102.i.i ], [ %.val1.i.i138.i.i.a, %bb.ag ], [ %.val1.i.i138.i.i.a, %bb.az ], [ %.val1.i.i138.i.i.a, %bb.bg ], [ %.val1.i.i138.i.i.a, %bb.ca ], [ %.val1.i.i138.i.i.a, %_RNCNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s1_0Bf_.exit.i.i ], [ %.val1.i.i138.i.i.a, %bb.cn ], [ %.val1.i.i138.i.i.a, %bb.ci ], [ %.val1.i.i138.i.i.a, %bb.cj ], [ %.val1.i.i138.i.i.a, %bb.cm ], [ %.val1.i.i138.i.i.a, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i ], [ %.val1.i.i138.i.i.a, %bb.bb ], [ %.val1.i.i138.i.i.a, %bb.bc ] ; 2 uses
  %i.eh = phi i64 [ %i.eb, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %i.eb, %.lr.ph.i.i ], [ %i.eb, %bb.ab ], [ %i.ij, %bb.by ], [ %i.eb, %bb.ac ], [ %i.eb, %bb.an ], [ %i.eb, %bb.as ], [ %i.eb, %bb.ar ], [ %i.eb, %bb.aq ], [ %i.eb, %bb.ap ], [ %i.eb, %bb.ao ], [ %i.eb, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i ], [ %i.eb, %bb.at ], [ %i.eb, %bb.ak ], [ %i.eb, %bb.ae ], [ %i.eb, %bb.aj ], [ %i.eb, %.noexc102.i.i ], [ %i.eb, %bb.ag ], [ %i.eb, %bb.az ], [ %i.eb, %bb.bg ], [ %i.eb, %bb.ca ], [ %i.eb, %_RNCNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s1_0Bf_.exit.i.i ], [ %i.eb, %bb.cn ], [ %i.eb, %bb.ci ], [ %i.eb, %bb.cj ], [ %i.eb, %bb.cm ], [ %i.eb, %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i ], [ %i.eb, %bb.bb ], [ %i.eb, %bb.bc ] ; 2 uses
  %i.ei = icmp eq ptr %i.ec, %i.dy
  br i1 %i.ei, label %.loopexit.i.i, label %.lr.ph.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.011.0434.i.i, i64 16
  %i.ek = load i8, ptr %i.ej, align 8, !range !31, !noalias !15273, !noundef !11
  switch i8 %i.ek, label %.backedge.i.i [
    i8 0, label %bb.ac
    i8 1, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.011.0434.i.i, i64 17
  %i.em = load i8, ptr %i.el, align 1, !range !14, !noalias !15273, !noundef !11
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %.backedge.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.013.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.0434.i.i, i64 20
  %.sroa.013.0.i.i = load i32, ptr %.sroa.013.0.in.i.i, align 4, !noalias !15273, !noundef !11 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.011.0434.i.i, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !noalias !15273, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !15286)
  %i.eq = load ptr, ptr %i.cn, align 8, !alias.scope !15286, !noalias !15287, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.er = zext i32 %i.ep to i64                   ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noalias !15288, !noundef !11 ; 2 uses
  %i.eu = icmp ugt i64 %i.et, %i.er
  br i1 %i.eu, label %bb.ae, label %.invoke.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !15288, !nonnull !11, !noundef !11
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.er ; 8 uses
  %i.ey = load i32, ptr %i.ex, align 8, !range !51, !noalias !15288, !noundef !11 ; 4 uses
  %i.ez = icmp ne i32 %i.ey, 6
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nsw i32 %i.ey, -3
  %.inv.i.i.i = icmp samesign ult i32 %i.ey, 3
  %narrow.i.i.i = select i1 %.inv.i.i.i, i32 3, i32 %i.fa
  switch i32 %narrow.i.i.i, label %.backedge.i.i [
    i32 3, label %bb.af
    i32 11, label %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i
  ]

bb.af:                                            ; preds = %bb.ae
  %i.fb = icmp eq i32 %i.ey, 1
  br i1 %i.fb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !15288, !nonnull !11, !noundef !11
  %i.fe = load i32, ptr %i.fd, align 8, !range !49, !noalias !15288, !noundef !11
  %.not.i100.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i100.i.i, label %bb.ah, label %.backedge.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15289
  invoke void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path8segments(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ex)
          to label %.noexc102.i.i unwind label %.thread333.loopexit.i.i, !noalias !15273

.noexc102.i.i:                                    ; preds = %bb.ah
  %i.ff = load i64, ptr %i.cp, align 8, !noalias !15289, !noundef !11
  %i.fg = icmp ugt i64 %i.ff, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15289
  br i1 %i.fg, label %.backedge.i.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc102.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15289
  %i.fh = load ptr, ptr %i.cq, align 8, !alias.scope !15286, !noalias !15287, !nonnull !11, !align !12, !noundef !11
  %i.fi = load ptr, ptr %i.cr, align 8, !alias.scope !15286, !noalias !15287, !nonnull !11, !noundef !11
  %i.fj = load ptr, ptr %i.cs, align 8, !alias.scope !15286, !noalias !15287, !nonnull !11, !align !12, !noundef !11
  invoke void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver23resolve_path_in_type_ns(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fh, ptr noundef nonnull %i.fi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.fj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ex)
          to label %.noexc103.i.i unwind label %.thread333.loopexit.i.i, !noalias !15273

.noexc103.i.i:                                    ; preds = %bb.ai
  %i.fk = load i64, ptr %i.o, align 8, !range !29, !noalias !15289, !noundef !11
  %cond.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %cond.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc103.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15289
  br label %.backedge.i.i

bb.ak:                                            ; preds = %.noexc103.i.i
  %.sroa.0.0.copyload.i98.i.i = load i32, ptr %i.ct, align 8, !noalias !15289 ; 3 uses
  %.sroa.3.i.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !noalias !15289
  %.sroa.3.i.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !15289
  %.sroa.3.i.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx.i.sroa_idx.i.i, align 4, !noalias !15289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15289
  %i.fl = icmp ne i32 %.sroa.0.0.copyload.i98.i.i, 10
  call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp ult i32 %.sroa.0.0.copyload.i98.i.i, 9
  br i1 %i.fm, label %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i, label %.backedge.i.i

_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i: ; preds = %bb.ae
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.0213.0.copyload.i.i = load i32, ptr %i.fn, align 4, !noalias !15290 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.12.0.copyload.i.i = load i32, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !15290
  %.sroa.14214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %.sroa.14214.0.copyload.i.i = load i32, ptr %.sroa.14214.0..sroa_idx.i.i, align 4, !noalias !15290
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %.sroa.15.0.copyload.i.i = load i32, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !15290
  %.not57.i.i = icmp eq i32 %.sroa.0213.0.copyload.i.i, -1
  br i1 %.not57.i.i, label %.backedge.i.i, label %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i

_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i: ; preds = %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i, %bb.ak
  %.sroa.0213.0350.i.i = phi i32 [ %.sroa.0213.0.copyload.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %.sroa.0.0.copyload.i98.i.i, %bb.ak ] ; 3 uses
  %.sroa.12.0349.i.i = phi i32 [ %.sroa.12.0.copyload.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %.sroa.3.i.sroa.0.0.copyload.i.i, %bb.ak ]
  %.sroa.14214.0348.i.i = phi i32 [ %.sroa.14214.0.copyload.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %.sroa.3.i.sroa.4.0.copyload.i.i, %bb.ak ] ; 7 uses
  %.sroa.15.0347.i.i = phi i32 [ %.sroa.15.0.copyload.i.i, %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.i.i ], [ %.sroa.3.i.sroa.5.0.copyload.i.i, %bb.ak ]
  %i.fo = icmp samesign ugt i32 %.sroa.0213.0350.i.i, 2
  %i.fp = zext nneg i32 %.sroa.0213.0350.i.i to i64
  %i.fq = add nsw i64 %i.fp, -2
  %i.fr = select i1 %i.fo, i64 %i.fq, i64 0
  %i.fs = icmp eq i64 %i.fr, %i.cx
  br i1 %i.fs, label %bb.al, label %.backedge.i.i

bb.al:                                            ; preds = %_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext19lower_ty_only_param.exit.thread341.i.i
  switch i64 %i.cx, label %bb.am [
    i64 0, label %bb.an
    i64 1, label %bb.ao
    i64 2, label %bb.ap
    i64 3, label %bb.aq
    i64 4, label %bb.ar
    i64 5, label %bb.as
    i64 6, label %bb.at
  ]

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 %i.cu)
  %i.ft = icmp eq i32 %.sroa.0213.0350.i.i, %.sroa.01.0.copyload.i.i
  %i.fu = icmp eq i32 %.sroa.14214.0348.i.i, %.sroa.6.0.copyload.i.i
  %or.cond793.i.i = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond793.i.i, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.backedge.i.i

default.unreachable:                              ; preds = %bb.bi, %bb.cc, %bb.bm
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.fv = icmp eq i32 %.sroa.14214.0348.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.fv, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.backedge.i.i

bb.ap:                                            ; preds = %bb.al
  %i.fw = icmp eq i32 %.sroa.14214.0348.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.fw, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.backedge.i.i

bb.aq:                                            ; preds = %bb.al
  %i.fx = icmp eq i32 %.sroa.14214.0348.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.fx, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.backedge.i.i

bb.ar:                                            ; preds = %bb.al
  %i.fy = icmp eq i32 %.sroa.14214.0348.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.fy, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.backedge.i.i

bb.as:                                            ; preds = %bb.al
  %i.fz = icmp eq i32 %.sroa.14214.0348.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.fz, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.backedge.i.i

bb.at:                                            ; preds = %bb.al
  %i.ga = icmp eq i32 %.sroa.14214.0348.i.i, %.sroa.6.0.copyload.i.i
  br i1 %i.ga, label %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i, label %.backedge.i.i

_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sroa.0.0.shrunk.i.i.i = icmp eq i32 %.sroa.12.0349.i.i, %.sroa.5.0.copyload.i.i
  %.not58.i.i = icmp eq i32 %.sroa.15.0347.i.i, %i.bz
  %or.cond80.i.i = select i1 %.sroa.0.0.shrunk.i.i.i, i1 %.not58.i.i, i1 false
  br i1 %or.cond80.i.i, label %bb.au, label %.backedge.i.i

bb.au:                                            ; preds = %_RNvXs8E_CsileJQcQObtj_7hir_defNtB6_12GenericDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !15270
  %i.gb = load ptr, ptr %i.cn, align 8, !noalias !15270, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  %.val81.i.i = load i64, ptr %i.gc, align 8, !noalias !15273, !noundef !11 ; 2 uses
  %i.gd = zext i32 %.sroa.013.0.i.i to i64        ; 3 uses
  %i.ge = icmp ugt i64 %.val81.i.i, %i.gd
  br i1 %i.ge, label %bb.av, label %.invoke.i.i

bb.av:                                            ; preds = %bb.au
  %i.gf = getelementptr i8, ptr %i.gb, i64 8
  %.val.i.i = load ptr, ptr %i.gf, align 8, !noalias !15273, !nonnull !11, !noundef !11
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %i.gd ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !range !51, !noalias !15291, !noundef !11 ; 2 uses
  %i.gi = icmp ne i32 %i.gh, 6
  call void @llvm.assume(i1 %i.gi)
  %.inv.i104.i.i = icmp samesign ult i32 %i.gh, 3
  br i1 %.inv.i104.i.i, label %_RNvXsb_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtNtB7_3hir8type_ref6PathIdE5index.exit.i.i, label %bb.aw, !prof !18

.invoke.i.i:                                      ; preds = %bb.au, %bb.ad
  %i.gj = phi i64 [ %i.er, %bb.ad ], [ %i.gd, %bb.au ]
  %i.gk = phi i64 [ %i.et, %bb.ad ], [ %.val81.i.i, %bb.au ]
  %i.gl = phi ptr [ @218, %bb.ad ], [ @170, %bb.au ]
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  store i64 %i.eb, ptr %i.aa, align 8, !noalias !15270
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef %i.gk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #47
          to label %.cont.i.i unwind label %.thread333.loopexit.split-lp.i.i, !noalias !15273

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.aw:                                            ; preds = %bb.av
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  store i64 %i.eb, ptr %i.aa, align 8, !noalias !15270
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @679, ptr noundef nonnull inttoptr (i64 167 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #47
          to label %.noexc106.i.i unwind label %.thread333.loopexit.split-lp.i.i, !noalias !15273

.noexc106.i.i:                                    ; preds = %bb.aw
  unreachable

_RNvXsb_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtNtB7_3hir8type_ref6PathIdE5index.exit.i.i: ; preds = %bb.av
  invoke void @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver29resolve_path_in_type_ns_fully(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gg)
          to label %bb.ax unwind label %.thread333.loopexit.i.i, !noalias !15273

bb.ax:                                            ; preds = %_RNvXsb_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStoreINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtNtB7_3hir8type_ref6PathIdE5index.exit.i.i
  %i.gm = load i32, ptr %i.z, align 4, !range !57, !noalias !15270, !noundef !11 ; 3 uses
  %.not59.i.i = icmp eq i32 %i.gm, -1
  br i1 %.not59.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gn = icmp ne i32 %i.gm, 10
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp eq i32 %i.gm, 16
  br i1 %i.go, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15270
  br label %.backedge.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.gp = load i32, ptr %i.cy, align 4, !range !45, !noalias !15270, !noundef !11 ; 2 uses
  %i.gq = load i32, ptr %i.cz, align 4, !noalias !15270, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15292
  store i32 %i.gp, ptr %i.n, align 4, !noalias !15293
  store i32 %i.gq, ptr %i.da, align 4, !noalias !15293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15293
  store ptr %1, ptr %i.m, align 8, !noalias !15293
  store ptr %2, ptr %i.db, align 8, !noalias !15293
  store ptr %1, ptr %i.dc, align 8, !noalias !15293
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !15293
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !15293
  %i.gr = invoke noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCs8K4cjrcxBsw_6hir_ty5lower15SupertraitsInfoDNtNtB1Y_2db11HirDatabaseEL_NCNvNvMs8_B1W_B1U_5query16supertraits_info0E0B1T_EB1Y_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @267, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.bb unwind label %.thread333.loopexit.i.i, !noalias !15273 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15292
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !15273, !nonnull !11, !noundef !11 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !15273, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.gv, 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx
  %.not.not.not.i.not.i.i230 = icmp eq i64 %i.gv, 0
  br i1 %.not.not.not.i.not.i.i230, label %.backedge.i.i, label %.lr.ph

bb.bc:                                            ; preds = %.lr.ph
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.gx, %i.gw
  br i1 %.not.not.not.i.not.i.i, label %.backedge.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %bb.bc
  %i.gy = phi ptr [ %i.gx, %bb.bc ], [ %i.gt, %bb.bb ] ; 2 uses
  %.val2.i108.i.i = load ptr, ptr %i.gy, align 8, !noalias !15294, !nonnull !11, !noundef !11
  %i.gz = icmp eq ptr %.val2.i108.i.i, %i.bf
  br i1 %i.gz, label %bb.bd, label %bb.bc

bb.bd:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15270
  invoke fastcc void @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext25lower_trait_ref_from_path(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.y, ptr noalias nofree noundef align 8 dereferenceable(272) %i.ae, i32 noundef %.sroa.013.0.i.i, ptr noundef nonnull %i.bw)
          to label %bb.be unwind label %.thread333.loopexit.i.i, !noalias !15273

bb.be:                                            ; preds = %bb.bd
  %i.ha = load i32, ptr %i.y, align 8, !noalias !15270, !noundef !11
  %.not60.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not60.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hb = load ptr, ptr %i.dd, align 8, !noalias !15270, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15270
  store i32 %i.gp, ptr %i.de, align 4, !noalias !15270
  store i32 %i.gq, ptr %i.df, align 4, !noalias !15270
  store i32 7, ptr %i.x, align 4, !noalias !15270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.x, i64 12, i1 false), !noalias !15270
  store i32 0, ptr %.sroa.446.0..sroa_idx.i.i, align 4, !noalias !15270
  %i.hc = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
          to label %bb.bh unwind label %.thread333.loopexit.i.i, !noalias !15273

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15270
  br label %.backedge.i.i

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15295
  store ptr %1, ptr %i.l, align 8, !noalias !15295
  store ptr %2, ptr %i.dg, align 8, !noalias !15295
  store ptr %1, ptr %i.dh, align 8, !noalias !15295
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i109.i.i, align 8, !noalias !15295
  store ptr %i.x, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !15295
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !15295
  store ptr %i.hc, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !15295
  %i.hd = invoke noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionDNtNtB1Y_2db11HirDatabaseEL_NCNvB1W_39resolve_type_param_assoc_type_shorthand0E0B1T_EB1Y_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @267, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.l)
          to label %bb.bi unwind label %.thread333.loopexit.i.i, !noalias !15273 ; 6 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15270
  %i.he = load i64, ptr %i.hd, align 8, !range !38, !noalias !15273, !noundef !11
  switch i64 %i.he, label %default.unreachable [
    i64 0, label %bb.bj
    i64 1, label %bb.bk
    i64 2, label %bb.ci
    i64 3, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.pre.i.i = load i32, ptr %i.hf, align 8, !range !45, !alias.scope !15296, !noalias !15297
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bi
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hh = load i32, ptr %i.hg, align 8, !noalias !15273, !noundef !11 ; 2 uses
  %.not61.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not61.i.i, label %bb.bm, label %bb.bp

bb.bl:                                            ; preds = %bb.bi
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  store i64 3, ptr %i.am, align 8, !alias.scope !15268, !noalias !15298
  br label %bb.cc

bb.bm:                                            ; preds = %bb.bk
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  %i.hi = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.0.2.i.i, ptr %i.hi, align 8, !alias.scope !15268, !noalias !15298
  %.sroa.4235.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %.sroa.14.0.i.i, ptr %.sroa.4235.0..sroa_idx.i.i, align 4, !alias.scope !15268, !noalias !15298
  %.sroa.5236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.16.2.i.i, ptr %.sroa.5236.0..sroa_idx.i.i, align 8, !alias.scope !15268, !noalias !15298
  store i64 1, ptr %i.am, align 8, !alias.scope !15268, !noalias !15298
  switch i64 %i.eb, label %default.unreachable [
    i64 -1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit.i.i
    i64 0, label %bb.bn
    i64 1, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15299
  %i.hj = getelementptr inbounds nuw i8, ptr %.val4.i.i135466.i.i, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !15300, !noundef !11
  store ptr %.val4.i.i135466.i.i, ptr %i.k, align 8, !noalias !15299
  %i.hl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.hk, ptr %i.hl, align 8, !noalias !15299
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc113.i.i unwind label %bb.s, !noalias !15273

.noexc113.i.i:                                    ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15299
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit.i.i

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15299
  %i.hm = getelementptr inbounds nuw i8, ptr %.val4.i.i135466.i.i, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !15300, !noundef !11
  store ptr %.val4.i.i135466.i.i, ptr %i.j, align 8, !noalias !15299
  %i.ho = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.hn, ptr %i.ho, align 8, !noalias !15299
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.noexc114.i.i unwind label %bb.s, !noalias !15273

.noexc114.i.i:                                    ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15299
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit.i.i: ; preds = %.noexc114.i.i, %.noexc113.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15270
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit154.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit154.i.i: ; preds = %.noexc153.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit143.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5lower17TyLoweringContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.ae)
          to label %bb.cq unwind label %bb.j, !noalias !15273

bb.bp:                                            ; preds = %bb.bk, %bb.bj
  %i.hp = phi i32 [ %.pre.i.i, %bb.bj ], [ %i.hh, %bb.bk ] ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.hr = load i32, ptr %i.hq, align 4, !alias.scope !15296, !noalias !15297, !noundef !11 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !alias.scope !15296, !noalias !15297, !nonnull !11, !noundef !11
  %i.hu = invoke noundef nonnull ptr @_RINvMsq_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_11EarlyBinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1b_11generic_arg11GenericArgsE11instantiateB26_EB1d_(ptr noundef nonnull %i.ht, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.r, ptr noundef nonnull %i.hb)
          to label %bb.bq unwind label %.thread333.loopexit.i.i, !noalias !15273 ; 10 uses

bb.bq:                                            ; preds = %bb.bp
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !noalias !15273
  %i.hw = icmp slt i64 %i.hv, 0
  br i1 %i.hw, label %bb.br, label %bb.bs, !prof !16

bb.br:                                            ; preds = %bb.bq
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  store i64 %i.eb, ptr %i.aa, align 8, !noalias !15270
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #50
          to label %.noexc115.i.i unwind label %.thread333.loopexit.split-lp.i.i, !noalias !15273

.noexc115.i.i:                                    ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  br i1 %.not62.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hx = icmp eq i32 %.sroa.14.0.i.i, %i.hr
  %i.hy = icmp eq i32 %.sroa.0.2.i.i, %i.hp
  %.sroa.0.0.i.i.i.i.i = and i1 %i.hy, %i.hx
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.i.i, label %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.thread.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.hz = icmp eq i64 %i.eb, -1
  br i1 %i.hz, label %bb.by, label %bb.bz

_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.i.i: ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.2.i.i) ]
  %i.ia = icmp eq ptr %.sroa.16.2.i.i, %i.hu
  br i1 %i.ia, label %bb.bx, label %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.thread.i.i

_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.thread.i.i: ; preds = %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.i.i, %bb.bt
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  store i64 %i.eb, ptr %i.aa, align 8, !noalias !15270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.2.i.i) ]
  %i.ib = atomicrmw add ptr %.sroa.16.2.i.i, i64 1 monotonic, align 8, !noalias !15301
  %i.ic = icmp slt i64 %i.ib, 0
  br i1 %i.ic, label %bb.bv, label %_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB9_.exit.i.i, !prof !16

bb.bv:                                            ; preds = %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.thread.i.i
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #50
          to label %.noexc125.i.i unwind label %bb.cg, !noalias !15273

.noexc125.i.i:                                    ; preds = %bb.bv
  unreachable

_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB9_.exit.i.i: ; preds = %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.thread.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.0.2.i.i, ptr %i.id, align 8, !alias.scope !15268, !noalias !15298
  %.sroa.4258.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %.sroa.14.0.i.i, ptr %.sroa.4258.0..sroa_idx.i.i, align 4, !alias.scope !15268, !noalias !15298
  %.sroa.5259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.16.2.i.i, ptr %.sroa.5259.0..sroa_idx.i.i, align 8, !alias.scope !15268, !noalias !15298
  br label %bb.bw

bb.bw:                                            ; preds = %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit137.thread.i.i, %_RNvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB9_.exit.i.i
  store i64 1, ptr %i.am, align 8, !alias.scope !15268, !noalias !15298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15270
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !noalias !15273, !noundef !11
  store ptr %i.hu, ptr %i.i, align 8, !noalias !15270
  %i.ig = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.if, ptr %i.ig, align 8, !noalias !15270
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.cb unwind label %.thread333.loopexit.split-lp.i.i, !noalias !15273

bb.bx:                                            ; preds = %bb.bz, %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15270
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !15273, !noundef !11
  store ptr %i.hu, ptr %i.h, align 8, !noalias !15270
  store i64 %i.ii, ptr %i.dm, align 8, !noalias !15270
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.ca unwind label %.thread333.loopexit.i.i, !noalias !15273

bb.by:                                            ; preds = %bb.bu
  %i.ij = load i64, ptr %i.hd, align 8, !range !38, !noalias !15273, !noundef !11 ; 2 uses
  %switch.i.i = icmp samesign ult i64 %i.ij, 2
  br i1 %switch.i.i, label %.backedge.i.i, label %bb.cf, !prof !15302

_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit137.thread.i.i: ; preds = %bb.bz
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  store i64 %i.eb, ptr %i.aa, align 8, !noalias !15270
  %i.ik = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 0, ptr %i.ik, align 8, !alias.scope !15268, !noalias !15298
  br label %bb.bw

bb.bz:                                            ; preds = %bb.bu
  %i.il = icmp eq i32 %.val1.i.i138.i.i.a, %i.hr
  %i.im = icmp eq i32 %.val1.i.i138.i.i, %i.hp
  %.sroa.0.0.i.i.i133.i.i = select i1 %i.il, i1 %i.im, i1 false
  %i.in = icmp eq ptr %.val4.i.i135466.i.i, %i.hu
  %or.cond373.i.i = select i1 %.sroa.0.0.i.i.i133.i.i, i1 %i.in, i1 false
  br i1 %or.cond373.i.i, label %bb.bx, label %_RNvXsa_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binderINtB5_17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB7_11generic_arg17StoredGenericArgsEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB9_.exit137.thread.i.i

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15270
  br label %.backedge.i.i

bb.cb:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15270
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bl
  switch i64 %i.eb, label %default.unreachable [
    i64 -1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit143.i.i
    i64 0, label %bb.cd
    i64 1, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15303
  %i.io = getelementptr inbounds nuw i8, ptr %.val4.i.i135466.i.i, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !noalias !15304, !noundef !11
  store ptr %.val4.i.i135466.i.i, ptr %i.g, align 8, !noalias !15303
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ip, ptr %i.iq, align 8, !noalias !15303
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc141.i.i unwind label %.thread319.i.i, !noalias !15273

.noexc141.i.i:                                    ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15303
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit143.i.i

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15303
  %i.ir = getelementptr inbounds nuw i8, ptr %.val4.i.i135466.i.i, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !noalias !15304, !noundef !11
  store ptr %.val4.i.i135466.i.i, ptr %i.f, align 8, !noalias !15303
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.is, ptr %i.it, align 8, !noalias !15303
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc142.i.i unwind label %.thread319.i.i, !noalias !15273

.noexc142.i.i:                                    ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15303
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit143.i.i

bb.cf:                                            ; preds = %bb.by
  store i32 %i.ea, ptr %i.dj, align 8, !noalias !15270
  store i32 %.val1.i.i138.i.i.a, ptr %i.dk, align 4, !noalias !15270
  store ptr %.val4.i.i135466.i.i, ptr %i.dl, align 8, !noalias !15270
  store i64 -1, ptr %i.aa, align 8, !noalias !15270
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #50
          to label %bb.o unwind label %bb.cg, !noalias !15273

bb.cg:                                            ; preds = %bb.cf, %bb.bv
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15270
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !15273, !noundef !11
  store ptr %i.hu, ptr %i.e, align 8, !noalias !15270
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.iw, ptr %i.ix, align 8, !noalias !15270
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtBG_11generic_arg17StoredGenericArgsEEEBI_.exit151.i.i unwind label %bb.ch, !noalias !15273

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtBG_11generic_arg17StoredGenericArgsEEEBI_.exit151.i.i: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15270
  br label %.thread325.i.i

bb.ch:                                            ; preds = %bb.cy, %bb.cx, %.thread325.i.i, %bb.cg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i, %bb.i, %bb.f
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !15273
  unreachable

bb.ci:                                            ; preds = %bb.bi
  %i.iz = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !15270
  %i.ja = icmp ult i64 %i.iz, 5
  br i1 %i.ja, label %bb.cj, label %.backedge.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.jb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_010___CALLSITE, i64 16) monotonic, align 8, !noalias !15270 ; 3 uses
  switch i8 %i.jb, label %bb.ck [
    i8 0, label %.backedge.i.i
    i8 1, label %bb.cl
    i8 2, label %bb.cl
  ], !prof !28

bb.ck:                                            ; preds = %bb.cj
  %i.jc = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_010___CALLSITE)
          to label %bb.cm unwind label %.thread333.loopexit.i.i, !noalias !15273 ; 2 uses

bb.cl:                                            ; preds = %bb.cj, %bb.cm, %bb.cj
  %.sroa.022.0.i.i = phi i8 [ %i.jc, %bb.cm ], [ %i.jb, %bb.cj ], [ %i.jb, %bb.cj ]
  %i.jd = load ptr, ptr @_RNvNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_010___CALLSITE, align 8, !noalias !15270, !nonnull !11, !align !12, !noundef !11
  %i.je = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jd, i8 noundef %.sroa.022.0.i.i)
          to label %bb.cn unwind label %.thread333.loopexit.i.i, !noalias !15273

bb.cm:                                            ; preds = %bb.ck
  %i.jf = icmp eq i8 %i.jc, 0
  br i1 %i.jf, label %.backedge.i.i, label %bb.cl

bb.cn:                                            ; preds = %bb.cl
  br i1 %i.je, label %bb.co, label %.backedge.i.i

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15270
  %i.jg = load ptr, ptr @_RNvNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_010___CALLSITE, align 8, !noalias !15270, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !15270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15270
  store <2 x ptr> <ptr @173, ptr inttoptr (i64 99 to ptr)>, ptr %i.t, align 16, !noalias !15270
  store ptr %i.t, ptr %i.u, align 8, !noalias !15270
  store ptr @151, ptr %i.di, align 8, !noalias !15270
  store i64 1, ptr %i.v, align 8, !noalias !15270
  store ptr %i.u, ptr %.sroa.024.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15270
  store i64 1, ptr %.sroa.024.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15270
  store ptr %i.jh, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15270
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %_RNCNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s1_0Bf_.exit.i.i unwind label %.thread333.loopexit.i.i, !noalias !15273

_RNCNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBb_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s1_0Bf_.exit.i.i: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !15270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15270
  br label %.backedge.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit143.i.i: ; preds = %.noexc142.i.i, %.noexc141.i.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15270
  br i1 %.not62.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit154.i.i, label %bb.cp

bb.cp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_.exit143.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.2.i.i) ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.16.2.i.i, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !15273, !noundef !11
  store ptr %.sroa.16.2.i.i, ptr %i.d, align 8, !noalias !15270
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.jj, ptr %i.jk, align 8, !noalias !15270
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc153.i.i unwind label %bb.n, !noalias !15273

.noexc153.i.i:                                    ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15270
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit154.i.i

bb.cq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit154.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15270
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i unwind label %bb.cr, !noalias !15273

bb.cr:                                            ; preds = %bb.cq
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %.body.i.i unwind label %bb.cs, !noalias !15273

bb.cs:                                            ; preds = %bb.cr
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !15273
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %bb.cq
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty.exit.i.i unwind label %bb.g, !noalias !15273

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !15270
  %i.jn = load i64, ptr %i.ag, align 8, !range !23, !alias.scope !15305, !noalias !15270, !noundef !11
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.dl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellNtNtCs8K4cjrcxBsw_6hir_ty8generics8GenericsEEB18_.exit169.sink.split.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellNtNtCs8K4cjrcxBsw_6hir_ty8generics8GenericsEEB18_.exit169.sink.split.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty.exit167.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty.exit.i.i
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.442.0..sroa_idx.i.i)
          to label %bb.dl unwind label %bb.dk, !noalias !15271

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEBF_.exit.i.i: ; preds = %._crit_edge.thread.i.i, %.noexc97.i.i, %bb.z
  %.sroa.6277.1.ph.i.i = phi i32 [ %.lcssa736738.i.i, %.noexc97.i.i ], [ %.lcssa736738.i.i, %bb.z ], [ %.sroa.0.2.i.i, %._crit_edge.thread.i.i ]
  %.sroa.0275.0.ph.i.i = phi i64 [ %.lcssa420.i.i, %.noexc97.i.i ], [ %.lcssa420.i.i, %bb.z ], [ 0, %._crit_edge.thread.i.i ]
  %.sroa.7280.sroa.0.1.ph.i.i = phi i32 [ %.sroa.6284.sroa.0.0.copyload582.i.i, %.noexc97.i.i ], [ %.sroa.6284.sroa.0.0.copyload582.i.i, %bb.z ], [ %.sroa.14.0.i.i, %._crit_edge.thread.i.i ]
  %.sroa.7280.sroa.5.1.ph.i.i = phi ptr [ %.val2.i.i647.i.i, %.noexc97.i.i ], [ %.val2.i.i647.i.i, %bb.z ], [ %.sroa.16.2.i.i, %._crit_edge.thread.i.i ]
  store i64 %.sroa.0275.0.ph.i.i, ptr %i.am, align 8, !alias.scope !15268, !noalias !15298
  %.sroa.6277.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.6277.1.ph.i.i, ptr %.sroa.6277.0..sroa_idx.i.i, align 8, !alias.scope !15268, !noalias !15298
  %.sroa.7280.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %.sroa.7280.sroa.0.1.ph.i.i, ptr %.sroa.7280.0..sroa_idx.i.i, align 4, !alias.scope !15268, !noalias !15298
  %.sroa.7280.sroa.5.0..sroa.7280.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sroa.7280.sroa.5.1.ph.i.i, ptr %.sroa.7280.sroa.5.0..sroa.7280.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !15268, !noalias !15298
  br label %bb.ct

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionE7or_elseNCNCNvNvXs0_NvBK_s6_1__NtB22_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s0_0EBM_.exit.i.i: ; preds = %._crit_edge.thread.i.i
  store i64 2, ptr %i.am, align 8, !alias.scope !15268, !noalias !15298
  br label %bb.ct

bb.ct:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionE7or_elseNCNCNvNvXs0_NvBK_s6_1__NtB22_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0s0_0EBM_.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEBF_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15270
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5lower17TyLoweringContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(272) %i.ae)
          to label %bb.cu unwind label %bb.j, !noalias !15273

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15270
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeEECs8K4cjrcxBsw_6hir_ty.exit.i163.i.i unwind label %bb.cv, !noalias !15273

bb.cv:                                            ; preds = %bb.cu
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %.body.i.i unwind label %bb.cw, !noalias !15273

bb.cw:                                            ; preds = %bb.cv
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !15273
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeEECs8K4cjrcxBsw_6hir_ty.exit.i163.i.i: ; preds = %bb.cu
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty.exit167.i.i unwind label %bb.g, !noalias !15273

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty.exit167.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeEECs8K4cjrcxBsw_6hir_ty.exit.i163.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !15270
  %i.jr = load i64, ptr %i.ag, align 8, !range !23, !alias.scope !15306, !noalias !15270, !noundef !11
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %bb.dl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellNtNtCs8K4cjrcxBsw_6hir_ty8generics8GenericsEEB18_.exit169.sink.split.i.i

.thread325.i.i:                                   ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtBG_11generic_arg17StoredGenericArgsEEEBI_.exit151.i.i, %.thread333.loopexit.split-lp.i.i, %.thread333.loopexit.i.i
  %.pn67328.i.i = phi { ptr, i32 } [ %i.iu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtBG_11generic_arg17StoredGenericArgsEEEBI_.exit151.i.i ], [ %lpad.loopexit.i.i, %.thread333.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.thread333.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower28AssocTypeShorthandResolutionEEB11_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #46
          to label %.thread302.i.i unwind label %bb.ch, !noalias !15273

.thread302.i.i:                                   ; preds = %.thread325.i.i, %.thread319.i.i
  %.pn67.pn309.i.i = phi { ptr, i32 } [ %lpad.thr_comm317.i.i, %.thread319.i.i ], [ %.pn67328.i.i, %.thread325.i.i ] ; 2 uses
  %.sroa.0.0308.i.i = phi i32 [ %.sroa.0.1.ph.i.i, %.thread319.i.i ], [ %.sroa.0.2.i.i, %.thread325.i.i ]
  %.sroa.16.0307.i.i = phi ptr [ %.sroa.16.1.ph.i.i, %.thread319.i.i ], [ %.sroa.16.2.i.i, %.thread325.i.i ] ; 3 uses
  %i.jt = icmp eq i32 %.sroa.0.0308.i.i, 0
  br i1 %i.jt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i, label %bb.cx

bb.cx:                                            ; preds = %.thread302.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15270
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0307.i.i) ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.16.0307.i.i, i64 8
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !15273, !noundef !11
  store ptr %.sroa.16.0307.i.i, ptr %i.c, align 8, !noalias !15270
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.jv, ptr %i.jw, align 8, !noalias !15270
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE10drop_innerB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc170.i.i unwind label %bb.ch, !noalias !15273

.noexc170.i.i:                                    ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15270
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6binder17StoredEarlyBinderTNtCsileJQcQObtj_7hir_def11TypeAliasIdNtNtB12_11generic_arg17StoredGenericArgsEEEEB14_.exit171.i.i

bb.cy:                                            ; preds = %bb.d
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsKj2_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %.body.i unwind label %bb.ch, !noalias !15273

bb.cz:                                            ; preds = %bb.a
  %i.jx = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !15265
  %i.jy = icmp ult i64 %i.jx, 3
  br i1 %i.jy, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.df, %bb.de, %bb.db, %bb.cz
  store i64 2, ptr %i.an, align 8, !noalias !15265
  %i.jz = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr null, ptr %i.jz, align 8, !noalias !15265
  br label %bb.dh

bb.db:                                            ; preds = %bb.cz
  %i.ka = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtB9_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_10___CALLSITE, i64 16) monotonic, align 8, !noalias !15265 ; 3 uses
  switch i8 %i.ka, label %bb.dc [
    i8 0, label %bb.da
    i8 1, label %bb.dd
    i8 2, label %bb.dd
  ], !prof !28

bb.dc:                                            ; preds = %bb.db
  %i.kb = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtB9_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_10___CALLSITE)
          to label %bb.de unwind label %.thread372.i, !noalias !15271 ; 2 uses

bb.dd:                                            ; preds = %bb.db, %bb.de, %bb.db
  %.sroa.010.0.i = phi i8 [ %i.kb, %bb.de ], [ %i.ka, %bb.db ], [ %i.ka, %bb.db ]
  %i.kc = load ptr, ptr @_RNvNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtB9_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_10___CALLSITE, align 8, !noalias !15265, !nonnull !11, !align !12, !noundef !11
  %i.kd = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kc, i8 noundef %.sroa.010.0.i)
          to label %bb.df unwind label %.thread372.i, !noalias !15271

bb.de:                                            ; preds = %bb.dc
  %.not.i = icmp eq i8 %i.kb, 0
  br i1 %.not.i, label %bb.da, label %bb.dd

bb.df:                                            ; preds = %bb.dd
  br i1 %i.kd, label %bb.dg, label %bb.da

bb.dg:                                            ; preds = %bb.df
  %i.ke = load ptr, ptr @_RNvNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtB9_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_10___CALLSITE, align 8, !noalias !15265, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !15265
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !15265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !15265
  store ptr %i.aw, ptr %i.aq, align 8, !noalias !15265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !15265
  store ptr %i.av, ptr %i.ap, align 8, !noalias !15265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !15265
  store ptr %i.au, ptr %i.ao, align 8, !noalias !15265
  store ptr %i.aq, ptr %i.ar, align 8, !noalias !15265
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @272, ptr %i.kg, align 8, !noalias !15265
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ap, ptr %i.kh, align 8, !noalias !15265
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @380, ptr %i.ki, align 8, !noalias !15265
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.ao, ptr %i.kj, align 8, !noalias !15265
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr @381, ptr %i.kk, align 8, !noalias !15265
  store i64 1, ptr %i.as, align 8, !noalias !15265
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ar, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !15265
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15265
  %i.kl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.kf, ptr %i.kl, align 8, !noalias !15265
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ke, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %bb.di unwind label %.thread372.i, !noalias !15271

bb.dh:                                            ; preds = %bb.di, %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.an, i64 40, i1 false), !noalias !15265
  %i.km = load i64, ptr %i.at, align 8, !range !29, !noalias !15265, !noundef !11
  %.not40.i = icmp eq i64 %i.km, 2
  br i1 %.not40.i, label %bb.c, label %bb.dj

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !15265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !15265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !15265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !15265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !15265
  br label %bb.dh

bb.dj:                                            ; preds = %bb.dh
  %i.kn = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.kn)
          to label %bb.c unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit63.i, !noalias !15271

bb.dk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellNtNtCs8K4cjrcxBsw_6hir_ty8generics8GenericsEEB18_.exit169.sink.split.i.i, %bb.c
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dk, %bb.cy, %bb.f, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ko, %bb.dk ], [ %lpad.thr_comm.split-lp.i.i, %bb.cy ], [ %.pn73.i.i, %bb.f ], [ %.pn73.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCNvNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty5lowers6_1__NtBL_54resolve_type_param_assoc_type_shorthand_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_0EBP_(ptr nonnull %i.bf) #46
          to label %bb.b unwind label %bb.ef, !noalias !15271

bb.dl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty.exit167.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellNtNtCs8K4cjrcxBsw_6hir_ty8generics8GenericsEEB18_.exit169.sink.split.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8K4cjrcxBsw_6hir_ty.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15265
  %i.kp = ptrtoint ptr %i.bf to i64
  %i.kq = and i64 %i.kp, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.kq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.kr = getelementptr i8, ptr %i.bf, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kr) ]
  %i.ks = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.kr)
          to label %.noexc51.i unwind label %bb.do, !noalias !15271

.noexc51.i:                                       ; preds = %bb.dm
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr inbounds i8, ptr %i.kr, i64 %i.kt ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15265
  store ptr %i.ku, ptr %i.b, align 8, !noalias !15265
  %i.kv = load atomic i64, ptr %i.ku acquire, align 8, !noalias !15271
  %i.kw = icmp eq i64 %i.kv, 2
  br i1 %i.kw, label %bb.dn, label %.noexc52.i, !prof !16

bb.dn:                                            ; preds = %.noexc51.i
end_hunk_3
