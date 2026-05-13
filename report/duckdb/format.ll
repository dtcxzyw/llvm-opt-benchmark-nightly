inline.NumInlined: 5790
inline.NumDeleted: 1347
begin_hunk_0_@_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi:bb.a
  %i.jn = shl nuw nsw i64 %spec.select.i506, 2
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #29
          to label %._crit_edge unwind label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i507
  store ptr %i.jo, ptr %i.a, align 8, !tbaa !94
  store i64 %spec.select.i506, ptr %i.b, align 8, !tbaa !97
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %bb.an
  store i64 %i.jl, ptr %i.c, align 8, !tbaa !102
  store i32 0, ptr %i.e, align 8, !tbaa !98
  invoke void @_ZN10duckdb_fmt2v68internal6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %4, i32 noundef %i.eh)
          to label %bb.ap unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.jp = sub nsw i32 %i.ef, %.0.i300             ; 2 uses
  %i.jq = lshr i32 %i.jp, 5
  %.zext = and i32 %i.jq, 2047
  %i.jr = load i32, ptr %i.j, align 8, !tbaa !98
  %i.js = add nsw i32 %i.jr, %.zext
  store i32 %i.js, ptr %i.j, align 8, !tbaa !98
  %.zext309 = and i32 %i.jp, 31                   ; 4 uses
  %i.jt = icmp eq i32 %.zext309, 0
  br i1 %i.jt, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ju = load i64, ptr %i.h, align 8, !tbaa !102 ; 7 uses
  %.not18.i168 = icmp eq i64 %i.ju, 0
  br i1 %.not18.i168, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %bb.aq
  %i.jv = load ptr, ptr %i.f, align 8, !tbaa !94  ; 3 uses
  %i.jw = sub nuw nsw i32 32, %.zext309           ; 2 uses
  %min.iters.check1039 = icmp ult i64 %i.ju, 8
  br i1 %min.iters.check1039, label %scalar.ph1038.preheader, label %vector.ph1040

vector.ph1040:                                    ; preds = %.lr.ph.i169
  %n.vec1042 = and i64 %i.ju, -8                  ; 3 uses
  %broadcast.splatinsert1043 = insertelement <4 x i32> poison, i32 %i.jw, i64 0
  %broadcast.splat1044 = shufflevector <4 x i32> %broadcast.splatinsert1043, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %.zext309, i64 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %vector.ph1040
  %index1048 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1052, %vector.body1047 ] ; 2 uses
  %vector.recur1049 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1040 ], [ %i.ka, %vector.body1047 ]
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index1048 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load1050 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !3 ; 2 uses
  %wide.load1051 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !3 ; 2 uses
  %i.jz = lshr <4 x i32> %wide.load1050, %broadcast.splat1044 ; 2 uses
  %i.ka = lshr <4 x i32> %wide.load1051, %broadcast.splat1044 ; 3 uses
  %i.kb = shufflevector <4 x i32> %vector.recur1049, <4 x i32> %i.jz, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.kc = shufflevector <4 x i32> %i.jz, <4 x i32> %i.ka, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.kd = shl <4 x i32> %wide.load1050, %broadcast.splat1046
  %i.ke = shl <4 x i32> %wide.load1051, %broadcast.splat1046
  %i.kf = add <4 x i32> %i.kd, %i.kb
  %i.kg = add <4 x i32> %i.ke, %i.kc
  store <4 x i32> %i.kf, ptr %i.jx, align 4, !tbaa !3
  store <4 x i32> %i.kg, ptr %i.jy, align 4, !tbaa !3
  %index.next1052 = add nuw i64 %index1048, 8     ; 2 uses
  %i.kh = icmp eq i64 %index.next1052, %n.vec1042
  br i1 %i.kh, label %middle.block1053, label %vector.body1047, !llvm.loop !115

middle.block1053:                                 ; preds = %vector.body1047
  %vector.recur.extract1054 = extractelement <4 x i32> %i.ka, i64 3 ; 2 uses
  %cmp.n1055 = icmp eq i64 %i.ju, %n.vec1042
  br i1 %cmp.n1055, label %._crit_edge.i173, label %scalar.ph1038.preheader

scalar.ph1038.preheader:                          ; preds = %.lr.ph.i169, %middle.block1053
  %.01317.i170.ph = phi i64 [ 0, %.lr.ph.i169 ], [ %n.vec1042, %middle.block1053 ]
  %.016.i171.ph = phi i32 [ 0, %.lr.ph.i169 ], [ %vector.recur.extract1054, %middle.block1053 ]
  br label %scalar.ph1038

._crit_edge.i173:                                 ; preds = %scalar.ph1038, %middle.block1053
  %.lcssa1010 = phi i32 [ %vector.recur.extract1054, %middle.block1053 ], [ %i.kk, %scalar.ph1038 ] ; 2 uses
  %.not.i174 = icmp eq i32 %.lcssa1010, 0
  br i1 %.not.i174, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180, label %bb.ar

scalar.ph1038:                                    ; preds = %scalar.ph1038.preheader, %scalar.ph1038
  %.01317.i170 = phi i64 [ %i.kn, %scalar.ph1038 ], [ %.01317.i170.ph, %scalar.ph1038.preheader ] ; 2 uses
  %.016.i171 = phi i32 [ %i.kk, %scalar.ph1038 ], [ %.016.i171.ph, %scalar.ph1038.preheader ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.01317.i170 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !3  ; 2 uses
  %i.kk = lshr i32 %i.kj, %i.jw                   ; 2 uses
  %i.kl = shl i32 %i.kj, %.zext309
  %i.km = add i32 %i.kl, %.016.i171
  store i32 %i.km, ptr %i.ki, align 4, !tbaa !3
  %i.kn = add nuw i64 %.01317.i170, 1             ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %i.kn, %i.ju
  br i1 %exitcond.not.i172, label %._crit_edge.i173, label %scalar.ph1038, !llvm.loop !116

bb.ar:                                            ; preds = %._crit_edge.i173
  %i.ko = add i64 %i.ju, 1                        ; 3 uses
  %i.kp = load i64, ptr %i.g, align 8, !tbaa !97
  %i.kq = icmp ugt i64 %i.ko, %i.kp
  br i1 %i.kq, label %bb.as, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i175

bb.as:                                            ; preds = %bb.ar
  %i.kr = load ptr, ptr %4, align 8, !tbaa !14
  %i.ks = load ptr, ptr %i.kr, align 8
  invoke void %i.ks(ptr noundef nonnull align 8 dereferenceable(164) %4, i64 noundef %i.ko)
          to label %.noexc179 unwind label %.loopexit.split-lp, !inline_history !106

.noexc179:                                        ; preds = %bb.as
  %.pre.i.i177 = load i64, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %.pre2.i.i178 = add i64 %.pre.i.i177, 1
  %.pre381 = load ptr, ptr %i.f, align 8, !tbaa !94
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i175

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i175: ; preds = %.noexc179, %bb.ar
  %i.kt = phi ptr [ %i.jv, %bb.ar ], [ %.pre381, %.noexc179 ]
  %.pre-phi.i.i176 = phi i64 [ %i.ko, %bb.ar ], [ %.pre2.i.i178, %.noexc179 ]
  %i.ku = phi i64 [ %i.ju, %bb.ar ], [ %.pre.i.i177, %.noexc179 ]
  store i64 %.pre-phi.i.i176, ptr %i.h, align 8, !tbaa !102
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.ku
  store i32 %.lcssa1010, ptr %i.kv, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180:   ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i175, %._crit_edge.i173, %bb.aq, %bb.ap
  %i.kw = load ptr, ptr %i.k, align 8, !tbaa !94
  store i32 1, ptr %i.kw, align 4, !tbaa !3
  %i.kx = load i64, ptr %i.l, align 8, !tbaa !97
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180
  %i.kz = load ptr, ptr %5, align 8, !tbaa !14
  %i.la = load ptr, ptr %i.kz, align 8
  invoke void %i.la(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef 1)
          to label %bb.au unwind label %.loopexit.split-lp, !inline_history !105

bb.au:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit180, %bb.at
  store i64 1, ptr %i.m, align 8, !tbaa !102
  store i32 0, ptr %i.o, align 8, !tbaa !98
  br i1 %i.eg, label %bb.av, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121

bb.av:                                            ; preds = %bb.au
  %i.lb = load ptr, ptr %i.p, align 8, !tbaa !94
  store i32 2, ptr %i.lb, align 4, !tbaa !3
  %i.lc = load i64, ptr %i.q, align 8, !tbaa !97
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %bb.aw, label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194

bb.aw:                                            ; preds = %bb.av
  %i.le = load ptr, ptr %6, align 8, !tbaa !14
  %i.lf = load ptr, ptr %i.le, align 8
  invoke void %i.lf(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef 1)
          to label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194 unwind label %.loopexit.split-lp, !inline_history !105

_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194: ; preds = %bb.aw, %bb.av
  store i64 1, ptr %i.r, align 8, !tbaa !102
  store i32 0, ptr %i.t, align 8, !tbaa !98
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121:   ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155, %.lr.ph.i149, %bb.ak, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116, %._crit_edge.i114, %bb.o, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194, %bb.au
  %.sroa.0.0298 = phi i64 [ %.sroa.0.0299, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194 ], [ %i.z, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116 ], [ %.sroa.0.0299, %bb.au ], [ %i.z, %bb.o ], [ %i.z, %._crit_edge.i114 ], [ %.sroa.0.0299, %bb.ak ], [ %.sroa.0.0299, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155 ], [ %.sroa.0.0299, %.lr.ph.i149 ]
  %.253 = phi ptr [ %6, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit194 ], [ %.051, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i116 ], [ null, %bb.au ], [ %.051, %bb.o ], [ %.051, %._crit_edge.i114 ], [ %.152, %bb.ak ], [ %.152, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i155 ], [ %.152, %.lr.ph.i149 ] ; 7 uses
  %.not = icmp eq ptr %.253, null                 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !17 ; 3 uses
  %i.li = trunc i64 %.sroa.0.0298 to i32
  %i.lj = and i32 %i.li, 1                        ; 2 uses
  %i.lk = xor i32 %i.lj, 1
  %.253.sroa.gep = getelementptr inbounds nuw i8, ptr %.253, i64 16 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not, ptr %i.m, ptr %.253.sroa.gep
  %.253.sroa.gep282 = getelementptr inbounds nuw i8, ptr %.253, i64 160
  %spec.store.select.sroa.sel283 = select i1 %.not, ptr %i.o, ptr %.253.sroa.gep282
  %.253.sroa.gep285 = getelementptr inbounds nuw i8, ptr %.253, i64 8 ; 3 uses
  %spec.store.select.sroa.sel286 = select i1 %.not, ptr %i.k, ptr %.253.sroa.gep285
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.253.sroa.gep294 = getelementptr inbounds nuw i8, ptr %.253, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121
  %indvars.iv = phi i64 [ 0, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit121 ], [ %indvars.iv.next, %.backedge.backedge ] ; 7 uses
  %i.ln = invoke noundef i32 @_ZN10duckdb_fmt2v68internal6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %3, ptr noundef nonnull align 8 dereferenceable(164) %4)
          to label %bb.ax unwind label %bb.bl     ; 3 uses

bb.ax:                                            ; preds = %.backedge
  %i.lo = load i64, ptr %i.c, align 8, !tbaa !102 ; 2 uses
  %i.lp = trunc i64 %i.lo to i32                  ; 2 uses
  %i.lq = load i32, ptr %i.e, align 8, !tbaa !98  ; 3 uses
  %i.lr = add nsw i32 %i.lq, %i.lp                ; 4 uses
  %i.ls = load i64, ptr %i.m, align 8, !tbaa !102 ; 2 uses
  %i.lt = trunc i64 %i.ls to i32                  ; 2 uses
  %i.lu = load i32, ptr %i.o, align 8, !tbaa !98
  %i.lv = add nsw i32 %i.lu, %i.lt                ; 2 uses
  %.not.i195 = icmp eq i32 %i.lr, %i.lv
  br i1 %.not.i195, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lw = icmp sgt i32 %i.lr, %i.lv
  %i.lx = select i1 %i.lw, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

bb.az:                                            ; preds = %bb.ax
  %i.ly = sub nsw i32 %i.lp, %i.lt
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.ly, i32 0)
  %i.lz = load ptr, ptr %i.a, align 8
  %i.ma = load ptr, ptr %i.k, align 8
  %sext.i = shl i64 %i.lo, 32
  %i.mb = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.mc = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.ls, 32
  %i.md = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.mb, i64 %i.mc) ; 2 uses
  %.not35.not.i1014 = icmp sgt i64 %i.mb, %i.mc
  br i1 %.not35.not.i1014, label %.lr.ph, label %._crit_edge1018

bb.ba:                                            ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i197, %i.mc
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge1018, !llvm.loop !117

.lr.ph:                                           ; preds = %bb.az, %bb.ba
  %indvars.iv.i1961016 = phi i64 [ %indvars.iv.next.i197, %bb.ba ], [ %i.mb, %bb.az ]
  %indvars.iv45.i1015 = phi i64 [ %indvars.iv.next46.i, %bb.ba ], [ %i.md, %bb.az ]
  %indvars.iv.next.i197 = add nsw i64 %indvars.iv.i1961016, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1015, -1 ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv.next.i197
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !3  ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.next46.i
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !3  ; 2 uses
  %.not37.i = icmp eq i32 %i.mf, %i.mh
  br i1 %.not37.i, label %bb.ba, label %.loopexit.i, !llvm.loop !117

._crit_edge1018:                                  ; preds = %bb.ba, %bb.az
  %indvars.iv45.i.lcssa = phi i64 [ %i.md, %bb.az ], [ %indvars.iv.next46.i, %bb.ba ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge1018
  %i.mi = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.mj = select i1 %i.mi, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph
  %i.mk = icmp ugt i32 %i.mf, %i.mh
  %i.ml = select i1 %i.mk, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit: ; preds = %.loopexit.i, %bb.bb, %._crit_edge1018, %bb.ay
  %.3.i = phi i32 [ %i.lx, %bb.ay ], [ 0, %._crit_edge1018 ], [ %i.mj, %bb.bb ], [ %i.ml, %.loopexit.i ]
  %i.mm = icmp sge i32 %.3.i, %i.lk               ; 3 uses
  %i.mn = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !102
  %i.mo = trunc i64 %i.mn to i32
  %i.mp = load i32, ptr %spec.store.select.sroa.sel283, align 8, !tbaa !98 ; 3 uses
  %i.mq = add nsw i32 %i.mp, %i.mo                ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.lr, i32 %i.mq) ; 2 uses
  %i.mr = load i64, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = load i32, ptr %i.j, align 8, !tbaa !98  ; 3 uses
  %i.mu = add nsw i32 %i.mt, %i.ms                ; 4 uses
  %i.mv = add nsw i32 %.sroa.speculated.i, 1
  %i.mw = icmp slt i32 %i.mv, %i.mu
  br i1 %i.mw, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit
  %i.mx = icmp sgt i32 %.sroa.speculated.i, %i.mu
  br i1 %i.mx, label %.thread462, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.my = call i32 @llvm.smin.i32(i32 %i.mp, i32 %i.lq)
  %i.mz = call i32 @llvm.smin.i32(i32 %i.mt, i32 %i.my) ; 2 uses
  %.not.not.not60.i = icmp sgt i32 %i.mu, %i.mz
  br i1 %.not.not.not60.i, label %.lr.ph.i198, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i198:                                      ; preds = %bb.bd
  %i.na = load ptr, ptr %i.a, align 8
  %i.nb = load ptr, ptr %spec.store.select.sroa.sel286, align 8
  %i.nc = load ptr, ptr %i.f, align 8
  %i.nd = sext i32 %i.mt to i64                   ; 3 uses
  %sext.i199 = shl i64 %i.mr, 32
  %i.ne = ashr exact i64 %sext.i199, 32
  %i.nf = add nsw i64 %i.ne, %i.nd
  %i.ng = sext i32 %i.mu to i64
  %i.nh = sext i32 %i.mq to i64
  %i.ni = sext i32 %i.mp to i64                   ; 2 uses
  %i.nj = sext i32 %i.lr to i64
  %i.nk = sext i32 %i.lq to i64                   ; 2 uses
  %i.nl = sext i32 %i.mz to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.bj, %.lr.ph.i198
  %indvars.iv.i200 = phi i64 [ %i.nf, %.lr.ph.i198 ], [ %indvars.iv.next.i201, %bb.bj ] ; 7 uses
  %.03561.i = phi i64 [ 0, %.lr.ph.i198 ], [ %i.oj, %bb.bj ] ; 2 uses
  %indvars.iv.next.i201 = add nsw i64 %indvars.iv.i200, -1 ; 5 uses
  %.not.i.i202 = icmp sgt i64 %indvars.iv.i200, %i.nk
  %i.nm = icmp sle i64 %indvars.iv.i200, %i.nj
  %or.cond.i = and i1 %.not.i.i202, %i.nm
  br i1 %or.cond.i, label %bb.bf, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.nn = sub nsw i64 %indvars.iv.next.i201, %i.nk
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !3
  %i.nq = zext i32 %i.np to i64
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i: ; preds = %bb.bf, %bb.be
  %i.nr = phi i64 [ %i.nq, %bb.bf ], [ 0, %bb.be ]
  %.not.i45.i = icmp sgt i64 %indvars.iv.i200, %i.ni
  %i.ns = icmp sle i64 %indvars.iv.i200, %i.nh
  %or.cond55.i = and i1 %.not.i45.i, %i.ns
  br i1 %or.cond55.i, label %bb.bg, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

bb.bg:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.nt = sub nsw i64 %indvars.iv.next.i201, %i.ni
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !3
  %i.nw = zext i32 %i.nv to i64
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i: ; preds = %bb.bg, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.nx = phi i64 [ %i.nw, %bb.bg ], [ 0, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i ]
  %i.ny = add nuw nsw i64 %i.nx, %i.nr            ; 3 uses
  %.not.i47.i = icmp sgt i64 %indvars.iv.i200, %i.nd
  %i.nz = icmp sle i64 %indvars.iv.i200, %i.ng
  %or.cond56.i = and i1 %.not.i47.i, %i.nz
  br i1 %or.cond56.i, label %bb.bh, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i

bb.bh:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i
  %i.oa = sub nsw i64 %indvars.iv.next.i201, %i.nd
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !3
  %i.od = zext i32 %i.oc to i64
  %i.oe = or disjoint i64 %.03561.i, %i.od
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i: ; preds = %bb.bh, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i
  %i.of = phi i64 [ %i.oe, %bb.bh ], [ %.03561.i, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i ] ; 3 uses
  %i.og = icmp ugt i64 %i.ny, %i.of
  br i1 %i.og, label %.thread462, label %bb.bi

bb.bi:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i
  %i.oh = sub nuw nsw i64 %i.of, %i.ny            ; 2 uses
  %i.oi = icmp ugt i64 %i.oh, 1
  br i1 %i.oi, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oj = shl nuw nsw i64 %i.oh, 32
  %.not.not.not.i = icmp sgt i64 %indvars.iv.next.i201, %i.nl
  br i1 %.not.not.not.i, label %bb.be, label %.thread.loopexit.i, !llvm.loop !118

.thread.loopexit.i:                               ; preds = %bb.bj
  %i.ok = icmp ne i64 %i.of, %i.ny
  %i.ol = sext i1 %i.ok to i32
  br label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit

_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.bi, %.thread.loopexit.i, %bb.bd, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit
  %.4.i = phi i32 [ %i.ol, %.thread.loopexit.i ], [ -1, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit ], [ 0, %bb.bd ], [ -1, %bb.bi ]
  %i.om = icmp slt i32 %.4.i, %i.lj               ; 2 uses
  %i.on = trunc i32 %i.ln to i8                   ; 3 uses
  %i.oo = add i8 %i.on, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !18
  %or.cond.not = select i1 %i.mm, i1 %i.om, i1 false
  br i1 %or.cond.not, label %bb.bw, label %bb.bk

bb.bk:                                            ; preds = %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv ; 2 uses
  br i1 %i.mm, label %.thread304.sink.split, label %bb.bm

.thread462:                                       ; preds = %bb.bc, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i
  %i.or = trunc i32 %i.ln to i8                   ; 3 uses
  %i.os = add i8 %i.or, 48
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.lh, i64 %indvars.iv ; 3 uses
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !18
  br i1 %i.mm, label %.thread304.sink.split, label %.thread471

bb.bl:                                            ; preds = %.backedge
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit516:                                     ; preds = %bb.bz, %bb.cc, %bb.cg
  %lpad.loopexit518 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp517:                            ; preds = %bb.bv
  %lpad.loopexit.split-lp519 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.om, label %.thread304, label %.thread471

.thread471:                                       ; preds = %.thread462, %bb.bm
  %i.ov = phi ptr [ %i.oq, %bb.bm ], [ %i.ot, %.thread462 ] ; 3 uses
  %indvars.iv.next459469474 = phi i64 [ %indvars.iv.next, %bb.bm ], [ %indvars.iv.next456, %.thread462 ] ; 6 uses
  %i.ow = phi i8 [ %i.on, %bb.bm ], [ %i.or, %.thread462 ] ; 3 uses
  %i.ox = load i64, ptr %i.c, align 8, !tbaa !102
  %i.oy = trunc i64 %i.ox to i32
  %i.oz = load i32, ptr %i.e, align 8, !tbaa !98  ; 3 uses
  %i.pa = add nsw i32 %i.oz, %i.oy                ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal6bigint12assign_pow10Ei:bb.a
  %i.ac = mul nuw nsw i64 %i.ab, 5
  %i.ad = add nuw nsw i64 %i.ac, %.01112.i.i.epil.init ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !3
  %i.af = lshr i64 %i.ad, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa42 = phi i64 [ %i.av, %._crit_edge.i.i.unr-lcssa ], [ %i.af, %.epil.preheader ] ; 2 uses
  %i.ag = trunc nuw nsw i64 %.lcssa42 to i32
  %.not.i.i = icmp eq i64 %.lcssa42, 0
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.aw, %bb.g ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.av, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.013.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 5
  %i.al = add nuw nsw i64 %i.ak, %.01112.i.i      ; 2 uses
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !3
  %i.an = lshr i64 %i.al, 32
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.013.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 5
  %i.at = add nuw nsw i64 %i.as, %i.an            ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !3
  %i.av = lshr i64 %i.at, 32                      ; 3 uses
  %i.aw = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.g, !llvm.loop !120

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = add i64 %i.w, 1                         ; 3 uses
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !97
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %0, align 8, !tbaa !14
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ax), !inline_history !1314
  %.pre.i.i.i = load i64, ptr %i.s, align 8, !tbaa !102 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !94
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.i, %bb.h
  %i.bc = phi ptr [ %i.x, %bb.h ], [ %.pre.i, %bb.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bd = phi i64 [ %i.w, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  store i64 %.pre-phi.i.i.i, ptr %i.s, align 8, !tbaa !102
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd
  store i32 %i.ag, ptr %i.be, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit

_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.f, %.lr.ph
  %i.bf = ashr i32 %.122, 1                       ; 2 uses
  %.not12 = icmp eq i32 %i.bf, 0
  br i1 %.not12, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1315

._crit_edge.loopexit:                             ; preds = %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.t, align 8, !tbaa !98
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit18
  %i.bg = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit18 ]
  %i.bh = sdiv i32 %1, 32
  %i.bi = add nsw i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %i.t, align 8, !tbaa !98
  %i.bj = srem i32 %1, 32                         ; 4 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bl = load i64, ptr %i.s, align 8, !tbaa !102 ; 7 uses
  %.not18.i = icmp eq i64 %i.bl, 0
  br i1 %.not18.i, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !94  ; 3 uses
  %i.bn = sub nsw i32 32, %i.bj                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bl, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert37 = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat38 = shufflevector <4 x i32> %broadcast.splatinsert37, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.br, %vector.body ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bo, align 4, !tbaa !3 ; 2 uses
  %wide.load39 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !3 ; 2 uses
  %i.bq = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.br = lshr <4 x i32> %wide.load39, %broadcast.splat ; 3 uses
  %i.bs = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.bq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bt = shufflevector <4 x i32> %i.bq, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shl <4 x i32> %wide.load, %broadcast.splat38
  %i.bv = shl <4 x i32> %wide.load39, %broadcast.splat38
  %i.bw = add <4 x i32> %i.bu, %i.bs
  %i.bx = add <4 x i32> %i.bv, %i.bt
  store <4 x i32> %i.bw, ptr %i.bo, align 4, !tbaa !3
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !1316

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.br, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01317.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.016.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cb, %scalar.ph ] ; 2 uses
  %.not.i19 = icmp eq i32 %.lcssa, 0
  br i1 %.not.i19, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit, label %bb.k

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01317.i = phi i64 [ %i.ce, %scalar.ph ], [ %.01317.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.016.i = phi i32 [ %i.cb, %scalar.ph ], [ %.016.i.ph, %scalar.ph.preheader ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.01317.i ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 2 uses
  %i.cb = lshr i32 %i.ca, %i.bn                   ; 2 uses
  %i.cc = shl i32 %i.ca, %i.bj
  %i.cd = add i32 %i.cc, %.016.i
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !3
  %i.ce = add nuw i64 %.01317.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ce, %i.bl
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1317

bb.k:                                             ; preds = %._crit_edge.i
  %i.cf = add i64 %i.bl, 1                        ; 3 uses
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !97
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ci = load ptr, ptr %0, align 8, !tbaa !14
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.cf), !inline_history !1318
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !102 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre24 = load ptr, ptr %i.l, align 8, !tbaa !94
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i: ; preds = %bb.l, %bb.k
  %i.ck = phi ptr [ %i.bm, %bb.k ], [ %.pre24, %bb.l ]
  %.pre-phi.i.i = phi i64 [ %i.cf, %bb.k ], [ %.pre2.i.i, %bb.l ]
  %i.cl = phi i64 [ %i.bl, %bb.k ], [ %.pre.i.i, %bb.l ]
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !102
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  store i32 %.lcssa, ptr %i.cm, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit:      ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.j, %._crit_edge, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v68internal6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(164) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !98   ; 3 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !102  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !98   ; 2 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %sext.i = shl i64 %i.b, 32
  %i.s = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.t = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.u = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.t)
  %.not35.not.i111 = icmp sgt i64 %i.s, %i.t
  br i1 %.not35.not.i111, label %.lr.ph115, label %._crit_edge116

bb.d:                                             ; preds = %.lr.ph115
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.t
  br i1 %.not35.not.i, label %.lr.ph115, label %._crit_edge116, !llvm.loop !117

.lr.ph115:                                        ; preds = %bb.c, %bb.d
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv45.i112 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.u, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i113, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i112, -1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next46.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %.not37.i = icmp eq i32 %i.w, %i.y
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !117

._crit_edge116:                                   ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.u, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph115
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %select.unfold, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge116
  %i.aa = sub nsw i32 %i.e, %i.k                  ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %select.unfold
  %i.ac = add nsw i32 %i.aa, %i.c
  %i.ad = sext i32 %i.ac to i64                   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !97
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.f, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ad), !inline_history !1319
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit: ; preds = %bb.e, %bb.f
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !102
  %i.aj = icmp sgt i32 %i.c, 0
  br i1 %i.aj, label %.lr.ph, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.._crit_edge_crit_edge

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.._crit_edge_crit_edge: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !94
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add i32 %i.aa, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !94 ; 15 uses
  %i.ao = sext i32 %i.al to i64                   ; 5 uses
  %i.ap = zext i32 %i.ak to i64                   ; 5 uses
  %i.aq = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ar = sub nsw i64 %i.ap, %i.ao
  %i.as = and i64 %i.ar, 4611686018427387896
  %diff.check = icmp eq i64 %i.as, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.at = sub nsw i64 %i.ap, %n.vec
  %i.au = sub nsw i64 %i.ao, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = sub i64 %i.ap, %index
  %i.aw = sub i64 %i.ao, %index
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.av ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -12
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !3
  %wide.load129 = load <4 x i32>, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aw ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -12
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -28
  store <4 x i32> %wide.load, ptr %i.bb, align 4, !tbaa !3
  store <4 x i32> %wide.load129, ptr %i.bc, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv73.ph = phi i64 [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph ], [ %i.at, %middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph ], [ %i.au, %middle.block ] ; 2 uses
  %i.be = add nsw i64 %indvars.iv73.ph, 1
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv73.prol = phi i64 [ %indvars.iv.next74.prol, %scalar.ph.prol ], [ %indvars.iv73.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv73.prol
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.prol
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %indvars.iv.next74.prol = add nsw i64 %indvars.iv73.prol, -1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1321

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv73.unr = phi i64 [ %indvars.iv73.ph, %scalar.ph.preheader ], [ %indvars.iv.next74.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bi = icmp ult i64 %indvars.iv73.ph, 3
  br i1 %i.bi, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.._crit_edge_crit_edge
  %i.bj = phi ptr [ %.pre, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit.._crit_edge_crit_edge ], [ %i.an, %middle.block ], [ %i.an, %scalar.ph ], [ %i.an, %scalar.ph.prol.loopexit ]
  %i.bk = zext nneg i32 %i.aa to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bk, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !3
  %i.bl = load i32, ptr %i.d, align 8, !tbaa !98
  %i.bm = sub nsw i32 %i.bl, %i.aa                ; 2 uses
  store i32 %i.bm, ptr %i.d, align 8, !tbaa !98
  %.pre79.pre = load i64, ptr %i.g, align 8, !tbaa !102
  br label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %scalar.ph ], [ %indvars.iv73.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv73
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !3
  %i.bq = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv73
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !3
  %i.bv = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv73
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !3
  %indvars.iv.next74.2 = add nsw i64 %indvars.iv73, -3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next74.2
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.cd = getelementptr i8, ptr %i.cc, i64 -12
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !3
  %indvars.iv.next74.3 = add nsw i64 %indvars.iv73, -4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next74.2, 0
  br i1 %.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1322

bb.g:                                             ; preds = %._crit_edge, %select.unfold
  %.pre79 = phi i64 [ %.pre79.pre, %._crit_edge ], [ %i.h, %select.unfold ]
  %i.ce = phi i64 [ %i.ad, %._crit_edge ], [ %i.b, %select.unfold ]
  %i.cf = phi i32 [ %i.bm, %._crit_edge ], [ %i.e, %select.unfold ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41: ; preds = %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge, %bb.g
  %i.cj = phi i64 [ %i.ce, %bb.g ], [ %i.es, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge ] ; 3 uses
  %i.ck = phi i32 [ %i.cf, %bb.g ], [ %i.ey, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge ]
  %i.cl = phi i64 [ %.pre79, %bb.g ], [ %i.fa, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.g ], [ %i.ex, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge ]
  %i.cm = and i64 %i.cl, 4294967295               ; 2 uses
  %.not17.i = icmp eq i64 %i.cm, 0
  br i1 %.not17.i, label %.preheader.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41
  %i.cn = load i32, ptr %i.j, align 8, !tbaa !98
  %i.co = sub i32 %i.cn, %i.ck
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !94 ; 3 uses
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !94 ; 4 uses
  %i.cr = sext i32 %i.co to i64                   ; 2 uses
  %xtraiter148 = and i64 %i.cl, 1
  %i.cs = icmp eq i64 %i.cm, 1
  br i1 %i.cs, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.cl, 4294967294
  br label %bb.h

.preheader.i.unr-lcssa:                           ; preds = %bb.h
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv27.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next28.i.1, %.preheader.i.unr-lcssa ]
  %indvars.iv.i24.epil.init = phi i64 [ %i.cr, %.lr.ph.i ], [ %indvars.iv.next.i25.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %.01418.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ea, %.preheader.i.unr-lcssa ]
  %lcmp.mod152 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv27.i.epil.init
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i24.epil.init ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = zext i32 %i.cu to i64
  %i.cz = add nuw nsw i64 %.01418.i.epil.init, %i.cy
  %i.da = sub nsw i64 %i.cx, %i.cz                ; 2 uses
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.cv, align 4, !tbaa !3
  %indvars.iv.next.i25.epil = add nsw i64 %indvars.iv.i24.epil.init, 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dy, %.preheader.i.unr-lcssa ], [ %i.da, %.epil.preheader ]
  %indvars.iv.next.i25.lcssa = phi i64 [ %indvars.iv.next.i25.1, %.preheader.i.unr-lcssa ], [ %indvars.iv.next.i25.epil, %.epil.preheader ]
  %i.dc = icmp sgt i64 %.lcssa, -1
  br i1 %i.dc, label %.preheader.thread.i, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.preheader.i
  %sext.i27 = shl i64 %indvars.iv.next.i25.lcssa, 32
  %i.dd = ashr exact i64 %sext.i27, 30
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dd ; 2 uses
  %.promoted.i = load i32, ptr %i.de, align 4, !tbaa !3
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next28.i.1, %bb.h ] ; 3 uses
  %indvars.iv.i24 = phi i64 [ %i.cr, %.lr.ph.i.new ], [ %indvars.iv.next.i25.1, %bb.h ] ; 3 uses
  %.01418.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ea, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.h ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv27.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i24 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  %i.dk = zext i32 %i.dg to i64
  %i.dl = add nuw nsw i64 %.01418.i, %i.dk
  %i.dm = sub nsw i64 %i.dj, %i.dl                ; 2 uses
  %i.dn = trunc i64 %i.dm to i32
  store i32 %i.dn, ptr %i.dh, align 4, !tbaa !3
  %i.do = lshr i64 %i.dm, 63
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv27.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.i24
  %i.dt = getelementptr i8, ptr %i.ds, i64 4      ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64
  %i.dw = zext i32 %i.dr to i64
  %i.dx = add nuw nsw i64 %i.do, %i.dw
  %i.dy = sub nsw i64 %i.dv, %i.dx                ; 3 uses
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !3
  %i.ea = lshr i64 %i.dy, 63                      ; 2 uses
  %indvars.iv.next.i25.1 = add nsw i64 %indvars.iv.i24, 2 ; 3 uses
  %indvars.iv.next28.i.1 = add nuw nsw i64 %indvars.iv27.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.h, !llvm.loop !1323

bb.i:                                             ; preds = %bb.i, %.lr.ph24.i
  %i.eb = phi i32 [ %.promoted.i, %.lr.ph24.i ], [ %i.ee, %bb.i ]
  %.123.i = phi i64 [ 1, %.lr.ph24.i ], [ %i.ef, %bb.i ]
  %i.ec = zext i32 %i.eb to i64
  %i.ed = sub nsw i64 %i.ec, %.123.i              ; 3 uses
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = lshr i64 %i.ed, 63
  %.not11.i = icmp sgt i64 %i.ed, -1
  br i1 %.not11.i, label %._crit_edge.i, label %bb.i, !llvm.loop !1324

._crit_edge.i:                                    ; preds = %bb.i
  store i32 %i.ee, ptr %i.de, align 4, !tbaa !3
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %._crit_edge.i, %.preheader.i, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41
  %i.eg = trunc i64 %i.cj to i32
  %i.eh = load ptr, ptr %i.cg, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.eg, i32 1) ; 2 uses
  %i.ei = trunc i64 %i.cj to i32                  ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %.lr.ph118, label %.critedge.i.i

.lr.ph118:                                        ; preds = %.preheader.thread.i
  %i.ek = and i64 %i.cj, 2147483647
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.el = trunc nuw i64 %i.eo to i32              ; 2 uses
  %i.em = icmp sgt i32 %i.el, 1
  br i1 %i.em, label %bb.k, label %.critedge.i.i, !llvm.loop !1325

bb.k:                                             ; preds = %.lr.ph118, %bb.j
  %i.en = phi i32 [ %i.ei, %.lr.ph118 ], [ %i.el, %bb.j ]
  %indvars.iv.i.i117 = phi i64 [ %i.ek, %.lr.ph118 ], [ %i.eo, %bb.j ]
  %i.eo = add nsw i64 %indvars.iv.i.i117, -1      ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.j, label %..critedge.i.i_crit_edge, !llvm.loop !1325

..critedge.i.i_crit_edge:                         ; preds = %bb.k
  br label %.critedge.i.i, !llvm.loop !1325

.critedge.i.i:                                    ; preds = %bb.j, %..critedge.i.i_crit_edge, %.preheader.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %.preheader.thread.i ], [ %i.en, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.j ] ; 4 uses
  %i.es = sext i32 %.0.in.lcssa.i.i to i64        ; 6 uses
  %i.et = load i64, ptr %i.ch, align 8, !tbaa !97
  %i.eu = icmp ult i64 %i.et, %i.es
  br i1 %i.eu, label %bb.l, label %_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit

bb.l:                                             ; preds = %.critedge.i.i
  %i.ev = load ptr, ptr %0, align 8, !tbaa !14
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.es), !inline_history !1326
  br label %_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit

_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.l
  store i64 %i.es, ptr %i.a, align 8, !tbaa !102
  %i.ex = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.ey = load i32, ptr %i.d, align 8, !tbaa !98  ; 2 uses
  %i.ez = add nsw i32 %i.ey, %.0.in.lcssa.i.i     ; 2 uses
  %i.fa = load i64, ptr %i.g, align 8, !tbaa !102 ; 3 uses
  %i.fb = trunc i64 %i.fa to i32                  ; 2 uses
  %i.fc = load i32, ptr %i.j, align 8, !tbaa !98
  %i.fd = add nsw i32 %i.fc, %i.fb                ; 2 uses
  %.not.i28 = icmp eq i32 %i.ez, %i.fd
  br i1 %.not.i28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit
  %i.fe = icmp sgt i32 %i.ez, %i.fd
  br i1 %i.fe, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

bb.n:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bigint16subtract_alignedERKS2_.exit
  %i.ff = sub nsw i32 %.0.in.lcssa.i.i, %i.fb
  %spec.store.select.i30 = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 0) ; 2 uses
  %i.fg = load ptr, ptr %i.cg, align 8
  %i.fh = load ptr, ptr %i.ci, align 8
  %i.fi = zext nneg i32 %spec.store.select.i30 to i64 ; 2 uses
  %sext55.i32 = shl i64 %i.fa, 32
  %i.fj = ashr exact i64 %sext55.i32, 32          ; 2 uses
  %smin78 = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.fi)
  %.not35.not.i35122 = icmp sgt i32 %.0.in.lcssa.i.i, %spec.store.select.i30
  br i1 %.not35.not.i35122, label %.lr.ph126, label %._crit_edge127

bb.o:                                             ; preds = %.lr.ph126
  %.not35.not.i35 = icmp sgt i64 %indvars.iv.next.i37, %i.fi
  br i1 %.not35.not.i35, label %.lr.ph126, label %._crit_edge127, !llvm.loop !117

.lr.ph126:                                        ; preds = %bb.n, %bb.o
  %indvars.iv.i34124 = phi i64 [ %indvars.iv.next.i37, %bb.o ], [ %i.es, %bb.n ]
  %indvars.iv45.i33123 = phi i64 [ %indvars.iv.next46.i38, %bb.o ], [ %i.fj, %bb.n ]
  %indvars.iv.next.i37 = add nsw i64 %indvars.iv.i34124, -1 ; 3 uses
  %indvars.iv.next46.i38 = add nsw i64 %indvars.iv45.i33123, -1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i37
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3  ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next46.i38
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3  ; 2 uses
  %.not37.i39 = icmp eq i32 %i.fl, %i.fn
  br i1 %.not37.i39, label %bb.o, label %.loopexit.i40, !llvm.loop !117

._crit_edge127:                                   ; preds = %bb.o, %bb.n
  %indvars.iv45.i33.lcssa = phi i64 [ %i.fj, %bb.n ], [ %indvars.iv.next46.i38, %bb.o ]
  %or.cond.not62 = icmp slt i64 %smin78, %indvars.iv45.i33.lcssa
  br i1 %or.cond.not62, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge

.loopexit.i40:                                    ; preds = %.lr.ph126
  %i.fo = icmp ugt i32 %i.fl, %i.fn
  br i1 %i.fo, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41.backedge: ; preds = %.loopexit.i40, %bb.m, %._crit_edge127
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit41, !llvm.loop !1327

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge127, %.loopexit.i40, %bb.m, %._crit_edge116, %bb.b, %.loopexit.i
  %.022 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge116 ], [ %i.ex, %bb.m ], [ %i.ex, %.loopexit.i40 ], [ %i.ex, %._crit_edge127 ]
  ret i32 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE4growEm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b
  %spec.select = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 4 uses
  %i.g = icmp ugt i64 %spec.select, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit, !prof !152

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %spec.select, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit:     ; preds = %bb.a
  %i.i = shl nuw nsw i64 %spec.select, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #29 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !102  ; 3 uses
  %i.m = icmp ugt i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %.idx = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.f, i64 %.idx, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %i.n = icmp eq i64 %i.l, 1
  br i1 %i.n, label %bb.g, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.f, align 4, !tbaa !3
  store i32 %i.o, ptr %i.j, align 4, !tbaa !3
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit:  ; preds = %bb.e, %bb.f, %bb.g
  store ptr %i.j, ptr %i.e, align 8, !tbaa !94
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.f, %i.p
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE10deallocateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE10deallocateEv.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEE10deallocateEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #27, !inline_history !123
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer.86", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN10duckdb_fmt2v619basic_memory_bufferIjLm32ESaIjEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(160) %0) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = shl nsw i32 %i.c, 1                      ; 4 uses
  %i.e = sext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !97
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit unwind label %bb.c, !inline_history !1328

_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit: ; preds = %bb.b, %bb.a
  store i64 %i.e, ptr %i.a, align 8, !tbaa !102
  %i.k = icmp sgt i32 %i.c, 0
  br i1 %i.k, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.d
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.03850 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.am, %bb.d ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.p = icmp eq i64 %indvars.iv, 0
  br i1 %i.p, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.e

.preheader:                                       ; preds = %bb.d, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit
  %.038.lcssa = phi i128 [ 0, %_ZN10duckdb_fmt2v68internal6bufferIjE6resizeEm.exit ], [ %i.am, %bb.d ]
  %i.q = icmp sgt i32 %i.d, %i.c
  br i1 %i.q, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94
  %sext = shl i64 %i.b, 32
end_hunk_1
