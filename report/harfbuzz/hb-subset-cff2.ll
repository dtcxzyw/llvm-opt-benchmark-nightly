Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZNK3CFF22cff2_instancing_plan_t19serialize_var_storeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EE:bb.a
bb.r:                                             ; preds = %bb.q
  %.not.i.i.not = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.not, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, label %bb.s, !prof !323

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bv, i8 0, i64 %i.e, i1 false)
  %.pre.i96 = load ptr, ptr %i.bj, align 8, !tbaa !227
  br label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit: ; preds = %bb.r, %bb.s
  %i.ca = phi ptr [ %.pre.i96, %bb.s ], [ %i.bv, %bb.r ] ; 7 uses
  %i.cb = ptrtoaddr ptr %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.e
  store ptr %i.cc, ptr %i.bj, align 8, !tbaa !227
  %.not86 = icmp eq ptr %i.ca, null
  br i1 %.not86, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread, label %bb.t, !prof !156

bb.t:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit
  store i16 256, ptr %i.ca, align 1, !tbaa !187
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.ce, ptr %i.cd, align 1, !tbaa !187
  %i.cf = trunc i32 %i.b to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.ch = tail call i16 @llvm.bswap.i16(i16 %i.cf)
  store i16 %i.ch, ptr %i.cg, align 1, !tbaa !187
  %.not219 = icmp eq i32 %i.b, 0
  br i1 %.not219, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 5 uses
  %i.cj = add i32 %i.b, -1073741825
  %or.cond = icmp ult i32 %i.cj, -1073741813
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph203
  %i.ck = sub i64 %i.cb, %.sroa.15.0.lcssa268
  %i.cl = add i64 %i.ck, 7
  %diff.check = icmp ult i64 %i.cl, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.0.lcssa, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load = load <4 x i32>, ptr %i.cm, align 4, !tbaa !59
  %wide.load269 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !59
  %i.co = shl i64 %index, 2
  %i.cp = and i64 %i.co, 4294967264
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cp ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.cs = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load269)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> %i.cr, ptr %i.cq, align 1, !tbaa !187
  store <4 x i32> %i.cs, ptr %i.ct, align 1, !tbaa !187
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge204, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph203, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph203 ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.0.lcssa, i64 %indvars.iv.ph
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !59
  %i.cx = shl nuw nsw i64 %indvars.iv.ph, 2
  %i.cy = and i64 %i.cx, 4294967264
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cy
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cw)
  store i32 %i.da, ptr %i.cz, align 1, !tbaa !187
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.db = add nsw i64 %wide.trip.count, -1
  %i.dc = icmp eq i64 %indvars.iv.ph, %i.db
  br i1 %i.dc, label %._crit_edge204, label %scalar.ph

._crit_edge204:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.t
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !486 ; 2 uses
  %i.de = load i32, ptr %i.h, align 4, !tbaa !487 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %.idx220 = mul nuw nsw i64 %i.df, 72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx220
  %.not87208 = icmp eq i32 %i.de, 0
  br i1 %.not87208, label %._crit_edge212, label %.lr.ph211

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.0.lcssa, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !59
  %i.dj = shl i64 %indvars.iv, 2
  %i.dk = and i64 %i.dj, 4294967292
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dk
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.di)
  store i32 %i.dm, ptr %i.dl, align 1, !tbaa !187
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.0.lcssa, i64 %indvars.iv.next
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !59
  %i.dp = shl i64 %indvars.iv.next, 2
  %i.dq = and i64 %i.dp, 4294967292
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dq
  %i.ds = tail call i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %i.ds, ptr %i.dr, align 1, !tbaa !187
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge204, label %scalar.ph, !llvm.loop !500

.lr.ph211:                                        ; preds = %._crit_edge204, %.loopexit
  %.075209 = phi ptr [ %i.fk, %.loopexit ], [ %i.dd, %._crit_edge204 ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.075209, i64 68
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !488, !range !112, !noundef !113
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.lr.ph211
  %i.dw = getelementptr inbounds nuw i8, ptr %.075209, i64 52
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !495 ; 6 uses
  %i.dy = shl i32 %i.dx, 1
  %i.dz = add i32 %i.dy, 6                        ; 3 uses
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  %i.eb = load i32, ptr %i.bf, align 4, !tbaa !214
  %.not.i98 = icmp eq i32 %i.eb, 0
  br i1 %.not.i98, label %bb.v, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread, !prof !54

bb.v:                                             ; preds = %bb.u
  %i.ec = icmp slt i32 %i.dz, 0
  br i1 %i.ec, label %.critedge.i103, label %bb.w, !prof !57

bb.w:                                             ; preds = %bb.v
  %i.ed = load ptr, ptr %i.bh, align 8, !tbaa !226
  %i.ee = load ptr, ptr %i.bj, align 8, !tbaa !227 ; 3 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp slt i64 %i.eh, %i.ea
  br i1 %i.ei, label %.critedge.i103, label %bb.x, !prof !57

.critedge.i103:                                   ; preds = %bb.w, %bb.v
  store i32 4, ptr %i.bf, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread

bb.x:                                             ; preds = %bb.w
  %.not.i.i100.not = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i100.not, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit104, label %bb.y, !prof !323

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ee, i8 0, i64 %i.ea, i1 false)
  %.pre.i102 = load ptr, ptr %i.bj, align 8, !tbaa !227
  br label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit104

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit104: ; preds = %bb.x, %bb.y
  %i.ej = phi ptr [ %.pre.i102, %bb.y ], [ %i.ee, %bb.x ] ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ea
  store ptr %i.ek, ptr %i.bj, align 8, !tbaa !227
  %.not88 = icmp eq ptr %i.ej, null
  br i1 %.not88, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread, label %bb.z, !prof !156

bb.z:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit104
  store i16 0, ptr %i.ej, align 1, !tbaa !187
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i16 0, ptr %i.el, align 1, !tbaa !187
  %i.em = trunc i32 %i.dx to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.eo = tail call i16 @llvm.bswap.i16(i16 %i.em)
  store i16 %i.eo, ptr %i.en, align 1, !tbaa !187
  %.not221 = icmp eq i32 %i.dx, 0
  br i1 %.not221, label %.loopexit, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %.075209, i64 56 ; 3 uses
  %wide.trip.count228 = zext i32 %i.dx to i64     ; 2 uses
  %xtraiter272 = and i64 %wide.trip.count228, 1
  %i.eq = icmp eq i32 %i.dx, 1
  br i1 %i.eq, label %.epil.preheader, label %.lr.ph207.new

.lr.ph207.new:                                    ; preds = %.lr.ph207
  %unroll_iter = and i64 %wide.trip.count228, 4294967294
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph207.new
  %indvars.iv225 = phi i64 [ 0, %.lr.ph207.new ], [ %indvars.iv.next226.1, %bb.aa ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph207.new ], [ %niter.next.1, %bb.aa ]
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !501
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv225
  %i.et = load i32, ptr %i.es, align 4, !tbaa !59
  %i.eu = trunc i32 %i.et to i16
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %indvars.iv225
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ev = tail call i16 @llvm.bswap.i16(i16 %i.eu)
  store i16 %i.ev, ptr %5, align 1, !tbaa !187
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !501
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv225
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !59
  %i.fa = trunc i32 %i.ez to i16
  %6 = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %indvars.iv225
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fb = tail call i16 @llvm.bswap.i16(i16 %i.fa)
  store i16 %i.fb, ptr %7, align 1, !tbaa !187
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !502

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph207
  %indvars.iv225.epil.init = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next226.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod274 = trunc i32 %i.dx to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !501
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv225.epil.init
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !59
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = add nuw i64 %indvars.iv225.epil.init, 3
  %i.fh = and i64 %i.fg, 4294967295
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.fh
  %i.fj = tail call i16 @llvm.bswap.i16(i16 %i.ff)
  store i16 %i.fj, ptr %i.fi, align 1, !tbaa !187
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.z, %.lr.ph211
  %i.fk = getelementptr inbounds nuw i8, ptr %.075209, i64 72 ; 2 uses
  %.not87 = icmp eq ptr %i.fk, %i.dg
  br i1 %.not87, label %._crit_edge212, label %.lr.ph211

._crit_edge212:                                   ; preds = %.loopexit, %._crit_edge204
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fl = load i32, ptr %i.av, align 4, !tbaa !503 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.not19.i.not = icmp eq i32 %i.fl, 0
  br i1 %.not19.i.not, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread, label %.thread.i114

.thread.i114:                                     ; preds = %._crit_edge212
  %i.fn = icmp ugt i32 %i.fl, 536870911
  br i1 %i.fn, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, !prof !57

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i114
  %i.fo = shl nuw i32 %i.fl, 3
  %i.fp = zext i32 %i.fo to i64
  %i.fq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.fp) #16 ; 4 uses
  %.not22.i117 = icmp eq ptr %i.fq, null
  br i1 %.not22.i117, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread, !prof !58

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !504
  store i32 %i.fl, ptr %3, align 8, !tbaa !507
  %.pr = load i32, ptr %i.av, align 4, !tbaa !503 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !508 ; 2 uses
  %i.fu = zext i32 %.pr to i64
  %.idx222 = mul nuw nsw i64 %i.fu, 48
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx222
  %.not89213 = icmp eq i32 %.pr, 0
  br i1 %.not89213, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread, label %.lr.ph217

.lr.ph217:                                        ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fx = load i64, ptr @_hb_NullPool, align 16
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph217, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit
  %i.fy = phi ptr [ %i.fq, %.lr.ph217 ], [ %i.gy, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 4 uses
  %i.fz = phi i32 [ %i.fl, %.lr.ph217 ], [ %i.gz, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 7 uses
  %i.ga = phi ptr [ %i.fq, %.lr.ph217 ], [ %i.ha, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 4 uses
  %i.gb = phi i32 [ %i.fl, %.lr.ph217 ], [ %i.hb, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 9 uses
  %.pre.i108 = phi i32 [ 0, %.lr.ph217 ], [ %i.hc, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 6 uses
  %.073214 = phi ptr [ %i.ft, %.lr.ph217 ], [ %i.hd, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 2 uses
  %.not.i105 = icmp slt i32 %.pre.i108, %i.gb
  %.pre230 = add i32 %.pre.i108, 1                ; 4 uses
  br i1 %.not.i105, label %.critedge.i109, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184, label %bb.ad, !prof !57

bb.ad:                                            ; preds = %bb.ac
  %.not.i127 = icmp ugt i32 %.pre230, %i.gb
  br i1 %.not.i127, label %.preheader.i129, label %.critedge.i109, !prof !57

.preheader.i129:                                  ; preds = %bb.ad, %.preheader.i129
  %.043.i130 = phi i32 [ %i.gf, %.preheader.i129 ], [ %i.gb, %bb.ad ] ; 2 uses
  %i.gd = lshr i32 %.043.i130, 1
  %i.ge = add i32 %.043.i130, 8
  %i.gf = add i32 %i.ge, %i.gd                    ; 9 uses
  %i.gg = icmp ugt i32 %.pre230, %i.gf
  br i1 %i.gg, label %.preheader.i129, label %.thread.i131, !llvm.loop !509

.thread.i131:                                     ; preds = %.preheader.i129
  %i.gh = icmp ugt i32 %i.gf, 536870911
  br i1 %i.gh, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187, label %bb.ae, !prof !57

bb.ae:                                            ; preds = %.thread.i131
  %.not49.i133 = icmp eq i32 %i.gb, 0
  br i1 %.not49.i133, label %bb.af, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i.i143 = icmp eq ptr %i.ga, null
  br i1 %.not9.i.i.i143, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = shl nuw i32 %i.gf, 3
  %i.gj = zext i32 %i.gi to i64
  %i.gk = tail call ptr @hb_malloc(i64 noundef %i.gj) #16 ; 4 uses
  %.not10.i.i.i144 = icmp eq ptr %i.gk, null
  br i1 %.not10.i.i.i144, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141, label %bb.ah, !prof !57

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i.i.i145 = icmp eq i32 %.pre.i108, 0
  br i1 %.not.i.i.i.i145, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147, label %bb.ai, !prof !57

bb.ai:                                            ; preds = %bb.ah
  %i.gl = zext i32 %.pre.i108 to i64
  %i.gm = shl nuw nsw i64 %i.gl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr nonnull readonly align 1 %i.ga, i64 %i.gm, i1 false), !alias.scope !510
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134: ; preds = %bb.af, %bb.ae
  %i.gn = phi ptr [ null, %bb.af ], [ %i.ga, %bb.ae ]
  %i.go = shl nuw i32 %i.gf, 3
  %i.gp = zext i32 %i.go to i64
  %i.gq = tail call ptr @hb_realloc(ptr noundef %i.gn, i64 noundef %i.gp) #16 ; 2 uses
  %.not22.i135 = icmp eq ptr %i.gq, null
  br i1 %.not22.i135, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147, !prof !58

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134, %bb.ag
  %.not23.i142 = icmp ugt i32 %i.gf, %i.fz
  br i1 %.not23.i142, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187, label %.critedge.i109, !prof !184

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141, %.thread.i131
  %.sink.i139.ph.in = phi i32 [ %i.gb, %.thread.i131 ], [ %i.fz, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141 ]
  %.sink.i139.ph = xor i32 %.sink.i139.ph.in, -1  ; 3 uses
  store i32 %.sink.i139.ph, ptr %3, align 8, !tbaa !507
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147: ; preds = %bb.ah, %bb.ai, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134
  %.1.i.i42.i137 = phi ptr [ %i.gq, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134 ], [ %i.gk, %bb.ai ], [ %i.gk, %bb.ah ] ; 2 uses
  store ptr %.1.i.i42.i137, ptr %i.fw, align 8, !tbaa !504
  store i32 %i.gf, ptr %3, align 8, !tbaa !507
  br label %.critedge.i109

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184: ; preds = %bb.ac, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187
  %i.gr = phi i32 [ %i.fz, %bb.ac ], [ %.sink.i139.ph, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187 ]
  %i.gs = phi i32 [ %i.gb, %bb.ac ], [ %.sink.i139.ph, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187 ]
  store i64 %i.fx, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit

.critedge.i109:                                   ; preds = %bb.ab, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147, %bb.ad, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141
  %i.gt = phi ptr [ %.1.i.i42.i137, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147 ], [ %i.fy, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141 ], [ %i.fy, %bb.ad ], [ %i.fy, %bb.ab ] ; 3 uses
  %i.gu = phi i32 [ %i.gf, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147 ], [ %i.fz, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141 ], [ %i.fz, %bb.ad ], [ %i.fz, %bb.ab ]
  %i.gv = phi i32 [ %i.gf, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147 ], [ %i.fz, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141 ], [ %i.gb, %bb.ad ], [ %i.gb, %bb.ab ]
  store i32 %.pre230, ptr %i.fm, align 4, !tbaa !514
  %i.gw = zext i32 %.pre.i108 to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gw
  store ptr %.073214, ptr %i.gx, align 8, !tbaa !515
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184, %.critedge.i109
  %i.gy = phi ptr [ %i.fy, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184 ], [ %i.gt, %.critedge.i109 ]
  %i.gz = phi i32 [ %i.gr, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184 ], [ %i.gu, %.critedge.i109 ]
  %i.ha = phi ptr [ %i.ga, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184 ], [ %i.gt, %.critedge.i109 ]
  %i.hb = phi i32 [ %i.gs, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184 ], [ %i.gv, %.critedge.i109 ]
  %i.hc = phi i32 [ %.pre.i108, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184 ], [ %.pre230, %.critedge.i109 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.073214, i64 48 ; 2 uses
  %.not89 = icmp eq ptr %i.hd, %i.fv
  br i1 %.not89, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread, label %bb.ab

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit, %._crit_edge212, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread
  %i.he = load ptr, ptr %i.bj, align 8, !tbaa !227
  %i.hf = call noundef zeroext i1 @_ZN2OT13VarRegionList9serializeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EERKS3_IPK12hb_hashmap_tIj6TripleLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(10) %i.he, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %.pre = load i32, ptr %3, align 8, !tbaa !507
  %i.hg = add i32 %.pre, -1
  %i.hh = icmp ult i32 %i.hg, -2
  br i1 %i.hh, label %bb.aj, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit

bb.aj:                                            ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread
  store i32 0, ptr %i.fm, align 4, !tbaa !514
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !504
  call void @hb_free(ptr noundef %i.hj) #16
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, %.thread.i114, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread, %bb.aj
  %.4265 = phi i1 [ %i.hf, %bb.aj ], [ %i.hf, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread ], [ false, %.thread.i114 ], [ false, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread: ; preds = %bb.u, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit104, %.critedge.i103, %bb.o, %.critedge.i97, %bb.m, %.critedge.i93, %bb.l, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit, %._crit_edge
  %.8 = phi i1 [ false, %._crit_edge ], [ false, %bb.l ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit ], [ false, %bb.m ], [ %.4265, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit ], [ false, %bb.o ], [ false, %.critedge.i103 ], [ false, %.critedge.i93 ], [ false, %.critedge.i97 ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit104 ], [ false, %bb.u ]
  %i.hk = add i32 %.sroa.0.0.lcssa, -1
  %spec.select.i.i.i110 = icmp ult i32 %i.hk, -2
  br i1 %spec.select.i.i.i110, label %bb.ak, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.ak:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread
  call void @hb_free(ptr noundef %.sroa.15.0.lcssa) #16
end_hunk_0
