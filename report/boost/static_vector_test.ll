inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_Z14test_insert_ndI8value_ndLm10EEvRKT_:bb.a
  %i.bl = add i64 %i.bh, 1
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !230
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bm = load ptr, ptr %4, align 8, !tbaa !235
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bh
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.bn, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.4 unwind label %bb.n

.noexc88.4:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4

_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4: ; preds = %.noexc88.4, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.preheader146 unwind label %bb.o ; 5 uses

.preheader146:                                    ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 104, ptr %i.bp, align 4, !tbaa !18
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !187 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !187
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !184
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !187
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !184
  %i.bs = load i64, ptr %5, align 8, !tbaa !194
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %5, align 8, !tbaa !194
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.d, %bb.a
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aw

bb.o:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.preheader143:                                    ; preds = %._crit_edge151, %._crit_edge151.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 28
  br label %bb.ab

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread: ; preds = %._crit_edge151, %.preheader146
  %indvars.iv = phi i64 [ 5, %.preheader146 ], [ %indvars.iv.next, %._crit_edge151 ] ; 2 uses
  %.065152 = phi i64 [ 0, %.preheader146 ], [ %i.di, %._crit_edge151 ] ; 7 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa !18
  %.idx138 = shl nuw nsw i64 %.065152, 2          ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 %.idx138 ; 2 uses
  %.not.i.i.i91 = icmp eq i64 %.065152, 5         ; 2 uses
  br i1 %.not.i.i.i91, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread
  %i.ch = load i32, ptr %0, align 4, !tbaa !18, !noalias !616
  store i32 %i.ch, ptr %i.bv, align 4, !tbaa !18, !noalias !616
  store i64 6, ptr %i.bu, align 8, !tbaa !228, !noalias !616
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

bb.q:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread
  %gepdiff139 = sub nsw i64 20, %.idx138
  %i.ci = ashr exact i64 %gepdiff139, 2           ; 2 uses
  %i.cj = load i32, ptr %i.bw, align 8, !tbaa !18, !noalias !616
  store i32 %i.cj, ptr %i.bv, align 4, !tbaa !18, !noalias !616
  store i64 6, ptr %i.bu, align 8, !tbaa !228, !noalias !616
  %i.ck = add nsw i64 %i.ci, -1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %bb.r, !prof !24

bb.r:                                             ; preds = %bb.q
  %i.cl = sub nsw i64 1, %i.ci                    ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cl
  %i.co = shl nsw i64 %i.ck, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr nonnull align 4 %i.cn, i64 %i.co, i1 false), !noalias !616
  br label %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i

_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %bb.r, %bb.q
  %i.cp = load i32, ptr %0, align 4, !tbaa !18, !noalias !616
  store i32 %i.cp, ptr %i.cg, align 4, !tbaa !18, !noalias !616
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit: ; preds = %_ZN5boost9container15move_backward_nIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.p
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.cr = load i64, ptr %i.bu, align 8, !tbaa !228
  %i.cs = icmp eq i64 %i.cr, 6
  %i.ct = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cs)
          to label %.preheader145 unwind label %bb.u ; 0 uses

.preheader145:                                    ; preds = %bb.s
  %.not = icmp eq i64 %.065152, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %.preheader145
  %i.cu = load i32, ptr %i.cg, align 4, !tbaa !70
  %i.cv = load i32, ptr %0, align 4, !tbaa !70
  %i.cw = icmp eq i32 %i.cu, %i.cv
  %i.cx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cw)
          to label %.preheader144 unwind label %bb.u ; 0 uses

.preheader144:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.065152
  br i1 %.not.i.i.i91, label %._crit_edge151.thread, label %.lr.ph150

._crit_edge151.thread:                            ; preds = %.preheader144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.preheader143

.lr.ph150:                                        ; preds = %.preheader144
  %i.cy = trunc nuw nsw i64 %.065152 to i32
  br label %bb.x

bb.t:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.lr.ph:                                           ; preds = %.preheader145, %bb.v
  %.064148 = phi i64 [ %i.dg, %bb.v ], [ 0, %.preheader145 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.064148
  %i.dc = trunc nuw nsw i64 %.064148 to i32
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !70
  %i.de = icmp eq i32 %i.dd, %i.dc
  %i.df = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.de)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %.lr.ph
  %i.dg = add nuw nsw i64 %.064148, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %.065152
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !621

bb.w:                                             ; preds = %.lr.ph
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

._crit_edge151:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.di = add nuw nsw i64 %.065152, 1             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond169.not = icmp eq i64 %i.di, 6
  br i1 %exitcond169.not, label %.preheader143, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread, !llvm.loop !622

bb.x:                                             ; preds = %.lr.ph150, %bb.y
  %.063149 = phi i64 [ 0, %.lr.ph150 ], [ %i.dp, %bb.y ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063149
  %i.dj = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.dk = trunc nuw nsw i64 %.063149 to i32
  %i.dl = add nuw nsw i32 %i.dk, %i.cy
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !70
  %i.dn = icmp eq i32 %i.dm, %i.dl
  %i.do = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.dn)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dp = add nuw nsw i64 %.063149, 1             ; 2 uses
  %exitcond168.not = icmp eq i64 %i.dp, %umax
  br i1 %exitcond168.not, label %._crit_edge151, label %bb.x, !llvm.loop !623

bb.z:                                             ; preds = %bb.x
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.t, %bb.u, %bb.w, %bb.z
  %.pn76.pn = phi { ptr, i32 } [ %i.cz, %bb.t ], [ %i.dh, %bb.w ], [ %i.dq, %bb.z ], [ %i.da, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aw

.loopexit215:                                     ; preds = %._crit_edge162, %._crit_edge162.thread
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.ar unwind label %bb.av

bb.ab:                                            ; preds = %.preheader143, %._crit_edge162
  %indvars.iv173 = phi i64 [ 5, %.preheader143 ], [ %indvars.iv.next174, %._crit_edge162 ] ; 2 uses
  %.062163 = phi i64 [ 0, %.preheader143 ], [ %i.hd, %._crit_edge162 ] ; 9 uses
  %9 = mul i64 %.062163, 4611686018427387903      ; 2 uses
  %10 = add i64 %9, 5
  %i.dr = add i64 %9, 4
  %umax175 = call i64 @llvm.umax.i64(i64 %indvars.iv173, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 5, ptr %i.bz, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa !18
  %.idx135 = shl nuw nsw i64 %.062163, 2          ; 5 uses
  %.ptr210 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx135 ; 6 uses
  %i.ds = icmp eq i64 %.062163, 5                 ; 2 uses
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i, label %bb.ac

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ab
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !18, !noalias !624 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %i.ca, align 4, !tbaa !18, !noalias !624
  store i32 %.pre.i.i.i.i.i.i, ptr %i.ce, align 8, !tbaa !18, !noalias !624
  store i32 %.pre.i.i.i.i.i.i, ptr %i.cf, align 4, !tbaa !18, !noalias !624
  br label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %gepdiff = sub nsw i64 20, %.idx135
  %i.dt = ashr exact i64 %gepdiff, 2              ; 6 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dt, 3
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i40.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.ac
  %i.du = load <2 x i32>, ptr %i.cb, align 8, !tbaa !18, !noalias !624
  store <2 x i32> %i.du, ptr %i.ca, align 4, !tbaa !18, !noalias !624
  %i.dv = load i32, ptr %i.cc, align 8, !tbaa !18, !noalias !624
  store i32 %i.dv, ptr %i.cd, align 4, !tbaa !18, !noalias !624
  %.not.i37.i.i.i.i.i = icmp eq i64 %.062163, 2
  br i1 %.not.i37.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, label %bb.ad, !prof !24

bb.ad:                                            ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff136 = sub nsw i64 8, %.idx135           ; 2 uses
  %i.dw = ashr exact i64 %gepdiff136, 2
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr nonnull align 4 %.ptr210, i64 %gepdiff136, i1 false), !noalias !624
  %.pre.i.i.i.pre = load i64, ptr %i.bz, align 8, !tbaa !225, !noalias !624
  %i.dz = icmp eq i64 %.pre.i.i.i.pre, 5
  br label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %bb.ad, %.lr.ph.i.i10.i.i.i.i
  %.pre.i.i.i = phi i1 [ %i.dz, %bb.ad ], [ true, %.lr.ph.i.i10.i.i.i.i ]
  %.pre.i.i12.i.i.i.i = load i32, ptr %0, align 4, !tbaa !18, !noalias !624 ; 3 uses
  store i32 %.pre.i.i12.i.i.i.i, ptr %.ptr210, align 4, !tbaa !18, !noalias !624
  %i.ea = getelementptr inbounds nuw i8, ptr %.ptr210, i64 4
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.ea, align 4, !tbaa !18, !noalias !624
  %i.eb = getelementptr inbounds nuw i8, ptr %.ptr210, i64 8
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.eb, align 4, !tbaa !18, !noalias !624
  br label %.loopexit

.lr.ph.i40.preheader.i.i.i.i.i:                   ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %.ptr210, i64 12 ; 2 uses
  %xtraiter = and i64 %10, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.preheader.i.i.i.i.i, %.lr.ph.i40.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.idx.prol = phi i64 [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ], [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.ee, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.ec, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.ptr.prol = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx.prol
  %i.ed = load i32, ptr %.018.i.i.i.i.i.i.ptr.prol, align 4, !tbaa !18, !noalias !624
  store i32 %i.ed, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !18, !noalias !624
  %.018.i.i.i.i.i.i.add.prol = add nuw nsw i64 %.018.i.i.i.i.i.i.idx.prol, 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !629

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx.unr = phi i64 [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ec, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %i.ee, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.ef = icmp ult i64 %i.dr, 7
  br i1 %i.ef, label %.lr.ph.i43.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx = phi i64 [ %.018.i.i.i.i.i.i.add.7, %.lr.ph.i40.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.idx.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i40.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.018.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %i.eg = load i32, ptr %.018.i.i.i.i.i.i.ptr, align 4, !tbaa !18, !noalias !624
  store i32 %i.eg, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !18, !noalias !624
  %i.eh = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ej = load i32, ptr %.018.i.i.i.i.i.i.ptr.1, align 4, !tbaa !18, !noalias !624
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !18, !noalias !624
  %i.ek = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.em = load i32, ptr %.018.i.i.i.i.i.i.ptr.2, align 4, !tbaa !18, !noalias !624
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !18, !noalias !624
  %i.en = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.ep = load i32, ptr %.018.i.i.i.i.i.i.ptr.3, align 4, !tbaa !18, !noalias !624
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !18, !noalias !624
  %i.eq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.es = load i32, ptr %.018.i.i.i.i.i.i.ptr.4, align 4, !tbaa !18, !noalias !624
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !18, !noalias !624
  %i.et = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.ev = load i32, ptr %.018.i.i.i.i.i.i.ptr.5, align 4, !tbaa !18, !noalias !624
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !18, !noalias !624
  %i.ew = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ey = load i32, ptr %.018.i.i.i.i.i.i.ptr.6, align 4, !tbaa !18, !noalias !624
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !18, !noalias !624
  %i.ez = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.fa, i64 28
  %i.fb = load i32, ptr %.018.i.i.i.i.i.i.ptr.7, align 4, !tbaa !18, !noalias !624
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !18, !noalias !624
  %.018.i.i.i.i.i.i.add.7 = add nuw nsw i64 %.018.i.i.i.i.i.i.idx, 32
  %i.fc = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  br label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !630

.lr.ph.i43.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit
  %.pre.i44.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !18, !noalias !624 ; 18 uses
  %i.fd = add nsw i64 %i.dt, -1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i43.i.i.i.i.i
  %.07.i45.i.i.i.i.i.prol = phi i64 [ %i.dt, %.lr.ph.i43.i.i.i.i.i ], [ %i.fe, %bb.ae ]
  %.046.i46.i.i.i.i.i.prol = phi ptr [ %.ptr210, %.lr.ph.i43.i.i.i.i.i ], [ %i.ff, %bb.ae ] ; 2 uses
  %prol.iter218 = phi i64 [ 0, %.lr.ph.i43.i.i.i.i.i ], [ %prol.iter218.next, %bb.ae ]
  %i.fe = add i64 %.07.i45.i.i.i.i.i.prol, -1     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i.prol, align 4, !tbaa !18, !noalias !624
  %i.ff = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter218.next = add i64 %prol.iter218, 1   ; 2 uses
  %prol.iter218.cmp.not = icmp eq i64 %prol.iter218.next, %i.dt
  br i1 %prol.iter218.cmp.not, label %.prol.loopexit, label %bb.ae, !llvm.loop !631

.prol.loopexit:                                   ; preds = %bb.ae
  %i.fg = icmp ult i64 %i.fd, 7
  br i1 %i.fg, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i.new

.lr.ph.i43.i.i.i.i.i.new:                         ; preds = %.prol.loopexit, %.lr.ph.i43.i.i.i.i.i.new
  %.07.i45.i.i.i.i.i = phi i64 [ %i.fo, %.lr.ph.i43.i.i.i.i.i.new ], [ %i.fe, %.prol.loopexit ]
  %.046.i46.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i43.i.i.i.i.i.new ], [ %i.ff, %.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i, align 4, !tbaa !18, !noalias !624
  %i.fh = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fh, align 4, !tbaa !18, !noalias !624
  %i.fi = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fi, align 4, !tbaa !18, !noalias !624
  %i.fj = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fj, align 4, !tbaa !18, !noalias !624
  %i.fk = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fk, align 4, !tbaa !18, !noalias !624
  %i.fl = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fl, align 4, !tbaa !18, !noalias !624
  %i.fm = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fm, align 4, !tbaa !18, !noalias !624
  %i.fn = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 28
  %i.fo = add i64 %.07.i45.i.i.i.i.i, -8          ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fn, align 4, !tbaa !18, !noalias !624
  %i.fp = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 32
  %.not.i47.i.i.i.i.i.7 = icmp eq i64 %i.fo, 0
  br i1 %.not.i47.i.i.i.i.i.7, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i.new, !llvm.loop !632

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i: ; preds = %.lr.ph.i43.i.i.i.i.i.new, %.prol.loopexit
  %i.fq = sub nuw nsw i64 3, %i.dt                ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.prol = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.fq, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %.01416.i.i.i.i.i.i.i.prol = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ca, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ] ; 2 uses
  %prol.iter221 = phi i64 [ %prol.iter221.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %i.fr = add nsw i64 %.017.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i.prol, align 4, !tbaa !18, !noalias !624
  %i.fs = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter221.next = add i64 %prol.iter221, 1   ; 2 uses
  %prol.iter221.cmp.not = icmp eq i64 %prol.iter221.next, %i.fq
  br i1 %prol.iter221.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !633

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol
  %i.ft = icmp ult i64 %i.dt, 3
  br i1 %i.ft, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i, align 4, !tbaa !18, !noalias !624
  %i.fu = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fu, align 4, !tbaa !18, !noalias !624
  %i.fv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fv, align 4, !tbaa !18, !noalias !624
  %i.fw = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fw, align 4, !tbaa !18, !noalias !624
  %i.fx = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fx, align 4, !tbaa !18, !noalias !624
  %i.fy = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fy, align 4, !tbaa !18, !noalias !624
  %i.fz = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fz, align 4, !tbaa !18, !noalias !624
  %i.ga = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 28
  %i.gb = add nsw i64 %.017.i.i.i.i.i.i.i, -8     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.ga, align 4, !tbaa !18, !noalias !624
  %i.gc = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !144

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i
  %i.gd = phi i1 [ %.pre.i.i.i, %.lr.ph.i38.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ge = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.af unwind label %bb.ag     ; 0 uses

bb.af:                                            ; preds = %.loopexit
  %i.gf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gd)
          to label %.preheader141 unwind label %bb.ah ; 0 uses

.preheader141:                                    ; preds = %bb.af
  %.not165 = icmp eq i64 %.062163, 0
  br i1 %.not165, label %.preheader140, label %.lr.ph154

.preheader140:                                    ; preds = %bb.ai, %.preheader141
  %invariant.gep155 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.062163 ; 4 uses
  %i.gg = load i32, ptr %invariant.gep155, align 4, !tbaa !70
  %i.gh = load i32, ptr %0, align 4, !tbaa !70
  %i.gi = icmp eq i32 %i.gg, %i.gh
  %i.gj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gi)
          to label %bb.ak unwind label %bb.am     ; 0 uses

bb.ag:                                            ; preds = %.loopexit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.lr.ph154:                                        ; preds = %.preheader141, %bb.ai
  %.061153 = phi i64 [ %i.gr, %bb.ai ], [ 0, %.preheader141 ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.061153
  %i.gn = trunc nuw nsw i64 %.061153 to i32
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !70
  %i.gp = icmp eq i32 %i.go, %i.gn
  %i.gq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 403, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gp)
          to label %bb.ai unwind label %bb.aj     ; 0 uses

bb.ai:                                            ; preds = %.lr.ph154
  %i.gr = add nuw nsw i64 %.061153, 1             ; 2 uses
  %exitcond171.not = icmp eq i64 %i.gr, %.062163
  br i1 %exitcond171.not, label %.preheader140, label %.lr.ph154, !llvm.loop !634

bb.aj:                                            ; preds = %.lr.ph154
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.lr.ph161:                                        ; preds = %.preheader
  %i.gt = trunc nuw nsw i64 %.062163 to i32
  br label %bb.an

bb.ak:                                            ; preds = %.preheader140
  %gep156.1 = getelementptr inbounds nuw i8, ptr %invariant.gep155, i64 4
  %i.gu = load i32, ptr %gep156.1, align 4, !tbaa !70
  %i.gv = load i32, ptr %0, align 4, !tbaa !70
  %i.gw = icmp eq i32 %i.gu, %i.gv
  %i.gx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gw)
          to label %bb.al unwind label %bb.am     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %gep156.2 = getelementptr inbounds nuw i8, ptr %invariant.gep155, i64 8
  %i.gy = load i32, ptr %gep156.2, align 4, !tbaa !70
  %i.gz = load i32, ptr %0, align 4, !tbaa !70
  %i.ha = icmp eq i32 %i.gy, %i.gz
  %i.hb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.ha)
end_hunk_0
