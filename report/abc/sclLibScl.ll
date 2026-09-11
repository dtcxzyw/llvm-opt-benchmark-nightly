Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclLibScl?download=true
inline.NumInlined: 277
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_SclReadFromStr:bb.a

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i.i = icmp eq ptr %.pre882.i, null
  %i.jp = zext nneg i32 %spec.select.i384.i to i64
  %i.jq = shl nuw nsw i64 %i.jp, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jr = tail call ptr @realloc(ptr noundef nonnull %.pre882.i, i64 noundef %i.jq) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jq) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.v, %bb.u, %bb.r, %bb.q
  %i.jt = phi ptr [ %i.jm, %bb.r ], [ %i.jl, %bb.q ], [ %i.jr, %bb.u ], [ %i.js, %bb.v ] ; 2 uses
  %spec.select.sink.i385.i = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i384.i, %bb.u ], [ %spec.select.i384.i, %bb.v ]
  store ptr %i.jt, ptr %i.ij, align 8, !tbaa !70
  store i32 %spec.select.sink.i385.i, ptr %i.ih, align 8, !tbaa !69
  %.pre883.i = load i32, ptr %i.ii, align 4, !tbaa !68
  %.val245.pre.i = load ptr, ptr %i.h, align 8, !tbaa !60
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.s, %Vec_StrGetI.exit383.Vec_IntPush.exit_crit_edge.i
  %.val245.i = phi ptr [ %.val.i369.i, %Vec_StrGetI.exit383.Vec_IntPush.exit_crit_edge.i ], [ %.val.i369.i, %bb.s ], [ %.val245.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 4 uses
  %i.ju = phi i32 [ %i.jg, %Vec_StrGetI.exit383.Vec_IntPush.exit_crit_edge.i ], [ %i.jg, %bb.s ], [ %.pre883.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.jv = phi ptr [ %.pre881.i, %Vec_StrGetI.exit383.Vec_IntPush.exit_crit_edge.i ], [ %.pre882.i, %bb.s ], [ %i.jt, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.jw = add nsw i32 %i.ju, 1
  store i32 %i.jw, ptr %i.ii, align 4, !tbaa !68
  %i.jx = sext i32 %i.ju to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jx
  store i32 %i.jf, ptr %i.jy, align 4, !tbaa !36
  %i.jz = load i32, ptr %i.a, align 4, !tbaa !36  ; 5 uses
  %i.ka = add nsw i32 %i.jz, 1                    ; 2 uses
  store i32 %i.ka, ptr %i.a, align 4, !tbaa !36
  %i.kb = sext i32 %i.jz to i64
  %i.kc = getelementptr inbounds i8, ptr %.val245.i, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !61
  %.sroa.0.0.insert.ext.i387.i = zext i8 %i.kd to i32
  %i.ke = add nsw i32 %i.jz, 2                    ; 2 uses
  store i32 %i.ke, ptr %i.a, align 4, !tbaa !36
  %i.kf = sext i32 %i.ka to i64
  %i.kg = getelementptr inbounds i8, ptr %.val245.i, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !61
  %.sroa.0.1.insert.ext.i388.i = zext i8 %i.kh to i32
  %.sroa.0.1.insert.shift.i389.i = shl nuw nsw i32 %.sroa.0.1.insert.ext.i388.i, 8
  %.sroa.0.1.insert.insert.i390.i = or disjoint i32 %.sroa.0.1.insert.shift.i389.i, %.sroa.0.0.insert.ext.i387.i
  %i.ki = add nsw i32 %i.jz, 3                    ; 2 uses
  store i32 %i.ki, ptr %i.a, align 4, !tbaa !36
  %i.kj = sext i32 %i.ke to i64
  %i.kk = getelementptr inbounds i8, ptr %.val245.i, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !61
  %.sroa.0.2.insert.ext.i391.i = zext i8 %i.kl to i32
  %.sroa.0.2.insert.shift.i392.i = shl nuw nsw i32 %.sroa.0.2.insert.ext.i391.i, 16
  %.sroa.0.2.insert.insert.i393.i = or disjoint i32 %.sroa.0.1.insert.insert.i390.i, %.sroa.0.2.insert.shift.i392.i
  %i.km = add nsw i32 %i.jz, 4                    ; 3 uses
  store i32 %i.km, ptr %i.a, align 4, !tbaa !36
  %i.kn = sext i32 %i.ki to i64
  %i.ko = getelementptr inbounds i8, ptr %.val245.i, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !61
  %.sroa.0.3.insert.ext.i394.i = zext i8 %i.kp to i32
  %.sroa.0.3.insert.shift.i395.i = shl nuw i32 %.sroa.0.3.insert.ext.i394.i, 24
  %.sroa.0.3.insert.insert.i396.i = or disjoint i32 %.sroa.0.2.insert.insert.i393.i, %.sroa.0.3.insert.shift.i395.i
  %i.kq = load i32, ptr %i.il, align 4, !tbaa !71 ; 7 uses
  %i.kr = load i32, ptr %i.ik, align 8, !tbaa !72
  %i.ks = icmp eq i32 %i.kq, %i.kr
  br i1 %i.ks, label %bb.w, label %Vec_IntPush.exit.Vec_FltPush.exit_crit_edge.i

Vec_IntPush.exit.Vec_FltPush.exit_crit_edge.i:    ; preds = %Vec_IntPush.exit.i
  %.pre885.i = load ptr, ptr %i.im, align 8, !tbaa !73
  br label %Vec_FltPush.exit.i

bb.w:                                             ; preds = %Vec_IntPush.exit.i
  %i.kt = icmp slt i32 %i.kq, 16
  br i1 %i.kt, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ku = load ptr, ptr %i.im, align 8, !tbaa !73 ; 2 uses
  %.not9.i.i401.i = icmp eq ptr %i.ku, null
  br i1 %.not9.i.i401.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ku, i64 noundef 64) #24
  br label %Vec_FltGrow.exit12.sink.split.i.i

bb.z:                                             ; preds = %bb.x
  %i.kw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_FltGrow.exit12.sink.split.i.i

bb.aa:                                            ; preds = %bb.w
  %i.kx = icmp samesign ult i32 %i.kq, 1073741823
  %i.ky = shl nuw nsw i32 %i.kq, 1
  %spec.select.i397.i = select i1 %i.kx, i32 %i.ky, i32 2147483647 ; 4 uses
  %.not.i10.i398.i = icmp samesign ult i32 %i.kq, %spec.select.i397.i
  %.pre886.i = load ptr, ptr %i.im, align 8, !tbaa !73 ; 3 uses
  br i1 %.not.i10.i398.i, label %bb.ab, label %Vec_FltPush.exit.i

bb.ab:                                            ; preds = %bb.aa
  %.not9.i11.i399.i = icmp eq ptr %.pre886.i, null
  %i.kz = zext nneg i32 %spec.select.i397.i to i64
  %i.la = shl nuw nsw i64 %i.kz, 2                ; 2 uses
  br i1 %.not9.i11.i399.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lb = tail call ptr @realloc(ptr noundef nonnull %.pre886.i, i64 noundef %i.la) #24
  br label %Vec_FltGrow.exit12.sink.split.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.lc = tail call noalias ptr @malloc(i64 noundef %i.la) #23
  br label %Vec_FltGrow.exit12.sink.split.i.i

Vec_FltGrow.exit12.sink.split.i.i:                ; preds = %bb.ad, %bb.ac, %bb.z, %bb.y
  %i.ld = phi ptr [ %i.kw, %bb.z ], [ %i.kv, %bb.y ], [ %i.lb, %bb.ac ], [ %i.lc, %bb.ad ] ; 2 uses
  %spec.select.sink.i400.i = phi i32 [ 16, %bb.z ], [ 16, %bb.y ], [ %spec.select.i397.i, %bb.ac ], [ %spec.select.i397.i, %bb.ad ]
  store ptr %i.ld, ptr %i.im, align 8, !tbaa !73
  store i32 %spec.select.sink.i400.i, ptr %i.ik, align 8, !tbaa !72
  %.pre887.i = load i32, ptr %i.il, align 4, !tbaa !71
  br label %Vec_FltPush.exit.i

Vec_FltPush.exit.i:                               ; preds = %Vec_FltGrow.exit12.sink.split.i.i, %bb.aa, %Vec_IntPush.exit.Vec_FltPush.exit_crit_edge.i
  %i.le = phi i32 [ %i.kq, %Vec_IntPush.exit.Vec_FltPush.exit_crit_edge.i ], [ %i.kq, %bb.aa ], [ %.pre887.i, %Vec_FltGrow.exit12.sink.split.i.i ] ; 2 uses
  %i.lf = phi ptr [ %.pre885.i, %Vec_IntPush.exit.Vec_FltPush.exit_crit_edge.i ], [ %.pre886.i, %bb.aa ], [ %i.ld, %Vec_FltGrow.exit12.sink.split.i.i ]
  %i.lg = add nsw i32 %i.le, 1
  store i32 %i.lg, ptr %i.il, align 4, !tbaa !71
  %i.lh = sext i32 %i.le to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lh
  store i32 %.sroa.0.3.insert.insert.i396.i, ptr %i.li, align 4, !tbaa !35
  %i.lj = add nsw i32 %.0212790.i, -1             ; 2 uses
  %.not224.i = icmp eq i32 %i.lj, 0
  br i1 %.not224.i, label %._crit_edge.i, label %bb.n, !llvm.loop !90

._crit_edge.i:                                    ; preds = %Vec_FltPush.exit.i, %Vec_StrGetI.exit368.i
  %.promoted.i403.pre.i = phi i32 [ %i.ie, %Vec_StrGetI.exit368.i ], [ %i.km, %Vec_FltPush.exit.i ] ; 2 uses
  %i.lk = add nsw i32 %.0211792.i, -1             ; 2 uses
  %.not220.i = icmp eq i32 %i.lk, 0
  br i1 %.not220.i, label %._crit_edge794.loopexit.i, label %bb.d, !llvm.loop !91

._crit_edge794.loopexit.i:                        ; preds = %._crit_edge.i
  %.val.i402.pre.i = load ptr, ptr %i.h, align 8, !tbaa !60
  br label %._crit_edge794.i

._crit_edge794.i:                                 ; preds = %._crit_edge794.loopexit.i, %Vec_StrGetI.exit329.i
  %.promoted.i403.i = phi i32 [ %.promoted.i403.pre.i, %._crit_edge794.loopexit.i ], [ %.promoted.i403890.i, %Vec_StrGetI.exit329.i ] ; 2 uses
  %.val.i402.i = phi ptr [ %.val.i402.pre.i, %._crit_edge794.loopexit.i ], [ %.val.i.i, %Vec_StrGetI.exit329.i ] ; 3 uses
  %i.ll = add i32 %.promoted.i403.i, 1            ; 3 uses
  store i32 %i.ll, ptr %i.a, align 4, !tbaa !36
  %i.lm = sext i32 %.promoted.i403.i to i64
  %i.ln = getelementptr inbounds i8, ptr %.val.i402.i, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !61  ; 2 uses
  %i.lp = zext i8 %i.lo to i32                    ; 2 uses
  %.not8.i404.i = icmp sgt i8 %i.lo, -1
  br i1 %.not8.i404.i, label %Vec_StrGetI.exit416.i, label %.lr.ph.preheader.i405.i

.lr.ph.preheader.i405.i:                          ; preds = %._crit_edge794.i
  %i.lq = sext i32 %i.ll to i64
  br label %.lr.ph.i406.i

.lr.ph.i406.i:                                    ; preds = %.lr.ph.i406.i, %.lr.ph.preheader.i405.i
  %indvars.iv.i407.i = phi i64 [ %i.lq, %.lr.ph.preheader.i405.i ], [ %indvars.iv.next.i410.i, %.lr.ph.i406.i ] ; 2 uses
  %i.lr = phi i32 [ %i.lp, %.lr.ph.preheader.i405.i ], [ %i.ma, %.lr.ph.i406.i ]
  %.010.i408.i = phi i32 [ 0, %.lr.ph.preheader.i405.i ], [ %i.lw, %.lr.ph.i406.i ]
  %.079.i409.i = phi i32 [ 0, %.lr.ph.preheader.i405.i ], [ %i.lt, %.lr.ph.i406.i ] ; 2 uses
  %i.ls = and i32 %i.lr, 127
  %i.lt = add nuw nsw i32 %.079.i409.i, 1         ; 2 uses
  %i.lu = mul nuw nsw i32 %.079.i409.i, 7
  %i.lv = shl i32 %i.ls, %i.lu
  %i.lw = or i32 %i.lv, %.010.i408.i              ; 2 uses
  %indvars.iv.next.i410.i = add nsw i64 %indvars.iv.i407.i, 1 ; 2 uses
  %i.lx = trunc nsw i64 %indvars.iv.next.i410.i to i32 ; 2 uses
  store i32 %i.lx, ptr %i.a, align 4, !tbaa !36
  %i.ly = getelementptr inbounds i8, ptr %.val.i402.i, i64 %indvars.iv.i407.i
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !61  ; 2 uses
  %i.ma = zext i8 %i.lz to i32                    ; 2 uses
  %.not.i411.i = icmp sgt i8 %i.lz, -1
  br i1 %.not.i411.i, label %._crit_edge.loopexit.i412.i, label %.lr.ph.i406.i, !llvm.loop !0

._crit_edge.loopexit.i412.i:                      ; preds = %.lr.ph.i406.i
  %i.mb = mul nuw nsw i32 %i.lt, 7
  br label %Vec_StrGetI.exit416.i

Vec_StrGetI.exit416.i:                            ; preds = %._crit_edge.loopexit.i412.i, %._crit_edge794.i
  %.promoted.i493909.i = phi i32 [ %i.ll, %._crit_edge794.i ], [ %i.lx, %._crit_edge.loopexit.i412.i ] ; 2 uses
  %.07.lcssa.i413.i = phi i32 [ 0, %._crit_edge794.i ], [ %i.mb, %._crit_edge.loopexit.i412.i ]
  %.0.lcssa.i414.i = phi i32 [ 0, %._crit_edge794.i ], [ %i.lw, %._crit_edge.loopexit.i412.i ]
  %.lcssa.i415.i = phi i32 [ %i.lp, %._crit_edge794.i ], [ %i.ma, %._crit_edge.loopexit.i412.i ]
  %i.mc = shl i32 %.lcssa.i415.i, %.07.lcssa.i413.i
  %i.md = or i32 %i.mc, %.0.lcssa.i414.i          ; 2 uses
  %.not221799.i = icmp eq i32 %i.md, 0
  br i1 %.not221799.i, label %._crit_edge802.i, label %.lr.ph801.i

.lr.ph801.i:                                      ; preds = %Vec_StrGetI.exit416.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  %.pre = load i32, ptr %i.mf, align 4, !tbaa !27
  %.pre123 = load i32, ptr %i.me, align 8, !tbaa !26
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge798.i, %.lr.ph801.i
  %i.mh = phi i32 [ %.promoted.i493909.i, %.lr.ph801.i ], [ %.promoted.i493.pre.i, %._crit_edge798.i ]
  %i.mi = phi i32 [ %.pre123, %.lr.ph801.i ], [ %i.mw, %._crit_edge798.i ] ; 7 uses
  %.pre893.i = phi i32 [ %.pre, %.lr.ph801.i ], [ %i.my, %._crit_edge798.i ] ; 3 uses
  %.1800.i = phi i32 [ %i.md, %.lr.ph801.i ], [ %i.sg, %._crit_edge798.i ]
  %i.mj = tail call noalias noundef dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #20 ; 11 uses
  %i.mk = icmp eq i32 %.pre893.i, %i.mi
  br i1 %i.mk, label %bb.af, label %.Vec_PtrPush.exit424_crit_edge.i

.Vec_PtrPush.exit424_crit_edge.i:                 ; preds = %bb.ae
  %.pre891.i = load ptr, ptr %i.mg, align 8, !tbaa !25
  br label %Vec_PtrPush.exit424.i

bb.af:                                            ; preds = %bb.ae
  %i.ml = icmp slt i32 %i.mi, 16
  br i1 %i.ml, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.mm = load ptr, ptr %i.mg, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i422.i = icmp eq ptr %i.mm, null
  br i1 %.not9.i.i422.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mn = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.mm, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit12.sink.split.i420.i

bb.ai:                                            ; preds = %bb.ag
  %i.mo = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_PtrGrow.exit12.sink.split.i420.i

bb.aj:                                            ; preds = %bb.af
  %i.mp = icmp samesign ult i32 %i.mi, 1073741823
  %i.mq = shl nuw nsw i32 %i.mi, 1
  %spec.select.i417.i = select i1 %i.mp, i32 %i.mq, i32 2147483647 ; 4 uses
  %.not.i10.i418.i = icmp samesign ult i32 %i.mi, %spec.select.i417.i
  %.pre892.i = load ptr, ptr %i.mg, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i10.i418.i, label %bb.ak, label %Vec_PtrPush.exit424.i

bb.ak:                                            ; preds = %bb.aj
  %.not9.i11.i419.i = icmp eq ptr %.pre892.i, null
  %i.mr = zext nneg i32 %spec.select.i417.i to i64
  %i.ms = shl nuw nsw i64 %i.mr, 3                ; 2 uses
  br i1 %.not9.i11.i419.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mt = tail call ptr @realloc(ptr noundef nonnull %.pre892.i, i64 noundef %i.ms) #24
  br label %Vec_PtrGrow.exit12.sink.split.i420.i

bb.am:                                            ; preds = %bb.ak
  %i.mu = tail call noalias ptr @malloc(i64 noundef %i.ms) #23
  br label %Vec_PtrGrow.exit12.sink.split.i420.i

Vec_PtrGrow.exit12.sink.split.i420.i:             ; preds = %bb.am, %bb.al, %bb.ai, %bb.ah
  %i.mv = phi ptr [ %i.mo, %bb.ai ], [ %i.mn, %bb.ah ], [ %i.mt, %bb.al ], [ %i.mu, %bb.am ] ; 2 uses
  %spec.select.sink.i421.i = phi i32 [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i417.i, %bb.al ], [ %spec.select.i417.i, %bb.am ] ; 2 uses
  store ptr %i.mv, ptr %i.mg, align 8, !tbaa !25
  store i32 %spec.select.sink.i421.i, ptr %i.me, align 8, !tbaa !26
  br label %Vec_PtrPush.exit424.i

Vec_PtrPush.exit424.i:                            ; preds = %Vec_PtrGrow.exit12.sink.split.i420.i, %bb.aj, %.Vec_PtrPush.exit424_crit_edge.i
  %i.mw = phi i32 [ %i.mi, %.Vec_PtrPush.exit424_crit_edge.i ], [ %i.mi, %bb.aj ], [ %spec.select.sink.i421.i, %Vec_PtrGrow.exit12.sink.split.i420.i ]
  %i.mx = phi ptr [ %.pre891.i, %.Vec_PtrPush.exit424_crit_edge.i ], [ %.pre892.i, %bb.aj ], [ %i.mv, %Vec_PtrGrow.exit12.sink.split.i420.i ]
  %i.my = add nsw i32 %.pre893.i, 1               ; 2 uses
  store i32 %i.my, ptr %i.mf, align 4, !tbaa !27
  %i.mz = sext i32 %.pre893.i to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mx, i64 %i.mz
  store ptr %i.mj, ptr %i.na, align 8, !tbaa !28
  %.val232.i = load ptr, ptr %i.h, align 8, !tbaa !60 ; 4 uses
  %i.nb = sext i32 %i.mh to i64                   ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %Vec_PtrPush.exit424.i
  %indvars.iv.i425.i = phi i64 [ %indvars.iv.next.i426.i, %bb.an ], [ %i.nb, %Vec_PtrPush.exit424.i ] ; 2 uses
  %indvars.iv.next.i426.i = add nsw i64 %indvars.iv.i425.i, 1 ; 3 uses
  %i.nc = trunc nsw i64 %indvars.iv.next.i426.i to i32 ; 2 uses
  store i32 %i.nc, ptr %i.a, align 4, !tbaa !36
  %i.nd = getelementptr inbounds i8, ptr %.val232.i, i64 %indvars.iv.i425.i
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !61
  %.not.i427.i = icmp eq i8 %i.ne, 0
  br i1 %.not.i427.i, label %Vec_StrGetS.exit428.i, label %bb.an, !llvm.loop !89

Vec_StrGetS.exit428.i:                            ; preds = %bb.an
  %i.nf = getelementptr inbounds i8, ptr %.val232.i, i64 %i.nb ; 2 uses
  %i.ng = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.nf) #22
  %i.nh = add i64 %i.ng, 1
  %i.ni = tail call noalias noundef ptr @malloc(i64 noundef %i.nh) #23 ; 2 uses
  %i.nj = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ni, ptr noundef nonnull readonly dereferenceable(1) %i.nf) #21 ; 0 uses
  store ptr %i.ni, ptr %i.mj, align 8, !tbaa !75
  %i.nk = add i32 %i.nc, 1                        ; 3 uses
  store i32 %i.nk, ptr %i.a, align 4, !tbaa !36
  %i.nl = getelementptr inbounds i8, ptr %.val232.i, i64 %indvars.iv.next.i426.i
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !61  ; 2 uses
  %i.nn = zext i8 %i.nm to i32                    ; 2 uses
  %.not8.i431.i = icmp sgt i8 %i.nm, -1
  br i1 %.not8.i431.i, label %Vec_StrGetI.exit443.i, label %.lr.ph.preheader.i432.i

.lr.ph.preheader.i432.i:                          ; preds = %Vec_StrGetS.exit428.i
  %i.no = sext i32 %i.nk to i64
  br label %.lr.ph.i433.i

.lr.ph.i433.i:                                    ; preds = %.lr.ph.i433.i, %.lr.ph.preheader.i432.i
  %indvars.iv.i434.i = phi i64 [ %i.no, %.lr.ph.preheader.i432.i ], [ %indvars.iv.next.i437.i, %.lr.ph.i433.i ] ; 2 uses
  %i.np = phi i32 [ %i.nn, %.lr.ph.preheader.i432.i ], [ %i.ny, %.lr.ph.i433.i ]
  %.010.i435.i = phi i32 [ 0, %.lr.ph.preheader.i432.i ], [ %i.nu, %.lr.ph.i433.i ]
  %.079.i436.i = phi i32 [ 0, %.lr.ph.preheader.i432.i ], [ %i.nr, %.lr.ph.i433.i ] ; 2 uses
  %i.nq = and i32 %i.np, 127
  %i.nr = add nuw nsw i32 %.079.i436.i, 1         ; 2 uses
  %i.ns = mul nuw nsw i32 %.079.i436.i, 7
  %i.nt = shl i32 %i.nq, %i.ns
  %i.nu = or i32 %i.nt, %.010.i435.i              ; 2 uses
  %indvars.iv.next.i437.i = add nsw i64 %indvars.iv.i434.i, 1 ; 2 uses
  %i.nv = trunc nsw i64 %indvars.iv.next.i437.i to i32 ; 2 uses
  store i32 %i.nv, ptr %i.a, align 4, !tbaa !36
  %i.nw = getelementptr inbounds i8, ptr %.val232.i, i64 %indvars.iv.i434.i
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !61  ; 2 uses
  %i.ny = zext i8 %i.nx to i32                    ; 2 uses
  %.not.i438.i = icmp sgt i8 %i.nx, -1
  br i1 %.not.i438.i, label %._crit_edge.loopexit.i439.i, label %.lr.ph.i433.i, !llvm.loop !0

._crit_edge.loopexit.i439.i:                      ; preds = %.lr.ph.i433.i
  %i.nz = mul nuw nsw i32 %i.nr, 7
  br label %Vec_StrGetI.exit443.i

Vec_StrGetI.exit443.i:                            ; preds = %._crit_edge.loopexit.i439.i, %Vec_StrGetS.exit428.i
  %.promoted.a = phi i32 [ %i.nk, %Vec_StrGetS.exit428.i ], [ %i.nv, %._crit_edge.loopexit.i439.i ] ; 2 uses
  %.07.lcssa.i440.i = phi i32 [ 0, %Vec_StrGetS.exit428.i ], [ %i.nz, %._crit_edge.loopexit.i439.i ]
  %.0.lcssa.i441.i = phi i32 [ 0, %Vec_StrGetS.exit428.i ], [ %i.nu, %._crit_edge.loopexit.i439.i ]
  %.lcssa.i442.i = phi i32 [ %i.nn, %Vec_StrGetS.exit428.i ], [ %i.ny, %._crit_edge.loopexit.i439.i ]
  %i.oa = shl i32 %.lcssa.i442.i, %.07.lcssa.i440.i
  %i.ob = or i32 %i.oa, %.0.lcssa.i441.i          ; 2 uses
  %.not223795.i = icmp eq i32 %i.ob, 0
  br i1 %.not223795.i, label %._crit_edge798.i, label %.lr.ph797.i

.lr.ph797.i:                                      ; preds = %Vec_StrGetI.exit443.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mj, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.mj, i64 12 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.mj, i64 24 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.mj, i64 28 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mj, i64 32 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mj, i64 40 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mj, i64 44 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mj, i64 48 ; 4 uses
  br label %bb.ao

bb.ao:                                            ; preds = %Vec_PtrPush.exit491.i, %.lr.ph797.i
  %.pre898.i62 = phi i32 [ %.promoted.a, %.lr.ph797.i ], [ %i.re, %Vec_PtrPush.exit491.i ] ; 9 uses
  %.1213796.i = phi i32 [ %i.ob, %.lr.ph797.i ], [ %i.sf, %Vec_PtrPush.exit491.i ]
  %.val244.i = load ptr, ptr %i.h, align 8, !tbaa !60 ; 6 uses
  %i.ol = add nsw i32 %.pre898.i62, 1             ; 2 uses
  store i32 %i.ol, ptr %i.a, align 4, !tbaa !36
  %i.om = sext i32 %.pre898.i62 to i64
  %i.on = getelementptr inbounds i8, ptr %.val244.i, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !61
  %.sroa.0.0.insert.ext.i444.i = zext i8 %i.oo to i32
  %i.op = add nsw i32 %.pre898.i62, 2             ; 2 uses
  store i32 %i.op, ptr %i.a, align 4, !tbaa !36
  %i.oq = sext i32 %i.ol to i64
  %i.or = getelementptr inbounds i8, ptr %.val244.i, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !61
  %.sroa.0.1.insert.ext.i445.i = zext i8 %i.os to i32
  %.sroa.0.1.insert.shift.i446.i = shl nuw nsw i32 %.sroa.0.1.insert.ext.i445.i, 8
  %.sroa.0.1.insert.insert.i447.i = or disjoint i32 %.sroa.0.1.insert.shift.i446.i, %.sroa.0.0.insert.ext.i444.i
  %i.ot = add nsw i32 %.pre898.i62, 3             ; 2 uses
  store i32 %i.ot, ptr %i.a, align 4, !tbaa !36
  %i.ou = sext i32 %i.op to i64
  %i.ov = getelementptr inbounds i8, ptr %.val244.i, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !61
  %.sroa.0.2.insert.ext.i448.i = zext i8 %i.ow to i32
  %.sroa.0.2.insert.shift.i449.i = shl nuw nsw i32 %.sroa.0.2.insert.ext.i448.i, 16
  %.sroa.0.2.insert.insert.i450.i = or disjoint i32 %.sroa.0.1.insert.insert.i447.i, %.sroa.0.2.insert.shift.i449.i
  %i.ox = add nsw i32 %.pre898.i62, 4             ; 2 uses
  store i32 %i.ox, ptr %i.a, align 4, !tbaa !36
  %i.oy = sext i32 %i.ot to i64
  %i.oz = getelementptr inbounds i8, ptr %.val244.i, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !61
  %.sroa.0.3.insert.ext.i451.i = zext i8 %i.pa to i32
  %.sroa.0.3.insert.shift.i452.i = shl nuw i32 %.sroa.0.3.insert.ext.i451.i, 24
  %.sroa.0.3.insert.insert.i453.i = or disjoint i32 %.sroa.0.2.insert.insert.i450.i, %.sroa.0.3.insert.shift.i452.i
  %i.pb = load i32, ptr %i.od, align 4, !tbaa !71 ; 7 uses
  %i.pc = load i32, ptr %i.oc, align 8, !tbaa !72
  %i.pd = icmp eq i32 %i.pb, %i.pc
  br i1 %i.pd, label %bb.ap, label %.Vec_FltPush.exit461_crit_edge.i

.Vec_FltPush.exit461_crit_edge.i:                 ; preds = %bb.ao
  %.pre894.i = load ptr, ptr %i.oe, align 8, !tbaa !73
  br label %Vec_FltPush.exit461.i

bb.ap:                                            ; preds = %bb.ao
  %i.pe = icmp slt i32 %i.pb, 16
  br i1 %i.pe, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.pf = load ptr, ptr %i.oe, align 8, !tbaa !73 ; 2 uses
  %.not9.i.i459.i = icmp eq ptr %i.pf, null
  br i1 %.not9.i.i459.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.pf, i64 noundef 64) #24
  br label %Vec_FltGrow.exit12.sink.split.i457.i

bb.as:                                            ; preds = %bb.aq
  %i.ph = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_FltGrow.exit12.sink.split.i457.i

bb.at:                                            ; preds = %bb.ap
  %i.pi = icmp samesign ult i32 %i.pb, 1073741823
  %i.pj = shl nuw nsw i32 %i.pb, 1
  %spec.select.i454.i = select i1 %i.pi, i32 %i.pj, i32 2147483647 ; 4 uses
  %.not.i10.i455.i = icmp samesign ult i32 %i.pb, %spec.select.i454.i
  %.pre895.i = load ptr, ptr %i.oe, align 8, !tbaa !73 ; 3 uses
  br i1 %.not.i10.i455.i, label %bb.au, label %Vec_FltPush.exit461.i

bb.au:                                            ; preds = %bb.at
  %.not9.i11.i456.i = icmp eq ptr %.pre895.i, null
  %i.pk = zext nneg i32 %spec.select.i454.i to i64
  %i.pl = shl nuw nsw i64 %i.pk, 2                ; 2 uses
  br i1 %.not9.i11.i456.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pm = tail call ptr @realloc(ptr noundef nonnull %.pre895.i, i64 noundef %i.pl) #24
  br label %Vec_FltGrow.exit12.sink.split.i457.i

bb.aw:                                            ; preds = %bb.au
  %i.pn = tail call noalias ptr @malloc(i64 noundef %i.pl) #23
  br label %Vec_FltGrow.exit12.sink.split.i457.i

Vec_FltGrow.exit12.sink.split.i457.i:             ; preds = %bb.aw, %bb.av, %bb.as, %bb.ar
  %i.po = phi ptr [ %i.ph, %bb.as ], [ %i.pg, %bb.ar ], [ %i.pm, %bb.av ], [ %i.pn, %bb.aw ] ; 2 uses
  %spec.select.sink.i458.i = phi i32 [ 16, %bb.as ], [ 16, %bb.ar ], [ %spec.select.i454.i, %bb.av ], [ %spec.select.i454.i, %bb.aw ]
  store ptr %i.po, ptr %i.oe, align 8, !tbaa !73
  store i32 %spec.select.sink.i458.i, ptr %i.oc, align 8, !tbaa !72
  %.pre896.i = load i32, ptr %i.od, align 4, !tbaa !71
  %.val243.pre.i = load ptr, ptr %i.h, align 8, !tbaa !60
  br label %Vec_FltPush.exit461.i

Vec_FltPush.exit461.i:                            ; preds = %Vec_FltGrow.exit12.sink.split.i457.i, %bb.at, %.Vec_FltPush.exit461_crit_edge.i
  %.val243.i = phi ptr [ %.val244.i, %.Vec_FltPush.exit461_crit_edge.i ], [ %.val244.i, %bb.at ], [ %.val243.pre.i, %Vec_FltGrow.exit12.sink.split.i457.i ] ; 6 uses
  %i.pp = phi i32 [ %i.pb, %.Vec_FltPush.exit461_crit_edge.i ], [ %i.pb, %bb.at ], [ %.pre896.i, %Vec_FltGrow.exit12.sink.split.i457.i ] ; 2 uses
  %i.pq = phi ptr [ %.pre894.i, %.Vec_FltPush.exit461_crit_edge.i ], [ %.pre895.i, %bb.at ], [ %i.po, %Vec_FltGrow.exit12.sink.split.i457.i ]
  %i.pr = add nsw i32 %i.pp, 1
  store i32 %i.pr, ptr %i.od, align 4, !tbaa !71
  %i.ps = sext i32 %i.pp to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.ps
  store i32 %.sroa.0.3.insert.insert.i453.i, ptr %i.pt, align 4, !tbaa !35
  %i.pu = add nsw i32 %.pre898.i62, 5             ; 2 uses
  store i32 %i.pu, ptr %i.a, align 4, !tbaa !36
  %i.pv = sext i32 %i.ox to i64
  %i.pw = getelementptr inbounds i8, ptr %.val243.i, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !61
  %.sroa.0.0.insert.ext.i462.i = zext i8 %i.px to i32
  %i.py = add nsw i32 %.pre898.i62, 6             ; 2 uses
  store i32 %i.py, ptr %i.a, align 4, !tbaa !36
  %i.pz = sext i32 %i.pu to i64
  %i.qa = getelementptr inbounds i8, ptr %.val243.i, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !61
  %.sroa.0.1.insert.ext.i463.i = zext i8 %i.qb to i32
  %.sroa.0.1.insert.shift.i464.i = shl nuw nsw i32 %.sroa.0.1.insert.ext.i463.i, 8
  %.sroa.0.1.insert.insert.i465.i = or disjoint i32 %.sroa.0.1.insert.shift.i464.i, %.sroa.0.0.insert.ext.i462.i
  %i.qc = add nsw i32 %.pre898.i62, 7             ; 2 uses
  store i32 %i.qc, ptr %i.a, align 4, !tbaa !36
  %i.qd = sext i32 %i.py to i64
  %i.qe = getelementptr inbounds i8, ptr %.val243.i, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !61
  %.sroa.0.2.insert.ext.i466.i = zext i8 %i.qf to i32
  %.sroa.0.2.insert.shift.i467.i = shl nuw nsw i32 %.sroa.0.2.insert.ext.i466.i, 16
  %.sroa.0.2.insert.insert.i468.i = or disjoint i32 %.sroa.0.1.insert.insert.i465.i, %.sroa.0.2.insert.shift.i467.i
  %i.qg = add nsw i32 %.pre898.i62, 8             ; 2 uses
  store i32 %i.qg, ptr %i.a, align 4, !tbaa !36
end_hunk_0
