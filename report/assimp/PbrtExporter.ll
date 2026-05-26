inline.NumInlined: 1466
inline.NumDeleted: 366
begin_hunk_0_@_ZN6Assimp12PbrtExporter13WriteTexturesEv:bb.a
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.kz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ky, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.la = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.la, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.la, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.bi, !llvm.loop !93

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.lb = icmp eq ptr %.19.i.i.i, %i.ar
  br i1 %i.lb, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ld = load i64, ptr %i.lc, align 8            ; 3 uses
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.bj
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ld, i64 %i.kp)
  %i.lf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = call i32 @memcmp(ptr noundef %i.ks, ptr noundef %i.lg, i64 noundef %.sroa.speculated.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.lh, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.bj
  %i.li = sub i64 %i.kp, %i.ld
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.li, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.lh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.lj = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.lj, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.bh, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.62, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit.thread
  %i.ll = load ptr, ptr %4, align 8
  %i.lm = load i64, ptr %i.u, align 8
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.ll, i64 noundef %i.lm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit168 unwind label %.loopexit ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit168: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ln, ptr noundef nonnull @.str.63, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit168
  %i.lp = load ptr, ptr %5, align 8
  %i.lq = load i64, ptr %i.w, align 8
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ln, ptr noundef %i.lp, i64 noundef %i.lq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit172 unwind label %.loopexit ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit172: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull @.str.64, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit172
  %i.lt = load ptr, ptr %6, align 8
  %i.lu = load i64, ptr %i.y, align 8
  %i.lv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef %i.lt, i64 noundef %i.lu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit176 unwind label %.loopexit ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit176: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit174
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lv, ptr noundef nonnull @.str.65, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit176
  %i.lx = load ptr, ptr %2, align 8
  %i.ly = load i64, ptr %i.q, align 8
  %i.lz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lv, ptr noundef %i.lx, i64 noundef %i.ly)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit180 unwind label %.loopexit ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit180: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit178
  %i.ma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef nonnull @.str.66, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit180
  %i.mb = load ptr, ptr %3, align 8
  %i.mc = load i64, ptr %i.s, align 8
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef %i.mb, i64 noundef %i.mc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit184 unwind label %.loopexit ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit184: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = getelementptr i8, ptr %i.me, i64 -24
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds i8, ptr %i.md, i64 %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load i64, ptr %i.mi, align 8
  %.not.i185 = icmp eq i64 %i.mj, 0
  br i1 %.not.i185, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit184
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bl:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit184
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.md, i8 noundef signext 10)
          to label %bb.bm unwind label %.loopexit ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.02931.i = load ptr, ptr %i.aq, align 8        ; 2 uses
  %.not32.i = icmp eq ptr %.02931.i, null
  br i1 %.not32.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bm
  %i.mm = load i64, ptr %i.u, align 8             ; 3 uses
  %i.mn = load ptr, ptr %4, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i
  %.02933.i = phi ptr [ %.02931.i, %.lr.ph.i ], [ %.029.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.02933.i, i64 40
  %i.mp = load i64, ptr %i.mo, align 8            ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.mp, i64 %i.mm) ; 3 uses
  %i.mq = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.mq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.bn
  %i.mr = getelementptr inbounds nuw i8, ptr %.02933.i, i64 32
  %i.ms = load ptr, ptr %i.mr, align 8
  %i.mt = call i32 @memcmp(ptr noundef %i.mn, ptr noundef %i.ms, i64 noundef %.sroa.speculated.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.bn
  %i.mu = sub i64 %i.mm, %i.mp
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.mu, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.mt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.mv = icmp slt i32 %.0.i.i.i.i, 0             ; 2 uses
  %.in.v.i = select i1 %i.mv, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02933.i, i64 %.in.v.i
  %.029.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i339 = icmp eq ptr %.029.i, null
  br i1 %.not.i339, label %._crit_edge.i, label %bb.bn, !llvm.loop !94

._crit_edge.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  br i1 %i.mv, label %._crit_edge.thread.i, label %bb.bp

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.bm
  %.028.lcssa39.i = phi ptr [ %.02933.i, %._crit_edge.i ], [ %i.ar, %bb.bm ] ; 4 uses
  %i.mw = load ptr, ptr %i.as, align 8
  %i.mx = icmp eq ptr %.028.lcssa39.i, %i.mw
  br i1 %i.mx, label %select.unfold, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.thread.i
  %i.my = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.my, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre591 = load i64, ptr %i.u, align 8          ; 2 uses
  %.pre596.a = call i64 @llvm.umin.i64(i64 %.pre591, i64 %.pre)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge.i
  %.sroa.speculated.i.i.i5.i.pre-phi = phi i64 [ %.pre596.a, %bb.bo ], [ %.sroa.speculated.i.i.i.i, %._crit_edge.i ] ; 2 uses
  %i.mz = phi i64 [ %.pre591, %bb.bo ], [ %i.mm, %._crit_edge.i ]
  %i.na = phi i64 [ %.pre, %bb.bo ], [ %i.mp, %._crit_edge.i ]
  %.028.lcssa38.i = phi ptr [ %.028.lcssa39.i, %bb.bo ], [ %.02933.i, %._crit_edge.i ]
  %.sroa.014.0.i = phi ptr [ %i.my, %bb.bo ], [ %.02933.i, %._crit_edge.i ]
  %i.nb = icmp eq i64 %.sroa.speculated.i.i.i5.i.pre-phi, 0
  br i1 %i.nb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i: ; preds = %bb.bp
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 32
  %i.nd = load ptr, ptr %4, align 8
  %i.ne = load ptr, ptr %i.nc, align 8
  %i.nf = call i32 @memcmp(ptr noundef %i.ne, ptr noundef %i.nd, i64 noundef %.sroa.speculated.i.i.i5.i.pre-phi) #24 ; 2 uses
  %.not.i.i.i7.i = icmp eq i32 %i.nf, 0
  br i1 %.not.i.i.i7.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i, %bb.bp
  %i.ng = sub i64 %i.na, %i.mz
  %spec.select7.i.i.i.i10.i = call i64 @llvm.smax.i64(i64 %i.ng, i64 -2147483648)
  %.08.i.i.i.i11.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i, i64 2147483647)
  %.0.i6.i.i.i12.i = trunc nsw i64 %.08.i.i.i.i11.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i
  %.0.i.i.i8.i = phi i32 [ %i.nf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i ], [ %.0.i6.i.i.i12.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i ]
  %i.nh = icmp slt i32 %.0.i.i.i8.i, 0
  br i1 %i.nh, label %select.unfold, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.028.lcssa39.i, %._crit_edge.thread.i ], [ %.028.lcssa38.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ] ; 4 uses
  %i.ni = icmp eq ptr %.sroa.4.0.i.ph, %i.ar
  br i1 %i.ni, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i, label %bb.bq

bb.bq:                                            ; preds = %select.unfold
  %i.nj = load i64, ptr %i.u, align 8             ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.nl = load i64, ptr %i.nk, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i306 = call i64 @llvm.umin.i64(i64 %i.nl, i64 %i.nj) ; 2 uses
  %i.nm = icmp eq i64 %.sroa.speculated.i.i.i.i.i306, 0
  br i1 %i.nm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i311, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i307

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i307: ; preds = %bb.bq
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = load ptr, ptr %4, align 8
  %i.nq = call i32 @memcmp(ptr noundef %i.np, ptr noundef %i.no, i64 noundef %.sroa.speculated.i.i.i.i.i306) #24 ; 2 uses
  %.not.i.i.i.i.i308 = icmp eq i32 %i.nq, 0
  br i1 %.not.i.i.i.i.i308, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i311, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i309

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i311: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i307, %bb.bq
  %i.nr = sub i64 %i.nj, %i.nl
  %spec.select7.i.i.i.i.i.i312 = call i64 @llvm.smax.i64(i64 %i.nr, i64 -2147483648)
  %.08.i.i.i.i.i.i313 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i312, i64 2147483647)
  %.0.i6.i.i.i.i.i314 = trunc nsw i64 %.08.i.i.i.i.i.i313 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i309

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i309: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i311, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i307
  %.0.i.i.i.i.i310 = phi i32 [ %i.nq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i307 ], [ %.0.i6.i.i.i.i.i314, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i311 ]
  %i.ns = icmp slt i32 %.0.i.i.i.i.i310, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i309, %select.unfold
  %i.nt = phi i1 [ %i.ns, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i309 ], [ true, %select.unfold ]
  %i.nu = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
          to label %.noexc316 unwind label %.loopexit ; 2 uses

.noexc316:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull %i.nu, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc317 unwind label %.loopexit

.noexc317:                                        ; preds = %.noexc316
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.nt, ptr noundef nonnull %i.nu, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #24
  %i.nv = load i64, ptr %i.at, align 8
  %i.nw = add i64 %i.nv, 1
  store i64 %i.nw, ptr %i.at, align 8
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %.noexc317, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  switch i32 %.044573, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit271 [
    i32 12, label %bb.br
    i32 1, label %bb.br
  ]

bb.br:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.nx = invoke noundef zeroext i1 @_ZN6Assimp12PbrtExporter19TextureHasAlphaMaskERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bs unwind label %.loopexit

bb.bs:                                            ; preds = %bb.br
  br i1 %i.nx, label %bb.bt, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit271

bb.bt:                                            ; preds = %bb.bs
  %i.ny = load i64, ptr %i.w, align 8
  %i.nz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.ny, ptr noundef nonnull @.str.56, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit190 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit190: ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store ptr %i.au, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.au, ptr noundef nonnull align 1 dereferenceable(6) @.str.67, i64 6, i1 false)
  store i64 6, ptr %i.av, align 8
  store i8 0, ptr %i.bb, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.oa = load i64, ptr %i.q, align 8, !noalias !95 ; 2 uses
  %i.ob = icmp ugt i64 %i.oa, 4611686018427387897
  br i1 %i.ob, label %bb.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i195

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit190
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #25
          to label %.noexc200 unwind label %.loopexit.split-lp414

.noexc200:                                        ; preds = %bb.bu
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit190
  %i.oc = load ptr, ptr %2, align 8, !noalias !95
  %i.od = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.oc, i64 noundef %i.oa)
          to label %.noexc201 unwind label %.loopexit413 ; 6 uses

.noexc201:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i195
  store ptr %i.aw, ptr %15, align 8, !alias.scope !95
  %i.oe = load ptr, ptr %i.od, align 8            ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 5 uses
  %i.og = icmp eq ptr %i.oe, %i.of
  br i1 %i.og, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

bb.bv:                                            ; preds = %.noexc201
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oi = load i64, ptr %i.oh, align 8            ; 3 uses
  %i.oj = icmp ult i64 %i.oi, 16
  call void @llvm.assume(i1 %i.oj)
  %i.ok = add nuw nsw i64 %i.oi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.of, i64 %i.ok, i1 false)
  br label %bb.bw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %.noexc201
  store ptr %i.oe, ptr %15, align 8, !alias.scope !95
  %i.ol = load i64, ptr %i.of, align 8
  store i64 %i.ol, ptr %i.aw, align 8, !alias.scope !95
  %.phi.trans.insert.i197 = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %.pre.i198 = load i64, ptr %.phi.trans.insert.i197, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.bv
  %i.om = phi i64 [ %i.oi, %bb.bv ], [ %.pre.i198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store i64 %i.om, ptr %i.ax, align 8, !alias.scope !95
  store ptr %i.of, ptr %i.od, align 8
  store i64 0, ptr %i.on, align 8
  store i8 0, ptr %i.of, align 8
  %i.oo = load ptr, ptr %4, align 8               ; 6 uses
  %i.op = icmp eq ptr %i.oo, %i.t
  %i.oq = load ptr, ptr %15, align 8              ; 5 uses
  %i.or = icmp eq ptr %i.oq, %i.aw                ; 2 uses
  br i1 %i.op, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i207: ; preds = %bb.bw
  br i1 %i.or, label %bb.bx, label %.thread.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i202: ; preds = %bb.bw
  br i1 %i.or, label %bb.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i203

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i207
  %i.os = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.ot = icmp ult i64 %i.os, 16
  call void @llvm.assume(i1 %i.ot)
  switch i64 %i.os, label %bb.bz [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205
    i64 1, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx
  %i.ou = load i8, ptr %i.oq, align 1
  store i8 %i.ou, ptr %i.oo, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %i.oq, i64 %i.os, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205: ; preds = %bb.bz, %bb.by, %bb.bx
  %i.ov = load i64, ptr %i.ax, align 8            ; 2 uses
  store i64 %i.ov, ptr %i.u, align 8
  %i.ow = load ptr, ptr %4, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov
  store i8 0, ptr %i.ox, align 1
  %.pre.i206 = load ptr, ptr %15, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209

.thread.i208:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i207
  store ptr %i.oq, ptr %4, align 8
  %i.oy = load <2 x i64>, ptr %i.ax, align 8
  store <2 x i64> %i.oy, ptr %i.u, align 8
  br label %bb.cb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i203: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i202
  %i.oz = load i64, ptr %i.t, align 8
  store ptr %i.oq, ptr %4, align 8
  %i.pa = load <2 x i64>, ptr %i.ax, align 8
  store <2 x i64> %i.pa, ptr %i.u, align 8
  %.not.i204 = icmp eq ptr %i.oo, null
  br i1 %.not.i204, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i203
  store ptr %i.oo, ptr %15, align 8
  store i64 %i.oz, ptr %i.aw, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i203, %.thread.i208
  store ptr %i.aw, ptr %15, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205, %bb.ca, %bb.cb
  %i.pb = phi ptr [ %.pre.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i205 ], [ %i.oo, %bb.ca ], [ %i.aw, %bb.cb ]
  store i64 0, ptr %i.ax, align 8
  store i8 0, ptr %i.pb, align 1
  %i.pc = load ptr, ptr %15, align 8              ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.aw
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit209
  %i.pe = load i64, ptr %i.aw, align 8
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

end_hunk_0
begin_hunk_1_@_ZN6Assimp12PbrtExporter13WriteTexturesEv:bb.a
  %i.ps = call i32 @memcmp(ptr noundef %i.pr, ptr noundef %i.pm, i64 noundef %.sroa.speculated.i.i.i.i.i.i220) #24 ; 2 uses
  %.not.i.i.i.i.i.i222 = icmp eq i32 %i.ps, 0
  br i1 %.not.i.i.i.i.i.i222, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i242, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i223

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i242: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i221, %bb.cc
  %i.pt = sub i64 %i.po, %i.pl
  %spec.select7.i.i.i.i.i.i.i243 = call i64 @llvm.smax.i64(i64 %i.pt, i64 -2147483648)
  %.08.i.i.i.i.i.i.i244 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i243, i64 2147483647)
  %.0.i6.i.i.i.i.i.i245 = trunc nsw i64 %.08.i.i.i.i.i.i.i244 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i223

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i223: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i242, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i221
  %.0.i.i.i.i.i.i224 = phi i32 [ %i.ps, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i221 ], [ %.0.i6.i.i.i.i.i.i245, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i242 ]
  %i.pu = icmp slt i32 %.0.i.i.i.i.i.i224, 0      ; 2 uses
  %.19.i.i.i225 = select i1 %i.pu, ptr %.0811.i.i.i219, ptr %.012.i.i.i218 ; 4 uses
  %.1.in.v.i.i.i226 = select i1 %i.pu, i64 24, i64 16
  %.1.in.i.i.i227 = getelementptr inbounds nuw i8, ptr %.012.i.i.i218, i64 %.1.in.v.i.i.i226
  %.1.i.i.i228 = load ptr, ptr %.1.in.i.i.i227, align 8 ; 2 uses
  %.not.i.i.i229 = icmp eq ptr %.1.i.i.i228, null
  br i1 %.not.i.i.i229, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i230, label %bb.cc, !llvm.loop !93

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i230: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i223
  %i.pv = icmp eq ptr %.19.i.i.i225, %i.ar
  br i1 %i.pv, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246.thread, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i230
  %i.pw = getelementptr inbounds nuw i8, ptr %.19.i.i.i225, i64 40
  %i.px = load i64, ptr %i.pw, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i231 = call i64 @llvm.umin.i64(i64 %i.px, i64 %i.pl) ; 2 uses
  %i.py = icmp eq i64 %.sroa.speculated.i.i.i.i.i231, 0
  br i1 %i.py, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i238, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i232

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i232: ; preds = %bb.cd
  %i.pz = getelementptr inbounds nuw i8, ptr %.19.i.i.i225, i64 32
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = call i32 @memcmp(ptr noundef %i.pm, ptr noundef %i.qa, i64 noundef %.sroa.speculated.i.i.i.i.i231) #24 ; 2 uses
  %.not.i.i.i.i.i233 = icmp eq i32 %i.qb, 0
  br i1 %.not.i.i.i.i.i233, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i238, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i238: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i232, %bb.cd
  %i.qc = sub i64 %i.pl, %i.px
  %spec.select7.i.i.i.i.i.i239 = call i64 @llvm.smax.i64(i64 %i.qc, i64 -2147483648)
  %.08.i.i.i.i.i.i240 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i239, i64 2147483647)
  %.0.i6.i.i.i.i.i241 = trunc nsw i64 %.08.i.i.i.i.i.i240 to i32
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i232, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i238
  %.0.i.i.i.i.i235 = phi i32 [ %i.qb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i232 ], [ %.0.i6.i.i.i.i.i241, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i238 ]
  %i.qd = icmp slt i32 %.0.i.i.i.i.i235, 0
  br i1 %i.qd, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246.thread, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit271

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246
  %i.qe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.62, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246.thread
  %i.qf = load ptr, ptr %4, align 8
  %i.qg = load i64, ptr %i.u, align 8
  %i.qh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.qf, i64 noundef %i.qg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250 unwind label %.loopexit ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit248
  %i.qi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qh, ptr noundef nonnull @.str.63, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit250
  %i.qj = load ptr, ptr %5, align 8
  %i.qk = load i64, ptr %i.w, align 8
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qh, ptr noundef %i.qj, i64 noundef %i.qk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254 unwind label %.loopexit ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit252
  %i.qm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ql, ptr noundef nonnull @.str.64, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit254
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ql, ptr noundef nonnull @.str.65, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
  %i.qo = load ptr, ptr %2, align 8
  %i.qp = load i64, ptr %i.q, align 8
  %i.qq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ql, ptr noundef %i.qo, i64 noundef %i.qp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit260 unwind label %.loopexit ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit260: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qq, ptr noundef nonnull @.str.66, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit260
  %i.qs = load ptr, ptr %3, align 8
  %i.qt = load i64, ptr %i.s, align 8
  %i.qu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qq, ptr noundef %i.qs, i64 noundef %i.qt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit264 unwind label %.loopexit ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit264: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = getelementptr i8, ptr %i.qv, i64 -24
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds i8, ptr %i.qu, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.ra = load i64, ptr %i.qz, align 8
  %.not.i265 = icmp eq i64 %i.ra, 0
  br i1 %.not.i265, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit264
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.cg unwind label %.loopexit ; 0 uses

bb.cf:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit264
  %i.rc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, i8 noundef signext 10)
          to label %bb.cg unwind label %.loopexit ; 0 uses

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.02931.i342 = load ptr, ptr %i.aq, align 8     ; 2 uses
  %.not32.i343 = icmp eq ptr %.02931.i342, null
  br i1 %.not32.i343, label %._crit_edge.thread.i373, label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %bb.cg
  %i.rd = load i64, ptr %i.u, align 8             ; 3 uses
  %i.re = load ptr, ptr %4, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i349, %.lr.ph.i344
  %.02933.i345 = phi ptr [ %.02931.i342, %.lr.ph.i344 ], [ %.029.i353, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i349 ] ; 6 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.02933.i345, i64 40
  %i.rg = load i64, ptr %i.rf, align 8            ; 3 uses
  %.sroa.speculated.i.i.i.i346 = call i64 @llvm.umin.i64(i64 %i.rg, i64 %i.rd) ; 3 uses
  %i.rh = icmp eq i64 %.sroa.speculated.i.i.i.i346, 0
  br i1 %i.rh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i375, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i347

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i347: ; preds = %bb.ch
  %i.ri = getelementptr inbounds nuw i8, ptr %.02933.i345, i64 32
  %i.rj = load ptr, ptr %i.ri, align 8
  %i.rk = call i32 @memcmp(ptr noundef %i.re, ptr noundef %i.rj, i64 noundef %.sroa.speculated.i.i.i.i346) #24 ; 2 uses
  %.not.i.i.i.i348 = icmp eq i32 %i.rk, 0
  br i1 %.not.i.i.i.i348, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i375, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i349

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i375: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i347, %bb.ch
  %i.rl = sub i64 %i.rd, %i.rg
  %spec.select7.i.i.i.i.i376 = call i64 @llvm.smax.i64(i64 %i.rl, i64 -2147483648)
  %.08.i.i.i.i.i377 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i376, i64 2147483647)
  %.0.i6.i.i.i.i378 = trunc nsw i64 %.08.i.i.i.i.i377 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i349

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i349: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i375, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i347
  %.0.i.i.i.i350 = phi i32 [ %i.rk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i347 ], [ %.0.i6.i.i.i.i378, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i375 ]
  %i.rm = icmp slt i32 %.0.i.i.i.i350, 0          ; 2 uses
  %.in.v.i351 = select i1 %i.rm, i64 16, i64 24
  %.in.i352 = getelementptr inbounds nuw i8, ptr %.02933.i345, i64 %.in.v.i351
  %.029.i353 = load ptr, ptr %.in.i352, align 8   ; 2 uses
  %.not.i354 = icmp eq ptr %.029.i353, null
  br i1 %.not.i354, label %._crit_edge.i355, label %bb.ch, !llvm.loop !94

._crit_edge.i355:                                 ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i349
  br i1 %i.rm, label %._crit_edge.thread.i373, label %bb.cj

._crit_edge.thread.i373:                          ; preds = %._crit_edge.i355, %bb.cg
  %.028.lcssa39.i374 = phi ptr [ %.02933.i345, %._crit_edge.i355 ], [ %i.ar, %bb.cg ] ; 4 uses
  %i.rn = load ptr, ptr %i.as, align 8
  %i.ro = icmp eq ptr %.028.lcssa39.i374, %i.rn
  br i1 %i.ro, label %select.unfold395, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge.thread.i373
  %i.rp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i374) #28 ; 2 uses
  %.phi.trans.insert592 = getelementptr inbounds nuw i8, ptr %i.rp, i64 40
  %.pre593 = load i64, ptr %.phi.trans.insert592, align 8 ; 2 uses
  %.pre594 = load i64, ptr %i.u, align 8          ; 2 uses
  %.pre595 = call i64 @llvm.umin.i64(i64 %.pre594, i64 %.pre593)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge.i355
  %.sroa.speculated.i.i.i5.i358.pre-phi = phi i64 [ %.pre595, %bb.ci ], [ %.sroa.speculated.i.i.i.i346, %._crit_edge.i355 ] ; 2 uses
  %i.rq = phi i64 [ %.pre594, %bb.ci ], [ %i.rd, %._crit_edge.i355 ]
  %i.rr = phi i64 [ %.pre593, %bb.ci ], [ %i.rg, %._crit_edge.i355 ]
  %.028.lcssa38.i356 = phi ptr [ %.028.lcssa39.i374, %bb.ci ], [ %.02933.i345, %._crit_edge.i355 ]
  %.sroa.014.0.i357 = phi ptr [ %i.rp, %bb.ci ], [ %.02933.i345, %._crit_edge.i355 ]
  %i.rs = icmp eq i64 %.sroa.speculated.i.i.i5.i358.pre-phi, 0
  br i1 %i.rs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i369, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i359

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i359: ; preds = %bb.cj
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i357, i64 32
  %i.ru = load ptr, ptr %4, align 8
  %i.rv = load ptr, ptr %i.rt, align 8
  %i.rw = call i32 @memcmp(ptr noundef %i.rv, ptr noundef %i.ru, i64 noundef %.sroa.speculated.i.i.i5.i358.pre-phi) #24 ; 2 uses
  %.not.i.i.i7.i360 = icmp eq i32 %i.rw, 0
  br i1 %.not.i.i.i7.i360, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i369, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i361

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i369: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i359, %bb.cj
  %i.rx = sub i64 %i.rr, %i.rq
  %spec.select7.i.i.i.i10.i370 = call i64 @llvm.smax.i64(i64 %i.rx, i64 -2147483648)
  %.08.i.i.i.i11.i371 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i370, i64 2147483647)
  %.0.i6.i.i.i12.i372 = trunc nsw i64 %.08.i.i.i.i11.i371 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i361

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i361: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i369, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i359
  %.0.i.i.i8.i362 = phi i32 [ %i.rw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i359 ], [ %.0.i6.i.i.i12.i372, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i369 ]
  %i.ry = icmp slt i32 %.0.i.i.i8.i362, 0
  br i1 %i.ry, label %select.unfold395, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit271

select.unfold395:                                 ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i361, %._crit_edge.thread.i373
  %.sroa.4.0.i366.ph = phi ptr [ %.028.lcssa39.i374, %._crit_edge.thread.i373 ], [ %.028.lcssa38.i356, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i361 ] ; 4 uses
  %i.rz = icmp eq ptr %.sroa.4.0.i366.ph, %i.ar
  br i1 %i.rz, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i326, label %bb.ck

bb.ck:                                            ; preds = %select.unfold395
  %i.sa = load i64, ptr %i.u, align 8             ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i366.ph, i64 40
  %i.sc = load i64, ptr %i.sb, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i321 = call i64 @llvm.umin.i64(i64 %i.sc, i64 %i.sa) ; 2 uses
  %i.sd = icmp eq i64 %.sroa.speculated.i.i.i.i.i321, 0
  br i1 %i.sd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i331, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i322

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i322: ; preds = %bb.ck
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i366.ph, i64 32
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = load ptr, ptr %4, align 8
  %i.sh = call i32 @memcmp(ptr noundef %i.sg, ptr noundef %i.sf, i64 noundef %.sroa.speculated.i.i.i.i.i321) #24 ; 2 uses
  %.not.i.i.i.i.i323 = icmp eq i32 %i.sh, 0
  br i1 %.not.i.i.i.i.i323, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i331, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i324

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i331: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i322, %bb.ck
  %i.si = sub i64 %i.sa, %i.sc
  %spec.select7.i.i.i.i.i.i332 = call i64 @llvm.smax.i64(i64 %i.si, i64 -2147483648)
  %.08.i.i.i.i.i.i333 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i332, i64 2147483647)
  %.0.i6.i.i.i.i.i334 = trunc nsw i64 %.08.i.i.i.i.i.i333 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i324

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i324: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i331, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i322
  %.0.i.i.i.i.i325 = phi i32 [ %i.sh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i322 ], [ %.0.i6.i.i.i.i.i334, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i331 ]
  %i.sj = icmp slt i32 %.0.i.i.i.i.i325, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i326

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i326: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i324, %select.unfold395
  %i.sk = phi i1 [ %i.sj, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i324 ], [ true, %select.unfold395 ]
  %i.sl = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
          to label %.noexc336 unwind label %.loopexit ; 2 uses

.noexc336:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_.exit.i326
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull %i.sl, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc337 unwind label %.loopexit

.noexc337:                                        ; preds = %.noexc336
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.sk, ptr noundef nonnull %i.sl, ptr noundef nonnull %.sroa.4.0.i366.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #24
  %i.sm = load i64, ptr %i.at, align 8
  %i.sn = add i64 %i.sm, 1
  store i64 %i.sn, ptr %i.at, align 8
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit271

.loopexit413:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i195
  %lpad.loopexit415 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp414:                            ; preds = %bb.bu
  %lpad.loopexit.split-lp416 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cl:                                            ; preds = %.loopexit.split-lp414, %.loopexit413
  %lpad.phi417 = phi { ptr, i32 } [ %lpad.loopexit415, %.loopexit413 ], [ %lpad.loopexit.split-lp416, %.loopexit.split-lp414 ]
  %i.so = load ptr, ptr %16, align 8              ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.au
  br i1 %i.sp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %bb.cl
  %i.sq = load i64, ptr %i.au, align 8
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.cn

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit271: ; preds = %.noexc337, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i361, %bb.bs, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit246, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ss = load ptr, ptr %6, align 8               ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.x
  br i1 %i.st, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit271
  %i.su = load i64, ptr %i.x, align 8
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.sw = load ptr, ptr %5, align 8               ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.v
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
  %i.sy = load i64, ptr %i.v, align 8
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ta = load ptr, ptr %4, align 8               ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.t
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280
  %i.tc = load i64, ptr %i.t, align 8
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.te = load ptr, ptr %3, align 8               ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.r
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283
  %i.tg = load i64, ptr %i.r, align 8
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ti = load ptr, ptr %2, align 8               ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.ay
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %i.tk = load i64, ptr %i.ay, align 8
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %bb.f
  %i.tm = add nuw nsw i32 %.045572, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.tm, %i.bm
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !98

bb.cn:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn66 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.pn60.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %lpad.phi417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.tn = load ptr, ptr %6, align 8               ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.x
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.cn
  %i.tp = load i64, ptr %i.x, align 8
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.tr = load ptr, ptr %5, align 8               ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.v
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %i.tt = load i64, ptr %i.v, align 8
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.tv = load ptr, ptr %4, align 8               ; 2 uses
  %i.tw = icmp eq ptr %i.tv, %i.t
  br i1 %i.tw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.tx = load i64, ptr %i.t, align 8
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.ty) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.tz = load ptr, ptr %3, align 8               ; 2 uses
  %i.ua = icmp eq ptr %i.tz, %i.r
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %i.ub = load i64, ptr %i.r, align 8
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.uc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, %bb.i
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ], [ %i.ci, %bb.i ]
end_hunk_1
begin_hunk_2_@_ZN6Assimp12PbrtExporter9WriteMeshEP6aiMesh:._crit_edge.i.i
  %.sroa.630.0.copyload = load float, ptr %.sroa.630.0..sroa_idx, align 4
  %i.ow = fpext float %.sroa.028.0.copyload to double
  %i.ox = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.ow)
          to label %_ZNSolsEf.exit unwind label %bb.bp ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %bb.bn
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260: ; preds = %_ZNSolsEf.exit
  %i.oz = fpext float %.sroa.529.0.copyload to double
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, double noundef %i.oz)
          to label %_ZNSolsEf.exit262 unwind label %bb.bp ; 2 uses

_ZNSolsEf.exit262:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pa, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264: ; preds = %_ZNSolsEf.exit262
  %i.pc = fpext float %.sroa.630.0.copyload to double
  %i.pd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pa, double noundef %i.pc)
          to label %_ZNSolsEf.exit266 unwind label %bb.bp

_ZNSolsEf.exit266:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264
  %i.pe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull @.str.147, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268 unwind label %bb.bp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268: ; preds = %_ZNSolsEf.exit266
  %i.pf = and i64 %indvars.iv370, 3
  %i.pg = icmp eq i64 %i.pf, 3
  br i1 %i.pg, label %bb.bo, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268
  %i.ph = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.145, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270 unwind label %bb.bp ; 0 uses

bb.bp:                                            ; preds = %bb.bo, %_ZNSolsEf.exit266, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264, %_ZNSolsEf.exit262, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260, %_ZNSolsEf.exit, %bb.bn
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit253

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270: ; preds = %bb.bo, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %i.pj = load i32, ptr %i.oq, align 4
  %i.pk = zext i32 %i.pj to i64
  %i.pl = icmp samesign ult i64 %indvars.iv.next371, %i.pk
  br i1 %i.pl, label %bb.bn, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255._crit_edge, !llvm.loop !142

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit257: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit255._crit_edge
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8
  %.not108 = icmp eq ptr %i.pn, null
  br i1 %.not108, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274, label %bb.bq

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit257
  %i.po = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.148, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272.preheader unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272.preheader: ; preds = %bb.bq
  %i.pp = load i32, ptr %i.oq, align 4
  %.not365 = icmp eq i32 %i.pp, 0
  br i1 %.not365, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272._crit_edge, label %.lr.ph358

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272.preheader
  %i.pq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274 unwind label %bb.ab ; 0 uses

.lr.ph358:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272.preheader ] ; 3 uses
  %i.pr = load ptr, ptr %i.pm, align 8
  %i.ps = getelementptr inbounds nuw [12 x i8], ptr %i.pr, i64 %indvars.iv373 ; 3 uses
  %.sroa.021.0.copyload = load float, ptr %i.ps, align 4
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %.sroa.522.0.copyload = load float, ptr %.sroa.522.0..sroa_idx, align 4
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %.sroa.623.0.copyload = load float, ptr %.sroa.623.0..sroa_idx, align 4
  %i.pt = fpext float %.sroa.021.0.copyload to double
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.pt)
          to label %_ZNSolsEf.exit276 unwind label %bb.bs ; 2 uses

_ZNSolsEf.exit276:                                ; preds = %.lr.ph358
  %i.pv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278 unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278: ; preds = %_ZNSolsEf.exit276
  %i.pw = fpext float %.sroa.522.0.copyload to double
  %i.px = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, double noundef %i.pw)
          to label %_ZNSolsEf.exit280 unwind label %bb.bs ; 2 uses

_ZNSolsEf.exit280:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278
  %i.py = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.px, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282 unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282: ; preds = %_ZNSolsEf.exit280
  %i.pz = fpext float %.sroa.623.0.copyload to double
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.px, double noundef %i.pz)
          to label %_ZNSolsEf.exit284 unwind label %bb.bs

_ZNSolsEf.exit284:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef nonnull @.str.147, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit286 unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit286: ; preds = %_ZNSolsEf.exit284
  %i.qc = and i64 %indvars.iv373, 3
  %i.qd = icmp eq i64 %i.qc, 3
  br i1 %i.qd, label %bb.br, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288

bb.br:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit286
  %i.qe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.145, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288 unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %bb.br, %_ZNSolsEf.exit284, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit282, %_ZNSolsEf.exit280, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit278, %_ZNSolsEf.exit276, %.lr.ph358
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit253

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit288: ; preds = %bb.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit286
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %i.qg = load i32, ptr %i.oq, align 4
  %i.qh = zext i32 %i.qg to i64
  %i.qi = icmp samesign ult i64 %indvars.iv.next374, %i.qh
  br i1 %i.qi, label %.lr.ph358, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272._crit_edge, !llvm.loop !143

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit272._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit257
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8
  %.not109 = icmp eq ptr %i.qk, null
  br i1 %.not109, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292, label %bb.bt

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274
  %i.ql = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.149, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290.preheader unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290.preheader: ; preds = %bb.bt
  %i.qm = load i32, ptr %i.oq, align 4
  %.not366 = icmp eq i32 %i.qm, 0
  br i1 %.not366, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290._crit_edge, label %.lr.ph360

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290.preheader
  %i.qn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292 unwind label %bb.ab ; 0 uses

.lr.ph360:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290.preheader ] ; 3 uses
  %i.qo = load ptr, ptr %i.qj, align 8
  %i.qp = getelementptr inbounds nuw [12 x i8], ptr %i.qo, i64 %indvars.iv376 ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %i.qp, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4
  %i.qq = fpext float %.sroa.0.0.copyload to double
  %i.qr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.qq)
          to label %_ZNSolsEf.exit294 unwind label %bb.bv ; 2 uses

_ZNSolsEf.exit294:                                ; preds = %.lr.ph360
  %i.qs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296 unwind label %bb.bv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296: ; preds = %_ZNSolsEf.exit294
  %i.qt = fpext float %.sroa.5.0.copyload to double
  %i.qu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, double noundef %i.qt)
          to label %_ZNSolsEf.exit298 unwind label %bb.bv ; 2 uses

_ZNSolsEf.exit298:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296
  %i.qv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300 unwind label %bb.bv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300: ; preds = %_ZNSolsEf.exit298
  %i.qw = fpext float %.sroa.6.0.copyload to double
  %i.qx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.qu, double noundef %i.qw)
          to label %_ZNSolsEf.exit302 unwind label %bb.bv

_ZNSolsEf.exit302:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300
  %i.qy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qx, ptr noundef nonnull @.str.147, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304 unwind label %bb.bv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304: ; preds = %_ZNSolsEf.exit302
  %i.qz = and i64 %indvars.iv376, 3
  %i.ra = icmp eq i64 %i.qz, 3
  br i1 %i.ra, label %bb.bu, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %i.rb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.145, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %bb.bv ; 0 uses

bb.bv:                                            ; preds = %bb.bu, %_ZNSolsEf.exit302, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300, %_ZNSolsEf.exit298, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296, %_ZNSolsEf.exit294, %.lr.ph360
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit253

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %bb.bu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %i.rd = load i32, ptr %i.oq, align 4
  %i.re = zext i32 %i.rd to i64
  %i.rf = icmp samesign ult i64 %indvars.iv.next377, %i.re
  br i1 %i.rf, label %.lr.ph360, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290._crit_edge, !llvm.loop !144

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit274
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.rh = load i32, ptr %i.rg, align 4
  %i.ri = icmp eq i32 %i.rh, 2
  br i1 %i.ri, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rk = load i32, ptr %i.rj, align 4
  %i.rl = icmp eq i32 %i.rk, 2
  br i1 %i.rl, label %bb.cd, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = icmp eq i32 %i.rn, 2
  br i1 %i.ro, label %bb.cd, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.rq = load i32, ptr %i.rp, align 4
  %i.rr = icmp eq i32 %i.rq, 2
  br i1 %i.rr, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.rt = load i32, ptr %i.rs, align 4
  %i.ru = icmp eq i32 %i.rt, 2
  br i1 %i.ru, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.rw = load i32, ptr %i.rv, align 4
  %i.rx = icmp eq i32 %i.rw, 2
  br i1 %i.rx, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.rz = load i32, ptr %i.ry, align 4
  %i.sa = icmp eq i32 %i.rz, 2
  br i1 %i.sa, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.sc = load i32, ptr %i.sb, align 4
  %i.sd = icmp eq i32 %i.sc, 2
  br i1 %i.sd, label %bb.cd, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292
  %.lcssa = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292 ], [ 1, %bb.bw ], [ 2, %bb.bx ], [ 3, %bb.by ], [ 4, %bb.bz ], [ 5, %bb.ca ], [ 6, %bb.cb ], [ 7, %bb.cc ]
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %.lcssa
  %i.sg = load ptr, ptr %i.sf, align 8
  %i.sh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.150, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader unwind label %bb.ce ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader: ; preds = %bb.cd
  %i.si = load i32, ptr %i.oq, align 4
  %.not367 = icmp eq i32 %i.si, 0
  br i1 %.not367, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge, label %.lr.ph363

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader
  %i.sj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310 unwind label %bb.ce ; 0 uses

bb.ce:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge, %bb.cd
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit253

.lr.ph363:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308.preheader ] ; 3 uses
  %i.sl = getelementptr inbounds nuw [12 x i8], ptr %i.sg, i64 %indvars.iv383 ; 2 uses
  %i.sm = load float, ptr %i.sl, align 4
  %i.sn = fpext float %i.sm to double
  %i.so = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.sn)
          to label %_ZNSolsEf.exit312 unwind label %bb.cg ; 2 uses

_ZNSolsEf.exit312:                                ; preds = %.lr.ph363
  %i.sp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.so, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314 unwind label %bb.cg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314: ; preds = %_ZNSolsEf.exit312
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sr = load float, ptr %i.sq, align 4
  %i.ss = fpext float %i.sr to double
  %i.st = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.so, double noundef %i.ss)
          to label %_ZNSolsEf.exit316 unwind label %bb.cg

_ZNSolsEf.exit316:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314
  %i.su = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.st, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318 unwind label %bb.cg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318: ; preds = %_ZNSolsEf.exit316
  %i.sv = trunc nuw i64 %indvars.iv383 to i32
  %i.sw = urem i32 %i.sv, 6
  %i.sx = icmp eq i32 %i.sw, 5
  br i1 %i.sx, label %bb.cf, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320

bb.cf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318
  %i.sy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.145, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320 unwind label %bb.cg ; 0 uses

bb.cg:                                            ; preds = %bb.cf, %_ZNSolsEf.exit316, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314, %_ZNSolsEf.exit312, %.lr.ph363
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6aiFaceD2Ev.exit253

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320: ; preds = %bb.cf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.ta = load i32, ptr %i.oq, align 4
  %i.tb = zext i32 %i.ta to i64
  %i.tc = icmp samesign ult i64 %indvars.iv.next384, %i.tb
  br i1 %i.tc, label %.lr.ph363, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge, !llvm.loop !145

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310: ; preds = %bb.cc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit308._crit_edge
  %i.td = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.151, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.te = load ptr, ptr %4, align 8               ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.bb
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322
  %i.tg = load i64, ptr %i.bb, align 8
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %bb.a
  ret void

_ZN6aiFaceD2Ev.exit253:                           ; preds = %bb.bi, %bb.bm, %.thread, %bb.ce, %bb.cg, %bb.bv, %bb.bs, %bb.bp, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %bb.ab
  %.pn113.pn.pn = phi { ptr, i32 } [ %i.sk, %bb.ce ], [ %i.pi, %bb.bp ], [ %i.qf, %bb.bs ], [ %i.rc, %bb.bv ], [ %.pn.pn.pn.pn, %bb.bd ], [ %i.gw, %bb.ab ], [ %.pn103.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %i.sz, %bb.cg ], [ %i.nr, %bb.bi ], [ %.pn113, %bb.bm ], [ %.pn113476, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ti = load ptr, ptr %4, align 8               ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.bb
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZN6aiFaceD2Ev.exit253
  %i.tk = load i64, ptr %i.bb, align 8
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZN6aiFaceD2Ev.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn113.pn.pn

bb.ci:                                            ; preds = %bb.bh
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorC2IJRA17_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(17) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA17_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(17) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyExportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #24
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load i32, ptr %1, align 4               ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !146

_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEE11lower_boundERS3_.exit, %bb.b
end_hunk_2
