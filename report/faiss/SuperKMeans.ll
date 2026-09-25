Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/SuperKMeans?download=true
inline.NumInlined: 702
inline.NumDeleted: 294
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5faiss29super_kmeans_assign_iterationEPKfiiS1_iPfPiiS1_RKNS_21SuperKMeansParametersEPlS7_PNS_24SuperKMeansAssignScratchE:bb.a
  br label %common.resume

bb.ak:                                            ; preds = %bb.ab
  %i.cm = icmp eq ptr %6, null
  br i1 %i.cm, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.cn, ptr %17, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 0, ptr %i.co, align 8, !tbaa !35
  store i8 0, ptr %i.cn, align 8, !tbaa !36
  %i.cp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #14 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.cr = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cs = add nuw nsw i64 %i.cr, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.cs)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ct = load ptr, ptr %17, align 8, !tbaa !37
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !35
  %i.cv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cu, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #14 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.cr)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.an, %bb.al
  %i.cx = call ptr @__cxa_allocate_exception(i64 40) #14 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss29super_kmeans_assign_iterationEPKfiiS1_iPfPiiS1_RKNS_21SuperKMeansParametersEPlS7_PNS_24SuperKMeansAssignScratchE, ptr noundef nonnull @.str.2, i32 noundef 525)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #19
          to label %bb.cj unwind label %bb.ao

bb.ar:                                            ; preds = %bb.ap
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cx) #14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn96 = phi { ptr, i32 } [ %i.cw, %bb.ao ], [ %i.cy, %bb.ar ]
  %i.cz = load ptr, ptr %17, align 8, !tbaa !37   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cn
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.as
  %i.db = load i64, ptr %i.cn, align 8, !tbaa !36
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %common.resume

bb.at:                                            ; preds = %bb.ak
  %i.dd = sub nuw nsw i32 %2, %7                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !132 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, i8 0, i64 48, i1 false), !alias.scope !133
  %i.dg = sdiv i32 %i.dd, %i.df                   ; 5 uses
  %i.dh = srem i32 %i.dd, %i.df                   ; 2 uses
  %i.di = icmp ne i32 %i.dh, 0                    ; 2 uses
  %i.dj = zext i1 %i.di to i32
  %i.dk = add nsw i32 %i.dg, %i.dj                ; 3 uses
  %i.dl = sext i32 %i.dk to i64                   ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %.not295 = icmp eq i32 %i.dk, 0
  br i1 %.not295, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dn = icmp slt i32 %i.dk, 0
  br i1 %i.dn, label %bb.av, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #19
          to label %.noexc142 unwind label %bb.ax

.noexc142:                                        ; preds = %bb.av
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.au
  %i.do = shl nuw nsw i64 %i.dl, 2                ; 3 uses
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #21
          to label %.noexc143 unwind label %bb.ax ; 7 uses

.noexc143:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do ; 3 uses
  %i.dr = add nsw i64 %i.do, -4                   ; 2 uses
  %i.ds = lshr exact i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc143
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 3 uses
  %i.du = shl i64 %n.vec, 2
  %i.dv = getelementptr i8, ptr %i.dp, i64 %i.du
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !50
  store <4 x i32> %broadcast.splat, ptr %i.dx, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.noexc143, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dp, %.noexc143 ], [ %i.dv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.df, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.dq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !126

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dl
  %i.eb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.dp, ptr %18, align 8, !tbaa !52
  store ptr %i.dq, ptr %i.eb, align 8, !tbaa !53
  store ptr %i.ea, ptr %i.dm, align 8, !tbaa !51
  %i.ec = ptrtoint ptr %i.dq to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.eg = shl nuw nsw i64 %i.dl, 2
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #21
          to label %.noexc137 unwind label %bb.ax ; 5 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.eh, align 4, !tbaa !50
  %i.ei = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc137
  %i.ek = getelementptr i8, ptr %i.eh, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ei, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ek, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !50
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc137
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !52
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.dl ; 2 uses
  store ptr %i.el, ptr %i.ee, align 8, !tbaa !53
  store ptr %i.el, ptr %i.ef, align 8, !tbaa !51
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.aw:                                            ; preds = %bb.at
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 24
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.aw, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i
  %i.en = phi ptr [ %i.em, %bb.aw ], [ %i.ed, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %i.eo = phi ptr [ null, %bb.aw ], [ %i.dp, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 2 uses
  %i.ep = phi i64 [ 0, %bb.aw ], [ %i.ec, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %i.eq = phi ptr [ null, %bb.aw ], [ %i.eh, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 3 uses
  %i.er = icmp sgt i32 %i.dg, 0
  br i1 %i.er, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %wide.trip.count.i = zext nneg i32 %i.dg to i64 ; 3 uses
  %min.iters.check302 = icmp ult i32 %i.dg, 8
  br i1 %min.iters.check302, label %scalar.ph301.preheader, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i
  %n.vec304 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert305 = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat306 = shufflevector <4 x i32> %broadcast.splatinsert305, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert307 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat308 = shufflevector <4 x i32> %broadcast.splatinsert307, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph303
  %index310 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body309 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph303 ], [ %vec.ind.next, %vector.body309 ] ; 3 uses
  %i.es = add <4 x i32> %vec.ind, splat (i32 4)
  %i.et = mul nsw <4 x i32> %broadcast.splat306, %vec.ind
  %i.eu = mul nsw <4 x i32> %broadcast.splat306, %i.es
  %i.ev = add nsw <4 x i32> %i.et, %broadcast.splat308
  %i.ew = add nsw <4 x i32> %i.eu, %broadcast.splat308
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index310 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <4 x i32> %i.ev, ptr %i.ex, align 4, !tbaa !50
  store <4 x i32> %i.ew, ptr %i.ey, align 4, !tbaa !50
  %index.next311 = add nuw i64 %index310, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ez = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.ez, label %middle.block312, label %vector.body309, !llvm.loop !127

middle.block312:                                  ; preds = %vector.body309
  %cmp.n313 = icmp eq i64 %n.vec304, %wide.trip.count.i
  br i1 %cmp.n313, label %._crit_edge.i, label %scalar.ph301.preheader

scalar.ph301.preheader:                           ; preds = %.lr.ph.i, %middle.block312
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec304, %middle.block312 ]
  br label %scalar.ph301

._crit_edge.i:                                    ; preds = %scalar.ph301, %middle.block312, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  br i1 %i.di, label %bb.ay, label %_ZN5faiss12_GLOBAL__N_122build_pdx_block_layoutEiii.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.ci, %bb.ax
  %common.resume.op = phi { ptr, i32 } [ %i.fa, %bb.ax ], [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn91.pn.pn.pn, %bb.ci ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.ax:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.av, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN5faiss12_GLOBAL__N_116LocalBlockLayoutD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #14
  br label %common.resume

scalar.ph301:                                     ; preds = %scalar.ph301.preheader, %scalar.ph301
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph301 ], [ %indvars.iv.i.ph, %scalar.ph301.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.fc = mul nsw i32 %i.df, %i.fb
  %i.fd = add nsw i32 %i.fc, %7
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !50
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph301, !llvm.loop !128

bb.ay:                                            ; preds = %._crit_edge.i
  %i.ff = sext i32 %i.dg to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ff
  store i32 %i.dh, ptr %i.fg, align 4, !tbaa !50
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ff
  store i32 %2, ptr %i.fh, align 4, !tbaa !50
  br label %_ZN5faiss12_GLOBAL__N_122build_pdx_block_layoutEiii.exit

_ZN5faiss12_GLOBAL__N_122build_pdx_block_layoutEiii.exit: ; preds = %._crit_edge.i, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.fi = ptrtoint ptr %i.eo to i64
  %i.fj = sub i64 %i.ep, %i.fi
  %i.fk = lshr exact i64 %i.fj, 2
  %i.fl = trunc i64 %i.fk to i32
  store i32 %i.fl, ptr %i.j, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %19, i8 0, i64 120, i1 false)
  %.not = icmp eq ptr %12, null                   ; 10 uses
  %i.fm = select i1 %.not, ptr %19, ptr %12       ; 6 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %.sroa.gep149 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %.sroa.sel = select i1 %.not, ptr %.sroa.gep, ptr %.sroa.gep149 ; 4 uses
  %i.fn = sext i32 %4 to i64                      ; 6 uses
  %i.fo = zext nneg i32 %i.dd to i64              ; 5 uses
  %i.fp = mul nsw i64 %i.fn, %i.fo                ; 8 uses
  %.sroa.sel161.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %19, ptr %12
  %.sroa.sel161.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel161.v.sroa.sel.v.sroa.sel.v, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %.sroa.sel161.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49 ; 2 uses
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !38 ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 2                 ; 3 uses
  %i.fw = icmp ugt i64 %i.fp, %i.fv
  br i1 %i.fw, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN5faiss12_GLOBAL__N_122build_pdx_block_layoutEiii.exit
  %i.fx = sub nuw nsw i64 %i.fp, %i.fv
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i64 noundef %i.fx)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.bf

bb.ba:                                            ; preds = %_ZN5faiss12_GLOBAL__N_122build_pdx_block_layoutEiii.exit
  %i.fy = icmp ult i64 %i.fp, %i.fv
  br i1 %i.fy, label %bb.bb, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.bb:                                            ; preds = %bb.ba
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fp ; 2 uses
  %.not.i.i = icmp eq ptr %i.fq, %i.fz
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bb
  store ptr %i.fz, ptr %.sroa.sel161.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.bb, %bb.ba, %bb.az
  %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %19, ptr %12
  %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32 ; 2 uses
  %i.ga = load ptr, ptr %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49 ; 2 uses
  %i.gb = load ptr, ptr %.sroa.sel, align 8, !tbaa !38 ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 2                 ; 3 uses
  %i.gg = icmp ugt i64 %i.fp, %i.gf
  br i1 %i.gg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.gh = sub nuw nsw i64 %i.fp, %i.gf
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.sel, i64 noundef %i.gh)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit118 unwind label %bb.bf

bb.bd:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.gi = icmp ult i64 %i.fp, %i.gf
  br i1 %i.gi, label %bb.be, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit118

bb.be:                                            ; preds = %bb.bd
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.fp ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.ga, %i.gj
  br i1 %.not.i.i115, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit118, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i116

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i116:     ; preds = %bb.be
  store ptr %i.gj, ptr %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit118

_ZNSt6vectorIfSaIfEE6resizeEm.exit118:            ; preds = %bb.bc, %bb.bd, %bb.be, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i116
  %i.gk = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.gk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit118
  %i.gl = shl nuw nsw i64 %i.fo, 2                ; 3 uses
  %i.gm = zext nneg i32 %2 to i64                 ; 3 uses
  %i.gn = zext nneg i32 %7 to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gn ; 3 uses
  %i.go = icmp eq i32 %4, 1
  br i1 %i.go, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.fn, 2147483646
  br label %bb.bg

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bg
  %i.gp = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %i.gp, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod317 = trunc i32 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod317)
  %i.gq = load ptr, ptr %i.fm, align 8, !tbaa !38
  %i.gr = mul nuw nsw i64 %indvars.iv.epil.init, %i.fo
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = mul nuw nsw i64 %indvars.iv.epil.init, %i.gm
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gs, ptr nonnull align 4 %gep.epil, i64 %i.gl, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIfSaIfEE6resizeEm.exit118
  %i.gu = load ptr, ptr %i.fm, align 8, !tbaa !38
  %i.gv = load i32, ptr %i.de, align 4, !tbaa !132
  %i.gw = load ptr, ptr %.sroa.sel, align 8, !tbaa !38
  invoke void @_ZN5faiss6detail6pdxifyEPKfiiiPf(ptr noundef %i.gu, i32 noundef %4, i32 noundef %i.dd, i32 noundef %i.gv, ptr noundef %i.gw)
          to label %bb.bh unwind label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.az, %._crit_edge
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bg ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bg ]
  %i.gy = load ptr, ptr %i.fm, align 8, !tbaa !38
  %i.gz = mul nuw nsw i64 %indvars.iv, %i.fo
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = mul nuw nsw i64 %indvars.iv, %i.gm
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ha, ptr nonnull align 4 %gep, i64 %i.gl, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.hc = load ptr, ptr %i.fm, align 8, !tbaa !38
  %i.hd = mul nuw nsw i64 %indvars.iv.next, %i.fo
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = mul nuw nsw i64 %indvars.iv.next, %i.gm
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.he, ptr nonnull align 4 %gep.1, i64 %i.gl, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !129

bb.bh:                                            ; preds = %._crit_edge
  %.sroa.gep150 = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %.sroa.gep151 = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.sroa.sel152 = select i1 %.not, ptr %.sroa.gep150, ptr %.sroa.gep151 ; 4 uses
  %.sroa.gep153 = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  %.sroa.gep154 = getelementptr inbounds nuw i8, ptr %12, i64 72
  %.sroa.sel155 = select i1 %.not, ptr %.sroa.gep153, ptr %.sroa.gep154 ; 4 uses
  %i.hg = sext i32 %1 to i64                      ; 4 uses
  %.sroa.sel152.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %19, ptr %12
  %.sroa.sel152.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel152.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 56 ; 2 uses
  %i.hh = load ptr, ptr %.sroa.sel152.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !49 ; 2 uses
  %i.hi = load ptr, ptr %.sroa.sel152, align 8, !tbaa !38 ; 5 uses
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk
end_hunk_0
