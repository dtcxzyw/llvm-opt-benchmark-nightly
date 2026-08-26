Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2int8?download=true
inline.NumInlined: 1198
inline.NumDeleted: 366
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN11NetQuantize13quantize_lstmEv:bb.a
  %i.cq = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.cq, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !61 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.ch) ; 2 uses
  %i.ct = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ct, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !56
  %i.cw = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.cv, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.cx = sub i64 %i.ch, %i.cs
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cx, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cy = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.cy, ptr %i.m, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.m, %bb.e ], [ %i.m, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 9 uses
  %i.cz = icmp eq ptr %.pre, %i.j
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @_ZdlPv(ptr noundef %.pre) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.da = icmp eq ptr %.sroa.0.0.i.i, %i.m
  br i1 %i.da, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.dc = call i64 @fwrite(ptr nonnull @.str.169, i64 53, i64 1, ptr %i.db) #29 ; 0 uses
  br label %.thread288.sink.split

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !48
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.041862
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !54
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !56
  %i.dj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.174, ptr noundef %i.di) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.n, ptr %2, align 8, !tbaa !794
  %i.dk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !35
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %.noexc.i235, label %._crit_edge.i.i234

.noexc.i235:                                      ; preds = %bb.h
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dm, ptr %2, align 8, !tbaa !56
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.dn, ptr %i.n, align 8, !tbaa !161
  br label %._crit_edge.i.i234

._crit_edge.i.i234:                               ; preds = %.noexc.i235, %bb.h
  %i.do = phi ptr [ %i.dm, %.noexc.i235 ], [ %i.n, %bb.h ] ; 2 uses
  switch i64 %i.dk, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i234
  %i.dp = load i8, ptr %i.d, align 16, !tbaa !161
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !161
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i234
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 16 %i.d, i64 %i.dk, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i234
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  store i64 %i.dq, ptr %i.o, align 8, !tbaa !61
  %i.dr = load ptr, ptr %2, align 8, !tbaa !56
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dt = load ptr, ptr %i.l, align 8, !tbaa !120 ; 2 uses
  %.not10.i.i.i238 = icmp eq ptr %i.dt, null
  %.pre867 = load ptr, ptr %2, align 8            ; 4 uses
  br i1 %.not10.i.i.i238, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268, label %.lr.ph.i.i.i239

.lr.ph.i.i.i239:                                  ; preds = %bb.k
  %i.du = load i64, ptr %i.o, align 8, !tbaa !61  ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245, %.lr.ph.i.i.i239
  %.012.i.i.i240 = phi ptr [ %i.dt, %.lr.ph.i.i.i239 ], [ %.1.i.i.i250, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245 ] ; 4 uses
  %.0811.i.i.i241 = phi ptr [ %i.m, %.lr.ph.i.i.i239 ], [ %.19.i.i.i247, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i240, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !61 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i242 = call i64 @llvm.umin.i64(i64 %i.du, i64 %i.dw) ; 2 uses
  %i.dx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i242, 0
  br i1 %i.dx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243: ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i240, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !56
  %i.ea = call i32 @memcmp(ptr noundef %i.dz, ptr noundef %.pre867, i64 noundef %.sroa.speculated.i.i.i.i.i.i242) #25 ; 2 uses
  %.not.i.i.i.i.i.i244 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i244, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243, %bb.l
  %i.eb = sub i64 %i.dw, %i.du
  %spec.select7.i.i.i.i.i.i.i265 = call i64 @llvm.smax.i64(i64 %i.eb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i266 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i265, i64 2147483647)
  %.0.i6.i.i.i.i.i.i267 = trunc nsw i64 %.08.i.i.i.i.i.i.i266 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243
  %.0.i.i.i.i.i.i246 = phi i32 [ %i.ea, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243 ], [ %.0.i6.i.i.i.i.i.i267, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264 ]
  %i.ec = icmp slt i32 %.0.i.i.i.i.i.i246, 0      ; 2 uses
  %.19.i.i.i247 = select i1 %i.ec, ptr %.0811.i.i.i241, ptr %.012.i.i.i240 ; 5 uses
  %.1.in.v.i.i.i248 = select i1 %i.ec, i64 24, i64 16
  %.1.in.i.i.i249 = getelementptr inbounds nuw i8, ptr %.012.i.i.i240, i64 %.1.in.v.i.i.i248
  %.1.i.i.i250 = load ptr, ptr %.1.in.i.i.i249, align 8, !tbaa !138 ; 2 uses
  %.not.i.i.i251 = icmp eq ptr %.1.i.i.i250, null
  br i1 %.not.i.i.i251, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252, label %bb.l, !llvm.loop !799

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245
  %i.ed = icmp eq ptr %.19.i.i.i247, %i.m
  br i1 %i.ed, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268, label %bb.m

bb.m:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252
  %i.ee = getelementptr inbounds nuw i8, ptr %.19.i.i.i247, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !61 ; 2 uses
  %.sroa.speculated.i.i.i.i.i253 = call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.du) ; 2 uses
  %i.eg = icmp eq i64 %.sroa.speculated.i.i.i.i.i253, 0
  br i1 %i.eg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254: ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %.19.i.i.i247, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !56
  %i.ej = call i32 @memcmp(ptr noundef %.pre867, ptr noundef %i.ei, i64 noundef %.sroa.speculated.i.i.i.i.i253) #25 ; 2 uses
  %.not.i.i.i.i.i255 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i.i.i.i255, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254, %bb.m
  %i.ek = sub i64 %i.du, %i.ef
  %spec.select7.i.i.i.i.i.i261 = call i64 @llvm.smax.i64(i64 %i.ek, i64 -2147483648)
  %.08.i.i.i.i.i.i262 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i261, i64 2147483647)
  %.0.i6.i.i.i.i.i263 = trunc nsw i64 %.08.i.i.i.i.i.i262 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254
  %.0.i.i.i.i.i257 = phi i32 [ %i.ej, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254 ], [ %.0.i6.i.i.i.i.i263, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260 ]
  %i.el = icmp slt i32 %.0.i.i.i.i.i257, 0
  %spec.select.i.i258 = select i1 %i.el, ptr %i.m, ptr %.19.i.i.i247
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252, %bb.k
  %.sroa.0.0.i.i259 = phi ptr [ %i.m, %bb.k ], [ %i.m, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252 ], [ %spec.select.i.i258, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256 ] ; 9 uses
  %i.em = icmp eq ptr %.pre867, %i.n
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268
  call void @_ZdlPv(ptr noundef %.pre867) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.en = icmp eq ptr %.sroa.0.0.i.i259, %i.m
  br i1 %i.en, label %.thread285, label %bb.n

.thread285:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ep = call i64 @fwrite(ptr nonnull @.str.169, i64 53, i64 1, ptr %i.eo) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.thread288.sink.split

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.041862
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !54 ; 40 uses
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !56
  %i.ex = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.176, ptr noundef %i.ew) #27 ; 0 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 216
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !576
  %i.fa = icmp eq i32 %i.ez, 2                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 212
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !575 ; 2 uses
  %i.fd = sdiv i32 %i.fc, 2
  %i.fe = select i1 %i.fa, i32 %i.fd, i32 %i.fc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 220 ; 5 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !577
  %i.fh = sdiv i32 %i.fe, %i.fg
  %i.fi = sdiv i32 %i.fh, 4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !80 ; 2 uses
  %i.fm = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !98
  store <2 x ptr> %i.fm, ptr %3, align 16, !tbaa !98
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 80
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !99
  store i64 %i.fo, ptr %i.q, align 16, !tbaa !99
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 88
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !100
  store i32 %i.fq, ptr %i.r, align 8, !tbaa !100
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 96
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !81
  store ptr %i.fs, ptr %i.s, align 16, !tbaa !81
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 104
  %i.fu = load <4 x i32>, ptr %i.ft, align 8, !tbaa !85
  store <4 x i32> %i.fu, ptr %i.t, align 8, !tbaa !85
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 120
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !93
  store i32 %i.fw, ptr %i.u, align 8, !tbaa !93
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 128
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !78
  store i64 %i.fy, ptr %i.v, align 16, !tbaa !78
  %.not.i226 = icmp eq ptr %i.fl, null
  br i1 %.not.i226, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fz = atomicrmw add ptr %i.fl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !80 ; 2 uses
  %i.gd = load <2 x ptr>, ptr %i.ga, align 8, !tbaa !98
  store <2 x ptr> %i.gd, ptr %4, align 16, !tbaa !98
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 80
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !99
  store i64 %i.gf, ptr %i.x, align 16, !tbaa !99
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 88
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !100
  store i32 %i.gh, ptr %i.y, align 8, !tbaa !100
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 96
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !81
  store ptr %i.gj, ptr %i.z, align 16, !tbaa !81
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 104
  %i.gl = load <4 x i32>, ptr %i.gk, align 8, !tbaa !85
  store <4 x i32> %i.gl, ptr %i.aa, align 8, !tbaa !85
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 120
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !93
  store i32 %i.gn, ptr %i.ab, align 8, !tbaa !93
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 128
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !78
  store i64 %i.gp, ptr %i.ac, align 16, !tbaa !78
  %.not.i227 = icmp eq ptr %i.gc, null
  br i1 %.not.i227, label %_ZN4ncnn3Mat6addrefEv.exit228, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.gq = atomicrmw add ptr %i.gc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit228

_ZN4ncnn3Mat6addrefEv.exit228:                    ; preds = %bb.p, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.gr = getelementptr inbounds nuw i8, ptr %i.et, i64 304 ; 4 uses
  %i.gs = load i32, ptr %i.ff, align 4, !tbaa !577
  %i.gt = shl nsw i32 %i.gs, 2
  %i.gu = zext i1 %i.fa to i32                    ; 4 uses
  %i.gv = shl i32 %i.gt, %i.gu
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.gr, i32 noundef %i.fi, i32 noundef %i.gv, ptr noundef null)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit228
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 0, ptr %i.ag, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !tbaa.struct !800
  %i.gw = getelementptr inbounds nuw i8, ptr %i.et, i64 336 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !823
  store ptr %i.gx, ptr %i.ai, align 8, !tbaa !804
  store i8 0, ptr %i.aj, align 1, !tbaa !805
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.gy = load ptr, ptr %6, align 8, !tbaa !82
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %_ZNK4ncnn3Mat5emptyEv.exit229.thread, label %_ZNK4ncnn3Mat5emptyEv.exit229

_ZNK4ncnn3Mat5emptyEv.exit229:                    ; preds = %bb.r
  %i.ha = load i64, ptr %i.ag, align 8, !tbaa !78
  %i.hb = load i32, ptr %i.af, align 8, !tbaa !93
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul i64 %i.ha, %i.hc
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_ZNK4ncnn3Mat5emptyEv.exit229.thread, label %bb.u

bb.s:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit228
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit94

bb.t:                                             ; preds = %bb.q
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.u:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.hh = load i32, ptr %i.ff, align 4, !tbaa !577
  %i.hi = shl nsw i32 %i.fi, 2
  %i.hj = mul i32 %i.hi, %i.hh
  %i.hk = shl i32 %i.hj, %i.gu
  invoke void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.hk, ptr noundef null)
          to label %bb.v unwind label %bb.az

bb.v:                                             ; preds = %bb.u
  %i.hl = icmp eq ptr %i.gr, %8
  %.pre868 = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  br i1 %i.hl, label %_ZN4ncnn3MataSERKS0_.exit108, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i106 = icmp eq ptr %.pre868, null
  br i1 %.not.i106, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hm = atomicrmw add ptr %.pre868, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hn = getelementptr inbounds nuw i8, ptr %i.et, i64 312
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !80 ; 2 uses
  %.not.i109 = icmp eq ptr %i.ho, null
  br i1 %.not.i109, label %.noexc107, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hp = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.aa, label %.noexc107

bb.aa:                                            ; preds = %bb.z
  %i.hr = load ptr, ptr %i.gw, align 8, !tbaa !81 ; 3 uses
  %.not3.i = icmp eq ptr %i.hr, null
  %i.hs = load ptr, ptr %i.gr, align 8, !tbaa !82 ; 3 uses
  br i1 %.not3.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !22
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef %i.hs)
          to label %.noexc107 unwind label %bb.ba, !inline_history !83

bb.ac:                                            ; preds = %bb.aa
  %.not.i224 = icmp eq ptr %i.hs, null
  br i1 %.not.i224, label %.noexc107, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %i.hs) #25
  br label %.noexc107

.noexc107:                                        ; preds = %bb.z, %bb.y, %bb.ab, %bb.ac, %bb.ad
  %i.hw = getelementptr inbounds nuw i8, ptr %i.et, i64 320
  %i.hx = getelementptr inbounds nuw i8, ptr %i.et, i64 328
  %i.hy = getelementptr inbounds nuw i8, ptr %i.et, i64 344
  %i.hz = getelementptr inbounds nuw i8, ptr %i.et, i64 360
  %i.ia = getelementptr inbounds nuw i8, ptr %i.et, i64 368
  %i.ib = load ptr, ptr %i.ak, align 8, !tbaa !80
  %i.ic = load <2 x ptr>, ptr %8, align 16, !tbaa !98
  store <2 x ptr> %i.ic, ptr %i.gr, align 8, !tbaa !98
  %i.id = load i64, ptr %i.al, align 16, !tbaa !99
  store i64 %i.id, ptr %i.hw, align 8, !tbaa !99
  %i.ie = load i32, ptr %i.am, align 8, !tbaa !100
  store i32 %i.ie, ptr %i.hx, align 8, !tbaa !100
  %i.if = load ptr, ptr %i.an, align 16, !tbaa !81
  store ptr %i.if, ptr %i.gw, align 8, !tbaa !81
  %i.ig = load <4 x i32>, ptr %i.ao, align 8, !tbaa !85
  store <4 x i32> %i.ig, ptr %i.hy, align 8, !tbaa !85
  %i.ih = load i32, ptr %i.ap, align 8, !tbaa !93
  store i32 %i.ih, ptr %i.hz, align 8, !tbaa !93
  %i.ii = load i64, ptr %i.aq, align 16, !tbaa !78
  store i64 %i.ii, ptr %i.ia, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit108

_ZN4ncnn3MataSERKS0_.exit108:                     ; preds = %.noexc107, %bb.v
  %i.ij = phi ptr [ %i.ib, %.noexc107 ], [ %.pre868, %bb.v ] ; 2 uses
  %.not.i123 = icmp eq ptr %i.ij, null
  br i1 %.not.i123, label %_ZN4ncnn3MatD2Ev.exit99, label %bb.ae

bb.ae:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit108
  %i.ik = atomicrmw add ptr %i.ij, i32 -1 acq_rel, align 4
  %i.il = icmp eq i32 %i.ik, 1
  br i1 %i.il, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit99

bb.af:                                            ; preds = %bb.ae
  %i.im = load ptr, ptr %i.an, align 16, !tbaa !81 ; 3 uses
  %.not3.i124 = icmp eq ptr %i.im, null
  %i.in = load ptr, ptr %8, align 16, !tbaa !82   ; 3 uses
  br i1 %.not3.i124, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !22
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  invoke void %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef %i.in)
          to label %_ZN4ncnn3MatD2Ev.exit99 unwind label %bb.aj, !inline_history !83

bb.ah:                                            ; preds = %bb.af
  %.not.i216 = icmp eq ptr %i.in, null
  br i1 %.not.i216, label %_ZN4ncnn3MatD2Ev.exit99, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.in) #25
  br label %_ZN4ncnn3MatD2Ev.exit99

bb.aj:                                            ; preds = %bb.ag
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit99:                          ; preds = %bb.ae, %_ZN4ncnn3MataSERKS0_.exit108, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZNK4ncnn3Mat5emptyEv.exit229.thread

_ZNK4ncnn3Mat5emptyEv.exit229.thread:             ; preds = %bb.r, %_ZNK4ncnn3Mat5emptyEv.exit229, %_ZN4ncnn3MatD2Ev.exit99
  %i.it = phi i1 [ false, %_ZN4ncnn3MatD2Ev.exit99 ], [ true, %_ZNK4ncnn3Mat5emptyEv.exit229 ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.iu = load ptr, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  %.not.i127 = icmp eq ptr %i.iu, null
  br i1 %.not.i127, label %_ZN4ncnn3MatD2Ev.exit98, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit229.thread
  %i.iv = atomicrmw add ptr %i.iu, i32 -1 acq_rel, align 4
  %i.iw = icmp eq i32 %i.iv, 1
  br i1 %i.iw, label %bb.al, label %_ZN4ncnn3MatD2Ev.exit98

bb.al:                                            ; preds = %bb.ak
  %i.ix = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 3 uses
  %.not3.i128 = icmp eq ptr %i.ix, null
  %i.iy = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  br i1 %.not3.i128, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef %i.iy)
          to label %_ZN4ncnn3MatD2Ev.exit98 unwind label %bb.ap, !inline_history !83

bb.an:                                            ; preds = %bb.al
  %.not.i214 = icmp eq ptr %i.iy, null
  br i1 %.not.i214, label %_ZN4ncnn3MatD2Ev.exit98, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.iy) #25
  br label %_ZN4ncnn3MatD2Ev.exit98

bb.ap:                                            ; preds = %bb.am
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #30
  unreachable

end_hunk_0
begin_hunk_1_@_ZN11NetQuantize13quantize_lstmEv:bb.a
  call void @free(ptr noundef nonnull %i.ji) #25
  br label %_ZN4ncnn3MatD2Ev.exit97

bb.av:                                            ; preds = %bb.as
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit97:                          ; preds = %bb.aq, %_ZN4ncnn3MatD2Ev.exit98, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.it, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.jo = getelementptr inbounds nuw i8, ptr %i.et, i64 232 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.et, i64 208 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !573
  %i.jr = load i32, ptr %i.ff, align 4, !tbaa !577
  %i.js = shl nsw i32 %i.jr, 2
  %i.jt = shl i32 %i.js, %i.gu
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.jo, i32 noundef %i.jq, i32 noundef %i.jt, ptr noundef null)
          to label %bb.ax unwind label %bb.bu

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i64 0, ptr %i.aw, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !tbaa.struct !800
  %i.ju = getelementptr inbounds nuw i8, ptr %i.et, i64 264 ; 3 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !824
  store ptr %i.jv, ptr %i.ax, align 8, !tbaa !804
  store i8 0, ptr %i.ay, align 1, !tbaa !805
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %bb.ay unwind label %bb.bv

bb.ay:                                            ; preds = %bb.ax
  %i.jw = load ptr, ptr %10, align 8, !tbaa !82
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ay
  %i.jy = load i64, ptr %i.aw, align 8, !tbaa !78
  %i.jz = load i32, ptr %i.av, align 8, !tbaa !93
  %i.ka = sext i32 %i.jz to i64
  %i.kb = mul i64 %i.jy, %i.ka
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.bw

bb.az:                                            ; preds = %bb.u
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit96

bb.ba:                                            ; preds = %bb.ab
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.kf = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 2 uses
  %.not.i135 = icmp eq ptr %i.kf, null
  br i1 %.not.i135, label %_ZN4ncnn3MatD2Ev.exit96, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kg = atomicrmw add ptr %i.kf, i32 -1 acq_rel, align 4
  %i.kh = icmp eq i32 %i.kg, 1
  br i1 %i.kh, label %bb.bc, label %_ZN4ncnn3MatD2Ev.exit96

bb.bc:                                            ; preds = %bb.bb
  %i.ki = load ptr, ptr %i.an, align 16, !tbaa !81 ; 3 uses
  %.not3.i136 = icmp eq ptr %i.ki, null
  %i.kj = load ptr, ptr %8, align 16, !tbaa !82   ; 3 uses
  br i1 %.not3.i136, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kk = load ptr, ptr %i.ki, align 8, !tbaa !22
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  invoke void %i.km(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.kj)
          to label %_ZN4ncnn3MatD2Ev.exit96 unwind label %bb.bg, !inline_history !83

bb.be:                                            ; preds = %bb.bc
  %.not.i210 = icmp eq ptr %i.kj, null
  br i1 %.not.i210, label %_ZN4ncnn3MatD2Ev.exit96, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.kj) #25
  br label %_ZN4ncnn3MatD2Ev.exit96

bb.bg:                                            ; preds = %bb.bd
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit96:                          ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ba, %bb.bb, %bb.az
  %.pn72 = phi { ptr, i32 } [ %i.kd, %bb.az ], [ %i.ke, %bb.bb ], [ %i.ke, %bb.ba ], [ %i.ke, %bb.bd ], [ %i.ke, %bb.be ], [ %i.ke, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit96, %bb.t
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %_ZN4ncnn3MatD2Ev.exit96 ], [ %i.hg, %bb.t ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.kp = load ptr, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  %.not.i139 = icmp eq ptr %i.kp, null
  br i1 %.not.i139, label %_ZN4ncnn3MatD2Ev.exit95, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kq = atomicrmw add ptr %i.kp, i32 -1 acq_rel, align 4
  %i.kr = icmp eq i32 %i.kq, 1
  br i1 %i.kr, label %bb.bj, label %_ZN4ncnn3MatD2Ev.exit95

bb.bj:                                            ; preds = %bb.bi
  %i.ks = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 3 uses
  %.not3.i140 = icmp eq ptr %i.ks, null
  %i.kt = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  br i1 %.not3.i140, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ku = load ptr, ptr %i.ks, align 8, !tbaa !22
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8
  invoke void %i.kw(ptr noundef nonnull align 8 dereferenceable(8) %i.ks, ptr noundef %i.kt)
          to label %_ZN4ncnn3MatD2Ev.exit95 unwind label %bb.bn, !inline_history !83

bb.bl:                                            ; preds = %bb.bj
  %.not.i208 = icmp eq ptr %i.kt, null
  br i1 %.not.i208, label %_ZN4ncnn3MatD2Ev.exit95, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.kt) #25
  br label %_ZN4ncnn3MatD2Ev.exit95

bb.bn:                                            ; preds = %bb.bk
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  %i.ky = extractvalue { ptr, i32 } %i.kx, 0
  call void @__clang_call_terminate(ptr %i.ky) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit95:                          ; preds = %bb.bi, %bb.bh, %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.kz = load ptr, ptr %i.ar, align 8, !tbaa !80 ; 2 uses
  %.not.i143 = icmp eq ptr %i.kz, null
  br i1 %.not.i143, label %_ZN4ncnn3MatD2Ev.exit94, label %bb.bo

bb.bo:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit95
  %i.la = atomicrmw add ptr %i.kz, i32 -1 acq_rel, align 4
  %i.lb = icmp eq i32 %i.la, 1
  br i1 %i.lb, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit94

bb.bp:                                            ; preds = %bb.bo
  %i.lc = load ptr, ptr %i.as, align 8, !tbaa !81 ; 3 uses
  %.not3.i144 = icmp eq ptr %i.lc, null
  %i.ld = load ptr, ptr %5, align 8, !tbaa !82    ; 3 uses
  br i1 %.not3.i144, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.le = load ptr, ptr %i.lc, align 8, !tbaa !22
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8
  invoke void %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef %i.ld)
          to label %_ZN4ncnn3MatD2Ev.exit94 unwind label %bb.bt, !inline_history !83

bb.br:                                            ; preds = %bb.bp
  %.not.i206 = icmp eq ptr %i.ld, null
  br i1 %.not.i206, label %_ZN4ncnn3MatD2Ev.exit94, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.ld) #25
  br label %_ZN4ncnn3MatD2Ev.exit94

bb.bt:                                            ; preds = %bb.bq
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit94:                          ; preds = %bb.bs, %bb.br, %bb.bq, %_ZN4ncnn3MatD2Ev.exit95, %bb.bo, %bb.s
  %.pn72.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.s ], [ %.pn72.pn, %bb.bo ], [ %.pn72.pn, %_ZN4ncnn3MatD2Ev.exit95 ], [ %.pn72.pn, %bb.bq ], [ %.pn72.pn, %bb.br ], [ %.pn72.pn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ey

bb.bu:                                            ; preds = %bb.aw
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit86

bb.bv:                                            ; preds = %bb.ax
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.bw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ll = load i32, ptr %i.jp, align 8, !tbaa !573
  %i.lm = load i32, ptr %i.ff, align 4, !tbaa !577
  %13 = shl i32 %i.ll, 2
  %14 = mul i32 %13, %i.lm
  %i.ln = shl i32 %14, %i.gu
  invoke void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %i.ln, ptr noundef null)
          to label %bb.bx unwind label %bb.ec

bb.bx:                                            ; preds = %bb.bw
  %i.lo = icmp eq ptr %i.jo, %12
  %.pre869 = load ptr, ptr %i.az, align 8, !tbaa !80 ; 3 uses
  br i1 %i.lo, label %_ZN4ncnn3MataSERKS0_.exit105, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not.i103 = icmp eq ptr %.pre869, null
  br i1 %.not.i103, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lp = atomicrmw add ptr %.pre869, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lq = getelementptr inbounds nuw i8, ptr %i.et, i64 240
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !80 ; 2 uses
  %.not.i111 = icmp eq ptr %i.lr, null
  br i1 %.not.i111, label %.noexc104, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ls = atomicrmw add ptr %i.lr, i32 -1 acq_rel, align 4
  %i.lt = icmp eq i32 %i.ls, 1
  br i1 %i.lt, label %bb.cc, label %.noexc104

bb.cc:                                            ; preds = %bb.cb
  %i.lu = load ptr, ptr %i.ju, align 8, !tbaa !81 ; 3 uses
  %.not3.i112 = icmp eq ptr %i.lu, null
  %i.lv = load ptr, ptr %i.jo, align 8, !tbaa !82 ; 3 uses
  br i1 %.not3.i112, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lw = load ptr, ptr %i.lu, align 8, !tbaa !22
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  invoke void %i.ly(ptr noundef nonnull align 8 dereferenceable(8) %i.lu, ptr noundef %i.lv)
          to label %.noexc104 unwind label %bb.ed, !inline_history !83

bb.ce:                                            ; preds = %bb.cc
  %.not.i222 = icmp eq ptr %i.lv, null
  br i1 %.not.i222, label %.noexc104, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @free(ptr noundef nonnull %i.lv) #25
  br label %.noexc104

.noexc104:                                        ; preds = %bb.cb, %bb.ca, %bb.cd, %bb.ce, %bb.cf
  %i.lz = getelementptr inbounds nuw i8, ptr %i.et, i64 248
  %i.ma = getelementptr inbounds nuw i8, ptr %i.et, i64 256
  %i.mb = getelementptr inbounds nuw i8, ptr %i.et, i64 272
  %i.mc = getelementptr inbounds nuw i8, ptr %i.et, i64 288
  %i.md = getelementptr inbounds nuw i8, ptr %i.et, i64 296
  %i.me = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.mf = load <2 x ptr>, ptr %12, align 16, !tbaa !98
  store <2 x ptr> %i.mf, ptr %i.jo, align 8, !tbaa !98
  %i.mg = load i64, ptr %i.ba, align 16, !tbaa !99
  store i64 %i.mg, ptr %i.lz, align 8, !tbaa !99
  %i.mh = load i32, ptr %i.bb, align 8, !tbaa !100
  store i32 %i.mh, ptr %i.ma, align 8, !tbaa !100
  %i.mi = load ptr, ptr %i.bc, align 16, !tbaa !81
  store ptr %i.mi, ptr %i.ju, align 8, !tbaa !81
  %i.mj = load <4 x i32>, ptr %i.bd, align 8, !tbaa !85
  store <4 x i32> %i.mj, ptr %i.mb, align 8, !tbaa !85
  %i.mk = load i32, ptr %i.be, align 8, !tbaa !93
  store i32 %i.mk, ptr %i.mc, align 8, !tbaa !93
  %i.ml = load i64, ptr %i.bf, align 16, !tbaa !78
  store i64 %i.ml, ptr %i.md, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit105

_ZN4ncnn3MataSERKS0_.exit105:                     ; preds = %.noexc104, %bb.bx
  %i.mm = phi ptr [ %i.me, %.noexc104 ], [ %.pre869, %bb.bx ] ; 2 uses
  %.not.i147 = icmp eq ptr %i.mm, null
  br i1 %.not.i147, label %_ZN4ncnn3MatD2Ev.exit93, label %bb.cg

bb.cg:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit105
  %i.mn = atomicrmw add ptr %i.mm, i32 -1 acq_rel, align 4
  %i.mo = icmp eq i32 %i.mn, 1
  br i1 %i.mo, label %bb.ch, label %_ZN4ncnn3MatD2Ev.exit93

bb.ch:                                            ; preds = %bb.cg
  %i.mp = load ptr, ptr %i.bc, align 16, !tbaa !81 ; 3 uses
  %.not3.i148 = icmp eq ptr %i.mp, null
  %i.mq = load ptr, ptr %12, align 16, !tbaa !82  ; 3 uses
  br i1 %.not3.i148, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !22
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8
  invoke void %i.mt(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef %i.mq)
          to label %_ZN4ncnn3MatD2Ev.exit93 unwind label %bb.cl, !inline_history !83

bb.cj:                                            ; preds = %bb.ch
  %.not.i204 = icmp eq ptr %i.mq, null
  br i1 %.not.i204, label %_ZN4ncnn3MatD2Ev.exit93, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @free(ptr noundef nonnull %i.mq) #25
  br label %_ZN4ncnn3MatD2Ev.exit93

bb.cl:                                            ; preds = %bb.ci
  %i.mu = landingpad { ptr, i32 }
          catch ptr null
  %i.mv = extractvalue { ptr, i32 } %i.mu, 0
  call void @__clang_call_terminate(ptr %i.mv) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit93:                          ; preds = %bb.cg, %_ZN4ncnn3MataSERKS0_.exit105, %bb.ci, %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.ay, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnn3MatD2Ev.exit93
  %i.mw = phi i1 [ false, %_ZN4ncnn3MatD2Ev.exit93 ], [ true, %_ZNK4ncnn3Mat5emptyEv.exit ], [ true, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.mx = load ptr, ptr %i.at, align 8, !tbaa !80 ; 2 uses
  %.not.i151 = icmp eq ptr %i.mx, null
  br i1 %.not.i151, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.cm

bb.cm:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.my = atomicrmw add ptr %i.mx, i32 -1 acq_rel, align 4
  %i.mz = icmp eq i32 %i.my, 1
  br i1 %i.mz, label %bb.cn, label %_ZN4ncnn3MatD2Ev.exit92

bb.cn:                                            ; preds = %bb.cm
  %i.na = load ptr, ptr %i.au, align 8, !tbaa !81 ; 3 uses
  %.not3.i152 = icmp eq ptr %i.na, null
  %i.nb = load ptr, ptr %10, align 8, !tbaa !82   ; 3 uses
  br i1 %.not3.i152, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nc = load ptr, ptr %i.na, align 8, !tbaa !22
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8
  invoke void %i.ne(ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef %i.nb)
          to label %_ZN4ncnn3MatD2Ev.exit92 unwind label %bb.cr, !inline_history !83

bb.cp:                                            ; preds = %bb.cn
  %.not.i202 = icmp eq ptr %i.nb, null
  br i1 %.not.i202, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @free(ptr noundef nonnull %i.nb) #25
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.cr:                                            ; preds = %bb.co
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  %i.ng = extractvalue { ptr, i32 } %i.nf, 0
  call void @__clang_call_terminate(ptr %i.ng) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %bb.cm, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.co, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.nh = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 2 uses
  %.not.i155 = icmp eq ptr %i.nh, null
  br i1 %.not.i155, label %_ZN4ncnn3MatD2Ev.exit91, label %bb.cs

bb.cs:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit92
  %i.ni = atomicrmw add ptr %i.nh, i32 -1 acq_rel, align 4
  %i.nj = icmp eq i32 %i.ni, 1
  br i1 %i.nj, label %bb.ct, label %_ZN4ncnn3MatD2Ev.exit91

bb.ct:                                            ; preds = %bb.cs
  %i.nk = load ptr, ptr %i.bh, align 8, !tbaa !81 ; 3 uses
  %.not3.i156 = icmp eq ptr %i.nk, null
  %i.nl = load ptr, ptr %9, align 8, !tbaa !82    ; 3 uses
  br i1 %.not3.i156, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nm = load ptr, ptr %i.nk, align 8, !tbaa !22
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8
  invoke void %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.nk, ptr noundef %i.nl)
          to label %_ZN4ncnn3MatD2Ev.exit91 unwind label %bb.cx, !inline_history !83

bb.cv:                                            ; preds = %bb.ct
  %.not.i200 = icmp eq ptr %i.nl, null
  br i1 %.not.i200, label %_ZN4ncnn3MatD2Ev.exit91, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @free(ptr noundef nonnull %i.nl) #25
  br label %_ZN4ncnn3MatD2Ev.exit91

bb.cx:                                            ; preds = %bb.cu
  %i.np = landingpad { ptr, i32 }
          catch ptr null
  %i.nq = extractvalue { ptr, i32 } %i.np, 0
  call void @__clang_call_terminate(ptr %i.nq) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit91:                          ; preds = %bb.cs, %_ZN4ncnn3MatD2Ev.exit92, %bb.cu, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %i.mw, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit91
  %i.nr = getelementptr inbounds nuw i8, ptr %i.et, i64 224
  store i32 2, ptr %i.nr, align 8, !tbaa !578
  %i.ns = getelementptr inbounds nuw i8, ptr %i.et, i64 592 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN11NetQuantize12quantize_gruEv:bb.a
  %i.cw = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.cw, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !61 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cn) ; 2 uses
  %i.cz = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.cz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !56
  %i.dc = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.db, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.dd = sub i64 %i.cn, %i.cy
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dd, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.dc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.de = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.de, ptr %i.m, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.m, %bb.e ], [ %i.m, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 9 uses
  %i.df = icmp eq ptr %.pre, %i.j
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @_ZdlPv(ptr noundef %.pre) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.dg = icmp eq ptr %.sroa.0.0.i.i, %i.m
  br i1 %i.dg, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.di = call i64 @fwrite(ptr nonnull @.str.169, i64 53, i64 1, ptr %i.dh) #29 ; 0 uses
  br label %.thread288.sink.split

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !48
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.041862
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !56
  %i.dp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 256, ptr noundef nonnull @.str.174, ptr noundef %i.do) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.n, ptr %2, align 8, !tbaa !794
  %i.dq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.dq, ptr %i.a, align 8, !tbaa !35
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i235, label %._crit_edge.i.i234

.noexc.i235:                                      ; preds = %bb.h
  %i.ds = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ds, ptr %2, align 8, !tbaa !56
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.dt, ptr %i.n, align 8, !tbaa !161
  br label %._crit_edge.i.i234

._crit_edge.i.i234:                               ; preds = %.noexc.i235, %bb.h
  %i.du = phi ptr [ %i.ds, %.noexc.i235 ], [ %i.n, %bb.h ] ; 2 uses
  switch i64 %i.dq, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i234
  %i.dv = load i8, ptr %i.d, align 16, !tbaa !161
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !161
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i234
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr nonnull align 16 %i.d, i64 %i.dq, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i234
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  store i64 %i.dw, ptr %i.o, align 8, !tbaa !61
  %i.dx = load ptr, ptr %2, align 8, !tbaa !56
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 0, ptr %i.dy, align 1, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dz = load ptr, ptr %i.l, align 8, !tbaa !120 ; 2 uses
  %.not10.i.i.i238 = icmp eq ptr %i.dz, null
  %.pre867 = load ptr, ptr %2, align 8            ; 4 uses
  br i1 %.not10.i.i.i238, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268, label %.lr.ph.i.i.i239

.lr.ph.i.i.i239:                                  ; preds = %bb.k
  %i.ea = load i64, ptr %i.o, align 8, !tbaa !61  ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245, %.lr.ph.i.i.i239
  %.012.i.i.i240 = phi ptr [ %i.dz, %.lr.ph.i.i.i239 ], [ %.1.i.i.i250, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245 ] ; 4 uses
  %.0811.i.i.i241 = phi ptr [ %i.m, %.lr.ph.i.i.i239 ], [ %.19.i.i.i247, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i240, i64 40
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !61 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i242 = call i64 @llvm.umin.i64(i64 %i.ea, i64 %i.ec) ; 2 uses
  %i.ed = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i242, 0
  br i1 %i.ed, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243: ; preds = %bb.l
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i.i.i240, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !56
  %i.eg = call i32 @memcmp(ptr noundef %i.ef, ptr noundef %.pre867, i64 noundef %.sroa.speculated.i.i.i.i.i.i242) #25 ; 2 uses
  %.not.i.i.i.i.i.i244 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i244, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243, %bb.l
  %i.eh = sub i64 %i.ec, %i.ea
  %spec.select7.i.i.i.i.i.i.i265 = call i64 @llvm.smax.i64(i64 %i.eh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i266 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i265, i64 2147483647)
  %.0.i6.i.i.i.i.i.i267 = trunc nsw i64 %.08.i.i.i.i.i.i.i266 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243
  %.0.i.i.i.i.i.i246 = phi i32 [ %i.eg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i243 ], [ %.0.i6.i.i.i.i.i.i267, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i264 ]
  %i.ei = icmp slt i32 %.0.i.i.i.i.i.i246, 0      ; 2 uses
  %.19.i.i.i247 = select i1 %i.ei, ptr %.0811.i.i.i241, ptr %.012.i.i.i240 ; 5 uses
  %.1.in.v.i.i.i248 = select i1 %i.ei, i64 24, i64 16
  %.1.in.i.i.i249 = getelementptr inbounds nuw i8, ptr %.012.i.i.i240, i64 %.1.in.v.i.i.i248
  %.1.i.i.i250 = load ptr, ptr %.1.in.i.i.i249, align 8, !tbaa !138 ; 2 uses
  %.not.i.i.i251 = icmp eq ptr %.1.i.i.i250, null
  br i1 %.not.i.i.i251, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252, label %bb.l, !llvm.loop !799

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i245
  %i.ej = icmp eq ptr %.19.i.i.i247, %i.m
  br i1 %i.ej, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268, label %bb.m

bb.m:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i247, i64 40
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !61 ; 2 uses
  %.sroa.speculated.i.i.i.i.i253 = call i64 @llvm.umin.i64(i64 %i.el, i64 %i.ea) ; 2 uses
  %i.em = icmp eq i64 %.sroa.speculated.i.i.i.i.i253, 0
  br i1 %i.em, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254: ; preds = %bb.m
  %i.en = getelementptr inbounds nuw i8, ptr %.19.i.i.i247, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !56
  %i.ep = call i32 @memcmp(ptr noundef %.pre867, ptr noundef %i.eo, i64 noundef %.sroa.speculated.i.i.i.i.i253) #25 ; 2 uses
  %.not.i.i.i.i.i255 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i.i.i.i255, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254, %bb.m
  %i.eq = sub i64 %i.ea, %i.el
  %spec.select7.i.i.i.i.i.i261 = call i64 @llvm.smax.i64(i64 %i.eq, i64 -2147483648)
  %.08.i.i.i.i.i.i262 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i261, i64 2147483647)
  %.0.i6.i.i.i.i.i263 = trunc nsw i64 %.08.i.i.i.i.i.i262 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254
  %.0.i.i.i.i.i257 = phi i32 [ %i.ep, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i254 ], [ %.0.i6.i.i.i.i.i263, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i260 ]
  %i.er = icmp slt i32 %.0.i.i.i.i.i257, 0
  %spec.select.i.i258 = select i1 %i.er, ptr %i.m, ptr %.19.i.i.i247
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252, %bb.k
  %.sroa.0.0.i.i259 = phi ptr [ %i.m, %bb.k ], [ %i.m, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4ncnn3MatEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i252 ], [ %spec.select.i.i258, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i256 ] ; 9 uses
  %i.es = icmp eq ptr %.pre867, %i.n
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268
  call void @_ZdlPv(ptr noundef %.pre867) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4ncnn3MatESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.et = icmp eq ptr %.sroa.0.0.i.i259, %i.m
  br i1 %i.et, label %.thread285, label %bb.n

.thread285:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ev = call i64 @fwrite(ptr nonnull @.str.169, i64 53, i64 1, ptr %i.eu) #29 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.thread288.sink.split

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  %i.ew = load ptr, ptr %i.e, align 8, !tbaa !42, !nonnull !41, !align !43
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !48
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.041862
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !54 ; 39 uses
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !56
  %i.fd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fa, ptr noundef nonnull @.str.177, ptr noundef %i.fc) #27 ; 0 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 216
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !533
  %i.fg = icmp eq i32 %i.ff, 2                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 212
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !532 ; 2 uses
  %i.fj = sdiv i32 %i.fi, 2
  %i.fk = select i1 %i.fg, i32 %i.fj, i32 %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ez, i64 208 ; 5 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !530
  %i.fn = sdiv i32 %i.fk, %i.fm
  %i.fo = sdiv i32 %i.fn, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !80 ; 2 uses
  %i.fs = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !98
  store <2 x ptr> %i.fs, ptr %3, align 16, !tbaa !98
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 80
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !99
  store i64 %i.fu, ptr %i.q, align 16, !tbaa !99
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 88
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !100
  store i32 %i.fw, ptr %i.r, align 8, !tbaa !100
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 96
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !81
  store ptr %i.fy, ptr %i.s, align 16, !tbaa !81
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 104
  %i.ga = load <4 x i32>, ptr %i.fz, align 8, !tbaa !85
  store <4 x i32> %i.ga, ptr %i.t, align 8, !tbaa !85
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 120
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !93
  store i32 %i.gc, ptr %i.u, align 8, !tbaa !93
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 128
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !78
  store i64 %i.ge, ptr %i.v, align 16, !tbaa !78
  %.not.i226 = icmp eq ptr %i.fr, null
  br i1 %.not.i226, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gf = atomicrmw add ptr %i.fr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 64
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 72
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !80 ; 2 uses
  %i.gj = load <2 x ptr>, ptr %i.gg, align 8, !tbaa !98
  store <2 x ptr> %i.gj, ptr %4, align 16, !tbaa !98
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 80
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !99
  store i64 %i.gl, ptr %i.x, align 16, !tbaa !99
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 88
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !100
  store i32 %i.gn, ptr %i.y, align 8, !tbaa !100
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 96
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !81
  store ptr %i.gp, ptr %i.z, align 16, !tbaa !81
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 104
  %i.gr = load <4 x i32>, ptr %i.gq, align 8, !tbaa !85
  store <4 x i32> %i.gr, ptr %i.aa, align 8, !tbaa !85
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 120
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !93
  store i32 %i.gt, ptr %i.ab, align 8, !tbaa !93
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i259, i64 128
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !78
  store i64 %i.gv, ptr %i.ac, align 16, !tbaa !78
  %.not.i227 = icmp eq ptr %i.gi, null
  br i1 %.not.i227, label %_ZN4ncnn3Mat6addrefEv.exit228, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.gw = atomicrmw add ptr %i.gi, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit228

_ZN4ncnn3Mat6addrefEv.exit228:                    ; preds = %bb.p, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ez, i64 296 ; 4 uses
  %i.gy = load i32, ptr %i.fl, align 8, !tbaa !530
  %i.gz = mul nsw i32 %i.gy, 3
  %i.ha = zext i1 %i.fg to i32                    ; 4 uses
  %i.hb = shl i32 %i.gz, %i.ha
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.gx, i32 noundef %i.fo, i32 noundef %i.hb, ptr noundef null)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit228
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 0, ptr %i.ag, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !tbaa.struct !800
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ez, i64 328 ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !826
  store ptr %i.hd, ptr %i.ai, align 8, !tbaa !804
  store i8 0, ptr %i.aj, align 1, !tbaa !805
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.he = load ptr, ptr %6, align 8, !tbaa !82
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %_ZNK4ncnn3Mat5emptyEv.exit229.thread, label %_ZNK4ncnn3Mat5emptyEv.exit229

_ZNK4ncnn3Mat5emptyEv.exit229:                    ; preds = %bb.r
  %i.hg = load i64, ptr %i.ag, align 8, !tbaa !78
  %i.hh = load i32, ptr %i.af, align 8, !tbaa !93
  %i.hi = sext i32 %i.hh to i64
  %i.hj = mul i64 %i.hg, %i.hi
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZNK4ncnn3Mat5emptyEv.exit229.thread, label %bb.u

bb.s:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit228
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit94

bb.t:                                             ; preds = %bb.q
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.u:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit229
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.hn = load i32, ptr %i.fl, align 8, !tbaa !530
  %i.ho = mul nsw i32 %i.fo, 3
  %i.hp = mul i32 %i.ho, %i.hn
  %i.hq = shl i32 %i.hp, %i.ha
  invoke void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.hq, ptr noundef null)
          to label %bb.v unwind label %bb.az

bb.v:                                             ; preds = %bb.u
  %i.hr = icmp eq ptr %i.gx, %8
  %.pre868 = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  br i1 %i.hr, label %_ZN4ncnn3MataSERKS0_.exit108, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i106 = icmp eq ptr %.pre868, null
  br i1 %.not.i106, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hs = atomicrmw add ptr %.pre868, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ez, i64 304
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !80 ; 2 uses
  %.not.i109 = icmp eq ptr %i.hu, null
  br i1 %.not.i109, label %.noexc107, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hv = atomicrmw add ptr %i.hu, i32 -1 acq_rel, align 4
  %i.hw = icmp eq i32 %i.hv, 1
  br i1 %i.hw, label %bb.aa, label %.noexc107

bb.aa:                                            ; preds = %bb.z
  %i.hx = load ptr, ptr %i.hc, align 8, !tbaa !81 ; 3 uses
  %.not3.i = icmp eq ptr %i.hx, null
  %i.hy = load ptr, ptr %i.gx, align 8, !tbaa !82 ; 3 uses
  br i1 %.not3.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hz = load ptr, ptr %i.hx, align 8, !tbaa !22
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef %i.hy)
          to label %.noexc107 unwind label %bb.ba, !inline_history !83

bb.ac:                                            ; preds = %bb.aa
  %.not.i224 = icmp eq ptr %i.hy, null
  br i1 %.not.i224, label %.noexc107, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef nonnull %i.hy) #25
  br label %.noexc107

.noexc107:                                        ; preds = %bb.z, %bb.y, %bb.ab, %bb.ac, %bb.ad
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ez, i64 312
  %i.id = getelementptr inbounds nuw i8, ptr %i.ez, i64 320
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ez, i64 336
  %i.if = getelementptr inbounds nuw i8, ptr %i.ez, i64 352
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ez, i64 360
  %i.ih = load ptr, ptr %i.ak, align 8, !tbaa !80
  %i.ii = load <2 x ptr>, ptr %8, align 16, !tbaa !98
  store <2 x ptr> %i.ii, ptr %i.gx, align 8, !tbaa !98
  %i.ij = load i64, ptr %i.al, align 16, !tbaa !99
  store i64 %i.ij, ptr %i.ic, align 8, !tbaa !99
  %i.ik = load i32, ptr %i.am, align 8, !tbaa !100
  store i32 %i.ik, ptr %i.id, align 8, !tbaa !100
  %i.il = load ptr, ptr %i.an, align 16, !tbaa !81
  store ptr %i.il, ptr %i.hc, align 8, !tbaa !81
  %i.im = load <4 x i32>, ptr %i.ao, align 8, !tbaa !85
  store <4 x i32> %i.im, ptr %i.ie, align 8, !tbaa !85
  %i.in = load i32, ptr %i.ap, align 8, !tbaa !93
  store i32 %i.in, ptr %i.if, align 8, !tbaa !93
  %i.io = load i64, ptr %i.aq, align 16, !tbaa !78
  store i64 %i.io, ptr %i.ig, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit108

_ZN4ncnn3MataSERKS0_.exit108:                     ; preds = %.noexc107, %bb.v
  %i.ip = phi ptr [ %i.ih, %.noexc107 ], [ %.pre868, %bb.v ] ; 2 uses
  %.not.i123 = icmp eq ptr %i.ip, null
  br i1 %.not.i123, label %_ZN4ncnn3MatD2Ev.exit99, label %bb.ae

bb.ae:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit108
  %i.iq = atomicrmw add ptr %i.ip, i32 -1 acq_rel, align 4
  %i.ir = icmp eq i32 %i.iq, 1
  br i1 %i.ir, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit99

bb.af:                                            ; preds = %bb.ae
  %i.is = load ptr, ptr %i.an, align 16, !tbaa !81 ; 3 uses
  %.not3.i124 = icmp eq ptr %i.is, null
  %i.it = load ptr, ptr %8, align 16, !tbaa !82   ; 3 uses
  br i1 %.not3.i124, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iu = load ptr, ptr %i.is, align 8, !tbaa !22
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8
  invoke void %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef %i.it)
          to label %_ZN4ncnn3MatD2Ev.exit99 unwind label %bb.aj, !inline_history !83

bb.ah:                                            ; preds = %bb.af
  %.not.i216 = icmp eq ptr %i.it, null
  br i1 %.not.i216, label %_ZN4ncnn3MatD2Ev.exit99, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.it) #25
  br label %_ZN4ncnn3MatD2Ev.exit99

bb.aj:                                            ; preds = %bb.ag
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit99:                          ; preds = %bb.ae, %_ZN4ncnn3MataSERKS0_.exit108, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZNK4ncnn3Mat5emptyEv.exit229.thread

_ZNK4ncnn3Mat5emptyEv.exit229.thread:             ; preds = %bb.r, %_ZNK4ncnn3Mat5emptyEv.exit229, %_ZN4ncnn3MatD2Ev.exit99
  %i.iz = phi i1 [ false, %_ZN4ncnn3MatD2Ev.exit99 ], [ true, %_ZNK4ncnn3Mat5emptyEv.exit229 ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ja = load ptr, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  %.not.i127 = icmp eq ptr %i.ja, null
  br i1 %.not.i127, label %_ZN4ncnn3MatD2Ev.exit98, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit229.thread
  %i.jb = atomicrmw add ptr %i.ja, i32 -1 acq_rel, align 4
  %i.jc = icmp eq i32 %i.jb, 1
  br i1 %i.jc, label %bb.al, label %_ZN4ncnn3MatD2Ev.exit98

bb.al:                                            ; preds = %bb.ak
  %i.jd = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 3 uses
  %.not3.i128 = icmp eq ptr %i.jd, null
  %i.je = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  br i1 %.not3.i128, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !22
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef %i.je)
          to label %_ZN4ncnn3MatD2Ev.exit98 unwind label %bb.ap, !inline_history !83

bb.an:                                            ; preds = %bb.al
  %.not.i214 = icmp eq ptr %i.je, null
  br i1 %.not.i214, label %_ZN4ncnn3MatD2Ev.exit98, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.je) #25
  br label %_ZN4ncnn3MatD2Ev.exit98

bb.ap:                                            ; preds = %bb.am
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #30
  unreachable

end_hunk_2
begin_hunk_3_@_ZN11NetQuantize12quantize_gruEv:bb.a
  br i1 %.not.i212, label %_ZN4ncnn3MatD2Ev.exit97, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.jo) #25
  br label %_ZN4ncnn3MatD2Ev.exit97

bb.av:                                            ; preds = %bb.as
  %i.js = landingpad { ptr, i32 }
          catch ptr null
  %i.jt = extractvalue { ptr, i32 } %i.js, 0
  call void @__clang_call_terminate(ptr %i.jt) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit97:                          ; preds = %bb.aq, %_ZN4ncnn3MatD2Ev.exit98, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.iz, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ez, i64 224 ; 4 uses
  %i.jv = load i32, ptr %i.fl, align 8, !tbaa !530 ; 2 uses
  %i.jw = mul nsw i32 %i.jv, 3
  %i.jx = shl i32 %i.jw, %i.ha
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ju, i32 noundef %i.jv, i32 noundef %i.jx, ptr noundef null)
          to label %bb.ax unwind label %bb.bu

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store i64 0, ptr %i.aw, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.au, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !tbaa.struct !800
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ez, i64 256 ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !827
  store ptr %i.jz, ptr %i.ax, align 8, !tbaa !804
  store i8 0, ptr %i.ay, align 1, !tbaa !805
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %bb.ay unwind label %bb.bv

bb.ay:                                            ; preds = %bb.ax
  %i.ka = load ptr, ptr %10, align 8, !tbaa !82
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.ay
  %i.kc = load i64, ptr %i.aw, align 8, !tbaa !78
  %i.kd = load i32, ptr %i.av, align 8, !tbaa !93
  %i.ke = sext i32 %i.kd to i64
  %i.kf = mul i64 %i.kc, %i.ke
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.bw

bb.az:                                            ; preds = %bb.u
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit96

bb.ba:                                            ; preds = %bb.ab
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.kj = load ptr, ptr %i.ak, align 8, !tbaa !80 ; 2 uses
  %.not.i135 = icmp eq ptr %i.kj, null
  br i1 %.not.i135, label %_ZN4ncnn3MatD2Ev.exit96, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kk = atomicrmw add ptr %i.kj, i32 -1 acq_rel, align 4
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %bb.bc, label %_ZN4ncnn3MatD2Ev.exit96

bb.bc:                                            ; preds = %bb.bb
  %i.km = load ptr, ptr %i.an, align 16, !tbaa !81 ; 3 uses
  %.not3.i136 = icmp eq ptr %i.km, null
  %i.kn = load ptr, ptr %8, align 16, !tbaa !82   ; 3 uses
  br i1 %.not3.i136, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ko = load ptr, ptr %i.km, align 8, !tbaa !22
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  invoke void %i.kq(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef %i.kn)
          to label %_ZN4ncnn3MatD2Ev.exit96 unwind label %bb.bg, !inline_history !83

bb.be:                                            ; preds = %bb.bc
  %.not.i210 = icmp eq ptr %i.kn, null
  br i1 %.not.i210, label %_ZN4ncnn3MatD2Ev.exit96, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @free(ptr noundef nonnull %i.kn) #25
  br label %_ZN4ncnn3MatD2Ev.exit96

bb.bg:                                            ; preds = %bb.bd
  %i.kr = landingpad { ptr, i32 }
          catch ptr null
  %i.ks = extractvalue { ptr, i32 } %i.kr, 0
  call void @__clang_call_terminate(ptr %i.ks) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit96:                          ; preds = %bb.bf, %bb.be, %bb.bd, %bb.ba, %bb.bb, %bb.az
  %.pn72 = phi { ptr, i32 } [ %i.kh, %bb.az ], [ %i.ki, %bb.bb ], [ %i.ki, %bb.ba ], [ %i.ki, %bb.bd ], [ %i.ki, %bb.be ], [ %i.ki, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit96, %bb.t
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %_ZN4ncnn3MatD2Ev.exit96 ], [ %i.hm, %bb.t ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.kt = load ptr, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  %.not.i139 = icmp eq ptr %i.kt, null
  br i1 %.not.i139, label %_ZN4ncnn3MatD2Ev.exit95, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ku = atomicrmw add ptr %i.kt, i32 -1 acq_rel, align 4
  %i.kv = icmp eq i32 %i.ku, 1
  br i1 %i.kv, label %bb.bj, label %_ZN4ncnn3MatD2Ev.exit95

bb.bj:                                            ; preds = %bb.bi
  %i.kw = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 3 uses
  %.not3.i140 = icmp eq ptr %i.kw, null
  %i.kx = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  br i1 %.not3.i140, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ky = load ptr, ptr %i.kw, align 8, !tbaa !22
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8
  invoke void %i.la(ptr noundef nonnull align 8 dereferenceable(8) %i.kw, ptr noundef %i.kx)
          to label %_ZN4ncnn3MatD2Ev.exit95 unwind label %bb.bn, !inline_history !83

bb.bl:                                            ; preds = %bb.bj
  %.not.i208 = icmp eq ptr %i.kx, null
  br i1 %.not.i208, label %_ZN4ncnn3MatD2Ev.exit95, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.kx) #25
  br label %_ZN4ncnn3MatD2Ev.exit95

bb.bn:                                            ; preds = %bb.bk
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit95:                          ; preds = %bb.bi, %bb.bh, %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ld = load ptr, ptr %i.ar, align 8, !tbaa !80 ; 2 uses
  %.not.i143 = icmp eq ptr %i.ld, null
  br i1 %.not.i143, label %_ZN4ncnn3MatD2Ev.exit94, label %bb.bo

bb.bo:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit95
  %i.le = atomicrmw add ptr %i.ld, i32 -1 acq_rel, align 4
  %i.lf = icmp eq i32 %i.le, 1
  br i1 %i.lf, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit94

bb.bp:                                            ; preds = %bb.bo
  %i.lg = load ptr, ptr %i.as, align 8, !tbaa !81 ; 3 uses
  %.not3.i144 = icmp eq ptr %i.lg, null
  %i.lh = load ptr, ptr %5, align 8, !tbaa !82    ; 3 uses
  br i1 %.not3.i144, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.li = load ptr, ptr %i.lg, align 8, !tbaa !22
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  invoke void %i.lk(ptr noundef nonnull align 8 dereferenceable(8) %i.lg, ptr noundef %i.lh)
          to label %_ZN4ncnn3MatD2Ev.exit94 unwind label %bb.bt, !inline_history !83

bb.br:                                            ; preds = %bb.bp
  %.not.i206 = icmp eq ptr %i.lh, null
  br i1 %.not.i206, label %_ZN4ncnn3MatD2Ev.exit94, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.lh) #25
  br label %_ZN4ncnn3MatD2Ev.exit94

bb.bt:                                            ; preds = %bb.bq
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit94:                          ; preds = %bb.bs, %bb.br, %bb.bq, %_ZN4ncnn3MatD2Ev.exit95, %bb.bo, %bb.s
  %.pn72.pn.pn = phi { ptr, i32 } [ %i.hl, %bb.s ], [ %.pn72.pn, %bb.bo ], [ %.pn72.pn, %_ZN4ncnn3MatD2Ev.exit95 ], [ %.pn72.pn, %bb.bq ], [ %.pn72.pn, %bb.br ], [ %.pn72.pn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ey

bb.bu:                                            ; preds = %bb.aw
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit86

bb.bv:                                            ; preds = %bb.ax
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.bw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.lp = load i32, ptr %i.fl, align 8, !tbaa !530 ; 2 uses
  %13 = mul i32 %i.lp, 3
  %i.lq = mul i32 %13, %i.lp
  %14 = shl nuw i32 %i.lq, %i.ha
  invoke void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 noundef %14, ptr noundef null)
          to label %bb.bx unwind label %bb.ec

bb.bx:                                            ; preds = %bb.bw
  %i.lr = icmp eq ptr %i.ju, %12
  %.pre869 = load ptr, ptr %i.az, align 8, !tbaa !80 ; 3 uses
  br i1 %i.lr, label %_ZN4ncnn3MataSERKS0_.exit105, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not.i103 = icmp eq ptr %.pre869, null
  br i1 %.not.i103, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ls = atomicrmw add ptr %.pre869, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !80 ; 2 uses
  %.not.i111 = icmp eq ptr %i.lu, null
  br i1 %.not.i111, label %.noexc104, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lv = atomicrmw add ptr %i.lu, i32 -1 acq_rel, align 4
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %bb.cc, label %.noexc104

bb.cc:                                            ; preds = %bb.cb
  %i.lx = load ptr, ptr %i.jy, align 8, !tbaa !81 ; 3 uses
  %.not3.i112 = icmp eq ptr %i.lx, null
  %i.ly = load ptr, ptr %i.ju, align 8, !tbaa !82 ; 3 uses
  br i1 %.not3.i112, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lz = load ptr, ptr %i.lx, align 8, !tbaa !22
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  invoke void %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef %i.ly)
          to label %.noexc104 unwind label %bb.ed, !inline_history !83

bb.ce:                                            ; preds = %bb.cc
  %.not.i222 = icmp eq ptr %i.ly, null
  br i1 %.not.i222, label %.noexc104, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @free(ptr noundef nonnull %i.ly) #25
  br label %.noexc104

.noexc104:                                        ; preds = %bb.cb, %bb.ca, %bb.cd, %bb.ce, %bb.cf
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ez, i64 240
  %i.md = getelementptr inbounds nuw i8, ptr %i.ez, i64 248
  %i.me = getelementptr inbounds nuw i8, ptr %i.ez, i64 264
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ez, i64 280
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ez, i64 288
  %i.mh = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.mi = load <2 x ptr>, ptr %12, align 16, !tbaa !98
  store <2 x ptr> %i.mi, ptr %i.ju, align 8, !tbaa !98
  %i.mj = load i64, ptr %i.ba, align 16, !tbaa !99
  store i64 %i.mj, ptr %i.mc, align 8, !tbaa !99
  %i.mk = load i32, ptr %i.bb, align 8, !tbaa !100
  store i32 %i.mk, ptr %i.md, align 8, !tbaa !100
  %i.ml = load ptr, ptr %i.bc, align 16, !tbaa !81
  store ptr %i.ml, ptr %i.jy, align 8, !tbaa !81
  %i.mm = load <4 x i32>, ptr %i.bd, align 8, !tbaa !85
  store <4 x i32> %i.mm, ptr %i.me, align 8, !tbaa !85
  %i.mn = load i32, ptr %i.be, align 8, !tbaa !93
  store i32 %i.mn, ptr %i.mf, align 8, !tbaa !93
  %i.mo = load i64, ptr %i.bf, align 16, !tbaa !78
  store i64 %i.mo, ptr %i.mg, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit105

_ZN4ncnn3MataSERKS0_.exit105:                     ; preds = %.noexc104, %bb.bx
  %i.mp = phi ptr [ %i.mh, %.noexc104 ], [ %.pre869, %bb.bx ] ; 2 uses
  %.not.i147 = icmp eq ptr %i.mp, null
  br i1 %.not.i147, label %_ZN4ncnn3MatD2Ev.exit93, label %bb.cg

bb.cg:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit105
  %i.mq = atomicrmw add ptr %i.mp, i32 -1 acq_rel, align 4
  %i.mr = icmp eq i32 %i.mq, 1
  br i1 %i.mr, label %bb.ch, label %_ZN4ncnn3MatD2Ev.exit93

bb.ch:                                            ; preds = %bb.cg
  %i.ms = load ptr, ptr %i.bc, align 16, !tbaa !81 ; 3 uses
  %.not3.i148 = icmp eq ptr %i.ms, null
  %i.mt = load ptr, ptr %12, align 16, !tbaa !82  ; 3 uses
  br i1 %.not3.i148, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !22
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8
  invoke void %i.mw(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef %i.mt)
          to label %_ZN4ncnn3MatD2Ev.exit93 unwind label %bb.cl, !inline_history !83

bb.cj:                                            ; preds = %bb.ch
  %.not.i204 = icmp eq ptr %i.mt, null
  br i1 %.not.i204, label %_ZN4ncnn3MatD2Ev.exit93, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @free(ptr noundef nonnull %i.mt) #25
  br label %_ZN4ncnn3MatD2Ev.exit93

bb.cl:                                            ; preds = %bb.ci
  %i.mx = landingpad { ptr, i32 }
          catch ptr null
  %i.my = extractvalue { ptr, i32 } %i.mx, 0
  call void @__clang_call_terminate(ptr %i.my) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit93:                          ; preds = %bb.cg, %_ZN4ncnn3MataSERKS0_.exit105, %bb.ci, %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.ay, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnn3MatD2Ev.exit93
  %i.mz = phi i1 [ false, %_ZN4ncnn3MatD2Ev.exit93 ], [ true, %_ZNK4ncnn3Mat5emptyEv.exit ], [ true, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.na = load ptr, ptr %i.at, align 8, !tbaa !80 ; 2 uses
  %.not.i151 = icmp eq ptr %i.na, null
  br i1 %.not.i151, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.cm

bb.cm:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %i.nb = atomicrmw add ptr %i.na, i32 -1 acq_rel, align 4
  %i.nc = icmp eq i32 %i.nb, 1
  br i1 %i.nc, label %bb.cn, label %_ZN4ncnn3MatD2Ev.exit92

bb.cn:                                            ; preds = %bb.cm
  %i.nd = load ptr, ptr %i.au, align 8, !tbaa !81 ; 3 uses
  %.not3.i152 = icmp eq ptr %i.nd, null
  %i.ne = load ptr, ptr %10, align 8, !tbaa !82   ; 3 uses
  br i1 %.not3.i152, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nf = load ptr, ptr %i.nd, align 8, !tbaa !22
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8
  invoke void %i.nh(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr noundef %i.ne)
          to label %_ZN4ncnn3MatD2Ev.exit92 unwind label %bb.cr, !inline_history !83

bb.cp:                                            ; preds = %bb.cn
  %.not.i202 = icmp eq ptr %i.ne, null
  br i1 %.not.i202, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @free(ptr noundef nonnull %i.ne) #25
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.cr:                                            ; preds = %bb.co
  %i.ni = landingpad { ptr, i32 }
          catch ptr null
  %i.nj = extractvalue { ptr, i32 } %i.ni, 0
  call void @__clang_call_terminate(ptr %i.nj) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %bb.cm, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %bb.co, %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.nk = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 2 uses
  %.not.i155 = icmp eq ptr %i.nk, null
  br i1 %.not.i155, label %_ZN4ncnn3MatD2Ev.exit91, label %bb.cs

bb.cs:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit92
  %i.nl = atomicrmw add ptr %i.nk, i32 -1 acq_rel, align 4
  %i.nm = icmp eq i32 %i.nl, 1
  br i1 %i.nm, label %bb.ct, label %_ZN4ncnn3MatD2Ev.exit91

bb.ct:                                            ; preds = %bb.cs
  %i.nn = load ptr, ptr %i.bh, align 8, !tbaa !81 ; 3 uses
  %.not3.i156 = icmp eq ptr %i.nn, null
  %i.no = load ptr, ptr %9, align 8, !tbaa !82    ; 3 uses
  br i1 %.not3.i156, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.np = load ptr, ptr %i.nn, align 8, !tbaa !22
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8
  invoke void %i.nr(ptr noundef nonnull align 8 dereferenceable(8) %i.nn, ptr noundef %i.no)
          to label %_ZN4ncnn3MatD2Ev.exit91 unwind label %bb.cx, !inline_history !83

bb.cv:                                            ; preds = %bb.ct
  %.not.i200 = icmp eq ptr %i.no, null
  br i1 %.not.i200, label %_ZN4ncnn3MatD2Ev.exit91, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @free(ptr noundef nonnull %i.no) #25
  br label %_ZN4ncnn3MatD2Ev.exit91

bb.cx:                                            ; preds = %bb.cu
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit91:                          ; preds = %bb.cs, %_ZN4ncnn3MatD2Ev.exit92, %bb.cu, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %i.mz, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit91
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ez, i64 220
  store i32 2, ptr %i.nu, align 4, !tbaa !534
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ez, i64 512 ; 3 uses
end_hunk_3
