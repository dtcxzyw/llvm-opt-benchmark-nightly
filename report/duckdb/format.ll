inline.NumInlined: 5790
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZN10duckdb_fmt2v68internal15fallback_formatIdEEvT_RNS1_6bufferIcEERi:bb.a
  %i.je = shufflevector <4 x i32> %i.jb, <4 x i32> %i.jc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jf = shl <4 x i32> %wide.load1026.a, %broadcast.splat1022
  %i.jg = shl <4 x i32> %wide.load1027, %broadcast.splat1022
  %i.jh = add <4 x i32> %i.jf, %i.jd
  %i.ji = add <4 x i32> %i.jg, %i.je
  store <4 x i32> %i.jh, ptr %i.iz, align 4, !tbaa !3
  store <4 x i32> %i.ji, ptr %i.ja, align 4, !tbaa !3
  %index.next1028 = add nuw i64 %index1024, 8     ; 2 uses
  %i.jj = icmp eq i64 %index.next1028, %n.vec1020
  br i1 %i.jj, label %middle.block1029, label %vector.body1023, !llvm.loop !111

middle.block1029:                                 ; preds = %vector.body1023
  %vector.recur.extract1030 = extractelement <4 x i32> %i.jc, i64 3 ; 2 uses
  %cmp.n1031 = icmp eq i64 %i.iw, %n.vec1020
  br i1 %cmp.n1031, label %._crit_edge.i177, label %scalar.ph1017.preheader

scalar.ph1017.preheader:                          ; preds = %.lr.ph.i173, %middle.block1029
  %.01317.i174.ph = phi i64 [ 0, %.lr.ph.i173 ], [ %n.vec1020, %middle.block1029 ]
  %.016.i175.ph = phi i32 [ 0, %.lr.ph.i173 ], [ %vector.recur.extract1030, %middle.block1029 ]
  br label %scalar.ph1017

._crit_edge.i177:                                 ; preds = %scalar.ph1017, %middle.block1029
  %.lcssa1007 = phi i32 [ %vector.recur.extract1030, %middle.block1029 ], [ %i.jm, %scalar.ph1017 ] ; 2 uses
  %.not.i178 = icmp eq i32 %.lcssa1007, 0
  br i1 %.not.i178, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit184, label %bb.ao

scalar.ph1017:                                    ; preds = %scalar.ph1017.preheader, %scalar.ph1017
  %.01317.i174 = phi i64 [ %i.jp, %scalar.ph1017 ], [ %.01317.i174.ph, %scalar.ph1017.preheader ] ; 2 uses
  %.016.i175 = phi i32 [ %i.jm, %scalar.ph1017 ], [ %.016.i175.ph, %scalar.ph1017.preheader ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %.01317.i174 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3  ; 2 uses
  %i.jm = lshr i32 %i.jl, %i.iy                   ; 2 uses
  %i.jn = shl i32 %i.jl, %.zext315
  %i.jo = add i32 %i.jn, %.016.i175
  store i32 %i.jo, ptr %i.jk, align 4, !tbaa !3
  %i.jp = add nuw i64 %.01317.i174, 1             ; 2 uses
  %exitcond.not.i176 = icmp eq i64 %i.jp, %i.iw
  br i1 %exitcond.not.i176, label %._crit_edge.i177, label %scalar.ph1017, !llvm.loop !112

bb.ao:                                            ; preds = %._crit_edge.i177
  %i.jq = add i64 %i.iw, 1                        ; 3 uses
  %i.jr = load i64, ptr %i.g, align 8, !tbaa !96
  %i.js = icmp ugt i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.ap, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i179

bb.ap:                                            ; preds = %bb.ao
  %i.jt = load ptr, ptr %4, align 8, !tbaa !14
  %i.ju = load ptr, ptr %i.jt, align 8
  invoke void %i.ju(ptr noundef nonnull align 8 dereferenceable(164) %4, i64 noundef %i.jq)
          to label %.noexc183 unwind label %.loopexit.split-lp, !inline_history !101

.noexc183:                                        ; preds = %bb.ap
  %.pre.i.i181 = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i182 = add i64 %.pre.i.i181, 1
  %.pre382 = load ptr, ptr %i.f, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i179

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i179: ; preds = %.noexc183, %bb.ao
  %i.jv = phi ptr [ %i.ix, %bb.ao ], [ %.pre382, %.noexc183 ]
  %.pre-phi.i.i180 = phi i64 [ %i.jq, %bb.ao ], [ %.pre2.i.i182, %.noexc183 ]
  %i.jw = phi i64 [ %i.iw, %bb.ao ], [ %.pre.i.i181, %.noexc183 ]
  store i64 %.pre-phi.i.i180, ptr %i.h, align 8, !tbaa !100
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jw
  store i32 %.lcssa1007, ptr %i.jx, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit184

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit184:   ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i179, %._crit_edge.i177, %bb.an, %bb.am
  %i.jy = load ptr, ptr %i.k, align 8, !tbaa !93
  store i32 1, ptr %i.jy, align 4, !tbaa !3
  %i.jz = load i64, ptr %i.l, align 8, !tbaa !96
  %.not7.i189.not = icmp eq i64 %i.jz, 0
  br i1 %.not7.i189.not, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit184
  %i.ka = load ptr, ptr %5, align 8, !tbaa !14
  %i.kb = load ptr, ptr %i.ka, align 8
  invoke void %i.kb(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef 1)
          to label %bb.ar unwind label %.loopexit.split-lp, !inline_history !102

bb.ar:                                            ; preds = %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit184, %bb.aq
  store i64 1, ptr %i.m, align 8, !tbaa !100
  store i32 0, ptr %i.o, align 8, !tbaa !97
  br i1 %i.dm, label %bb.as, label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit123

bb.as:                                            ; preds = %bb.ar
  %i.kc = load ptr, ptr %i.p, align 8, !tbaa !93
  store i32 2, ptr %i.kc, align 4, !tbaa !3
  %i.kd = load i64, ptr %i.q, align 8, !tbaa !96
  %.not7.i197.not = icmp eq i64 %i.kd, 0
  br i1 %.not7.i197.not, label %bb.at, label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit200

bb.at:                                            ; preds = %bb.as
  %i.ke = load ptr, ptr %6, align 8, !tbaa !14
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void %i.kf(ptr noundef nonnull align 8 dereferenceable(164) %6, i64 noundef 1)
          to label %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit200 unwind label %.loopexit.split-lp, !inline_history !102

_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit200: ; preds = %bb.at, %bb.as
  store i64 1, ptr %i.r, align 8, !tbaa !100
  store i32 0, ptr %i.t, align 8, !tbaa !97
  br label %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit123

_ZN10duckdb_fmt2v68internal6bigintlSEi.exit123:   ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i158, %.lr.ph.i152, %bb.ai, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i118, %._crit_edge.i116, %bb.m, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit200, %bb.ar
  %.sroa.0.0304 = phi i64 [ %.sroa.0.0305, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit200 ], [ %i.z, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i118 ], [ %.sroa.0.0305, %bb.ar ], [ %i.z, %bb.m ], [ %i.z, %._crit_edge.i116 ], [ %.sroa.0.0305, %bb.ai ], [ %.sroa.0.0305, %.lr.ph.i152 ], [ %.sroa.0.0305, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i158 ]
  %.2 = phi ptr [ %6, %_ZN10duckdb_fmt2v68internal6bigint6assignEm.exit200 ], [ %.043, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i118 ], [ null, %bb.ar ], [ %.043, %bb.m ], [ %.043, %._crit_edge.i116 ], [ %.1, %bb.ai ], [ %.1, %.lr.ph.i152 ], [ %.1, %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i158 ] ; 7 uses
  %.not = icmp eq ptr %.2, null                   ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !17 ; 3 uses
  %i.ki = trunc i64 %.sroa.0.0304 to i32
  %i.kj = and i32 %i.ki, 1                        ; 2 uses
  %i.kk = xor i32 %i.kj, 1
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not, ptr %i.m, ptr %.2.sroa.gep
  %.2.sroa.gep288 = getelementptr inbounds nuw i8, ptr %.2, i64 160
  %spec.store.select.sroa.sel289 = select i1 %.not, ptr %i.o, ptr %.2.sroa.gep288
  %.2.sroa.gep291 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 3 uses
  %spec.store.select.sroa.sel292 = select i1 %.not, ptr %i.k, ptr %.2.sroa.gep291
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.2.sroa.gep300 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit123
  %indvars.iv = phi i64 [ 0, %_ZN10duckdb_fmt2v68internal6bigintlSEi.exit123 ], [ %indvars.iv.next, %.backedge.backedge ] ; 7 uses
  %i.kn = invoke noundef i32 @_ZN10duckdb_fmt2v68internal6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %3, ptr noundef nonnull align 8 dereferenceable(164) %4)
          to label %bb.au unwind label %bb.bi     ; 3 uses

bb.au:                                            ; preds = %.backedge
  %i.ko = load i64, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  %i.kq = load i32, ptr %i.e, align 8, !tbaa !97  ; 3 uses
  %i.kr = add nsw i32 %i.kq, %i.kp                ; 4 uses
  %i.ks = load i64, ptr %i.m, align 8, !tbaa !100 ; 2 uses
  %i.kt = trunc i64 %i.ks to i32                  ; 2 uses
  %i.ku = load i32, ptr %i.o, align 8, !tbaa !97
  %i.kv = add nsw i32 %i.ku, %i.kt                ; 2 uses
  %.not.i201 = icmp eq i32 %i.kr, %i.kv
  br i1 %.not.i201, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kw = icmp sgt i32 %i.kr, %i.kv
  %i.kx = select i1 %i.kw, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

bb.aw:                                            ; preds = %bb.au
  %i.ky = sub nsw i32 %i.kp, %i.kt
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.ky, i32 0)
  %i.kz = load ptr, ptr %i.a, align 8
  %i.la = load ptr, ptr %i.k, align 8
  %sext.i = shl i64 %i.ko, 32
  %i.lb = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.lc = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.ks, 32
  %i.ld = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.lb, i64 %i.lc) ; 2 uses
  %.not35.not.i1011 = icmp sgt i64 %i.lb, %i.lc
  br i1 %.not35.not.i1011, label %.lr.ph, label %._crit_edge1015

bb.ax:                                            ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i203, %i.lc
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge1015, !llvm.loop !113

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %indvars.iv.i2021013 = phi i64 [ %indvars.iv.next.i203, %bb.ax ], [ %i.lb, %bb.aw ]
  %indvars.iv45.i1012 = phi i64 [ %indvars.iv.next46.i, %bb.ax ], [ %i.ld, %bb.aw ]
  %indvars.iv.next.i203 = add nsw i64 %indvars.iv.i2021013, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1012, -1 ; 3 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv.next.i203
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3  ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next46.i
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !3  ; 2 uses
  %.not37.i = icmp eq i32 %i.lf, %i.lh
  br i1 %.not37.i, label %bb.ax, label %.loopexit.i, !llvm.loop !113

._crit_edge1015:                                  ; preds = %bb.ax, %bb.aw
  %indvars.iv45.i.lcssa = phi i64 [ %i.ld, %bb.aw ], [ %indvars.iv.next46.i, %bb.ax ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge1015
  %i.li = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.lj = select i1 %i.li, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph
  %i.lk = icmp ugt i32 %i.lf, %i.lh
  %i.ll = select i1 %i.lk, i32 1, i32 -1
  br label %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit

_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit: ; preds = %.loopexit.i, %bb.ay, %._crit_edge1015, %bb.av
  %.3.i = phi i32 [ %i.kx, %bb.av ], [ 0, %._crit_edge1015 ], [ %i.lj, %bb.ay ], [ %i.ll, %.loopexit.i ]
  %i.lm = icmp sge i32 %.3.i, %i.kk               ; 3 uses
  %i.ln = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !100
  %i.lo = trunc i64 %i.ln to i32
  %i.lp = load i32, ptr %spec.store.select.sroa.sel289, align 8, !tbaa !97 ; 3 uses
  %i.lq = add nsw i32 %i.lp, %i.lo                ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.kr, i32 %i.lq) ; 2 uses
  %i.lr = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = load i32, ptr %i.j, align 8, !tbaa !97  ; 3 uses
  %i.lu = add nsw i32 %i.lt, %i.ls                ; 4 uses
  %i.lv = add nsw i32 %.sroa.speculated.i, 1
  %i.lw = icmp slt i32 %i.lv, %i.lu
  br i1 %i.lw, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.az

bb.az:                                            ; preds = %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit
  %i.lx = icmp sgt i32 %.sroa.speculated.i, %i.lu
  br i1 %i.lx, label %.thread463, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ly = call i32 @llvm.smin.i32(i32 %i.lp, i32 %i.kq)
  %i.lz = call i32 @llvm.smin.i32(i32 %i.lt, i32 %i.ly) ; 2 uses
  %.not.not.not60.i = icmp sgt i32 %i.lu, %i.lz
  br i1 %.not.not.not60.i, label %.lr.ph.i204, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i204:                                      ; preds = %bb.ba
  %i.ma = sext i32 %i.lt to i64                   ; 3 uses
  %sext.i205 = shl i64 %i.lr, 32
  %i.mb = ashr exact i64 %sext.i205, 32
  %i.mc = add nsw i64 %i.mb, %i.ma
  %7 = sext i32 %i.lu to i64
  %i.md = sext i32 %i.lq to i64
  %i.me = sext i32 %i.lp to i64                   ; 2 uses
  %i.mf = sext i32 %i.kr to i64
  %i.mg = sext i32 %i.kq to i64                   ; 2 uses
  %i.mh = sext i32 %i.lz to i64
  %i.mi = load ptr, ptr %i.a, align 8
  %i.mj = load ptr, ptr %i.f, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bg, %.lr.ph.i204
  %indvars.iv.i206 = phi i64 [ %i.mc, %.lr.ph.i204 ], [ %indvars.iv.next.i207, %bb.bg ] ; 7 uses
  %.03261.i = phi i64 [ 0, %.lr.ph.i204 ], [ %i.nh, %bb.bg ] ; 2 uses
  %indvars.iv.next.i207 = add nsw i64 %indvars.iv.i206, -1 ; 5 uses
  %.not.i.i208 = icmp sgt i64 %indvars.iv.i206, %i.mg
  %i.mk = icmp sle i64 %indvars.iv.i206, %i.mf
  %or.cond.i = and i1 %.not.i.i208, %i.mk
  br i1 %or.cond.i, label %bb.bc, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.ml = sub nsw i64 %indvars.iv.next.i207, %i.mg
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = zext i32 %i.mn to i64
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i: ; preds = %bb.bc, %bb.bb
  %i.mp = phi i64 [ %i.mo, %bb.bc ], [ 0, %bb.bb ]
  %.not.i45.i = icmp sgt i64 %indvars.iv.i206, %i.me
  %i.mq = icmp sle i64 %indvars.iv.i206, %i.md
  %or.cond55.i = and i1 %.not.i45.i, %i.mq
  br i1 %or.cond55.i, label %bb.bd, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

bb.bd:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.mr = sub nsw i64 %indvars.iv.next.i207, %i.me
  %i.ms = load ptr, ptr %spec.store.select.sroa.sel292, align 8, !tbaa !93
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mr
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = zext i32 %i.mu to i64
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i: ; preds = %bb.bd, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i
  %i.mw = phi i64 [ %i.mv, %bb.bd ], [ 0, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit.i ]
  %i.mx = add nuw nsw i64 %i.mw, %i.mp            ; 3 uses
  %.not.i47.i = icmp sgt i64 %indvars.iv.i206, %i.ma
  %8 = icmp sle i64 %indvars.iv.i206, %7
  %or.cond56.i = and i1 %.not.i47.i, %8
  br i1 %or.cond56.i, label %bb.be, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i

bb.be:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i
  %i.my = sub nsw i64 %indvars.iv.next.i207, %i.ma
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = zext i32 %i.na to i64
  %i.nc = or disjoint i64 %.03261.i, %i.nb
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i: ; preds = %bb.be, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i
  %i.nd = phi i64 [ %i.nc, %bb.be ], [ %.03261.i, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i ] ; 3 uses
  %i.ne = icmp ugt i64 %i.mx, %i.nd
  br i1 %i.ne, label %.thread463, label %bb.bf

bb.bf:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i
  %i.nf = sub nuw nsw i64 %i.nd, %i.mx            ; 2 uses
  %i.ng = icmp ugt i64 %i.nf, 1
  br i1 %i.ng, label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nh = shl nuw nsw i64 %i.nf, 32
  %.not.not.not.i = icmp sgt i64 %indvars.iv.next.i207, %i.mh
  br i1 %.not.not.not.i, label %bb.bb, label %.thread.loopexit.i, !llvm.loop !114

.thread.loopexit.i:                               ; preds = %bb.bg
  %i.ni = icmp ne i64 %i.nd, %i.mx
  %i.nj = sext i1 %i.ni to i32
  br label %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit

_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.bf, %.thread.loopexit.i, %bb.ba, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit
  %.4.i = phi i32 [ %i.nj, %.thread.loopexit.i ], [ -1, %_ZN10duckdb_fmt2v68internal7compareERKNS1_6bigintES4_.exit ], [ 0, %bb.ba ], [ -1, %bb.bf ]
  %i.nk = icmp slt i32 %.4.i, %i.kj               ; 2 uses
  %i.nl = trunc i32 %i.kn to i8                   ; 3 uses
  %i.nm = add i8 %i.nl, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kh, i64 %indvars.iv
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !18
  %or.cond.not = select i1 %i.lm, i1 %i.nk, i1 false
  br i1 %or.cond.not, label %bb.bt, label %bb.bh

bb.bh:                                            ; preds = %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit
  %i.no = getelementptr inbounds nuw i8, ptr %i.kh, i64 %indvars.iv ; 2 uses
  br i1 %i.lm, label %.thread310.sink.split, label %bb.bj

.thread463:                                       ; preds = %bb.az, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i
  %i.np = trunc i32 %i.kn to i8                   ; 3 uses
  %i.nq = add i8 %i.np, 48
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kh, i64 %indvars.iv ; 3 uses
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !18
  br i1 %i.lm, label %.thread310.sink.split, label %.thread472

bb.bi:                                            ; preds = %.backedge
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit517:                                     ; preds = %bb.bw, %bb.bz, %bb.cd
  %lpad.loopexit519 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp518:                            ; preds = %bb.bs
  %lpad.loopexit.split-lp520 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.nk, label %.thread310, label %.thread472

.thread472:                                       ; preds = %.thread463, %bb.bj
  %i.nt = phi ptr [ %i.no, %bb.bj ], [ %i.nr, %.thread463 ] ; 3 uses
  %indvars.iv.next460470475 = phi i64 [ %indvars.iv.next, %bb.bj ], [ %indvars.iv.next457, %.thread463 ] ; 6 uses
  %i.nu = phi i8 [ %i.nl, %bb.bj ], [ %i.np, %.thread463 ] ; 3 uses
  %i.nv = load i64, ptr %i.c, align 8, !tbaa !100
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = load i32, ptr %i.e, align 8, !tbaa !97  ; 3 uses
  %i.ny = add nsw i32 %i.nx, %i.nw                ; 3 uses
  %i.nz = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = load i32, ptr %i.j, align 8, !tbaa !97  ; 3 uses
  %i.oc = add nsw i32 %i.ob, %i.oa                ; 4 uses
  %i.od = add nsw i32 %i.ny, 1
  %i.oe = icmp slt i32 %i.od, %i.oc
  br i1 %i.oe, label %.thread310, label %bb.bk

bb.bk:                                            ; preds = %.thread472
  %i.of = icmp sgt i32 %i.ny, %i.oc
  br i1 %i.of, label %.thread310.sink.split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.og = call i32 @llvm.smin.i32(i32 %i.ob, i32 %i.nx) ; 2 uses
  %.not.not.not60.i210 = icmp sgt i32 %i.oc, %i.og
  br i1 %.not.not.not60.i210, label %.lr.ph.i212, label %bb.br

.lr.ph.i212:                                      ; preds = %bb.bl
  %i.oh = sext i32 %i.ob to i64                   ; 3 uses
  %sext.i213 = shl i64 %i.nz, 32
  %i.oi = ashr exact i64 %sext.i213, 32
  %i.oj = add nsw i64 %i.oi, %i.oh
  %9 = sext i32 %i.oc to i64
  %i.ok = sext i32 %i.ny to i64
  %i.ol = sext i32 %i.nx to i64                   ; 2 uses
  %i.om = sext i32 %i.og to i64
  %i.on = load ptr, ptr %i.a, align 8
  %i.oo = load ptr, ptr %i.f, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bq, %.lr.ph.i212
  %indvars.iv.i214 = phi i64 [ %i.oj, %.lr.ph.i212 ], [ %indvars.iv.next.i216, %bb.bq ] ; 5 uses
  %.03261.i215 = phi i64 [ 0, %.lr.ph.i212 ], [ %i.pf, %bb.bq ] ; 2 uses
  %indvars.iv.next.i216 = add nsw i64 %indvars.iv.i214, -1 ; 4 uses
  %.not.i.i217 = icmp sgt i64 %indvars.iv.i214, %i.ol
  %i.op = icmp sle i64 %indvars.iv.i214, %i.ok
  %or.cond.i218 = and i1 %.not.i.i217, %i.op
  br i1 %or.cond.i218, label %bb.bn, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222

bb.bn:                                            ; preds = %bb.bm
  %i.oq = sub nsw i64 %indvars.iv.next.i216, %i.ol
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !3
  %i.ot = zext i32 %i.os to i64
  %i.ou = shl nuw nsw i64 %i.ot, 1
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222: ; preds = %bb.bm, %bb.bn
  %i.ov = phi i64 [ %i.ou, %bb.bn ], [ 0, %bb.bm ] ; 3 uses
  %.not.i47.i223 = icmp sgt i64 %indvars.iv.i214, %i.oh
  %10 = icmp sle i64 %indvars.iv.i214, %9
  %or.cond56.i224 = and i1 %.not.i47.i223, %10
  br i1 %or.cond56.i224, label %bb.bo, label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225

bb.bo:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222
  %i.ow = sub nsw i64 %indvars.iv.next.i216, %i.oh
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !3
  %i.oz = zext i32 %i.oy to i64
  %i.pa = or disjoint i64 %.03261.i215, %i.oz
  br label %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225

_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225: ; preds = %bb.bo, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222
  %i.pb = phi i64 [ %i.pa, %bb.bo ], [ %.03261.i215, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i222 ] ; 3 uses
  %i.pc = icmp ugt i64 %i.ov, %i.pb
  br i1 %i.pc, label %.thread310.sink.split, label %bb.bp

bb.bp:                                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225
  %i.pd = sub nuw nsw i64 %i.pb, %i.ov            ; 2 uses
  %i.pe = icmp ugt i64 %i.pd, 1
  br i1 %i.pe, label %.thread310, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pf = shl nuw nsw i64 %i.pd, 32
  %.not.not.not.i226 = icmp sgt i64 %indvars.iv.next.i216, %i.om
  br i1 %.not.not.not.i226, label %bb.bm, label %.thread.loopexit.i227, !llvm.loop !114

.thread.loopexit.i227:                            ; preds = %bb.bq
  %i.pg = icmp ne i64 %i.pb, %i.ov
  br label %bb.br

bb.br:                                            ; preds = %bb.bl, %.thread.loopexit.i227
  %.4.i211.ph = phi i1 [ false, %bb.bl ], [ %i.pg, %.thread.loopexit.i227 ]
  %i.ph = and i32 %i.kn, 1
  %.not57 = icmp eq i32 %i.ph, 0
  %or.cond = or i1 %.not57, %.4.i211.ph
  br i1 %or.cond, label %.thread310, label %.thread310.sink.split

.thread310.sink.split:                            ; preds = %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225, %bb.br, %bb.bk, %bb.bh, %.thread463
  %.sink502 = phi i8 [ %i.nl, %bb.bh ], [ %i.np, %.thread463 ], [ %i.nu, %bb.br ], [ %i.nu, %bb.bk ], [ %i.nu, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225 ]
  %.sink501 = phi ptr [ %i.no, %bb.bh ], [ %i.nr, %.thread463 ], [ %i.nt, %bb.br ], [ %i.nt, %bb.bk ], [ %i.nt, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225 ]
  %indvars.iv.next460469.ph = phi i64 [ %indvars.iv.next, %bb.bh ], [ %indvars.iv.next457, %.thread463 ], [ %indvars.iv.next460470475, %bb.br ], [ %indvars.iv.next460470475, %bb.bk ], [ %indvars.iv.next460470475, %_ZZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit48.i225 ]
  %i.pi = add i8 %.sink502, 49
  store i8 %i.pi, ptr %.sink501, align 1, !tbaa !18
  br label %.thread310

.thread310:                                       ; preds = %bb.bp, %.thread310.sink.split, %.thread472, %bb.br, %bb.bj
  %indvars.iv.next460469 = phi i64 [ %indvars.iv.next, %bb.bj ], [ %indvars.iv.next460470475, %.thread472 ], [ %indvars.iv.next460470475, %bb.br ], [ %indvars.iv.next460469.ph, %.thread310.sink.split ], [ %indvars.iv.next460470475, %bb.bp ] ; 2 uses
  %i.pj = load i64, ptr %i.kl, align 8, !tbaa !13
  %.not455 = icmp ugt i64 %i.pj, %indvars.iv
  br i1 %.not455, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %.thread310
  %i.pk = load ptr, ptr %1, align 8, !tbaa !14
  %i.pl = load ptr, ptr %i.pk, align 8
  invoke void %i.pl(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %indvars.iv.next460469)
          to label %bb.ce unwind label %.loopexit.split-lp518, !inline_history !115

bb.bt:                                            ; preds = %_ZN10duckdb_fmt2v68internal11add_compareERKNS1_6bigintES4_S4_.exit
  %i.pm = load i64, ptr %i.c, align 8, !tbaa !100 ; 7 uses
  %.not14.i.i = icmp eq i64 %i.pm, 0
  br i1 %.not14.i.i, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i230

.lr.ph.i.i230:                                    ; preds = %bb.bt
  %i.pn = load ptr, ptr %i.a, align 8, !tbaa !93  ; 4 uses
  %xtraiter1102 = and i64 %i.pm, 1
  %i.po = icmp eq i64 %i.pm, 1
  br i1 %i.po, label %.epil.preheader1101, label %.lr.ph.i.i230.new

.lr.ph.i.i230.new:                                ; preds = %.lr.ph.i.i230
  %unroll_iter1106 = and i64 %i.pm, -2
  br label %bb.bu

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.bu
  %lcmp.mod1103.not = icmp eq i64 %xtraiter1102, 0
  br i1 %lcmp.mod1103.not, label %._crit_edge.i.i, label %.epil.preheader1101

.epil.preheader1101:                              ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i230
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i230 ], [ %i.qm, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i230 ], [ %i.ql, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1105 = trunc i64 %i.pm to i1
  call void @llvm.assume(i1 %lcmp.mod1105)
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.013.i.i.epil.init ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !3
  %i.pr = zext i32 %i.pq to i64
  %i.ps = mul nuw nsw i64 %i.pr, 10
  %i.pt = add nuw nsw i64 %i.ps, %.01112.i.i.epil.init ; 2 uses
  %i.pu = trunc i64 %i.pt to i32
  store i32 %i.pu, ptr %i.pp, align 4, !tbaa !3
  %i.pv = lshr i64 %i.pt, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader1101
  %.lcssa1065.a = phi i64 [ %i.ql, %._crit_edge.i.i.unr-lcssa ], [ %i.pv, %.epil.preheader1101 ] ; 2 uses
  %i.pw = trunc nuw nsw i64 %.lcssa1065.a to i32
  %.not.i.i232 = icmp eq i64 %.lcssa1065.a, 0
  br i1 %.not.i.i232, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit, label %bb.bv

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i.i230.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i230.new ], [ %i.qm, %bb.bu ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i230.new ], [ %i.ql, %bb.bu ]
  %niter1107 = phi i64 [ 0, %.lr.ph.i.i230.new ], [ %niter1107.next.1, %bb.bu ]
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.013.i.i ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !3
  %i.pz = zext i32 %i.py to i64
  %i.qa = mul nuw nsw i64 %i.pz, 10
  %i.qb = add nuw nsw i64 %i.qa, %.01112.i.i      ; 2 uses
  %i.qc = trunc i64 %i.qb to i32
  store i32 %i.qc, ptr %i.px, align 4, !tbaa !3
  %i.qd = lshr i64 %i.qb, 32
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %.013.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !3
  %i.qh = zext i32 %i.qg to i64
  %i.qi = mul nuw nsw i64 %i.qh, 10
  %i.qj = add nuw nsw i64 %i.qi, %i.qd            ; 2 uses
  %i.qk = trunc i64 %i.qj to i32
  store i32 %i.qk, ptr %i.qf, align 4, !tbaa !3
  %i.ql = lshr i64 %i.qj, 32                      ; 3 uses
  %i.qm = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter1107.next.1 = add nuw i64 %niter1107, 2   ; 2 uses
  %niter1107.ncmp.1 = icmp eq i64 %niter1107.next.1, %unroll_iter1106
  br i1 %niter1107.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.bu, !llvm.loop !116

bb.bv:                                            ; preds = %._crit_edge.i.i
  %i.qn = add i64 %i.pm, 1                        ; 3 uses
  %i.qo = load i64, ptr %i.b, align 8, !tbaa !96
  %i.qp = icmp ugt i64 %i.qn, %i.qo
  br i1 %i.qp, label %bb.bw, label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i233

bb.bw:                                            ; preds = %bb.bv
  %i.qq = load ptr, ptr %3, align 8, !tbaa !14
  %i.qr = load ptr, ptr %i.qq, align 8
  invoke void %i.qr(ptr noundef nonnull align 8 dereferenceable(164) %3, i64 noundef %i.qn)
          to label %.noexc238 unwind label %.loopexit517, !inline_history !117

.noexc238:                                        ; preds = %bb.bw
  %.pre.i.i.i235 = load i64, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %.pre2.i.i.i236 = add i64 %.pre.i.i.i235, 1
  %.pre.i237 = load ptr, ptr %i.a, align 8, !tbaa !93
  br label %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i233

_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i233: ; preds = %.noexc238, %bb.bv
  %i.qs = phi ptr [ %i.pn, %bb.bv ], [ %.pre.i237, %.noexc238 ]
  %.pre-phi.i.i.i234 = phi i64 [ %i.qn, %bb.bv ], [ %.pre2.i.i.i236, %.noexc238 ]
  %i.qt = phi i64 [ %i.pm, %bb.bv ], [ %.pre.i.i.i235, %.noexc238 ]
  store i64 %.pre-phi.i.i.i234, ptr %i.c, align 8, !tbaa !100
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.qt
  store i32 %i.pw, ptr %i.qu, align 4, !tbaa !3
  br label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit

_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit: ; preds = %_ZN10duckdb_fmt2v68internal6bufferIjE9push_backERKj.exit.i.i233, %._crit_edge.i.i, %bb.bt
  %i.qv = load i64, ptr %i.m, align 8, !tbaa !100 ; 7 uses
  %.not14.i.i239 = icmp eq i64 %i.qv, 0
  br i1 %.not14.i.i239, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit252, label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit
  %i.qw = load ptr, ptr %i.k, align 8, !tbaa !93  ; 4 uses
  %xtraiter1109 = and i64 %i.qv, 1
  %i.qx = icmp eq i64 %i.qv, 1
  br i1 %i.qx, label %.epil.preheader1108, label %.lr.ph.i.i240.new

.lr.ph.i.i240.new:                                ; preds = %.lr.ph.i.i240
  %unroll_iter1113 = and i64 %i.qv, -2
  br label %bb.bx

._crit_edge.i.i244.unr-lcssa:                     ; preds = %bb.bx
  %lcmp.mod1110.not = icmp eq i64 %xtraiter1109, 0
  br i1 %lcmp.mod1110.not, label %._crit_edge.i.i244, label %.epil.preheader1108

.epil.preheader1108:                              ; preds = %._crit_edge.i.i244.unr-lcssa, %.lr.ph.i.i240
  %.013.i.i241.epil.init = phi i64 [ 0, %.lr.ph.i.i240 ], [ %i.rv, %._crit_edge.i.i244.unr-lcssa ]
  %.01112.i.i242.epil.init = phi i64 [ 0, %.lr.ph.i.i240 ], [ %i.ru, %._crit_edge.i.i244.unr-lcssa ]
  %lcmp.mod1112 = trunc i64 %i.qv to i1
  call void @llvm.assume(i1 %lcmp.mod1112)
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %.013.i.i241.epil.init ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3
  %i.ra = zext i32 %i.qz to i64
  %i.rb = mul nuw nsw i64 %i.ra, 10
  %i.rc = add nuw nsw i64 %i.rb, %.01112.i.i242.epil.init ; 2 uses
  %i.rd = trunc i64 %i.rc to i32
  store i32 %i.rd, ptr %i.qy, align 4, !tbaa !3
  %i.re = lshr i64 %i.rc, 32
  br label %._crit_edge.i.i244

._crit_edge.i.i244:                               ; preds = %._crit_edge.i.i244.unr-lcssa, %.epil.preheader1108
  %.lcssa1066.a = phi i64 [ %i.ru, %._crit_edge.i.i244.unr-lcssa ], [ %i.re, %.epil.preheader1108 ] ; 2 uses
  %i.rf = trunc nuw nsw i64 %.lcssa1066.a to i32
  %.not.i.i245 = icmp eq i64 %.lcssa1066.a, 0
  br i1 %.not.i.i245, label %_ZN10duckdb_fmt2v68internal6bigintmLIiEERS2_T_.exit252, label %bb.by

bb.bx:                                            ; preds = %bb.bx, %.lr.ph.i.i240.new
  %.013.i.i241 = phi i64 [ 0, %.lr.ph.i.i240.new ], [ %i.rv, %bb.bx ] ; 3 uses
  %.01112.i.i242 = phi i64 [ 0, %.lr.ph.i.i240.new ], [ %i.ru, %bb.bx ]
  %niter1114 = phi i64 [ 0, %.lr.ph.i.i240.new ], [ %niter1114.next.1, %bb.bx ]
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %.013.i.i241 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !3
  %i.ri = zext i32 %i.rh to i64
  %i.rj = mul nuw nsw i64 %i.ri, 10
  %i.rk = add nuw nsw i64 %i.rj, %.01112.i.i242   ; 2 uses
  %i.rl = trunc i64 %i.rk to i32
  store i32 %i.rl, ptr %i.rg, align 4, !tbaa !3
  %i.rm = lshr i64 %i.rk, 32
end_hunk_0
