Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_main?download=true
inline.NumInlined: 40819
inline.NumDeleted: 11673
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6duckdb13ProfilingInfo18WriteMetricsToJSONEPN13duckdb_yyjson14yyjson_mut_docEPNS1_14yyjson_mut_valE:bb.a
  %i.it = and i64 %i.is, 7
  %i.iu = icmp eq i64 %i.it, 7
  %i.iv = icmp ne ptr %.0.i93, null
  %spec.select.i112 = and i1 %i.iv, %i.iu
  br i1 %spec.select.i112, label %bb.bf, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118, !prof !2570

bb.bf:                                            ; preds = %.noexc116
  %i.iw = load ptr, ptr %i.n, align 8, !tbaa !2557
  %i.ix = load ptr, ptr %i.m, align 8, !tbaa !2558 ; 2 uses
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = sdiv exact i64 %i.ja, 24
  %i.jc = icmp ult i64 %i.jb, 2
  br i1 %i.jc, label %bb.bg, label %.noexc117, !prof !1240

bb.bg:                                            ; preds = %bb.bf
  %i.jd = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, i64 noundef 2)
          to label %.noexc802 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc802:                                        ; preds = %bb.bg
  br i1 %i.jd, label %.noexc802..noexc117_crit_edge, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118, !prof !1235

.noexc802..noexc117_crit_edge:                    ; preds = %.noexc802
  %.pre2627 = load ptr, ptr %i.m, align 8, !tbaa !2558
  br label %.noexc117

.noexc117:                                        ; preds = %.noexc802..noexc117_crit_edge, %bb.bf
  %i.je = phi ptr [ %.pre2627, %.noexc802..noexc117_crit_edge ], [ %i.ix, %bb.bf ] ; 9 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  store ptr %i.jf, ptr %i.m, align 8, !tbaa !2558
  %.not27.i115.not = icmp eq ptr %i.je, null
  br i1 %.not27.i115.not, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit399, !prof !2563

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit399: ; preds = %.noexc117
  %i.jg = load i64, ptr %.1.i84, align 8, !tbaa !2569 ; 2 uses
  store i64 5, ptr %i.je, align 8, !tbaa !2565
  %i.jh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i93) #44
  %i.ji = shl i64 %i.jh, 8
  %i.jj = or disjoint i64 %i.ji, 5
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !2565
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %.0.i93, ptr %i.jk, align 8, !tbaa !1232
  %.not.i853 = icmp ult i64 %i.jg, 256
  br i1 %.not.i853, label %bb.bi, label %bb.bh, !prof !1240

bb.bh:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit399
  %i.jl = load ptr, ptr %i.dm, align 8, !tbaa !1232
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !2571
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !2571
  store ptr %i.je, ptr %i.jo, align 8, !tbaa !2571
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit399, %bb.bh
  %.sink2612 = phi ptr [ %i.jp, %bb.bh ], [ %i.je, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit399 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.1.i98, i64 16
  store ptr %.sink2612, ptr %i.jq, align 8, !tbaa !2571
  %i.jr = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.1.i98, ptr %i.jr, align 8, !tbaa !2571
  store ptr %i.je, ptr %i.dm, align 8, !tbaa !1232
  %i.js = load i64, ptr %.1.i84, align 8, !tbaa !2569
  %i.jt = and i64 %i.js, 255
  %i.ju = and i64 %i.jg, -256
  %i.jv = add i64 %i.ju, 256
  %i.jw = or disjoint i64 %i.jt, %i.jv
  store i64 %i.jw, ptr %.1.i84, align 8, !tbaa !2569
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118

.loopexit.split-lp2288.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIN6duckdb5ValueEE8allocateEmPKv.exit.i.i.i.i, %bb.ab, %.noexc.i.i932
  %lpad.loopexit.split-lp2754 = landingpad { ptr, i32 }
          cleanup
  br label %.body935

bb.bj:                                            ; preds = %bb.an
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bk:                                            ; preds = %bb.at
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body872

bb.bl:                                            ; preds = %bb.ax, %bb.av
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp2293.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i875, %.noexc90.thread
  %lpad.loopexit.split-lp2757 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893

bb.bm:                                            ; preds = %._crit_edge.i.i878
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kb = load ptr, ptr %14, align 8, !tbaa !1204 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.ad
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.kb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i888
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.kd = load ptr, ptr %13, align 8, !tbaa !1204 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.ab
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890
  call void @_ZdlPv(ptr noundef %i.kd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890, %.loopexit.split-lp2293.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891
  %.pn.pn = phi { ptr, i32 } [ %i.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i891 ], [ %lpad.loopexit.split-lp2757, %.loopexit.split-lp2293.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.cc

bb.bn:                                            ; preds = %.lr.ph, %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit
  %.sroa.0945.02380 = phi ptr [ %i.ip, %.lr.ph ], [ %i.ln, %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit ] ; 2 uses
  %i.kf = load ptr, ptr %.sroa.0945.02380, align 8, !tbaa !1204 ; 3 uses
  br i1 %or.cond1400.not, label %.noexc102, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, !prof !5624

.noexc102:                                        ; preds = %bb.bn
  %i.kg = load i64, ptr %.1.i98, align 8, !tbaa !2569
  %i.kh = and i64 %i.kg, 7
  %i.ki = icmp eq i64 %i.kh, 6
  %i.kj = icmp ne ptr %i.kf, null
  %or.cond1402 = select i1 %i.ki, i1 %i.kj, i1 false, !prof !5625
  br i1 %or.cond1402, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit663, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, !prof !5625

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit663: ; preds = %.noexc102
  %i.kk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kf) #44 ; 5 uses
  %i.kl = load ptr, ptr %i.n, align 8, !tbaa !2557
  %i.km = load ptr, ptr %i.m, align 8, !tbaa !2558 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %bb.bo, label %bb.bp, !prof !1240

bb.bo:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit663
  %i.ko = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, i64 noundef 1)
          to label %.noexc808 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc808:                                        ; preds = %bb.bo
  br i1 %i.ko, label %.noexc808._crit_edge, label %.noexc103, !prof !1235

.noexc808._crit_edge:                             ; preds = %.noexc808
  %.pre2626 = load ptr, ptr %i.m, align 8, !tbaa !2558
  br label %bb.bp

bb.bp:                                            ; preds = %.noexc808._crit_edge, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit663
  %i.kp = phi ptr [ %.pre2626, %.noexc808._crit_edge ], [ %i.km, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit663 ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  store ptr %i.kq, ptr %i.m, align 8, !tbaa !2558
  br label %.noexc103

.noexc103:                                        ; preds = %bb.bp, %.noexc808
  %.0.i807 = phi ptr [ %i.kp, %bb.bp ], [ null, %.noexc808 ] ; 7 uses
  %i.kr = load ptr, ptr %i.q, align 8, !tbaa !2561
  %i.ks = load ptr, ptr %i.p, align 8, !tbaa !2562 ; 2 uses
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %.not.i825 = icmp ugt i64 %i.kv, %i.kk
  br i1 %.not.i825, label %.noexc104, label %bb.bq, !prof !1235

bb.bq:                                            ; preds = %.noexc103
  %i.kw = add i64 %i.kk, 1
  %i.kx = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_str_pool_growEPNS_15yyjson_str_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, i64 noundef %i.kw)
          to label %.noexc827 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc827:                                        ; preds = %bb.bq
  br i1 %i.kx, label %.noexc104thread-pre-split, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, !prof !1235

.noexc104thread-pre-split:                        ; preds = %.noexc827
  %.pr1252 = load ptr, ptr %i.p, align 8, !tbaa !2562
  br label %.noexc104

.noexc104:                                        ; preds = %.noexc104thread-pre-split, %.noexc103
  %i.ky = phi ptr [ %.pr1252, %.noexc104thread-pre-split ], [ %i.ks, %.noexc103 ] ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kk ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store ptr %i.la, ptr %i.p, align 8, !tbaa !2562
  %.not.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_strncpyEPNS_14yyjson_mut_docEPKcm.exit.i, !prof !2563

_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_strncpyEPNS_14yyjson_mut_docEPKcm.exit.i: ; preds = %.noexc104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ky, ptr nonnull align 1 %i.kf, i64 %i.kk, i1 false)
  store i8 0, ptr %i.kz, align 1, !tbaa !1232
  %.not2079 = icmp eq ptr %.0.i807, null
  br i1 %.not2079, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i, !prof !5623

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i: ; preds = %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_strncpyEPNS_14yyjson_mut_docEPKcm.exit.i
  %i.lb = shl i64 %i.kk, 8
  %i.lc = or disjoint i64 %i.lb, 5
  store i64 %i.lc, ptr %.0.i807, align 8, !tbaa !2565
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i807, i64 8
  store ptr %i.ky, ptr %i.ld, align 8, !tbaa !1232
  %i.le = load i64, ptr %.1.i98, align 8, !tbaa !2569 ; 4 uses
  %i.lf = and i64 %i.le, 7
  %i.lg = icmp eq i64 %i.lf, 6
  br i1 %i.lg, label %bb.br, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, !prof !2570

bb.br:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i
  %15 = and i64 %i.le, 254
  %16 = and i64 %i.le, -256
  %i.lh = add i64 %16, 256
  %17 = or disjoint i64 %i.lh, %15
  store i64 %17, ptr %.1.i98, align 8, !tbaa !2569
  %i.li = icmp ult i64 %i.le, 256
  br i1 %i.li, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lj = load ptr, ptr %i.ir, align 8, !tbaa !1232
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !2571
  store ptr %.0.i807, ptr %i.lk, align 8, !tbaa !2571
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sink2613 = phi ptr [ %i.ll, %bb.bs ], [ %.0.i807, %bb.br ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i807, i64 16
  store ptr %.sink2613, ptr %i.lm, align 8, !tbaa !2571
  store ptr %.0.i807, ptr %i.ir, align 8, !tbaa !1232
  br label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit

_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit: ; preds = %.noexc827, %.noexc104, %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_strncpyEPNS_14yyjson_mut_docEPKcm.exit.i, %.noexc102, %bb.bn, %bb.bt, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0945.02380, i64 32 ; 2 uses
  %.not1854 = icmp eq ptr %i.ln, %i.iq
  br i1 %.not1854, label %._crit_edge, label %bb.bn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bq, %bb.bo, %bb.bw, %bb.bg, %bb.bd, %bb.bx
  %lpad.loopexit.split-lp2752 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #28
  br label %bb.cc

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887
  br i1 %.not.i844, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118, label %.noexc125

.noexc125:                                        ; preds = %bb.bu
  %i.lo = load i64, ptr %.1.i84, align 8, !tbaa !2569
  %i.lp = and i64 %i.lo, 7
  %i.lq = icmp eq i64 %i.lp, 7
  %i.lr = icmp ne ptr %.0.i93, null
  %spec.select.i120 = and i1 %i.lr, %i.lq
  br i1 %spec.select.i120, label %bb.bv, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118, !prof !2570

bb.bv:                                            ; preds = %.noexc125
  %i.ls = load ptr, ptr %i.n, align 8, !tbaa !2557
  %i.lt = load ptr, ptr %i.m, align 8, !tbaa !2558 ; 2 uses
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = sdiv exact i64 %i.lw, 24
  %i.ly = icmp ult i64 %i.lx, 2
  br i1 %i.ly, label %bb.bw, label %.noexc126, !prof !1240

bb.bw:                                            ; preds = %bb.bv
  %i.lz = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, i64 noundef 2)
          to label %.noexc799 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc799:                                        ; preds = %bb.bw
  br i1 %i.lz, label %.noexc799..noexc126_crit_edge, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118, !prof !1235

.noexc799..noexc126_crit_edge:                    ; preds = %.noexc799
  %.pre2624 = load ptr, ptr %i.m, align 8, !tbaa !2558
  br label %.noexc126

.noexc126:                                        ; preds = %.noexc799..noexc126_crit_edge, %bb.bv
  %i.ma = phi ptr [ %.pre2624, %.noexc799..noexc126_crit_edge ], [ %i.lt, %bb.bv ] ; 13 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  store ptr %i.mb, ptr %i.m, align 8, !tbaa !2558
  %.not37.i.not = icmp eq ptr %i.ma, null
  br i1 %.not37.i.not, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit267, !prof !2563

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit267: ; preds = %.noexc126
  %i.mc = load i64, ptr %.1.i84, align 8, !tbaa !2569 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 24 ; 2 uses
  store i64 5, ptr %i.ma, align 8, !tbaa !2565
  %i.me = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i93) #44
  %i.mf = shl i64 %i.me, 8
  %i.mg = or disjoint i64 %i.mf, 5
  store i64 %i.mg, ptr %i.ma, align 8, !tbaa !2565
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %.0.i93, ptr %i.mh, align 8, !tbaa !1232
  %i.mi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hn) #44 ; 5 uses
  %i.mj = load ptr, ptr %i.q, align 8, !tbaa !2561
  %i.mk = load ptr, ptr %i.p, align 8, !tbaa !2562 ; 2 uses
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %.not.i822 = icmp ugt i64 %i.mn, %i.mi
  br i1 %.not.i822, label %.noexc127, label %bb.bx, !prof !1235

bb.bx:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit267
  %i.mo = add i64 %i.mi, 1
  %i.mp = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_str_pool_growEPNS_15yyjson_str_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, i64 noundef %i.mo)
          to label %.noexc824 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc824:                                        ; preds = %bb.bx
  br i1 %i.mp, label %.noexc127thread-pre-split, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_strncpyEPNS_14yyjson_mut_docEPKcm.exit.i123.thread, !prof !1235

.noexc127thread-pre-split:                        ; preds = %.noexc824
  %.pr1325 = load ptr, ptr %i.p, align 8, !tbaa !2562
  br label %.noexc127

.noexc127:                                        ; preds = %.noexc127thread-pre-split, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit267
  %i.mq = phi ptr [ %.pr1325, %.noexc127thread-pre-split ], [ %i.mk, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit267 ] ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mi ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  store ptr %i.ms, ptr %i.p, align 8, !tbaa !2562
  %.not.i.i122 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i122, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_strncpyEPNS_14yyjson_mut_docEPKcm.exit.i123.thread, label %bb.by, !prof !2572

_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_strncpyEPNS_14yyjson_mut_docEPKcm.exit.i123.thread: ; preds = %.noexc127, %.noexc824
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  store ptr null, ptr %i.mt, align 8, !tbaa !1232
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118

bb.by:                                            ; preds = %.noexc127
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mq, ptr nonnull align 1 %i.hn, i64 %i.mi, i1 false)
  store i8 0, ptr %i.mr, align 1, !tbaa !1232
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  store ptr %i.mq, ptr %i.mu, align 8, !tbaa !1232
  %i.mv = shl i64 %i.mi, 8
  %i.mw = or disjoint i64 %i.mv, 5
  store i64 %i.mw, ptr %i.md, align 8, !tbaa !2565
  %.not.i851 = icmp ult i64 %i.mc, 256
  br i1 %.not.i851, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_m.exit852, label %bb.bz, !prof !1240

bb.bz:                                            ; preds = %bb.by
  %i.mx = load ptr, ptr %i.dm, align 8, !tbaa !1232
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !2571
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !2571
  store ptr %i.ma, ptr %i.na, align 8, !tbaa !2571
  br label %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_m.exit852

_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_m.exit852: ; preds = %bb.by, %bb.bz
  %.sink2614 = phi ptr [ %i.nb, %bb.bz ], [ %i.ma, %bb.by ]
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  store ptr %.sink2614, ptr %i.nc, align 8, !tbaa !2571
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store ptr %i.md, ptr %i.nd, align 8, !tbaa !2571
  store ptr %i.ma, ptr %i.dm, align 8, !tbaa !1232
  %i.ne = load i64, ptr %.1.i84, align 8, !tbaa !2569
  %i.nf = and i64 %i.ne, 255
  %i.ng = and i64 %i.mc, -256
  %i.nh = add i64 %i.ng, 256
  %i.ni = or disjoint i64 %i.nf, %i.nh
  store i64 %i.ni, ptr %.1.i84, align 8, !tbaa !2569
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118: ; preds = %._crit_edge, %.noexc799, %.noexc126, %bb.bu, %.noexc802, %.noexc117, %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_strncpyEPNS_14yyjson_mut_docEPKcm.exit.i123.thread, %_ZN13duckdb_yyjsonL25unsafe_yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_m.exit852, %.noexc125, %bb.bi, %.noexc116
  %i.nj = load ptr, ptr %12, align 8, !tbaa !1248 ; 3 uses
  %i.nk = load ptr, ptr %i.af, align 8, !tbaa !1249 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.nj, %i.nk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.no, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.nj, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118 ] ; 3 uses
  %i.nl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1204 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.nl) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i894 = icmp eq ptr %i.no, %i.nk
  br i1 %.not.i.i.i894, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !1248
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118
  %i.np = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.nj, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit118 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.np) #40
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.nq = load ptr, ptr %11, align 8, !tbaa !1204 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.ag
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i895

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i895: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.nq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i895
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ns = load ptr, ptr %10, align 8, !tbaa !1204 ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.ah
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit900, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i898

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i898: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897
  call void @_ZdlPv(ptr noundef %i.ns) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit900
end_hunk_0
begin_hunk_1_@_ZNK6duckdb13QueryProfiler6ToJSONB5cxx11Ev:bb.a
  br i1 %i.bm, label %.noexc132..noexc36_crit_edge, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke, !prof !1235

.noexc132..noexc36_crit_edge:                     ; preds = %.noexc132
  %.pre213 = load ptr, ptr %i.bc, align 8, !tbaa !2558
  br label %.noexc36

.noexc36:                                         ; preds = %.noexc132..noexc36_crit_edge, %bb.p
  %i.bn = phi ptr [ %.pre213, %.noexc132..noexc36_crit_edge ], [ %i.bf, %bb.p ] ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr %i.bo, ptr %i.bc, align 8, !tbaa !2558
  %.not35.i.not = icmp eq ptr %i.bn, null
  br i1 %.not35.i.not, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke, label %bb.r, !prof !2563

bb.r:                                             ; preds = %.noexc36
  %i.bp = load i64, ptr %.1.i166, align 8, !tbaa !2569 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  store i64 1549, ptr %i.bn, align 8, !tbaa !2565
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @.str.578, ptr %i.br, align 8, !tbaa !1232
  store i64 1293, ptr %i.bq, align 8, !tbaa !2565
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr @.str.580, ptr %i.bs, align 8, !tbaa !1232
  %.not.i149 = icmp ult i64 %i.bp, 256
  br i1 %.not.i149, label %bb.t, label %bb.s, !prof !1240

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i166, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1232
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2571
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2571
  store ptr %i.bn, ptr %i.bx, align 8, !tbaa !2571
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink207 = phi ptr [ %i.by, %bb.s ], [ %i.bn, %bb.r ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store ptr %.sink207, ptr %i.bz, align 8, !tbaa !2571
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bq, ptr %i.ca, align 8, !tbaa !2571
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i166, i64 8
  store ptr %i.bn, ptr %i.cb, align 8, !tbaa !1232
  %i.cc = load i64, ptr %.1.i166, align 8, !tbaa !2569
  %i.cd = and i64 %i.cc, 255
  %i.ce = and i64 %i.bp, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = or disjoint i64 %i.cd, %i.cf
  store i64 %i.cg, ptr %.1.i166, align 8, !tbaa !2569
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke: ; preds = %bb.aj, %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i, %bb.ag, %bb.o, %.noexc35, %bb.t, %.noexc36, %.noexc132, %bb.h, %.noexc41, %bb.m, %.noexc42, %.noexc130
  invoke fastcc void @_ZN6duckdbL16StringifyAndFreeB5cxx11ERNS_19ConvertedJSONHolderEPN13duckdb_yyjson14yyjson_mut_valE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %.1.i166)
          to label %bb.am unwind label %bb.al

.thread:                                          ; preds = %bb.g, %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ci = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ProfilingNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.u unwind label %bb.al

bb.u:                                             ; preds = %.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  invoke void @_ZN6duckdb13ProfilingInfo18WriteMetricsToJSONEPN13duckdb_yyjson14yyjson_mut_docEPNS1_14yyjson_mut_valE(ptr noundef nonnull align 8 dereferenceable(168) %i.cj, ptr noundef %i.c, ptr noundef %.1.i166)
          to label %bb.v unwind label %bb.al

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %2, align 8, !tbaa !2676  ; 6 uses
  %.not.i24 = icmp eq ptr %i.ck, null
  br i1 %.not.i24, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, label %bb.w, !prof !1240

bb.w:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 80 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 88 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2557
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !2558 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.x, label %.noexc27, !prof !1240

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cr = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cq, i64 noundef 1)
          to label %.noexc138 unwind label %bb.al

.noexc138:                                        ; preds = %bb.x
  br i1 %i.cr, label %.noexc138..noexc27_crit_edge, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, !prof !1235

.noexc138..noexc27_crit_edge:                     ; preds = %.noexc138
  %.pre211 = load ptr, ptr %i.cl, align 8, !tbaa !2558
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc138..noexc27_crit_edge, %bb.w
  %i.cs = phi ptr [ %.pre211, %.noexc138..noexc27_crit_edge ], [ %i.co, %bb.w ] ; 11 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 3 uses
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !2558
  %.not9.i25.not = icmp eq ptr %i.cs, null
  br i1 %.not9.i25.not, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, label %bb.y, !prof !2572

bb.y:                                             ; preds = %.noexc27
  store i64 6, ptr %i.cs, align 8, !tbaa !2565
  %.not.i146 = icmp eq ptr %.1.i166, null
  br i1 %.not.i146, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, label %.noexc30, !prof !5954

.noexc30:                                         ; preds = %bb.y
  %i.cu = load i64, ptr %.1.i166, align 8, !tbaa !2569
  %i.cv = and i64 %i.cu, 7
  %i.cw = icmp eq i64 %i.cv, 7
  br i1 %i.cw, label %bb.z, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, !prof !2570

bb.z:                                             ; preds = %.noexc30
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !2557
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 24
  %i.dc = icmp ult i64 %i.db, 2
  br i1 %i.dc, label %bb.aa, label %.noexc31.thread, !prof !1240

.noexc31.thread:                                  ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  store ptr %i.dd, ptr %i.cl, align 8, !tbaa !2558
  br label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit129

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.df = invoke noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.de, i64 noundef 2)
          to label %.noexc135 unwind label %bb.al

.noexc135:                                        ; preds = %bb.aa
  br i1 %i.df, label %.noexc31, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, !prof !1235

.noexc31:                                         ; preds = %.noexc135
  %.pre212 = load ptr, ptr %i.cl, align 8, !tbaa !2558 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre212, i64 48
  store ptr %i.dg, ptr %i.cl, align 8, !tbaa !2558
  %.not27.i.not = icmp eq ptr %.pre212, null
  br i1 %.not27.i.not, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit129, !prof !2570

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit129: ; preds = %.noexc31.thread, %.noexc31
  %i.dh = phi ptr [ %i.ct, %.noexc31.thread ], [ %.pre212, %.noexc31 ] ; 6 uses
  %i.di = load i64, ptr %.1.i166, align 8, !tbaa !2569 ; 2 uses
  store i64 2061, ptr %i.dh, align 8, !tbaa !2565
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr @.str.581, ptr %i.dj, align 8, !tbaa !1232
  %.not.i151 = icmp ult i64 %i.di, 256
  br i1 %.not.i151, label %bb.ac, label %bb.ab, !prof !1240

bb.ab:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit129
  %i.dk = getelementptr inbounds nuw i8, ptr %.1.i166, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1232
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2571
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2571
  store ptr %i.dh, ptr %i.do, align 8, !tbaa !2571
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit129, %bb.ab
  %.sink208 = phi ptr [ %i.dp, %bb.ab ], [ %i.dh, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit129 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %.sink208, ptr %i.dq, align 8, !tbaa !2571
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.cs, ptr %i.dr, align 8, !tbaa !2571
  %i.ds = getelementptr inbounds nuw i8, ptr %.1.i166, i64 8
  store ptr %i.dh, ptr %i.ds, align 8, !tbaa !1232
  %i.dt = load i64, ptr %.1.i166, align 8, !tbaa !2569
  %i.du = and i64 %i.dt, 255
  %i.dv = and i64 %i.di, -256
  %i.dw = add i64 %i.dv, 256
  %i.dx = or disjoint i64 %i.du, %i.dw
  store i64 %i.dx, ptr %.1.i166, align 8, !tbaa !2569
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit: ; preds = %.noexc135, %.noexc31, %.noexc138, %.noexc27, %bb.v, %bb.ac, %.noexc30, %bb.y
  %.not.i28193 = phi i1 [ false, %bb.y ], [ false, %bb.ac ], [ false, %.noexc135 ], [ true, %.noexc138 ], [ false, %.noexc30 ], [ true, %bb.v ], [ true, %.noexc27 ], [ false, %.noexc31 ]
  %.1.i26192 = phi ptr [ %i.cs, %bb.y ], [ %i.cs, %bb.ac ], [ %i.cs, %.noexc135 ], [ null, %.noexc138 ], [ %i.cs, %.noexc30 ], [ null, %bb.v ], [ null, %.noexc27 ], [ %i.cs, %.noexc31 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ProfilingNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 184
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_13ProfilingNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 noundef 0)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1881
  store ptr %i.eb, ptr %3, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_13ProfilingNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ec = load ptr, ptr %3, align 8, !tbaa !2673
  %i.ed = invoke fastcc noundef ptr @_ZN6duckdbL15ToJSONRecursiveEPN13duckdb_yyjson14yyjson_mut_docERNS_13ProfilingNodeE(ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(208) %i.ec)
          to label %bb.ag unwind label %bb.ak     ; 5 uses

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.not.i28193, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i: ; preds = %bb.ag
  %i.ee = load i64, ptr %.1.i26192, align 8, !tbaa !2569 ; 4 uses
  %i.ef = and i64 %i.ee, 7
  %i.eg = icmp eq i64 %i.ef, 6
  %i.eh = icmp ne ptr %i.ed, null
  %i.ei = and i1 %i.eh, %i.eg
  br i1 %i.ei, label %bb.ah, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke, !prof !2570

bb.ah:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i
  %4 = and i64 %i.ee, 254
  %5 = and i64 %i.ee, -256
  %i.ej = add i64 %5, 256
  %6 = or disjoint i64 %i.ej, %4
  store i64 %6, ptr %.1.i26192, align 8, !tbaa !2569
  %i.ek = icmp ult i64 %i.ee, 256
  br i1 %i.ek, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %.1.i26192, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1232
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2571
  store ptr %i.ed, ptr %i.en, align 8, !tbaa !2571
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sink209 = phi ptr [ %i.eo, %bb.ai ], [ %i.ed, %bb.ah ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %.sink209, ptr %i.ep, align 8, !tbaa !2571
  %i.eq = getelementptr inbounds nuw i8, ptr %.1.i26192, i64 8
  store ptr %i.ed, ptr %i.eq, align 8, !tbaa !1232
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke

bb.ak:                                            ; preds = %bb.ae, %bb.ad, %bb.af, %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ar

bb.al:                                            ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke, %bb.e, %bb.x, %bb.aa, %bb.q, %bb.j, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.u, %.thread
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_strEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS5_.exit.invoke
  %i.et = load ptr, ptr %2, align 8, !tbaa !2676  ; 2 uses
  %.not.i156 = icmp eq ptr %i.et, null
  br i1 %.not.i156, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN13duckdb_yyjson19yyjson_mut_doc_freeEPNS_14yyjson_mut_docE(ptr noundef nonnull %i.et)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !2680 ; 2 uses
  %.not2.i = icmp eq ptr %i.ev, null
  br i1 %.not2.i, label %_ZN6duckdb19ConvertedJSONHolderD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.ev) #28
  br label %_ZN6duckdb19ConvertedJSONHolderD2Ev.exit

bb.aq:                                            ; preds = %bb.an
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #42
  unreachable

_ZN6duckdb19ConvertedJSONHolderD2Ev.exit:         ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ey = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  ret void

bb.ar:                                            ; preds = %bb.al, %bb.ak
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.ak ], [ %i.es, %bb.al ]
  call void @_ZN6duckdb19ConvertedJSONHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ez = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb12TreeRenderer14CreateRendererENS_13ExplainFormatE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.2572") align 8, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !5955 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !1151
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.b, align 8, !tbaa !5968
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %i.c, align 8, !tbaa !5969
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.d, align 1, !tbaa !5970
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC2ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), i32 noundef %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %0, align 8, !tbaa !1151
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8, !tbaa !1151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.f, align 8, !tbaa !1151
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %2, ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #28
  ret void

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8)) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_12TreeRendererESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !5971 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2181   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12TreeRendererESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !1240

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.594, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !1204   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12TreeRendererESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(208) ptr @_ZNK6duckdb10unique_ptrINS_13ProfilingNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !5972 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1881   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13ProfilingNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !1240

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdbL15ToJSONRecursiveEPN13duckdb_yyjson14yyjson_mut_docERNS_13ProfilingNodeE:bb.a

.lr.ph.i.i.i.i.i36:                               ; preds = %bb.p, %bb.q
  %.020.i.i.i.i.i37 = phi ptr [ %i.bo, %bb.q ], [ %i.bb, %bb.p ]
  %i.bo = load ptr, ptr %.020.i.i.i.i.i37, align 8, !tbaa !1311 ; 5 uses
  %.not18.i.i.i.i.i38 = icmp eq ptr %i.bo, null
  br i1 %.not18.i.i.i.i.i38, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !1314 ; 2 uses
  %i.br = urem i64 %i.bq, %i.aw
  %.not19.i.i.i.i.i39 = icmp eq i64 %i.br, %i.ax
  br i1 %.not19.i.i.i.i.i39, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i.i40, !llvm.loop !136

..loopexit_crit_edge21.i.i.i.i.i40:               ; preds = %bb.r
  br label %.loopexit.i.i, !llvm.loop !136

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i36, %bb.m, %..loopexit_crit_edge21.i.i.i.i.i40, %bb.o
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.637) #43
  unreachable

_ZNSt13unordered_mapIN6duckdb10MetricTypeENS0_5ValueENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE2atERS7_.exit: ; preds = %bb.q, %bb.n, %bb.p
  %.sroa.06.1.i.i.i41 = phi ptr [ %.sroa.06.0.i.i.i43, %bb.n ], [ %i.bb, %bb.p ], [ %i.bo, %bb.q ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i41, i64 16
  call void @_ZN6duckdb13QueryProfiler12JSONSanitizeERKNS_5ValueE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 3, ptr %i.a, align 1, !tbaa !1969
  %i.bt = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt8__detail9_Map_baseIN6duckdb10MetricTypeESt4pairIKS2_NS1_5ValueEESaIS6_ENS_10_Select1stESt8equal_toIS2_ENS1_22MetricTypeHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt13unordered_mapIN6duckdb10MetricTypeENS0_5ValueENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit unwind label %bb.s

_ZNSt13unordered_mapIN6duckdb10MetricTypeENS0_5ValueENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit: ; preds = %_ZNSt13unordered_mapIN6duckdb10MetricTypeENS0_5ValueENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE2atERS7_.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 8 dereferenceable(64) %2) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN6duckdb13ProfilingInfo7EnabledERKSt13unordered_setINS_10MetricTypeENS_22MetricTypeHashFunctionESt8equal_toIS2_ESaIS2_EES2_.exit.thread

bb.s:                                             ; preds = %_ZNSt13unordered_mapIN6duckdb10MetricTypeENS0_5ValueENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE2atERS7_.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.bv

_ZN6duckdb13ProfilingInfo7EnabledERKSt13unordered_setINS_10MetricTypeENS_22MetricTypeHashFunctionESt8equal_toIS2_ESaIS2_EES2_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.f, %bb.h, %..loopexit_crit_edge21.i.i.i.i.i, %_ZNSt13unordered_mapIN6duckdb10MetricTypeENS0_5ValueENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaISt4pairIKS1_S2_EEEixEOS1_.exit
  call void @_ZN6duckdb13ProfilingInfo18WriteMetricsToJSONEPN13duckdb_yyjson14yyjson_mut_docEPNS1_14yyjson_mut_valE(ptr noundef nonnull align 8 dereferenceable(168) %i.k, ptr noundef %0, ptr noundef %.1.i)
  br i1 %.not.i, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit, label %bb.t, !prof !1240

bb.t:                                             ; preds = %_ZN6duckdb13ProfilingInfo7EnabledERKSt13unordered_setINS_10MetricTypeENS_22MetricTypeHashFunctionESt8equal_toIS2_ESaIS2_EES2_.exit.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2557
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !2558 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.u, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29, !prof !1240

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = call noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.cb, i64 noundef 1)
  br i1 %i.cc, label %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29_crit_edge, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit, !prof !1235

._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29_crit_edge: ; preds = %bb.u
  %.pre86 = load ptr, ptr %i.bw, align 8, !tbaa !2558
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29: ; preds = %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29_crit_edge, %bb.t
  %i.cd = phi ptr [ %.pre86, %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29_crit_edge ], [ %i.bz, %bb.t ]
  %i.ce = freeze ptr %i.cd                        ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr %i.cf, ptr %i.bw, align 8, !tbaa !2558
  %.not9.i23.not = icmp eq ptr %i.ce, null
  br i1 %.not9.i23.not, label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit, label %bb.v, !prof !2563

bb.v:                                             ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29
  store i64 6, ptr %i.ce, align 8, !tbaa !2565
  br label %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit

_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit: ; preds = %bb.u, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29, %_ZN6duckdb13ProfilingInfo7EnabledERKSt13unordered_setINS_10MetricTypeENS_22MetricTypeHashFunctionESt8equal_toIS2_ESaIS2_EES2_.exit.thread, %bb.v
  %.1.i24 = phi ptr [ %i.ce, %bb.v ], [ null, %_ZN6duckdb13ProfilingInfo7EnabledERKSt13unordered_setINS_10MetricTypeENS_22MetricTypeHashFunctionESt8equal_toIS2_ESaIS2_EES2_.exit.thread ], [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit29 ], [ null, %bb.u ] ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2670
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !2671
  %.not = icmp eq ptr %i.ci, %i.cj
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit
  %.not.i.i = icmp eq ptr %.1.i24, null
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i24, i64 8 ; 2 uses
  br i1 %.not.i.i, label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i

_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us: ; preds = %.lr.ph, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us
  %.076.us = phi i64 [ %i.cp, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_13ProfilingNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 noundef %.076.us)
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1881
  store ptr %i.cm, ptr %3, align 8
  call void @_ZNK6duckdb12optional_ptrINS_13ProfilingNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.cn = load ptr, ptr %3, align 8, !tbaa !2673
  %i.co = call fastcc noundef ptr @_ZN6duckdbL15ToJSONRecursiveEPN13duckdb_yyjson14yyjson_mut_docERNS_13ProfilingNodeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(208) %i.cn) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cp = add nuw i64 %.076.us, 1                 ; 2 uses
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !2670
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !2671
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = icmp ult i64 %i.cp, %i.cv
  br i1 %i.cw, label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, !llvm.loop !6158

._crit_edge:                                      ; preds = %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit, %_ZN13duckdb_yyjsonL14yyjson_mut_arrEPNS_14yyjson_mut_docE.exit
  %.not.i25 = icmp eq ptr %.1.i24, null
  %.not.i32 = icmp eq ptr %.1.i, null
  %i.cx = or i1 %.not.i32, %.not.i25
  %or.cond = or i1 %.not.i, %i.cx
  br i1 %or.cond, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit, !prof !6160

_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit: ; preds = %._crit_edge
  %i.cy = load i64, ptr %.1.i, align 8, !tbaa !2569
  %i.cz = and i64 %i.cy, 7
  %i.da = icmp eq i64 %i.cz, 7
  br i1 %i.da, label %bb.w, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, !prof !2570

bb.w:                                             ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !2557
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !2558 ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 24
  %i.dj = icmp ult i64 %i.di, 2
  br i1 %i.dj, label %bb.x, label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit, !prof !1240

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = call noundef zeroext i1 @_ZN13duckdb_yyjson27unsafe_yyjson_val_pool_growEPNS_15yyjson_val_poolEPKNS_10yyjson_alcEm(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dk, i64 noundef 2)
  br i1 %i.dl, label %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit_crit_edge, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, !prof !1235

._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit_crit_edge: ; preds = %bb.x
  %.pre87 = load ptr, ptr %i.db, align 8, !tbaa !2558
  br label %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit

_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit: ; preds = %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit_crit_edge, %bb.w
  %i.dm = phi ptr [ %.pre87, %._ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit_crit_edge ], [ %i.de, %bb.w ] ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store ptr %i.dn, ptr %i.db, align 8, !tbaa !2558
  %.not27.i.not = icmp eq ptr %i.dm, null
  br i1 %.not27.i.not, label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit, label %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit, !prof !2563

_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit: ; preds = %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit
  %i.do = load i64, ptr %.1.i, align 8, !tbaa !2569 ; 2 uses
  store i64 2061, ptr %i.dm, align 8, !tbaa !2565
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr @.str.581, ptr %i.dp, align 8, !tbaa !1232
  %.not.i33 = icmp ult i64 %i.do, 256
  br i1 %.not.i33, label %bb.z, label %bb.y, !prof !1240

bb.y:                                             ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1232
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !2571
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !2571
  store ptr %i.dm, ptr %i.du, align 8, !tbaa !2571
  br label %bb.z

bb.z:                                             ; preds = %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit, %bb.y
  %.sink = phi ptr [ %i.dv, %bb.y ], [ %i.dm, %_ZN13duckdb_yyjsonL26unsafe_yyjson_is_str_noescEPKcm.exit ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.1.i24, i64 16
  store ptr %.sink, ptr %i.dw, align 8, !tbaa !2571
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %.1.i24, ptr %i.dx, align 8, !tbaa !2571
  %i.dy = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  store ptr %i.dm, ptr %i.dy, align 8, !tbaa !1232
  %i.dz = load i64, ptr %.1.i, align 8, !tbaa !2569
  %i.ea = and i64 %i.dz, 255
  %i.eb = and i64 %i.do, -256
  %i.ec = add i64 %i.eb, 256
  %i.ed = or disjoint i64 %i.ea, %i.ec
  store i64 %i.ed, ptr %.1.i, align 8, !tbaa !2569
  br label %_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit

_ZN13duckdb_yyjsonL22yyjson_mut_obj_add_valEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKcS3_.exit: ; preds = %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit.us, %._crit_edge, %bb.x, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit, %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit, %bb.z
  ret ptr %.1.i

_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i: ; preds = %.lr.ph, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit
  %.076 = phi i64 [ %i.et, %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_13ProfilingNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 noundef %.076)
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1881
  store ptr %i.ef, ptr %3, align 8
  call void @_ZNK6duckdb12optional_ptrINS_13ProfilingNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.eg = load ptr, ptr %3, align 8, !tbaa !2673
  %i.eh = call fastcc noundef ptr @_ZN6duckdbL15ToJSONRecursiveEPN13duckdb_yyjson14yyjson_mut_docERNS_13ProfilingNodeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(208) %i.eg) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ei = load i64, ptr %.1.i24, align 8, !tbaa !2569 ; 4 uses
  %i.ej = and i64 %i.ei, 7
  %i.ek = icmp eq i64 %i.ej, 6
  %i.el = icmp ne ptr %i.eh, null
  %i.em = and i1 %i.el, %i.ek
  br i1 %i.em, label %bb.aa, label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit, !prof !2570

bb.aa:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i
  %4 = and i64 %i.ei, 254
  %5 = and i64 %i.ei, -256
  %i.en = add i64 %5, 256
  %6 = or disjoint i64 %i.en, %4
  store i64 %6, ptr %.1.i24, align 8, !tbaa !2569
  %i.eo = icmp ult i64 %i.ei, 256
  br i1 %i.eo, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load ptr, ptr %i.ck, align 8, !tbaa !1232
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !2571
  store ptr %i.eh, ptr %i.eq, align 8, !tbaa !2571
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sink85 = phi ptr [ %i.er, %bb.ab ], [ %i.eh, %bb.aa ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store ptr %.sink85, ptr %i.es, align 8, !tbaa !2571
  store ptr %i.eh, ptr %i.ck, align 8, !tbaa !1232
  br label %_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit

_ZN13duckdb_yyjsonL21yyjson_mut_arr_appendEPNS_14yyjson_mut_valES1_.exit: ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i, %bb.ac
  %i.et = add nuw i64 %.076, 1                    ; 2 uses
  %i.eu = load ptr, ptr %i.ch, align 8, !tbaa !2670
  %i.ev = load ptr, ptr %i.cg, align 8, !tbaa !2671
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 3
  %i.fa = icmp ult i64 %i.et, %i.ez
  br i1 %i.fa, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit.i, label %._crit_edge, !llvm.loop !6158
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19ConvertedJSONHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !6161 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2676   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN13duckdb_yyjson19yyjson_mut_doc_freeEPNS_14yyjson_mut_docE(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2680 ; 2 uses
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !6162 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2479   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !1240

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.594, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !1204   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef i64 @_ZN6duckdb10FileHandle5WriteEPvm(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22EraseQueryRootSettingsESt13unordered_setINS_10MetricTypeENS_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_set") align 8 %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !6163 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode.3409", align 8 ; 4 uses
  %3 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !1739
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !1740
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !1291
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.017.021 = load ptr, ptr %i.f, align 8, !tbaa !1311 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.017.021, null
  br i1 %.not22, label %._crit_edge28, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1738 ; 2 uses
  %.not2024 = icmp eq ptr %.pre, null
  br i1 %.not2024, label %._crit_edge28, label %.lr.ph27

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.sroa.017.023 = phi ptr [ %.sroa.017.0, %bb.h ], [ %.sroa.017.021, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 8 ; 5 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1969
  %i.i = invoke noundef zeroext i1 @_ZN6duckdb12MetricsUtils17IsOptimizerMetricENS_10MetricTypeE(i8 noundef zeroext %i.h)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.g, align 1, !tbaa !1969
  %i.k = invoke noundef zeroext i1 @_ZN6duckdb12MetricsUtils19IsPhaseTimingMetricENS_10MetricTypeE(i8 noundef zeroext %i.j)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.g, align 1, !tbaa !1969
  %i.m = invoke noundef zeroext i1 @_ZN6duckdb12MetricsUtils17IsRootScopeMetricENS_10MetricTypeE(i8 noundef zeroext %i.l)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %3, ptr %2, align 8, !tbaa !2547
  %i.n = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE6insertERKS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE6insertERKS1_.exit, %bb.f
  %.sroa.017.0 = load ptr, ptr %.sroa.017.023, align 8, !tbaa !1311 ; 2 uses
  %.not = icmp eq ptr %.sroa.017.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge28:                                    ; preds = %_ZNSt13unordered_setIN6duckdb10MetricTypeENS0_22MetricTypeHashFunctionESt8equal_toIS1_ESaIS1_EE5eraseERKS1_.exit, %bb.a, %._crit_edge
  %i.o = load ptr, ptr %1, align 8, !tbaa !1739   ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !1739
end_hunk_2
