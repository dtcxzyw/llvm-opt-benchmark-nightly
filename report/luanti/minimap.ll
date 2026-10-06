Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/minimap?download=true
inline.NumInlined: 2133
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN19MinimapUpdateThread8doUpdateEv:bb.a

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp eq i16 %i.bl, %i.bh
  br i1 %i.bn, label %bb.u, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !52 ; 2 uses
  %i.bq = icmp slt i16 %i.bp, %i.bi
  br i1 %i.bq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = icmp eq i16 %i.bp, %i.bi
  br i1 %i.br, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !53
  %i.bu = icmp slt i16 %i.bt, %i.bj
  br i1 %i.bu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.u, %bb.s
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.v, %bb.t
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.v ], [ 16, %bb.t ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.v ], [ %.014.i.i.i, %bb.t ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i6, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %bb.s, !llvm.loop !1

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.bw = icmp eq ptr %.19.i.i.i, %i.m
  br i1 %i.bw, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !51 ; 2 uses
  %i.bz = icmp slt i16 %i.bh, %i.by
  br i1 %i.bz, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = icmp eq i16 %i.bh, %i.by
  br i1 %i.ca, label %bb.y, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !52 ; 2 uses
  %i.cd = icmp slt i16 %i.bi, %i.cc
  br i1 %i.cd, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = icmp eq i16 %i.bi, %i.cc
  br i1 %i.ce, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i: ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !53
  %.not18 = icmp slt i16 %i.bj, %i.cg
  br i1 %.not18, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit: ; preds = %bb.z, %bb.x, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !39 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 2048) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit
  %i.ck = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 48) #30
  %i.cl = load i64, ptr %i.n, align 8, !tbaa !63
  %i.cm = add i64 %i.cl, -1
  store i64 %i.cm, ptr %i.n, align 8, !tbaa !63
  br label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread: ; preds = %bb.w, %bb.y, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.r, %bb.ab, %bb.q, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE7emplaceIJRS2_RS4_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_.exit
  %i.cn = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %._crit_edge, !llvm.loop !299

bb.ac:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.co = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #33 ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !86 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2097252
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !92, !range !93, !noundef !94
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i32, ptr %i.cq, align 8, !tbaa !95
  %.off = add i32 %i.cu, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  %.sroa.0.0.copyload = load i48, ptr %i.cv, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 42
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !97
  call void @_ZN19MinimapUpdateThread6getMapEN4core8vector3dIsEEss(ptr noundef nonnull align 8 dereferenceable(352) %0, i48 %.sroa.0.0.copyload, i16 noundef signext %i.cx, i16 noundef signext %i.cz)
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !86
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2097252
  store i8 0, ptr %i.db, align 4, !tbaa !92
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN19MinimapUpdateThread6getMapEN4core8vector3dIsEEss(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(352) %0, i48 %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %i.a = sext i16 %2 to i32                       ; 2 uses
  %i.b = insertelement <2 x i16> poison, i16 %2, i64 0
  %i.c = insertelement <2 x i16> %i.b, i16 %3, i64 1
  %i.d = sdiv <2 x i16> %i.c, splat (i16 2)       ; 3 uses
  %i.e = lshr i48 %1, 32
  %i.f = trunc nuw i48 %i.e to i16
  %i.g = extractelement <2 x i16> %i.d, i64 0
  %i.h = sub i16 %i.f, %i.g                       ; 4 uses
  %i.i = add i16 %2, -1                           ; 3 uses
  %i.j = add i16 %i.i, %i.h                       ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %i.k = bitcast i48 %1 to <3 x i16>
  %i.l = shufflevector <3 x i16> %i.k, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.m = sub <2 x i16> %i.l, %i.d                 ; 5 uses
  %i.n = extractelement <2 x i16> %i.m, i64 0     ; 3 uses
  %i.o = insertelement <2 x i16> %i.d, i16 %i.i, i64 0
  %i.p = insertelement <2 x i16> %i.m, i16 %.sroa.2.0.extract.trunc, i64 1
  %i.q = add <2 x i16> %i.o, %i.p                 ; 2 uses
  %i.r = add i16 %i.i, %i.n
  %i.s = sext <2 x i16> %i.m to <2 x i32>         ; 2 uses
  %i.t = add nsw <2 x i32> %i.s, splat (i32 -15)
  %i.u = icmp slt <2 x i16> %i.m, zeroinitializer
  %i.v = select <2 x i1> %i.u, <2 x i32> %i.t, <2 x i32> %i.s
  %i.w = sdiv <2 x i32> %i.v, splat (i32 16)      ; 3 uses
  %i.x = bitcast <2 x i32> %i.w to <4 x i16>
  %.sroa.032.0.extract.trunc = extractelement <4 x i16> %i.x, i64 0
  %i.y = bitcast <2 x i32> %i.w to <4 x i16>
  %.sroa.433.0.extract.trunc = extractelement <4 x i16> %i.y, i64 2
  %i.z = sext <2 x i16> %i.q to <2 x i32>         ; 2 uses
  %i.aa = add nsw <2 x i32> %i.z, splat (i32 -15)
  %i.ab = icmp slt <2 x i16> %i.q, zeroinitializer
  %i.ac = select <2 x i1> %i.ab, <2 x i32> %i.aa, <2 x i32> %i.z
  %i.ad = sdiv <2 x i32> %i.ac, splat (i32 16)    ; 3 uses
  %i.ae = insertelement <2 x i16> poison, i16 %i.h, i64 0
  %i.af = insertelement <2 x i16> %i.ae, i16 %i.j, i64 1 ; 2 uses
  %i.ag = sext <2 x i16> %i.af to <2 x i32>       ; 2 uses
  %i.ah = add nsw <2 x i32> %i.ag, splat (i32 -15)
  %i.ai = icmp slt <2 x i16> %i.af, zeroinitializer
  %i.aj = select <2 x i1> %i.ai, <2 x i32> %i.ah, <2 x i32> %i.ag
  %i.ak = sdiv <2 x i32> %i.aj, splat (i32 16)    ; 2 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 0   ; 2 uses
  %.sroa.534.0.extract.trunc = trunc nsw i32 %i.al to i16
  %i.am = extractelement <2 x i32> %i.ak, i64 1
  %.mask.i.i64 = and i32 %i.am, 65535
  %.sroa.3.0.insert.ext.i.i65 = zext nneg i32 %.mask.i.i64 to i48
  %.sroa.3.0.insert.shift.i.i66 = shl nuw i48 %.sroa.3.0.insert.ext.i.i65, 32
  %i.an = bitcast <2 x i32> %i.ad to <4 x i16>
  %.sroa.027.0.extract.trunc = extractelement <4 x i16> %i.an, i64 0
  %i.ao = bitcast <2 x i32> %i.ad to <4 x i16>
  %.sroa.428.0.extract.trunc = extractelement <4 x i16> %i.ao, i64 2
  %i.ap = icmp sgt i16 %2, 0
  br i1 %i.ap, label %.preheader164.lr.ph, label %.preheader163

.preheader164.lr.ph:                              ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.ar = zext nneg i32 %i.a to i64               ; 4 uses
  %xtraiter = and i64 %i.ar, 3                    ; 3 uses
  %i.as = icmp ult i16 %2, 4
  %unroll_iter = and i64 %i.ar, 32764
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.lr.ph, %._crit_edge
  %indvars.iv194 = phi i64 [ 0, %.preheader164.lr.ph ], [ %indvars.iv.next195, %._crit_edge ] ; 2 uses
  %i.at = mul nuw nsw i64 %indvars.iv194, %i.ar   ; 5 uses
  br i1 %i.as, label %.epil.preheader, label %.preheader164.new

.preheader163:                                    ; preds = %._crit_edge, %bb.a
  %i.au = ashr exact i48 %.sroa.3.0.insert.shift.i.i66, 32
  %i.av = trunc nsw i48 %i.au to i32              ; 2 uses
  %.not181 = icmp sgt i32 %i.al, %i.av
  br i1 %.not181, label %._crit_edge185, label %.preheader162.lr.ph

.preheader162.lr.ph:                              ; preds = %.preheader163
  %i.aw = icmp sgt <2 x i32> %i.w, %i.ad          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = extractelement <2 x i1> %i.aw, i64 0
  %i.bb = extractelement <2 x i1> %i.aw, i64 1
  %or.cond215 = select i1 %i.bb, i1 true, i1 %i.ba
  br i1 %or.cond215, label %._crit_edge185, label %.preheader162.preheader

.preheader162.preheader:                          ; preds = %.preheader162.lr.ph
  %i.bc = extractelement <2 x i16> %i.m, i64 1    ; 2 uses
  br label %.preheader162

._crit_edge.unr-lcssa:                            ; preds = %.preheader164.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader164
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 100
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.epil
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.at ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  store i16 0, ptr %i.bh, align 2, !tbaa !100
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i16 0, ptr %i.bi, align 4, !tbaa !101
  store i32 126, ptr %i.bg, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !300

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %i.ar
  br i1 %exitcond198.not, label %.preheader163, label %.preheader164, !llvm.loop !301

.preheader164.new:                                ; preds = %.preheader164, %.preheader164.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader164.new ], [ 0, %.preheader164 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader164.new ], [ 0, %.preheader164 ]
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 100
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.at ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 6
  store i16 0, ptr %i.bn, align 2, !tbaa !100
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i16 0, ptr %i.bo, align 4, !tbaa !101
  store i32 126, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !86
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 108
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.at ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  store i16 0, ptr %i.bt, align 2, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i16 0, ptr %i.bu, align 4, !tbaa !101
  store i32 126, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.aq, align 8, !tbaa !86
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 116
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.at ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  store i16 0, ptr %i.bz, align 2, !tbaa !100
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i16 0, ptr %i.ca, align 4, !tbaa !101
  store i32 126, ptr %i.by, align 4
  %i.cb = load ptr, ptr %i.aq, align 8, !tbaa !86
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 124
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.at ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  store i16 0, ptr %i.cf, align 2, !tbaa !100
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i16 0, ptr %i.cg, align 4, !tbaa !101
  store i32 126, ptr %i.ce, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader164.new, !llvm.loop !302

.preheader162:                                    ; preds = %.preheader162.preheader, %._crit_edge178
  %storemerge182 = phi i16 [ %i.fc, %._crit_edge178 ], [ %.sroa.534.0.extract.trunc, %.preheader162.preheader ] ; 4 uses
  %i.ch = shl i16 %storemerge182, 4               ; 3 uses
  %i.ci = or disjoint i16 %i.ch, 15
  %i.cj = tail call i16 @llvm.smax.i16(i16 %i.ch, i16 %i.h) ; 2 uses
  %i.ck = tail call i16 @llvm.smin.i16(i16 %i.j, i16 %i.ci) ; 2 uses
  %.not56170 = icmp sgt i16 %i.cj, %i.ck
  %i.cl = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %._crit_edge178, label %.preheader161

.preheader161thread-pre-split:                    ; preds = %._crit_edge174
  %i.cn = add nsw i16 %storemerge51176, 1
  %.pr = load ptr, ptr %i.ax, align 8, !tbaa !40
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader162, %.preheader161thread-pre-split
  %i.co = phi ptr [ %.pr, %.preheader161thread-pre-split ], [ %i.cl, %.preheader162 ]
  %storemerge51176 = phi i16 [ %i.cn, %.preheader161thread-pre-split ], [ %.sroa.433.0.extract.trunc, %.preheader162 ] ; 7 uses
  %i.cp = shl i16 %storemerge51176, 4
  %i.cq = tail call i16 @llvm.smax.i16(i16 %i.cp, i16 %i.bc)
  %i.cr = sub i16 %i.cq, %i.bc
  %i.cs = icmp eq ptr %i.co, null
  br i1 %i.cs, label %._crit_edge174, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.preheader161, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread
  %storemerge53173 = phi i16 [ %i.fb, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread ], [ %.sroa.032.0.extract.trunc, %.preheader161 ] ; 7 uses
  %i.ct = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not12.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %.014.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.ct, %.lr.ph.split ] ; 7 uses
  %.0813.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i ], [ %i.ay, %.lr.ph.split ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !51 ; 2 uses
  %i.cw = icmp slt i16 %i.cv, %storemerge53173
  br i1 %i.cw, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = icmp eq i16 %i.cv, %storemerge53173
  br i1 %i.cx, label %bb.d, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 34
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !52 ; 2 uses
  %i.da = icmp slt i16 %i.cz, %storemerge51176
  br i1 %i.da, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.db = icmp eq i16 %i.cz, %storemerge51176
  br i1 %i.db, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 36
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !53
  %i.de = icmp slt i16 %i.dd, %storemerge182
  br i1 %i.de, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.d, %.lr.ph.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0813.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i ], [ %.014.i.i.i, %bb.e ], [ %.014.i.i.i, %bb.c ], [ %.014.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i ] ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.df, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i
  %i.dg = icmp eq ptr %.19.i.i.i, %i.ay
  br i1 %i.dg, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !51 ; 2 uses
  %i.dj = icmp slt i16 %storemerge53173, %i.di
  br i1 %i.dj, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = icmp eq i16 %storemerge53173, %i.di
  br i1 %i.dk, label %bb.h, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

bb.h:                                             ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 34
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !52 ; 2 uses
  %i.dn = icmp slt i16 %storemerge51176, %i.dm
  br i1 %i.dn, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.do = icmp eq i16 %storemerge51176, %i.dm
  br i1 %i.do, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i: ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !53
  %i.dr = icmp slt i16 %storemerge182, %i.dq
  br i1 %i.dr, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !39
  %i.du = shl i16 %storemerge53173, 4             ; 3 uses
  %i.dv = or disjoint i16 %i.du, 15
  %i.dw = tail call i16 @llvm.smax.i16(i16 %i.du, i16 %i.n) ; 2 uses
  %i.dx = tail call i16 @llvm.smin.i16(i16 %i.r, i16 %i.dv) ; 2 uses
  %.not58167 = icmp sgt i16 %i.dw, %i.dx
  %or.cond = select i1 %.not56170, i1 true, i1 %.not58167
  br i1 %or.cond, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit, %._crit_edge169
  %storemerge55171 = phi i16 [ %i.fa, %._crit_edge169 ], [ %i.cj, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit ] ; 3 uses
  %i.dy = sub i16 %storemerge55171, %i.ch
  %.sroa.3.0.insert.ext.i100 = zext i16 %i.dy to i48
  %.sroa.3.0.insert.shift.i101 = shl nuw i48 %.sroa.3.0.insert.ext.i100, 32
  %sh.diff = ashr exact i48 %.sroa.3.0.insert.shift.i101, 28
  %i.dz = zext i48 %sh.diff to i64
  %i.ea = sub i16 %storemerge55171, %i.h
  %i.eb = sext i16 %i.ea to i32
  %i.ec = mul nsw i32 %i.eb, %i.a
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.l
  %storemerge57168 = phi i16 [ %i.dw, %.preheader ], [ %i.ez, %bb.l ] ; 3 uses
  %i.ed = sub i16 %storemerge57168, %i.du
  %i.ee = sext i16 %i.ed to i64
  %i.ef = add nsw i64 %i.ee, %i.dz
  %sext = shl i64 %i.ef, 32
  %i.eg = ashr exact i64 %sext, 29
  %i.eh = getelementptr inbounds i8, ptr %i.dt, i64 %i.eg ; 4 uses
  %i.ei = sub i16 %storemerge57168, %i.n
  %4 = load ptr, ptr %i.az, align 8, !tbaa !86
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.ek = sext i16 %i.ei to i32
  %i.el = add nsw i32 %i.ec, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.em ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !100
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 6 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !100
  %i.es = add i16 %i.er, %i.ep
  store i16 %i.es, ptr %i.eq, align 2, !tbaa !100
  %i.et = load i16, ptr %i.eh, align 4, !tbaa !308
  %.not60 = icmp eq i16 %i.et, 126
  br i1 %.not60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eu = load i32, ptr %i.eh, align 4
  store i32 %i.eu, ptr %i.en, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ew = load i16, ptr %i.ev, align 4, !tbaa !101
  %i.ex = add i16 %i.cr, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i16 %i.ex, ptr %i.ey, align 4, !tbaa !101
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ez = add i16 %storemerge57168, 1             ; 2 uses
  %.not58 = icmp sgt i16 %i.ez, %i.dx
  br i1 %.not58, label %._crit_edge169, label %bb.j, !llvm.loop !303

._crit_edge169:                                   ; preds = %bb.l
  %i.fa = add i16 %storemerge55171, 1             ; 2 uses
  %.not56 = icmp sgt i16 %i.fa, %i.ck
  br i1 %.not56, label %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, label %.preheader, !llvm.loop !304

_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread: ; preds = %._crit_edge169, %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit, %bb.f, %bb.h, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %.lr.ph.split
  %i.fb = add nsw i16 %storemerge53173, 1
  %exitcond199 = icmp eq i16 %storemerge53173, %.sroa.027.0.extract.trunc
  br i1 %exitcond199, label %._crit_edge174, label %.lr.ph.split, !llvm.loop !305

._crit_edge174:                                   ; preds = %_ZNSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE4findERS8_.exit.thread, %.preheader161
  %exitcond200 = icmp eq i16 %storemerge51176, %.sroa.428.0.extract.trunc
  br i1 %exitcond200, label %._crit_edge178, label %.preheader161thread-pre-split, !llvm.loop !306

._crit_edge178:                                   ; preds = %._crit_edge174, %.preheader162
  %i.fc = add i16 %storemerge182, 1               ; 2 uses
  %i.fd = sext i16 %i.fc to i32
  %.not = icmp sgt i32 %i.fd, %i.av
  br i1 %.not, label %._crit_edge185, label %.preheader162, !llvm.loop !307

._crit_edge185:                                   ; preds = %._crit_edge178, %.preheader162.lr.ph, %.preheader163
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7MinimapC2EP6Client(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 88), (104, 192)) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %class.irr_ptr, align 8            ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, i8 0, i64 88, i1 false)
  store ptr %1, ptr %i.c, align 8, !tbaa !140
  %i.n = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !317 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !328  ; 3 uses
  %.not2.i = icmp eq ptr %i.p, null
  br i1 %.not2.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine16get_video_driverEv) #34
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN15RenderingEngine16get_video_driverEv.exit unwind label %bb.x, !inline_history !310

_ZN15RenderingEngine16get_video_driverEv.exit:    ; preds = %bb.d
  store ptr %i.t, ptr %0, align 8, !tbaa !143
  %i.u = invoke noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %bb.e unwind label %bb.x

bb.e:                                             ; preds = %_ZN15RenderingEngine16get_video_driverEv.exit
  store ptr %i.u, ptr %i.e, align 8, !tbaa !144
  %i.v = load ptr, ptr %1, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.f, align 8, !tbaa !145
  %i.z = load ptr, ptr %1, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %.noexc.i unwind label %bb.x

.noexc.i:                                         ; preds = %bb.f
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !146
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !147
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ae, align 8, !tbaa !148
  %i.af = load ptr, ptr @g_settings, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 26, ptr %i.b, align 8, !tbaa !152
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc50 unwind label %bb.y   ; 2 uses

.noexc50:                                         ; preds = %.noexc.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !153
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !152 ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ah, ptr noundef nonnull align 1 dereferenceable(26) @.str, i64 26, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !155
  %i.ak = load ptr, ptr %2, align 8, !tbaa !153
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.am = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %.noexc50
  %i.an = select i1 %i.am, i16 256, i16 128
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 %i.an, ptr %i.ao, align 8, !tbaa !156
  %i.ap = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ag
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ar = load i64, ptr %i.ag, align 8, !tbaa !154
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.at, ptr %3, align 8, !tbaa !151
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !155
  store i8 0, ptr %i.at, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !151
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !155
  store i8 0, ptr %i.av, align 8, !tbaa !154
  invoke void @_ZN7Minimap7addModeE11MinimapTypetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_t(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef 0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i16 noundef zeroext 1)
          to label %bb.h unwind label %bb.aa

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.av
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.h
  %i.az = load i64, ptr %i.av, align 8, !tbaa !154
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bb = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.at
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.bd = load i64, ptr %i.at, align 8, !tbaa !154
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bf, ptr %5, align 8, !tbaa !151
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !155
  store i8 0, ptr %i.bf, align 8, !tbaa !154
end_hunk_0
