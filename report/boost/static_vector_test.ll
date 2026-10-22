Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 310
begin_hunk_0_@_Z14test_insert_ndI8value_ndLm10EEvRKT_:bb.a
  %i.cu = load i32, ptr %0, align 4, !tbaa !78
  %i.cv = icmp eq i32 %i.ct, %i.cu
  %i.cw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.cv)
          to label %.preheader153 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader153:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.065175
  br i1 %.not.i.i.i91, label %._crit_edge174.thread, label %.lr.ph173

._crit_edge174.thread:                            ; preds = %.preheader153
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.preheader149

.lr.ph173:                                        ; preds = %.preheader153
  %i.cx = trunc nuw nsw i64 %.065175 to i32
  br label %bb.t

.lr.ph:                                           ; preds = %.preheader158, %bb.s
  %.064171 = phi i64 [ %i.dd, %bb.s ], [ 0, %.preheader158 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.064171
  %i.cz = trunc nuw nsw i64 %.064171 to i32
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !78
  %i.db = icmp eq i32 %i.da, %i.cz
  %i.dc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.db)
          to label %bb.s unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %.lr.ph
  %i.dd = add nuw nsw i64 %.064171, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %.065175
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !722

._crit_edge174:                                   ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.de = add nuw nsw i64 %.065175, 1             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond212.not = icmp eq i64 %i.de, 6
  br i1 %exitcond212.not, label %.preheader149, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit.thread, !llvm.loop !723

bb.t:                                             ; preds = %.lr.ph173, %bb.u
  %.063172 = phi i64 [ 0, %.lr.ph173 ], [ %i.dl, %bb.u ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.063172
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.dg = trunc nuw nsw i64 %.063172 to i32
  %i.dh = add nuw nsw i32 %i.dg, %i.cx
  %i.di = load i32, ptr %i.df, align 4, !tbaa !78
  %i.dj = icmp eq i32 %i.di, %i.dh
  %i.dk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.dj)
          to label %bb.u unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.dl = add nuw nsw i64 %.063172, 1             ; 2 uses
  %exitcond211.not = icmp eq i64 %i.dl, %umax
  br i1 %exitcond211.not, label %._crit_edge174, label %bb.t, !llvm.loop !724

.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %.lr.ph, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit, %._crit_edge, %bb.r
  %lpad.loopexit.split-lp275 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit.split-lp166

.loopexit:                                        ; preds = %._crit_edge185, %._crit_edge185.thread
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.af unwind label %.loopexit.split-lp166.loopexit.split-lp

bb.v:                                             ; preds = %.preheader149, %._crit_edge185
  %indvars.iv215 = phi i64 [ 5, %.preheader149 ], [ %indvars.iv.next216, %._crit_edge185 ] ; 2 uses
  %.062186 = phi i64 [ 0, %.preheader149 ], [ %i.gx, %._crit_edge185 ] ; 9 uses
  %i.dm = shl i64 %.062186, 2
  %i.dn = sub i64 16, %i.dm                       ; 2 uses
  %i.do = lshr exact i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1
  %umax217 = call i64 @llvm.umax.i64(i64 %indvars.iv215, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 5, ptr %i.by, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa !42
  %.idx135 = shl nuw nsw i64 %.062186, 2          ; 5 uses
  %.ptr252 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx135 ; 6 uses
  %i.dq = icmp eq i64 %.062186, 5                 ; 2 uses
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i, label %bb.w

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !42, !noalias !741 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %i.bz, align 4, !tbaa !42, !noalias !741
  store i32 %.pre.i.i.i.i.i.i, ptr %i.cd, align 8, !tbaa !42, !noalias !741
  store i32 %.pre.i.i.i.i.i.i, ptr %i.ce, align 4, !tbaa !42, !noalias !741
  br label %.loopexit147

bb.w:                                             ; preds = %bb.v
  %gepdiff = sub nsw i64 20, %.idx135
  %i.dr = ashr exact i64 %gepdiff, 2              ; 6 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dr, 3
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i40.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.w
  %i.ds = load <2 x i32>, ptr %i.ca, align 8, !tbaa !42, !noalias !741
  store <2 x i32> %i.ds, ptr %i.bz, align 4, !tbaa !42, !noalias !741
  %i.dt = load i32, ptr %i.cb, align 8, !tbaa !42, !noalias !741
  store i32 %i.dt, ptr %i.cc, align 4, !tbaa !42, !noalias !741
  %.not.i37.i.i.i.i.i = icmp eq i64 %.062186, 2
  br i1 %.not.i37.i.i.i.i.i, label %.lr.ph.i38.i.i.i.i.i, label %bb.x, !prof !43

bb.x:                                             ; preds = %.lr.ph.i.i10.i.i.i.i
  %gepdiff136 = sub nsw i64 8, %.idx135           ; 2 uses
  %i.du = ashr exact i64 %gepdiff136, 2
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.dv
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr nonnull align 4 %.ptr252, i64 %gepdiff136, i1 false), !noalias !741
  %.pre.i.i.i.pre = load i64, ptr %i.by, align 8, !tbaa !119, !noalias !741
  %i.dx = icmp eq i64 %.pre.i.i.i.pre, 5
  br label %.lr.ph.i38.i.i.i.i.i

.lr.ph.i38.i.i.i.i.i:                             ; preds = %bb.x, %.lr.ph.i.i10.i.i.i.i
  %.pre.i.i.i = phi i1 [ %i.dx, %bb.x ], [ true, %.lr.ph.i.i10.i.i.i.i ]
  %.pre.i.i12.i.i.i.i = load i32, ptr %0, align 4, !tbaa !42, !noalias !741 ; 3 uses
  store i32 %.pre.i.i12.i.i.i.i, ptr %.ptr252, align 4, !tbaa !42, !noalias !741
  %i.dy = getelementptr inbounds nuw i8, ptr %.ptr252, i64 4
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.dy, align 4, !tbaa !42, !noalias !741
  %i.dz = getelementptr inbounds nuw i8, ptr %.ptr252, i64 8
  store i32 %.pre.i.i12.i.i.i.i, ptr %i.dz, align 4, !tbaa !42, !noalias !741
  br label %.loopexit147

.lr.ph.i40.preheader.i.i.i.i.i:                   ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.ptr252, i64 12 ; 2 uses
  %xtraiter = and i64 %i.dp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.preheader.i.i.i.i.i, %.lr.ph.i40.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.idx.prol = phi i64 [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ], [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.ec, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.ea, %.lr.ph.i40.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.ptr.prol = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx.prol
  %i.eb = load i32, ptr %.018.i.i.i.i.i.i.ptr.prol, align 4, !tbaa !42, !noalias !741
  store i32 %i.eb, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !42, !noalias !741
  %.018.i.i.i.i.i.i.add.prol = add nuw nsw i64 %.018.i.i.i.i.i.i.idx.prol, 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !729

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.preheader.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx.unr = phi i64 [ %.idx135, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.add.prol, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ea, %.lr.ph.i40.preheader.i.i.i.i.i ], [ %i.ec, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.ed = icmp ult i64 %i.dn, 28
  br i1 %i.ed, label %.lr.ph.i43.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.018.i.i.i.i.i.i.idx = phi i64 [ %.018.i.i.i.i.i.i.add.7, %.lr.ph.i40.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.idx.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i40.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.018.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %i.ee = load i32, ptr %.018.i.i.i.i.i.i.ptr, align 4, !tbaa !42, !noalias !741
  store i32 %i.ee, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !42, !noalias !741
  %i.ef = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.eh = load i32, ptr %.018.i.i.i.i.i.i.ptr.1, align 4, !tbaa !42, !noalias !741
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !42, !noalias !741
  %i.ei = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ek = load i32, ptr %.018.i.i.i.i.i.i.ptr.2, align 4, !tbaa !42, !noalias !741
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !42, !noalias !741
  %i.el = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.en = load i32, ptr %.018.i.i.i.i.i.i.ptr.3, align 4, !tbaa !42, !noalias !741
  store i32 %i.en, ptr %i.el, align 4, !tbaa !42, !noalias !741
  %i.eo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eq = load i32, ptr %.018.i.i.i.i.i.i.ptr.4, align 4, !tbaa !42, !noalias !741
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !42, !noalias !741
  %i.er = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  %i.et = load i32, ptr %.018.i.i.i.i.i.i.ptr.5, align 4, !tbaa !42, !noalias !741
  store i32 %i.et, ptr %i.er, align 4, !tbaa !42, !noalias !741
  %i.eu = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ew = load i32, ptr %.018.i.i.i.i.i.i.ptr.6, align 4, !tbaa !42, !noalias !741
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !42, !noalias !741
  %i.ex = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 28
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 %.018.i.i.i.i.i.i.idx
  %.018.i.i.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.ez = load i32, ptr %.018.i.i.i.i.i.i.ptr.7, align 4, !tbaa !42, !noalias !741
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !42, !noalias !741
  %.018.i.i.i.i.i.i.add.7 = add nuw nsw i64 %.018.i.i.i.i.i.i.idx, 32
  %i.fa = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 32
  br label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !14

.lr.ph.i43.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit
  %.pre.i44.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !42, !noalias !741 ; 18 uses
  %i.fb = add nsw i64 %i.dr, -1
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i43.i.i.i.i.i
  %.07.i45.i.i.i.i.i.prol = phi i64 [ %i.dr, %.lr.ph.i43.i.i.i.i.i ], [ %i.fc, %bb.y ]
  %.046.i46.i.i.i.i.i.prol = phi ptr [ %.ptr252, %.lr.ph.i43.i.i.i.i.i ], [ %i.fd, %bb.y ] ; 2 uses
  %prol.iter279 = phi i64 [ 0, %.lr.ph.i43.i.i.i.i.i ], [ %prol.iter279.next, %bb.y ]
  %i.fc = add i64 %.07.i45.i.i.i.i.i.prol, -1     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i.prol, align 4, !tbaa !42, !noalias !741
  %i.fd = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter279.next = add i64 %prol.iter279, 1   ; 2 uses
  %prol.iter279.cmp.not = icmp eq i64 %prol.iter279.next, %i.dr
  br i1 %prol.iter279.cmp.not, label %.prol.loopexit, label %bb.y, !llvm.loop !730

.prol.loopexit:                                   ; preds = %bb.y
  %i.fe = icmp ult i64 %i.fb, 7
  br i1 %i.fe, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i.new

.lr.ph.i43.i.i.i.i.i.new:                         ; preds = %.prol.loopexit, %.lr.ph.i43.i.i.i.i.i.new
  %.07.i45.i.i.i.i.i = phi i64 [ %i.fm, %.lr.ph.i43.i.i.i.i.i.new ], [ %i.fc, %.prol.loopexit ]
  %.046.i46.i.i.i.i.i = phi ptr [ %i.fn, %.lr.ph.i43.i.i.i.i.i.new ], [ %i.fd, %.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.046.i46.i.i.i.i.i, align 4, !tbaa !42, !noalias !741
  %i.ff = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.ff, align 4, !tbaa !42, !noalias !741
  %i.fg = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fg, align 4, !tbaa !42, !noalias !741
  %i.fh = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fh, align 4, !tbaa !42, !noalias !741
  %i.fi = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fi, align 4, !tbaa !42, !noalias !741
  %i.fj = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fj, align 4, !tbaa !42, !noalias !741
  %i.fk = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fk, align 4, !tbaa !42, !noalias !741
  %i.fl = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 28
  %i.fm = add i64 %.07.i45.i.i.i.i.i, -8          ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fl, align 4, !tbaa !42, !noalias !741
  %i.fn = getelementptr inbounds nuw i8, ptr %.046.i46.i.i.i.i.i, i64 32
  %.not.i47.i.i.i.i.i.7 = icmp eq i64 %i.fm, 0
  br i1 %.not.i47.i.i.i.i.i.7, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i, label %.lr.ph.i43.i.i.i.i.i.new, !llvm.loop !731

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i: ; preds = %.lr.ph.i43.i.i.i.i.i.new, %.prol.loopexit
  %i.fo = sub nuw nsw i64 3, %i.dr                ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.prol = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.fo, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %.01416.i.i.i.i.i.i.i.prol = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bz, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ] ; 2 uses
  %prol.iter282 = phi i64 [ %prol.iter282.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit48.i.i.i.i.i ]
  %i.fp = add nsw i64 %.017.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i.prol, align 4, !tbaa !42, !noalias !741
  %i.fq = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter282.next = add i64 %prol.iter282, 1   ; 2 uses
  %prol.iter282.cmp.not = icmp eq i64 %prol.iter282.next, %i.fo
  br i1 %prol.iter282.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !732

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol
  %i.fr = icmp ult i64 %i.dr, 3
  br i1 %i.fr, label %.loopexit147, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.fz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i.i, align 4, !tbaa !42, !noalias !741
  %i.fs = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 4
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fs, align 4, !tbaa !42, !noalias !741
  %i.ft = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.ft, align 4, !tbaa !42, !noalias !741
  %i.fu = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 12
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fu, align 4, !tbaa !42, !noalias !741
  %i.fv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 16
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fv, align 4, !tbaa !42, !noalias !741
  %i.fw = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 20
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fw, align 4, !tbaa !42, !noalias !741
  %i.fx = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 24
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fx, align 4, !tbaa !42, !noalias !741
  %i.fy = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 28
  %i.fz = add nsw i64 %.017.i.i.i.i.i.i.i, -8     ; 2 uses
  store i32 %.pre.i44.i.i.i.i.i, ptr %i.fy, align 4, !tbaa !42, !noalias !741
  %i.ga = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %.loopexit147, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

.loopexit147:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i38.i.i.i.i.i
  %i.gb = phi i1 [ %.pre.i.i.i, %.lr.ph.i38.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.gc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.z:                                             ; preds = %.loopexit147
  %i.gd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gb)
          to label %.preheader144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader144:                                    ; preds = %bb.z
  %.not188 = icmp eq i64 %.062186, 0
  br i1 %.not188, label %.preheader140, label %.lr.ph177

.preheader140:                                    ; preds = %bb.aa, %.preheader144
  %invariant.gep178 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.062186 ; 4 uses
  %i.ge = load i32, ptr %invariant.gep178, align 4, !tbaa !78
  %i.gf = load i32, ptr %0, align 4, !tbaa !78
  %i.gg = icmp eq i32 %i.ge, %i.gf
  %i.gh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gg)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph177:                                        ; preds = %.preheader144, %bb.aa
  %.061176 = phi i64 [ %i.gn, %bb.aa ], [ 0, %.preheader144 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.061176
  %i.gj = trunc nuw nsw i64 %.061176 to i32
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !78
  %i.gl = icmp eq i32 %i.gk, %i.gj
  %i.gm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 403, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gl)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aa:                                            ; preds = %.lr.ph177
  %i.gn = add nuw nsw i64 %.061176, 1             ; 2 uses
  %exitcond213.not = icmp eq i64 %i.gn, %.062186
  br i1 %exitcond213.not, label %.preheader140, label %.lr.ph177, !llvm.loop !733

.lr.ph184:                                        ; preds = %.preheader
  %i.go = trunc nuw nsw i64 %.062186 to i32
  br label %bb.ad

bb.ab:                                            ; preds = %.preheader140
  %gep179.1 = getelementptr inbounds nuw i8, ptr %invariant.gep178, i64 4
  %i.gp = load i32, ptr %gep179.1, align 4, !tbaa !78
  %i.gq = load i32, ptr %0, align 4, !tbaa !78
  %i.gr = icmp eq i32 %i.gp, %i.gq
  %i.gs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gr)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %gep179.2 = getelementptr inbounds nuw i8, ptr %invariant.gep178, i64 8
  %i.gt = load i32, ptr %gep179.2, align 4, !tbaa !78
  %i.gu = load i32, ptr %0, align 4, !tbaa !78
  %i.gv = icmp eq i32 %i.gt, %i.gu
  %i.gw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.gv)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %bb.ac
  br i1 %i.dq, label %._crit_edge185.thread, label %.lr.ph184

._crit_edge185.thread:                            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.loopexit

._crit_edge185:                                   ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.gx = add nuw nsw i64 %.062186, 1             ; 2 uses
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, -1
  %exitcond219.not = icmp eq i64 %i.gx, 6
  br i1 %exitcond219.not, label %.loopexit, label %bb.v, !llvm.loop !734

bb.ad:                                            ; preds = %.lr.ph184, %bb.ae
  %.0183 = phi i64 [ 0, %.lr.ph184 ], [ %i.he, %bb.ae ] ; 3 uses
  %gep182 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep178, i64 %.0183
  %i.gy = getelementptr inbounds nuw i8, ptr %gep182, i64 12
  %i.gz = trunc nuw nsw i64 %.0183 to i32
  %i.ha = add nuw nsw i32 %i.gz, %i.go
  %i.hb = load i32, ptr %i.gy, align 4, !tbaa !78
  %i.hc = icmp eq i32 %i.hb, %i.ha
  %i.hd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext %i.hc)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.he = add nuw nsw i64 %.0183, 1               ; 2 uses
  %exitcond218.not = icmp eq i64 %i.he, %umax217
  br i1 %exitcond218.not, label %._crit_edge185, label %bb.ad, !llvm.loop !735

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %.lr.ph177, %.preheader140, %bb.ab, %bb.ac, %bb.z, %.loopexit147
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.loopexit.split-lp166

bb.af:                                            ; preds = %.loopexit
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ag unwind label %.loopexit.split-lp166.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  invoke void @_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ah unwind label %.loopexit.split-lp166.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.hf = load ptr, ptr %i.c, align 8, !tbaa !106, !noalias !742 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.hf, %i.c
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i105

.lr.ph.i.i.i105:                                  ; preds = %bb.ah, %.lr.ph.i.i.i105
  %.sroa.04.09.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i105 ], [ %i.hf, %bb.ah ] ; 2 uses
  %i.hg = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !106 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i106 = icmp eq ptr %i.hg, %i.c
  br i1 %.not.i.i.i106, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i105, !llvm.loop !7

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i105, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.hh = load i64, ptr %i.f, align 8, !tbaa !126 ; 2 uses
  %.not.i.i107 = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i107, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.hi = load ptr, ptr %4, align 8, !tbaa !128
  %i.hj = shl i64 %i.hh, 2
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hj) #25
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit: ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit.split-lp166.loopexit.split-lp:          ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.1, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.2, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.3, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.4, %bb.ag, %bb.af, %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp166

.loopexit.split-lp166:                            ; preds = %.loopexit.split-lp166.loopexit.split-lp, %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn79.pn = phi { ptr, i32 } [ %i.bx, %bb.n ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp166.loopexit.split-lp ]
  %i.hk = load ptr, ptr %i.c, align 8, !tbaa !106, !noalias !743 ; 2 uses
  %.not8.i.i.i108 = icmp eq ptr %i.hk, %i.c
  br i1 %.not8.i.i.i108, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit112, label %.lr.ph.i.i.i109

.lr.ph.i.i.i109:                                  ; preds = %.loopexit.split-lp166, %.lr.ph.i.i.i109
  %.sroa.04.09.i.i.i110 = phi ptr [ %i.hl, %.lr.ph.i.i.i109 ], [ %i.hk, %.loopexit.split-lp166 ] ; 2 uses
  %i.hl = load ptr, ptr %.sroa.04.09.i.i.i110, align 8, !tbaa !106 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i110, i64 noundef 24) #25
  %.not.i.i.i111 = icmp eq ptr %i.hl, %i.c
  br i1 %.not.i.i.i111, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit112, label %.lr.ph.i.i.i109, !llvm.loop !7

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit112: ; preds = %.lr.ph.i.i.i109, %.loopexit.split-lp166
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.hm = load i64, ptr %i.f, align 8, !tbaa !126 ; 2 uses
  %.not.i.i113 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i113, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit114, label %bb.aj

end_hunk_0
