inline.NumInlined: 586
inline.NumDeleted: 268
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser5react:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 %i.gt, ptr %i.bi, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.gw, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  store i64 0, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.hc = load i64, ptr %5, align 8, !range !105, !noundef !9
  %i.hd = load i64, ptr %i.er, align 8, !noundef !9 ; 3 uses
  %i.he = icmp ult i64 %i.hd, 384307168202282326
  tail call void @llvm.assume(i1 %i.he)
  %.idx = mul nuw nsw i64 %i.hd, 24
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.hb, ptr %i.bh, align 8
  %.sroa.024.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  store ptr %i.hb, ptr %.sroa.024.sroa.2.0..sroa_idx, align 8
  %.sroa.024.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.hc, ptr %.sroa.024.sroa.3.0..sroa_idx, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.hf, ptr %.sroa.024.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.hg = icmp eq i64 %i.hd, 0
  br i1 %i.hg, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i.lr.ph: ; preds = %bb.ca
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit
  %i.hi = phi ptr [ %i.hb, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i.lr.ph ], [ %i.ik, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  store ptr %i.hj, ptr %.sroa.024.sroa.2.0..sroa_idx, align 8, !alias.scope !1214, !noalias !1215
  %.sroa.0.0.copyload1.i = load i64, ptr %i.hi, align 8, !noalias !1218 ; 2 uses
  %.not.i163 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i163, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge, label %bb.cc

.body171:                                         ; preds = %bb.cn, %bb.ch, %bb.cb, %bb.cq
  %.pn = phi { ptr, i32 } [ %i.ip, %bb.cq ], [ %i.hu, %bb.ch ], [ %i.hk, %bb.cb ], [ %i.ih, %bb.cn ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit unwind label %bb.cr

bb.cb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsdjW2DEjcQy2_12clap_builder.exit.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body171

bb.cc:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false), !noalias !1208
  %i.hl = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1208, !noalias !1219, !noundef !9 ; 2 uses
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1208, !noalias !1219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i64 %.sroa.0.0.copyload1.i, ptr %i.bg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.hn = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.ho = load i64, ptr %i.hh, align 8, !noundef !9
  %i.hp = invoke noundef zeroext i1 @_RNvXNtCsgQD0exT44A_8clap_lex3extNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB2_8OsStrExt8contains(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hn, i64 noundef %i.ho, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %.sroa.0.05.i)
          to label %bb.ce unwind label %bb.cq

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit167 unwind label %bb.cd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %.body171, %bb.cd
  %.pn.pn = phi { ptr, i32 } [ %i.hq, %bb.cd ], [ %.pn, %.body171 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #18
          to label %common.resume unwind label %bb.cr

bb.cd:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit167: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.ct

bb.ce:                                            ; preds = %bb.cc
  br i1 %i.hp, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.hr = load i64, ptr %i.gz, align 8, !alias.scope !1220, !noalias !1223, !noundef !9 ; 3 uses
  %i.hs = load i64, ptr %i.bi, align 8, !range !105, !alias.scope !1220, !noalias !1223, !noundef !9
  %i.ht = icmp eq i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.cg, label %bb.cp

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.cp unwind label %bb.ch, !noalias !1223

bb.ch:                                            ; preds = %bb.cg
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf) #18
          to label %.body171 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cj:                                            ; preds = %bb.ce
  %i.hw = load ptr, ptr %i.fd, align 8, !nonnull !9, !align !128, !noundef !9
  %i.hx = getelementptr i8, ptr %i.hw, i64 764
  %i.hy = load <2 x i32>, ptr %i.hx, align 4
  %i.hz = and <2 x i32> %i.hy, splat (i32 64)
  %i.ia = icmp ne <2 x i32> %i.hz, zeroinitializer ; 2 uses
  %i.ib = extractelement <2 x i1> %i.ia, i64 0
  %i.ic = extractelement <2 x i1> %i.ia, i64 1
  %.sroa.0.0.i168 = select i1 %i.ib, i1 true, i1 %i.ic
  %i.id = icmp eq i64 %.sroa.4.0, %i.hl
  %i.ie = and i1 %.sroa.0.0.i168, %i.fl
  %or.cond126 = select i1 %i.ie, i1 %i.id, i1 false
  br i1 %or.cond126, label %bb.cf, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.if = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.ig = load i64, ptr %i.hh, align 8, !noundef !9
  invoke void @_RNvXNtCsgQD0exT44A_8clap_lex3extNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB2_8OsStrExt5split(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.if, i64 noundef %i.ig, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %.sroa.0.05.i)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtCsgQD0exT44A_8clap_lex3ext5SplitNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB3b_6Parser5reacts_0EEB3f_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.be)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsdjW2DEjcQy2_12clap_builder.exit.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body171 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsdjW2DEjcQy2_12clap_builder.exit.i: ; preds = %bb.cm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit unwind label %bb.cb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsdjW2DEjcQy2_12clap_builder.exit.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ij = load ptr, ptr %.sroa.024.sroa.4.0..sroa_idx, align 8, !alias.scope !1225, !noalias !1215, !nonnull !9, !noundef !9
  %i.ik = load ptr, ptr %.sroa.024.sroa.2.0..sroa_idx, align 8, !alias.scope !1225, !noalias !1215, !nonnull !9, !noundef !9 ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ij
  br i1 %i.il, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i

bb.cp:                                            ; preds = %bb.cg, %bb.cf
  %i.im = load ptr, ptr %i.gy, align 8, !alias.scope !1220, !noalias !1223, !nonnull !9, !noundef !9
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %i.im, i64 %i.hr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.in, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  %i.io = add i64 %i.hr, 1
  store i64 %i.io, ptr %i.gz, align 8, !alias.scope !1220, !noalias !1223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit

bb.cq:                                            ; preds = %bb.cc, %bb.ck, %bb.cl
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.bg) #18
          to label %.body171 unwind label %bb.cr

bb.cr:                                            ; preds = %.body171, %.thread, %bb.hr, %.thread256, %bb.gr, %bb.gq, %.thread230, %bb.fk, %bb.fj, %bb.dx, %bb.dw, %bb.cq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cs:                                            ; preds = %bb.hd, %bb.fw, %bb.ep
  unreachable

bb.ct:                                            ; preds = %bb.bo, %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit167
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 668
  %i.is = load i8, ptr %i.ir, align 4, !range !835, !alias.scope !1228, !noundef !9 ; 2 uses
  %.not.i174 = icmp eq i8 %i.is, -1
  %9 = select i1 %.not.i174, i8 0, i8 %i.is
  switch i8 %9, label %default.unreachable [
    i8 0, label %bb.db
    i8 1, label %bb.ec
    i8 2, label %bb.cu
    i8 3, label %bb.cv
    i8 4, label %bb.cw
    i8 5, label %bb.cx
    i8 6, label %bb.cy
    i8 7, label %bb.cz
    i8 8, label %bb.da
  ]

default.unreachable:                              ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.it = load i64, ptr %i.er, align 8, !noundef !9 ; 2 uses
  %i.iu = icmp ult i64 %i.it, 384307168202282326
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp eq i64 %i.it, 0
  br i1 %i.iv, label %bb.ek, label %bb.el

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.iw = load i64, ptr %i.er, align 8, !noundef !9 ; 2 uses
  %i.ix = icmp ult i64 %i.iw, 384307168202282326
  call void @llvm.assume(i1 %i.ix)
  %i.iy = icmp eq i64 %i.iw, 0
  br i1 %i.iy, label %bb.fr, label %bb.fs

bb.cw:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.iz = load i64, ptr %i.er, align 8, !noundef !9 ; 2 uses
  %i.ja = icmp ult i64 %i.iz, 384307168202282326
  call void @llvm.assume(i1 %i.ja)
  %i.jb = icmp eq i64 %i.iz, 0
  br i1 %i.jb, label %bb.gx, label %bb.gw

bb.cx:                                            ; preds = %bb.ct
  %i.jc = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !9, !align !128, !noundef !9
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.je, i1 noundef zeroext %i.jc)
          to label %.noexc175 unwind label %bb.b

.noexc175:                                        ; preds = %bb.cx
  %i.jf = load ptr, ptr %i.jd, align 8, !nonnull !9, !align !128, !noundef !9
  %i.jg = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error12display_helpB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.hs unwind label %bb.b

bb.cy:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !nonnull !9, !align !128, !noundef !9
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.ji, i1 noundef zeroext false)
          to label %.noexc177 unwind label %bb.b

.noexc177:                                        ; preds = %bb.cy
  %i.jj = load ptr, ptr %i.jh, align 8, !nonnull !9, !align !128, !noundef !9
  %i.jk = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error12display_helpB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.ht unwind label %bb.b

bb.cz:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !nonnull !9, !align !128, !noundef !9
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jm, i1 noundef zeroext true)
          to label %.noexc180 unwind label %bb.b

.noexc180:                                        ; preds = %bb.cz
  %i.jn = load ptr, ptr %i.jl, align 8, !nonnull !9, !align !128, !noundef !9
  %i.jo = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error12display_helpB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.hu unwind label %bb.b

bb.da:                                            ; preds = %bb.ct
  %i.jp = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !nonnull !9, !align !128, !noundef !9
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command17write_version_err(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jr, i1 noundef zeroext %i.jp)
          to label %.noexc183 unwind label %bb.b

.noexc183:                                        ; preds = %bb.da
  %i.js = load ptr, ptr %i.jq, align 8, !nonnull !9, !align !128, !noundef !9
  %i.jt = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.js, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.hv unwind label %bb.b

bb.db:                                            ; preds = %bb.ct
  br i1 %.not292, label %switch.early.test, label %bb.dd

switch.early.test:                                ; preds = %bb.db
  switch i8 %2, label %bb.dc [
    i8 -1, label %bb.dd
    i8 2, label %bb.dd
  ]

bb.dc:                                            ; preds = %switch.early.test
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !noundef !9
  %i.jw = add i64 %i.jv, 1
  store i64 %i.jw, ptr %i.ju, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %switch.early.test, %switch.early.test
  %i.jx = invoke noundef zeroext i1 @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias noundef nonnull align 8 dereferenceable(128) %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %bb.de unwind label %bb.b

bb.de:                                            ; preds = %bb.dd
  br i1 %i.jx, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.di, %bb.dg, %bb.de
  invoke fastcc void @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(128) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, i8 noundef %3)
          to label %bb.dy unwind label %bb.b

bb.dg:                                            ; preds = %bb.de
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !nonnull !9, !align !128, !noundef !9
  %i.ka = getelementptr i8, ptr %i.jz, i64 764
  %i.kb = load <2 x i32>, ptr %i.ka, align 4
  %i.kc = and <2 x i32> %i.kb, splat (i32 8)
  %i.kd = icmp ne <2 x i32> %i.kc, zeroinitializer ; 2 uses
  %i.ke = extractelement <2 x i1> %i.kd, i64 0
  %i.kf = extractelement <2 x i1> %i.kd, i64 1
  %.sroa.0.0.i185 = select i1 %i.ke, i1 true, i1 %i.kf
  br i1 %.sroa.0.0.i185, label %bb.df, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.kh = load ptr, ptr %i.kg, align 8, !nonnull !9, !noundef !9
  %i.ki = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.kj = load i64, ptr %i.ki, align 8, !noundef !9
  %i.kk = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.kh, i64 noundef %i.kj)
          to label %bb.di unwind label %bb.b

bb.di:                                            ; preds = %bb.dh
  br i1 %i.kk, label %bb.df, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.kl = load ptr, ptr %i.jy, align 8, !nonnull !9, !align !128, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBD_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4)
          to label %bb.dk unwind label %bb.b

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.km = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.dm unwind label %bb.dl     ; 3 uses

bb.dl:                                            ; preds = %bb.dk
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBD_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.km, i64 noundef 24, i64 noundef 8) #17
  br label %bb.dx

bb.do:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store i64 1, ptr %i.bb, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.km, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 1, ptr %i.kq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.kr = load ptr, ptr %i.jy, align 8, !nonnull !9, !align !128, !noundef !9
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.kr)
          to label %bb.dq unwind label %bb.dw

bb.dp:                                            ; preds = %bb.dr
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.dq:                                            ; preds = %bb.do
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.dr unwind label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  %i.ks = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.kl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.az)
          to label %bb.ds unwind label %bb.dp

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ks, ptr %i.kt, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.fq, %bb.ds, %bb.bl, %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder.exit unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %common.resume unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit, %bb.hp, %bb.du
  %common.resume.op = phi { ptr, i32 } [ %i.pa, %bb.hp ], [ %i.ku, %bb.du ], [ %.pn120205, %.thread ], [ %.pn120, %.body ], [ %.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %bb.dt
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.ej

bb.dw:                                            ; preds = %bb.dq, %bb.do
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #18
          to label %bb.dx unwind label %bb.cr

bb.dx:                                            ; preds = %bb.dw, %bb.dn, %bb.dl
  %.pn118.ph = phi { ptr, i32 } [ %i.kn, %bb.dl ], [ %i.ko, %bb.dn ], [ %lpad.thr_comm, %bb.dw ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc) #18
          to label %.thread unwind label %bb.cr

bb.dy:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.kw = invoke fastcc noundef align 8 ptr @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.ax, i8 noundef %3, ptr noalias noundef align 8 dereferenceable(128) %8)
          to label %bb.dz unwind label %bb.b      ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %.not122 = icmp eq ptr %i.kw, null
  br i1 %.not122, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kw, ptr %i.kx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ej

bb.eb:                                            ; preds = %bb.dz
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.ej

bb.ec:                                            ; preds = %bb.ct
  br i1 %.not292, label %switch.early.test133, label %bb.ed

switch.early.test133:                             ; preds = %bb.ec
  switch i8 %2, label %bb.ee [
    i8 -1, label %bb.ed
    i8 2, label %bb.ed
  ]

bb.ed:                                            ; preds = %switch.early.test133, %switch.early.test133, %bb.ec, %bb.ee
  invoke fastcc void @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(128) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, i8 noundef %3)
          to label %bb.ef unwind label %bb.b

bb.ee:                                            ; preds = %switch.early.test133
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8, !noundef !9
  %i.la = add i64 %i.kz, 1
  store i64 %i.la, ptr %i.ky, align 8
  br label %bb.ed

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.lb = invoke fastcc noundef align 8 ptr @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.aw, i8 noundef %3, ptr noalias noundef align 8 dereferenceable(128) %8)
          to label %bb.eg unwind label %bb.b      ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.not116 = icmp eq ptr %i.lb, null
  br i1 %.not116, label %bb.ei, label %bb.eh

end_hunk_0
