Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_variant?download=true
inline.NumInlined: 1088
inline.NumDeleted: 543
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK6duckdb12VariantValue6ToJSONERNS_13ClientContextEPN13duckdb_yyjson14yyjson_mut_docE:bb.a
  %.pn62.pn315.ph = phi { ptr, i32 } [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.thread ], [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cf

bb.cf:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %.pn62.pn315 = phi { ptr, i32 } [ %i.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn62.pn315.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ja) #21
  br label %bb.db

bb.cg:                                            ; preds = %bb.a
  %.not.i94 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not.i94, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit, label %bb.ch, !prof !190

bb.ch:                                            ; preds = %bb.cg
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !290
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !291 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.ci, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105, !prof !190

bb.ci:                                            ; preds = %bb.ch
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jt = tail call noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.jn, ptr noundef nonnull %i.js, i64 noundef 1)
  br i1 %i.jt, label %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105_crit_edge, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit, !prof !191

._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105_crit_edge: ; preds = %bb.ci
  %.pre604 = load ptr, ptr %i.jn, align 8, !tbaa !291
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105: ; preds = %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105_crit_edge, %bb.ch
  %i.ju = phi ptr [ %.pre604, %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105_crit_edge ], [ %i.jq, %bb.ch ] ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store ptr %i.jv, ptr %i.jn, align 8, !tbaa !291
  %.not9.i95.not = icmp eq ptr %i.ju, null
  br i1 %.not9.i95.not, label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit, label %bb.cj, !prof !292

bb.cj:                                            ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105
  store i64 7, ptr %i.ju, align 8, !tbaa !294
  br label %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit

_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit: ; preds = %bb.ci, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105, %bb.cg, %bb.cj
  %.1.i96 = phi ptr [ %i.ju, %bb.cj ], [ null, %bb.cg ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit105 ], [ null, %bb.ci ] ; 8 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !157 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not415566 = icmp eq ptr %i.jx, %i.jy
  br i1 %.not415566, label %_ZN13duckdb_yyjsonL15yyjson_mut_nullEPNS_14yyjson_mut_docE.exit, label %.lr.ph568

.lr.ph568:                                        ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit
  %.not.i179 = icmp eq ptr %.1.i96, null
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %.1.i96, i64 8 ; 2 uses
  %invariant.op = or i1 %.not.i179, %.not.i94
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph568, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit
  %.sroa.0217.0567 = phi ptr [ %i.jx, %.lr.ph568 ], [ %i.lm, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit ] ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0217.0567, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0217.0567, i64 64
  %i.kf = tail call noundef ptr @_ZNK6duckdb12VariantValue6ToJSONERNS_13ClientContextEPN13duckdb_yyjson14yyjson_mut_docE(ptr noundef nonnull align 8 dereferenceable(144) %i.ke, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef %2) ; 3 uses
  %i.kg = load ptr, ptr %i.kd, align 8, !tbaa !149 ; 3 uses
  %.not.i97 = icmp eq ptr %i.kf, null
  %or.cond.reass.reass.reass = or i1 %.not.i97, %invariant.op
  br i1 %or.cond.reass.reass.reass, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit, !prof !302

_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit: ; preds = %bb.ck
  %i.kh = load i64, ptr %.1.i96, align 8, !tbaa !304
  %i.ki = and i64 %i.kh, 7
  %i.kj = icmp eq i64 %i.ki, 7
  %i.kk = icmp ne ptr %i.kg, null
  %spec.select.i = select i1 %i.kj, i1 %i.kk, i1 false, !prof !191
  br i1 %spec.select.i, label %bb.cl, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, !prof !305

bb.cl:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit
  %i.kl = load ptr, ptr %i.ka, align 8, !tbaa !290
  %i.km = load ptr, ptr %i.jz, align 8, !tbaa !291 ; 2 uses
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = sdiv exact i64 %i.kp, 24
  %i.kr = icmp ult i64 %i.kq, 2
  br i1 %i.kr, label %bb.cm, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103, !prof !190

bb.cm:                                            ; preds = %bb.cl
  %i.ks = tail call noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.jz, ptr noundef nonnull %i.kb, i64 noundef 2)
  br i1 %i.ks, label %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103_crit_edge, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, !prof !191

._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103_crit_edge: ; preds = %bb.cm
  %.pre605 = load ptr, ptr %i.jz, align 8, !tbaa !291
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103: ; preds = %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103_crit_edge, %bb.cl
  %i.kt = phi ptr [ %.pre605, %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103_crit_edge ], [ %i.km, %bb.cl ] ; 9 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  store ptr %i.ku, ptr %i.jz, align 8, !tbaa !291
  %.not27.i.not = icmp eq ptr %i.kt, null
  br i1 %.not27.i.not, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit, !prof !292

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103
  %i.kv = load i64, ptr %.1.i96, align 8, !tbaa !304 ; 2 uses
  store i64 5, ptr %i.kt, align 8, !tbaa !294
  %i.kw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kg) #26
  %i.kx = shl i64 %i.kw, 8
  %i.ky = or disjoint i64 %i.kx, 5
  store i64 %i.ky, ptr %i.kt, align 8, !tbaa !294
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store ptr %i.kg, ptr %i.kz, align 8, !tbaa !122
  %.not.i181 = icmp ult i64 %i.kv, 256
  br i1 %.not.i181, label %bb.co, label %bb.cn, !prof !190

bb.cn:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit
  %i.la = load ptr, ptr %i.kc, align 8, !tbaa !122
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !306
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !306
  store ptr %i.kt, ptr %i.ld, align 8, !tbaa !306
  br label %bb.co

bb.co:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit, %bb.cn
  %.sink = phi ptr [ %i.le, %bb.cn ], [ %i.kt, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store ptr %.sink, ptr %i.lf, align 8, !tbaa !306
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store ptr %i.kf, ptr %i.lg, align 8, !tbaa !306
  store ptr %i.kt, ptr %i.kc, align 8, !tbaa !122
  %i.lh = load i64, ptr %.1.i96, align 8, !tbaa !304
  %i.li = and i64 %i.lh, 255
  %i.lj = and i64 %i.kv, -256
  %i.lk = add i64 %i.lj, 256
  %i.ll = or disjoint i64 %i.li, %i.lk
  store i64 %i.ll, ptr %.1.i96, align 8, !tbaa !304
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit: ; preds = %bb.ck, %bb.cm, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit103, %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit, %bb.co
  %i.lm = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0217.0567) #26 ; 2 uses
  %.not415 = icmp eq ptr %i.lm, %i.jy
  br i1 %.not415, label %_ZN13duckdb_yyjsonL15yyjson_mut_nullEPNS_14yyjson_mut_docE.exit, label %bb.ck

bb.cp:                                            ; preds = %bb.a
  %.not.i99 = icmp eq ptr %2, null
  br i1 %.not.i99, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit, label %bb.cq, !prof !190

bb.cq:                                            ; preds = %bb.cp
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !290
  %i.lq = load ptr, ptr %i.ln, align 8, !tbaa !291 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %bb.cr, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit, !prof !190

bb.cr:                                            ; preds = %bb.cq
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lt = tail call noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.ln, ptr noundef nonnull %i.ls, i64 noundef 1)
  br i1 %i.lt, label %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit_crit_edge, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit, !prof !191

._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit_crit_edge: ; preds = %bb.cr
  %.pre = load ptr, ptr %i.ln, align 8, !tbaa !291
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit: ; preds = %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit_crit_edge, %bb.cq
  %i.lu = phi ptr [ %.pre, %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit_crit_edge ], [ %i.lq, %bb.cq ]
  %i.lv = freeze ptr %i.lu                        ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store ptr %i.lw, ptr %i.ln, align 8, !tbaa !291
  %.not9.i100.not = icmp eq ptr %i.lv, null
  br i1 %.not9.i100.not, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit, label %bb.cs, !prof !292

bb.cs:                                            ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit
  store i64 6, ptr %i.lv, align 8, !tbaa !294
  br label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit

_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit: ; preds = %bb.cr, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit, %bb.cp, %bb.cs
  %.1.i101 = phi ptr [ %i.lv, %bb.cs ], [ null, %bb.cp ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit ], [ null, %bb.cr ] ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !159 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !159 ; 3 uses
  %.not564 = icmp eq ptr %i.ly, %i.ma
  br i1 %.not564, label %_ZN13duckdb_yyjsonL15yyjson_mut_nullEPNS_14yyjson_mut_docE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit
  %.not.i182 = icmp eq ptr %.1.i101, null
  %i.mb = getelementptr inbounds nuw i8, ptr %.1.i101, i64 8 ; 2 uses
  br i1 %.not.i182, label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit

_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us: ; preds = %.lr.ph, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us
  %.sroa.0213.0565.us = phi ptr [ %i.md, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us ], [ %i.ly, %.lr.ph ] ; 2 uses
  %i.mc = tail call noundef ptr @_ZNK6duckdb12VariantValue6ToJSONERNS_13ClientContextEPN13duckdb_yyjson14yyjson_mut_docE(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0213.0565.us, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef %2) ; 0 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0213.0565.us, i64 144 ; 2 uses
  %.not.us = icmp eq ptr %i.md, %i.ma
  br i1 %.not.us, label %_ZN13duckdb_yyjsonL15yyjson_mut_nullEPNS_14yyjson_mut_docE.exit, label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit: ; preds = %.lr.ph, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit
  %.sroa.0213.0565 = phi ptr [ %i.mq, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit ], [ %i.ly, %.lr.ph ] ; 2 uses
  %i.me = tail call noundef ptr @_ZNK6duckdb12VariantValue6ToJSONERNS_13ClientContextEPN13duckdb_yyjson14yyjson_mut_docE(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0213.0565, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef %2) ; 5 uses
  %i.mf = load i64, ptr %.1.i101, align 8, !tbaa !304 ; 3 uses
  %i.mg = and i64 %i.mf, 7
  %i.mh = icmp eq i64 %i.mg, 6
  %i.mi = icmp ne ptr %i.me, null
  %i.mj = and i1 %i.mi, %i.mh
  br i1 %i.mj, label %bb.ct, label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit, !prof !305

bb.ct:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit
  %i.mk = add i64 %i.mf, 256
  store i64 %i.mk, ptr %.1.i101, align 8, !tbaa !304
  %i.ml = icmp ult i64 %i.mf, 256
  br i1 %i.ml, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mm = load ptr, ptr %i.mb, align 8, !tbaa !122
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !306
  store ptr %i.me, ptr %i.mn, align 8, !tbaa !306
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %.sink603 = phi ptr [ %i.mo, %bb.cu ], [ %i.me, %bb.ct ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store ptr %.sink603, ptr %i.mp, align 8, !tbaa !306
  store ptr %i.me, ptr %i.mb, align 8, !tbaa !122
  br label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit

_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit: ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit, %bb.cv
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0213.0565, i64 144 ; 2 uses
  %.not = icmp eq ptr %i.mq, %i.ma
  br i1 %.not, label %_ZN13duckdb_yyjsonL15yyjson_mut_nullEPNS_14yyjson_mut_docE.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit

bb.cw:                                            ; preds = %bb.a
  %i.mr = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.cx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.thread

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  invoke void @__cxa_throw(ptr nonnull %i.mr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.dc unwind label %bb.cz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.thread: ; preds = %bb.cw
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.0 = phi i1 [ false, %bb.cy ], [ true, %bb.cx ] ; 2 uses
  %i.mt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mu = load ptr, ptr %14, align 8, !tbaa !149  ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.cz
  call void @_ZdlPv(ptr noundef %i.mu) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0, label %bb.da, label %bb.db

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %.pn65412 = phi { ptr, i32 } [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212.thread ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %i.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ]
  call void @__cxa_free_exception(ptr %i.mr) #21
  br label %bb.db

_ZN13duckdb_yyjsonL15yyjson_mut_nullEPNS_14yyjson_mut_docE.exit: ; preds = %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit, %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit, %bb.am, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit121, %bb.ai, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit119, %bb.ae, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i144, %bb.aa, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i138, %bb.w, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i132, %bb.s, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i, %bb.o, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit123, %bb.k, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit125, %bb.e, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit127, %bb.an, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.u, %bb.t, %bb.q, %bb.p, %bb.m, %bb.l, %bb.i, %bb.f, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.041 = phi ptr [ null, %bb.am ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.m ], [ null, %bb.q ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.ac ], [ null, %bb.ag ], [ %.1.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.1.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %.1.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.1.i80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ null, %bb.ak ], [ %i.m, %bb.f ], [ %.1.i96, %_ZN13duckdb_yyjsonL14yyjson_mut_objEPNS_14yyjson_mut_docE.exit ], [ %i.x, %bb.l ], [ null, %bb.e ], [ %i.ag, %bb.p ], [ null, %bb.k ], [ %i.ar, %bb.t ], [ null, %bb.o ], [ %i.bd, %bb.x ], [ null, %bb.s ], [ %i.bp, %bb.ab ], [ null, %bb.w ], [ %i.ca, %bb.af ], [ null, %bb.aa ], [ %i.cm, %bb.aj ], [ null, %bb.ae ], [ %i.cx, %bb.an ], [ null, %bb.ai ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit127 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit125 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit123 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i132 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i138 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i144 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit119 ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit121 ], [ %.1.i101, %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit ], [ null, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us ], [ %.1.i96, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit ], [ %.1.i101, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit ]
  ret ptr %.041

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %.pn65.pn = phi { ptr, i32 } [ %.pn65412, %bb.da ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn62.pn315, %bb.cf ], [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %i.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %i.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ]
  resume { ptr, i32 } %.pn65.pn

bb.dc:                                            ; preds = %bb.cy, %bb.cd
  unreachable
}

declare noundef zeroext i1 @_ZNK6duckdb5Value8GetValueIbEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6duckdb5Value8GetValueIaEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef signext i16 @_ZNK6duckdb5Value8GetValueIsEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZNK6duckdb5Value8GetValueIiEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef float @_ZNK6duckdb5Value8GetValueIfEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef double @_ZNK6duckdb5Value8GetValueIdEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZNK6duckdb5Value6CastAsERNS_13ClientContextERKNS_11LogicalTypeEb(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK6duckdb5Value8GetValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

declare void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !309 {
bb.a:
  %3 = alloca %"class.std::vector.168", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !310
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !198, !noalias !310 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199, !noalias !310 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #23
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !198, !noalias !310
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #23
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !310
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !310
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !149    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !149    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume
}
end_hunk_0
