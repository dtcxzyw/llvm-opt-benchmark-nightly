Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tablecmds?download=true
inline.NumInlined: 659
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@DefineRelation:bb.a
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.101, ptr noundef nonnull %i.hk) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2765, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

bb.az:                                            ; preds = %bb.ax, %bb.aw, %bb.aw
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 118
  %i.hn = load i8, ptr %i.hm, align 2             ; 2 uses
  %i.ho = icmp ne i8 %i.hn, 116
  %or.cond6.i = and i1 %i.eb, %i.ho
  %or.cond1209 = select i1 %i.do, i1 %or.cond6.i, i1 false
  br i1 %or.cond1209, label %bb.ba, label %._crit_edge928

bb.ba:                                            ; preds = %bb.az
  %i.hp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.hq = call i32 @errcode(i32 noundef 151027844) #15 ; 0 uses
  %i.hr = load ptr, ptr %i.hd, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.102, ptr noundef nonnull %i.hs) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2777, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

._crit_edge928:                                   ; preds = %bb.az
  %i.hu = icmp eq i8 %i.hn, 116                   ; 2 uses
  br i1 %i.eb, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge928
  br i1 %i.hu, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.hv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.hw = call i32 @errcode(i32 noundef 151027844) #15 ; 0 uses
  %i.hx = select i1 %i.do, ptr @.str.104, ptr @.str.103
  %i.hy = load ptr, ptr %i.hd, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = call i32 (ptr, ...) @errmsg(ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hz) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2787, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

bb.bd:                                            ; preds = %._crit_edge928
  br i1 %i.hu, label %bb.be, label %.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ic = load i8, ptr %i.ib, align 8, !range !6, !noundef !7
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %.thread.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ie = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.if = call i32 @errcode(i32 noundef 151027844) #15 ; 0 uses
  %i.ig = select i1 %i.do, ptr @.str.106, ptr @.str.105
  %i.ih = call i32 (ptr, ...) @errmsg(ptr noundef nonnull %i.ig) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2795, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

.thread.i:                                        ; preds = %bb.be, %bb.bd, %bb.bb
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gc, i64 72 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8
  %i.ik = call i32 @GetUserId() #15
  %i.il = call zeroext i1 @object_ownercheck(i32 noundef 1259, i32 noundef %i.ij, i32 noundef %i.ik) #15
  br i1 %i.il, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.thread.i
  %i.im = load ptr, ptr %i.hd, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 119
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = call i32 @get_relkind_objtype(i8 noundef signext %i.io) #15
  %i.iq = load ptr, ptr %i.hd, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  call void @aclcheck_error(i32 noundef 2, i32 noundef %i.ip, ptr noundef nonnull %i.ir) #15
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  %i.it = load ptr, ptr %i.is, align 8            ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8            ; 3 uses
  %i.iw = load i32, ptr %i.it, align 8
  %i.ix = call ptr @make_attrmap(i32 noundef %i.iw) #15 ; 5 uses
  %i.iy = load i32, ptr %i.ii, align 8
  %i.iz = call ptr @RelationGetNotNullConstraints(i32 noundef %i.iy, i1 noundef zeroext true, i1 noundef zeroext false) #15 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 4 uses
  %.not376.i = icmp eq ptr %i.iz, null            ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  br i1 %.not376.i, label %.preheader430.i, label %.lr.ph.split.i

.preheader430.i:                                  ; preds = %.lr.ph699.i, %.lr.ph.split.i, %bb.bh
  %.us-phi702.i = phi ptr [ null, %bb.bh ], [ null, %.lr.ph.split.i ], [ %i.jl, %.lr.ph699.i ]
  %i.jc = load i32, ptr %i.it, align 8            ; 2 uses
  %.not368704.i = icmp slt i32 %i.jc, 1
  br i1 %.not368704.i, label %.thread419.i, label %.lr.ph.i

.lr.ph.split.i:                                   ; preds = %bb.bh
  %i.jd = load i32, ptr %i.ja, align 4
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph699.i, label %.preheader430.i

.lr.ph699.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph699.i
  %indvars.iv952.i = phi i64 [ %indvars.iv.next953.i, %.lr.ph699.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.1292691698.i = phi ptr [ %i.jl, %.lr.ph699.i ], [ null, %.lr.ph.split.i ]
  %i.jf = load ptr, ptr %i.jb, align 8
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv952.i
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i16, ptr %i.ji, align 8
  %i.jk = sext i16 %i.jj to i32
  %i.jl = call ptr @bms_add_member(ptr noundef %.1292691698.i, i32 noundef %i.jk) #15 ; 2 uses
  %indvars.iv.next953.i = add nuw nsw i64 %indvars.iv952.i, 1 ; 2 uses
  %i.jm = load i32, ptr %i.ja, align 4
  %i.jn = sext i32 %i.jm to i64
  %i.jo = icmp slt i64 %indvars.iv.next953.i, %i.jn
  br i1 %i.jo, label %.lr.ph699.i, label %.preheader430.i

.preheader429.i:                                  ; preds = %bb.cp
  %.not369.i = icmp eq ptr %.2297.i, null
  %.not370.i = icmp eq ptr %.2.i, null
  %i.jp = getelementptr inbounds nuw i8, ptr %.2297.i, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %.2297.i, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  %i.js = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  br i1 %.not370.i, label %.thread419.i, label %.preheader429.split.i

.lr.ph.i:                                         ; preds = %.preheader430.i, %bb.cp
  %i.jt = phi i32 [ %i.pf, %bb.cp ], [ %i.jc, %.preheader430.i ]
  %i.ju = phi i32 [ %i.pe, %bb.cp ], [ 1, %.preheader430.i ] ; 3 uses
  %.0289709.i = phi i16 [ %i.pd, %bb.cp ], [ 1, %.preheader430.i ] ; 2 uses
  %.0293708.i = phi ptr [ %.2.i, %bb.cp ], [ null, %.preheader430.i ] ; 3 uses
  %.0295707.i = phi ptr [ %.2297.i, %bb.cp ], [ null, %.preheader430.i ] ; 3 uses
  %.1306706.i = phi i16 [ %.3308.i, %bb.cp ], [ %.0305740.i654, %.preheader430.i ] ; 3 uses
  %.1320705.i = phi ptr [ %.3322.i, %bb.cp ], [ %.0319736.i658, %.preheader430.i ] ; 6 uses
  %i.jv = add nsw i32 %i.ju, -1
  %i.jw = sext i32 %i.jt to i64
  %i.jx = shl nsw i64 %i.jw, 3
  %i.jy = getelementptr i8, ptr %i.it, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 32
  %i.ka = sext i32 %i.jv to i64                   ; 2 uses
  %i.kb = getelementptr inbounds [100 x i8], ptr %i.jz, i64 %i.ka ; 10 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 91
  %i.ke = load i8, ptr %i.kd, align 1, !range !6, !noundef !7
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.cp, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 68
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 76
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = call ptr @makeColumnDef(ptr noundef nonnull %i.kc, i32 noundef %i.kh, i32 noundef %i.kj, i32 noundef %i.kl) #15 ; 13 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kb, i64 84
  %i.ko = load i8, ptr %i.kn, align 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 37 ; 3 uses
  store i8 %i.ko, ptr %i.kp, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 90
  %i.kr = load i8, ptr %i.kq, align 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 80 ; 2 uses
  store i8 %i.kr, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kb, i64 85
  %i.ku = load i8, ptr %i.kt, align 1             ; 2 uses
  %.not375.i = icmp eq i8 %i.ku, 0
  br i1 %.not375.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kv = call ptr @GetCompressionMethodName(i8 noundef signext %i.ku) #15
  %i.kw = call ptr @pstrdup(ptr noundef %i.kv) #15
  %i.kx = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  store ptr %i.kw, ptr %i.kx, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br i1 %i.do, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kb, i64 89
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 64
  store i8 %i.kz, ptr %i.la, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.lb = getelementptr i8, ptr %.1320705.i, i64 16 ; 2 uses
  %.not.i393.i = icmp eq ptr %.1320705.i, null
  br i1 %.not.i393.i, label %findAttrByName.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bm
  %i.lc = getelementptr inbounds nuw i8, ptr %.1320705.i, i64 4
  %i.ld = load i32, ptr %i.lc, align 4            ; 2 uses
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %.lr.ph31.i.i, label %findAttrByName.exit.thread.i

.lr.ph31.i.i:                                     ; preds = %.lr.ph.i.i
  %i.lf = load ptr, ptr %i.lb, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.ld to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %.lr.ph31.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph31.i.i ], [ %indvars.iv.next.i.i, %bb.bo ] ; 2 uses
  %.0102130.i.i = phi i32 [ 1, %.lr.ph31.i.i ], [ %i.lm, %bb.bo ] ; 3 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv.i.i
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.kc, ptr noundef nonnull dereferenceable(1) %i.lj) #17
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lm = add nuw nsw i32 %.0102130.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %findAttrByName.exit.thread.i, label %bb.bn

bb.bp:                                            ; preds = %bb.bn
  %i.ln = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  %i.lp = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #15
  br i1 %i.lp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.123, ptr noundef %i.lo) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3496, ptr noundef nonnull @__func__.MergeInheritedAttribute) #15
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.val.i.i = load ptr, ptr %i.lb, align 8
  %i.lr = zext nneg i32 %.0102130.i.i to i64
  %i.ls = getelementptr [8 x i8], ptr %.val.i.i, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 -8
  %i.lu = load ptr, ptr %i.lt, align 8            ; 7 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  call void @typenameTypeIdAndMod(ptr noundef null, ptr noundef %i.lw, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i) #15
  %i.lx = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  call void @typenameTypeIdAndMod(ptr noundef null, ptr noundef %i.ly, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j) #15
  %i.lz = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ma = load i32, ptr %i.h, align 4
  %.not.i394.i = icmp eq i32 %i.lz, %i.ma
  br i1 %.not.i394.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mb = load i32, ptr %i.i, align 4
  %i.mc = load i32, ptr %i.j, align 4
  %.not41.i.i = icmp eq i32 %i.mb, %i.mc
  br i1 %.not41.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.md = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.me = call i32 @errcode(i32 noundef 67141764) #15 ; 0 uses
  %i.mf = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.124, ptr noundef %i.lo) #15 ; 0 uses
  %i.mg = load i32, ptr %i.g, align 4
  %i.mh = load i32, ptr %i.i, align 4
  %i.mi = call ptr @format_type_with_typemod(i32 noundef %i.mg, i32 noundef %i.mh) #15
  %i.mj = load i32, ptr %i.h, align 4
  %i.mk = load i32, ptr %i.j, align 4
  %i.ml = call ptr @format_type_with_typemod(i32 noundef %i.mj, i32 noundef %i.mk) #15
  %i.mm = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.125, ptr noundef %i.mi, ptr noundef %i.ml) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3511, ptr noundef nonnull @__func__.MergeInheritedAttribute) #15
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.mn = call i32 @GetColumnDefCollation(ptr noundef null, ptr noundef nonnull %i.lu, i32 noundef %i.lz) #15 ; 2 uses
  %i.mo = load i32, ptr %i.h, align 4
  %i.mp = call i32 @GetColumnDefCollation(ptr noundef null, ptr noundef nonnull %i.km, i32 noundef %i.mo) #15 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.mn, %i.mp
  br i1 %.not42.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.mr = call i32 @errcode(i32 noundef 17432708) #15 ; 0 uses
  %i.ms = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.126, ptr noundef %i.lo) #15 ; 0 uses
  %i.mt = call ptr @get_collation_name(i32 noundef %i.mn) #15
  %i.mu = call ptr @get_collation_name(i32 noundef %i.mp) #15
  %i.mv = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.127, ptr noundef %i.mt, ptr noundef %i.mu) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3525, ptr noundef nonnull @__func__.MergeInheritedAttribute) #15
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lu, i64 37 ; 3 uses
  %i.mx = load i8, ptr %i.mw, align 1             ; 2 uses
  %i.my = icmp eq i8 %i.mx, 0
  %i.mz = load i8, ptr %i.kp, align 1             ; 2 uses
  br i1 %i.my, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i8 %i.mz, ptr %i.mw, align 1
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %.not43.i.i = icmp eq i8 %i.mx, %i.mz
  br i1 %.not43.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.na = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.nb = call i32 @errcode(i32 noundef 67141764) #15 ; 0 uses
  %i.nc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.128, ptr noundef %i.lo) #15 ; 0 uses
  %i.nd = load i8, ptr %i.mw, align 1
  %i.ne = call fastcc ptr @storage_name(i8 noundef signext %i.nd)
  %i.nf = load i8, ptr %i.kp, align 1
  %i.ng = call fastcc ptr @storage_name(i8 noundef signext %i.nf)
  %i.nh = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.125, ptr noundef nonnull %i.ne, ptr noundef nonnull %i.ng) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3539, ptr noundef nonnull @__func__.MergeInheritedAttribute) #15
  unreachable

bb.ca:                                            ; preds = %bb.by, %bb.bx
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lu, i64 24 ; 3 uses
  %i.nj = load ptr, ptr %i.ni, align 8            ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  %i.nl = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8            ; 3 uses
  br i1 %i.nk, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store ptr %i.nm, ptr %i.ni, align 8
  br label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  %.not44.i.i = icmp eq ptr %i.nm, null
  br i1 %.not44.i.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nj, ptr noundef nonnull dereferenceable(1) %i.nm) #17
  %.not45.i.i = icmp eq i32 %i.nn, 0
  br i1 %.not45.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.no = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.np = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.nq = call i32 @errcode(i32 noundef 67141764) #15 ; 0 uses
  %i.nr = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.129, ptr noundef %i.lo) #15 ; 0 uses
  %i.ns = load ptr, ptr %i.ni, align 8
  %i.nt = load ptr, ptr %i.no, align 8
  %i.nu = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.125, ptr noundef %i.ns, ptr noundef %i.nt) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3554, ptr noundef nonnull @__func__.MergeInheritedAttribute) #15
  unreachable

bb.cf:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lu, i64 80
  %i.nw = load i8, ptr %i.nv, align 8
  %i.nx = load i8, ptr %i.ks, align 8
  %.not46.i.i = icmp eq i8 %i.nw, %i.nx
  br i1 %.not46.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ny = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.nz = call i32 @errcode(i32 noundef 67141764) #15 ; 0 uses
  %i.oa = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.130, ptr noundef %i.lo) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3564, ptr noundef nonnull @__func__.MergeInheritedAttribute) #15
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.ob = getelementptr inbounds nuw i8, ptr %i.lu, i64 32 ; 2 uses
  %i.oc = load i16, ptr %i.ob, align 8
  %i.od = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.oc, i16 1) ; 2 uses
  %i.oe = extractvalue { i16, i1 } %i.od, 1
  %i.of = extractvalue { i16, i1 } %i.od, 0
  store i16 %i.of, ptr %i.ob, align 8
  br i1 %i.oe, label %bb.ci, label %MergeInheritedAttribute.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.og = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.oh = call i32 @errcode(i32 noundef 261) #15  ; 0 uses
  %i.oi = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.131) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3574, ptr noundef nonnull @__func__.MergeInheritedAttribute) #15
  unreachable

MergeInheritedAttribute.exit.i:                   ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  %i.oj = trunc i32 %.0102130.i.i to i16
  br label %bb.cj

findAttrByName.exit.thread.i:                     ; preds = %bb.bo, %.lr.ph.i.i, %bb.bm
  %i.ok = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store i16 1, ptr %i.ok, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.km, i64 34
  store i8 0, ptr %i.ol, align 2
  %i.om = call ptr @lappend(ptr noundef %.1320705.i, ptr noundef %i.km) #15
  %i.on = add i16 %.1306706.i, 1                  ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %findAttrByName.exit.thread.i, %MergeInheritedAttribute.exit.i
  %.sink.i = phi i16 [ %i.on, %findAttrByName.exit.thread.i ], [ %i.oj, %MergeInheritedAttribute.exit.i ]
  %.2321.i = phi ptr [ %i.om, %findAttrByName.exit.thread.i ], [ %.1320705.i, %MergeInheritedAttribute.exit.i ] ; 2 uses
  %.2307.i = phi i16 [ %i.on, %findAttrByName.exit.thread.i ], [ %.1306706.i, %MergeInheritedAttribute.exit.i ] ; 2 uses
  %.0288.i = phi ptr [ %i.km, %findAttrByName.exit.thread.i ], [ %i.lu, %MergeInheritedAttribute.exit.i ] ; 2 uses
  %i.oo = load ptr, ptr %i.ix, align 8
  %i.op = getelementptr inbounds [2 x i8], ptr %i.oo, i64 %i.ka
  store i16 %.sink.i, ptr %i.op, align 2
  %i.oq = call zeroext i1 @bms_is_member(i32 noundef %i.ju, ptr noundef %.us-phi702.i) #15
  br i1 %i.oq, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.or = getelementptr inbounds nuw i8, ptr %.0288.i, i64 35
  store i8 1, ptr %i.or, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.os = getelementptr inbounds nuw i8, ptr %i.kb, i64 87
  %i.ot = load i8, ptr %i.os, align 1, !range !6, !noundef !7
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.ov = call ptr @TupleDescGetDefault(ptr noundef nonnull %i.it, i16 noundef signext %.0289709.i) #15 ; 2 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ox = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.oy = load ptr, ptr %i.hd, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pa = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.107, i32 noundef %i.ju, ptr noundef nonnull %i.oz) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2911, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.pb = call ptr @lappend(ptr noundef %.0295707.i, ptr noundef nonnull %i.ov) #15
  %i.pc = call ptr @lappend(ptr noundef %.0293708.i, ptr noundef nonnull %.0288.i) #15
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl, %.lr.ph.i
  %.3322.i = phi ptr [ %.1320705.i, %.lr.ph.i ], [ %.2321.i, %bb.co ], [ %.2321.i, %bb.cl ] ; 4 uses
  %.3308.i = phi i16 [ %.1306706.i, %.lr.ph.i ], [ %.2307.i, %bb.co ], [ %.2307.i, %bb.cl ] ; 4 uses
  %.2297.i = phi ptr [ %.0295707.i, %.lr.ph.i ], [ %i.pb, %bb.co ], [ %.0295707.i, %bb.cl ] ; 4 uses
  %.2.i = phi ptr [ %.0293708.i, %.lr.ph.i ], [ %i.pc, %bb.co ], [ %.0293708.i, %bb.cl ] ; 4 uses
  %i.pd = add i16 %.0289709.i, 1                  ; 2 uses
  %i.pe = sext i16 %i.pd to i32                   ; 2 uses
  %i.pf = load i32, ptr %i.it, align 8            ; 2 uses
  %.not368.i = icmp slt i32 %i.pf, %i.pe
  br i1 %.not368.i, label %.preheader429.i, label %.lr.ph.i, !llvm.loop !9

.preheader429.split.i:                            ; preds = %.preheader429.i, %bb.cy
  %indvars.iv955.i = phi i64 [ %indvars.iv.next956.i, %bb.cy ], [ 0, %.preheader429.i ] ; 5 uses
  %.1310.i = phi i1 [ %.2311.i, %bb.cy ], [ %.0309739.i655, %.preheader429.i ] ; 4 uses
  br i1 %.not369.i, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %.preheader429.split.i
  %i.pg = load i32, ptr %i.jp, align 4
  %i.ph = sext i32 %i.pg to i64
  %i.pi = icmp slt i64 %indvars.iv955.i, %i.ph
  br i1 %i.pi, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.pj = load ptr, ptr %i.jq, align 8
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv955.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %.preheader429.split.i
  %i.pl = phi ptr [ %i.pk, %bb.cr ], [ null, %bb.cq ], [ null, %.preheader429.split.i ] ; 2 uses
  %i.pm = load i32, ptr %i.jr, align 4
  %i.pn = sext i32 %i.pm to i64
  %i.po = icmp slt i64 %indvars.iv955.i, %i.pn
  br i1 %i.po, label %bb.ct, label %.thread419.i

bb.ct:                                            ; preds = %bb.cs
  %i.pp = load ptr, ptr %i.js, align 8            ; 2 uses
  %i.pq = icmp ne ptr %i.pl, null
  %i.pr = icmp ne ptr %i.pp, null
  %i.ps = select i1 %i.pq, i1 %i.pr, i1 false
  br i1 %i.ps, label %bb.cu, label %.thread419.i

.thread419.i:                                     ; preds = %bb.ct, %bb.cs, %.preheader429.i, %.preheader430.i
  %.1306.lcssa1028.i = phi i16 [ %.3308.i, %.preheader429.i ], [ %.0305740.i654, %.preheader430.i ], [ %.3308.i, %bb.cs ], [ %.3308.i, %bb.ct ]
  %.1320.lcssa1027.i = phi ptr [ %.3322.i, %.preheader429.i ], [ %.0319736.i658, %.preheader430.i ], [ %.3322.i, %bb.cs ], [ %.3322.i, %bb.ct ] ; 5 uses
  %.us-phi714.i = phi i1 [ %.0309739.i655, %.preheader429.i ], [ %.0309739.i655, %.preheader430.i ], [ %.1310.i, %bb.cs ], [ %.1310.i, %bb.ct ] ; 4 uses
  %.not371.i = icmp eq ptr %i.iv, null
  br i1 %.not371.i, label %.loopexit.i.a, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv955.i
  %i.pu = load ptr, ptr %i.pl, align 8
  %i.pv = load ptr, ptr %i.pt, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  %i.pw = call ptr @map_variable_attnos(ptr noundef %i.pu, i32 noundef 1, i32 noundef 0, ptr noundef %i.ix, i32 noundef 0, ptr noundef nonnull %i.k) #15 ; 2 uses
  %i.px = load i8, ptr %i.k, align 1, !range !6, !noundef !7
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.pz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.qa = call i32 @errcode(i32 noundef 1088) #15 ; 0 uses
  %i.qb = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.108) #15 ; 0 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = load ptr, ptr %i.hd, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qg = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.109, ptr noundef %i.qd, ptr noundef nonnull %i.qf) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2952, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pv, i64 56 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8            ; 2 uses
  %i.qj = icmp eq ptr %i.qi, null
  br i1 %i.qj, label %.sink.split.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qk = call zeroext i1 @equal(ptr noundef nonnull %i.qi, ptr noundef %i.pw) #15
  br i1 %i.qk, label %bb.cy, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cx, %bb.cw
  %MergeAttributes.bogus_marker.sink.i = phi ptr [ %i.pw, %bb.cw ], [ @MergeAttributes.bogus_marker, %bb.cx ]
  %.2311.ph.i = phi i1 [ %.1310.i, %bb.cw ], [ true, %bb.cx ]
  store ptr %MergeAttributes.bogus_marker.sink.i, ptr %i.qh, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %.sink.split.i, %bb.cx
  %.2311.i = phi i1 [ %.1310.i, %bb.cx ], [ %.2311.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  %indvars.iv.next956.i = add nuw nsw i64 %indvars.iv955.i, 1
  br label %.preheader429.split.i, !llvm.loop !10

bb.cz:                                            ; preds = %.thread419.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.iv, i64 26 ; 2 uses
  %i.qm = load i16, ptr %i.ql, align 2
  %.not372.i = icmp eq i16 %i.qm, 0
  br i1 %.not372.i, label %.loopexit.i.a, label %.lr.ph717.preheader.i

.lr.ph717.preheader.i:                            ; preds = %bb.cz
  %i.qn = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  br label %.lr.ph717.i

.lr.ph717.i:                                      ; preds = %MergeCheckConstraint.exit.i, %.lr.ph717.preheader.i
  %indvars.iv957.i = phi i64 [ 0, %.lr.ph717.preheader.i ], [ %indvars.iv.next958.i, %MergeCheckConstraint.exit.i ] ; 2 uses
  %.1316715.i = phi ptr [ %.0315737.i657, %.lr.ph717.preheader.i ], [ %.2317.i, %MergeCheckConstraint.exit.i ] ; 7 uses
  %i.qp = getelementptr inbounds nuw [24 x i8], ptr %i.qo, i64 %indvars.iv957.i ; 4 uses
  %i.qq = load ptr, ptr %i.qp, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 18
  %i.qs = load i8, ptr %i.qr, align 2, !range !6, !noundef !7
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %MergeCheckConstraint.exit.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph717.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = call ptr @stringToNode(ptr noundef %i.qv) #15
  %i.qx = call ptr @map_variable_attnos(ptr noundef %i.qw, i32 noundef 1, i32 noundef 0, ptr noundef %i.ix, i32 noundef 0, ptr noundef nonnull %i.l) #15 ; 2 uses
  %i.qy = load i8, ptr %i.l, align 1, !range !6, !noundef !7
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ra = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.rb = call i32 @errcode(i32 noundef 1088) #15 ; 0 uses
  %i.rc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.108) #15 ; 0 uses
  %i.rd = load ptr, ptr %i.hd, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.rf = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.110, ptr noundef %i.qq, ptr noundef nonnull %i.re) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3006, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.rh = load i8, ptr %i.rg, align 8, !range !6, !noundef !7 ; 3 uses
  %i.ri = trunc nuw i8 %i.rh to i1
  %.not37.i.i = icmp eq ptr %.1316715.i, null
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %.lr.ph.i395.i

.lr.ph.i395.i:                                    ; preds = %bb.dc
  %i.rj = getelementptr inbounds nuw i8, ptr %.1316715.i, i64 4
  %i.rk = load i32, ptr %i.rj, align 4            ; 2 uses
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %.lr.ph54.i.i, label %._crit_edge.i.i

.lr.ph54.i.i:                                     ; preds = %.lr.ph.i395.i
  %i.rm = getelementptr inbounds nuw i8, ptr %.1316715.i, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8
  %wide.trip.count.i396.i = zext nneg i32 %i.rk to i64
  br label %bb.de

bb.dd:                                            ; preds = %bb.de
  %indvars.iv.next.i398.i = add nuw nsw i64 %indvars.iv.i397.i, 1 ; 2 uses
  %exitcond.not.i399.i = icmp eq i64 %indvars.iv.next.i398.i, %wide.trip.count.i396.i
  br i1 %exitcond.not.i399.i, label %._crit_edge.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph54.i.i
  %indvars.iv.i397.i = phi i64 [ 0, %.lr.ph54.i.i ], [ %indvars.iv.next.i398.i, %bb.dd ] ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %indvars.iv.i397.i
  %i.rp = load ptr, ptr %i.ro, align 8            ; 5 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.rr, ptr noundef nonnull dereferenceable(1) %i.qq) #17
  %.not39.i.i = icmp eq i32 %i.rs, 0
  br i1 %.not39.i.i, label %.split.i.i, label %bb.dd

.split.i.i:                                       ; preds = %bb.de
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8
  %i.rv = call zeroext i1 @equal(ptr noundef %i.qx, ptr noundef %i.ru) #15
  br i1 %i.rv, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %.split.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rp, i64 36 ; 2 uses
  %i.rx = load i16, ptr %i.rw, align 4
  %i.ry = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.rx, i16 1) ; 2 uses
  %i.rz = extractvalue { i16, i1 } %i.ry, 1
  %i.sa = extractvalue { i16, i1 } %i.ry, 0
  store i16 %i.sa, ptr %i.rw, align 4
  br i1 %i.rz, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sb = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.sc = call i32 @errcode(i32 noundef 261) #15  ; 0 uses
  %i.sd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.131) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3254, ptr noundef nonnull @__func__.MergeCheckConstraint) #15
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.se = getelementptr inbounds nuw i8, ptr %i.rp, i64 32 ; 2 uses
  %i.sf = load i8, ptr %i.se, align 8, !range !6, !noundef !7
  %i.sg = trunc nuw i8 %i.sf to i1
  %.not.i400.i = xor i1 %i.sg, true
  %or.cond.i.i = and i1 %i.ri, %.not.i400.i
  br i1 %or.cond.i.i, label %bb.di, label %MergeCheckConstraint.exit.i

bb.di:                                            ; preds = %bb.dh
  store i8 1, ptr %i.se, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rp, i64 33
  store i8 0, ptr %i.sh, align 1
  br label %MergeCheckConstraint.exit.i

bb.dj:                                            ; preds = %.split.i.i
  %i.si = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.sj = call i32 @errcode(i32 noundef 290948) #15 ; 0 uses
  %i.sk = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.137, ptr noundef nonnull %i.qq) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3272, ptr noundef nonnull @__func__.MergeCheckConstraint) #15
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.dd, %.lr.ph.i395.i, %bb.dc
  %i.sl = call ptr @palloc0(i64 noundef 40) #15   ; 7 uses
  store i32 5, ptr %i.sl, align 8
  %i.sm = call ptr @pstrdup(ptr noundef %i.qq) #15
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store ptr %i.sm, ptr %i.sn, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  store ptr %i.qx, ptr %i.so, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 36
  store i16 1, ptr %i.sp, align 4
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  store i8 %i.rh, ptr %i.sq, align 8
  %i.sr = xor i8 %i.rh, 1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sl, i64 33
  store i8 %i.sr, ptr %i.ss, align 1
  %i.st = call ptr @lappend(ptr noundef %.1316715.i, ptr noundef nonnull %i.sl) #15
  br label %MergeCheckConstraint.exit.i

MergeCheckConstraint.exit.i:                      ; preds = %._crit_edge.i.i, %bb.di, %bb.dh, %.lr.ph717.i
  %.2317.i = phi ptr [ %.1316715.i, %.lr.ph717.i ], [ %i.st, %._crit_edge.i.i ], [ %.1316715.i, %bb.di ], [ %.1316715.i, %bb.dh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  %indvars.iv.next958.i = add nuw nsw i64 %indvars.iv957.i, 1 ; 2 uses
  %i.su = load i16, ptr %i.ql, align 2
  %i.sv = zext i16 %i.su to i64
  %i.sw = icmp samesign ult i64 %indvars.iv.next958.i, %i.sv
  br i1 %i.sw, label %.lr.ph717.i, label %.loopexit.i.a, !llvm.loop !11

.loopexit.i.a:                                    ; preds = %MergeCheckConstraint.exit.i, %bb.cz, %.thread419.i
  %.3318.i = phi ptr [ %.0315737.i657, %.thread419.i ], [ %.0315737.i657, %bb.cz ], [ %.2317.i, %MergeCheckConstraint.exit.i ] ; 4 uses
  br i1 %.not376.i, label %.split734.us.i, label %.lr.ph721.split.i

.lr.ph721.split.i:                                ; preds = %.loopexit.i.a
  %i.sx = load i32, ptr %i.ja, align 4
  %i.sy = icmp sgt i32 %i.sx, 0
  br i1 %i.sy, label %.lr.ph729.i, label %.split734.us.i

.split734.us.i:                                   ; preds = %.lr.ph729.i, %.lr.ph721.split.i, %.loopexit.i.a
  %.us-phi735.i = phi ptr [ %.0312738.i656, %.loopexit.i.a ], [ %.0312738.i656, %.lr.ph721.split.i ], [ %i.tm, %.lr.ph729.i ] ; 4 uses
  call void @free_attrmap(ptr noundef %i.ix) #15
  call void @table_close(ptr noundef %i.gc, i32 noundef 0) #15
  %indvars.iv.next964.i = add nuw nsw i64 %indvars.iv963.i653, 1 ; 2 uses
  %i.sz = load i32, ptr %i.dz, align 4
  %i.ta = sext i32 %i.sz to i64
  %i.tb = icmp slt i64 %indvars.iv.next964.i, %i.ta
  br i1 %i.tb, label %.lr.ph659, label %.critedge379.i

.lr.ph729.i:                                      ; preds = %.lr.ph721.split.i, %.lr.ph729.i
  %indvars.iv960.i = phi i64 [ %indvars.iv.next961.i, %.lr.ph729.i ], [ 0, %.lr.ph721.split.i ] ; 2 uses
  %.2314719728.i = phi ptr [ %i.tm, %.lr.ph729.i ], [ %.0312738.i656, %.lr.ph721.split.i ]
  %i.tc = load ptr, ptr %i.jb, align 8
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv960.i
  %i.te = load ptr, ptr %i.td, align 8            ; 2 uses
  %i.tf = load ptr, ptr %i.ix, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 2 uses
  %i.th = load i16, ptr %i.tg, align 8
  %i.ti = sext i16 %i.th to i64
  %i.tj = getelementptr [2 x i8], ptr %i.tf, i64 %i.ti
  %i.tk = getelementptr i8, ptr %i.tj, i64 -2
  %i.tl = load i16, ptr %i.tk, align 2
  store i16 %i.tl, ptr %i.tg, align 8
  %i.tm = call ptr @lappend(ptr noundef %.2314719728.i, ptr noundef %i.te) #15 ; 2 uses
  %indvars.iv.next961.i = add nuw nsw i64 %indvars.iv960.i, 1 ; 2 uses
  %i.tn = load i32, ptr %i.ja, align 4
  %i.to = sext i32 %i.tn to i64
  %i.tp = icmp slt i64 %indvars.iv.next961.i, %i.to
  br i1 %i.tp, label %.lr.ph729.i, label %.split734.us.i

.lr.ph670:                                        ; preds = %.lr.ph759.i, %bb.eq
  %.4756.i669 = phi ptr [ %.5.i, %bb.eq ], [ %.1320.lcssa1027.i, %.lr.ph759.i ] ; 5 uses
  %indvars.iv965.i668 = phi i64 [ %indvars.iv.next966.i, %bb.eq ], [ 0, %.lr.ph759.i ] ; 2 uses
  %i.tq = load ptr, ptr %i.ge, align 8
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv965.i668
  %i.ts = load ptr, ptr %i.tr, align 8            ; 17 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8            ; 7 uses
  %indvars.iv.next966.i = add nuw nsw i64 %indvars.iv965.i668, 1 ; 3 uses
  %indvars968.i = trunc i64 %indvars.iv.next966.i to i32
  %i.tv = getelementptr i8, ptr %.4756.i669, i64 16 ; 2 uses
  %.not.i401.i = icmp eq ptr %.4756.i669, null
  br i1 %.not.i401.i, label %findAttrByName.exit409.thread.i, label %.lr.ph.i402.i

.lr.ph.i402.i:                                    ; preds = %.lr.ph670
  %i.tw = getelementptr inbounds nuw i8, ptr %.4756.i669, i64 4
  %i.tx = load i32, ptr %i.tw, align 4            ; 2 uses
  %i.ty = icmp sgt i32 %i.tx, 0
  br i1 %i.ty, label %.lr.ph31.i403.i, label %findAttrByName.exit409.thread.i

.lr.ph31.i403.i:                                  ; preds = %.lr.ph.i402.i
  %i.tz = load ptr, ptr %i.tv, align 8
  %wide.trip.count.i404.i = zext nneg i32 %i.tx to i64
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dl, %.lr.ph31.i403.i
  %indvars.iv.i405.i = phi i64 [ 0, %.lr.ph31.i403.i ], [ %indvars.iv.next.i407.i, %bb.dl ] ; 2 uses
  %.0102130.i406.i = phi i32 [ 1, %.lr.ph31.i403.i ], [ %i.ug, %bb.dl ] ; 3 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.i405.i
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.tu, ptr noundef nonnull dereferenceable(1) %i.ud) #17
  %i.uf = icmp eq i32 %i.ue, 0
  br i1 %i.uf, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ug = add nuw nsw i32 %.0102130.i406.i, 1
  %indvars.iv.next.i407.i = add nuw nsw i64 %indvars.iv.i405.i, 1 ; 2 uses
  %exitcond.not.i408.i = icmp eq i64 %indvars.iv.next.i407.i, %wide.trip.count.i404.i
  br i1 %exitcond.not.i408.i, label %findAttrByName.exit409.thread.i, label %bb.dk

.critedge381.i:                                   ; preds = %bb.eq
  %.not.i410.i = icmp eq ptr %.5.i, null
  br i1 %.not.i410.i, label %list_length.exit411.thread.i, label %list_length.exit411.i

list_length.exit411.i:                            ; preds = %.lr.ph759.i, %.critedge381.i, %.preheader426.i
  %.4.lcssa1031.i = phi ptr [ %.5.i, %.critedge381.i ], [ %.1320.lcssa1027.i, %.preheader426.i ], [ %.1320.lcssa1027.i, %.lr.ph759.i ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.4.lcssa1031.i, i64 4
  %i.ui = load i32, ptr %i.uh, align 4
  %i.uj = icmp sgt i32 %i.ui, 1600
  br i1 %i.uj, label %bb.er, label %list_length.exit411.thread.i

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.uk = icmp eq i32 %.0102130.i406.i, %indvars968.i
  %i.ul = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #15 ; 2 uses
  br i1 %i.uk, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.ul, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.um = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.138, ptr noundef nonnull %i.tu) #15 ; 0 uses
  br label %.sink.split.i.i

bb.dp:                                            ; preds = %bb.dm
  br i1 %i.ul, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.un = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.139, ptr noundef nonnull %i.tu) #15 ; 0 uses
  %i.uo = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.140) #15 ; 0 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.dq, %bb.do
  %.sink.i.i = phi i32 [ 3329, %bb.dq ], [ 3325, %bb.do ]
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef %.sink.i.i, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  br label %bb.dr

bb.dr:                                            ; preds = %.sink.split.i.i, %bb.dp, %bb.dn
  %.val.i412.i = load ptr, ptr %i.tv, align 8
  %i.up = zext nneg i32 %.0102130.i406.i to i64
  %i.uq = getelementptr [8 x i8], ptr %.val.i412.i, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 -8
  %i.us = load ptr, ptr %i.ur, align 8            ; 15 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8
  call void @typenameTypeIdAndMod(ptr noundef null, ptr noundef %i.uu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #15
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8
  call void @typenameTypeIdAndMod(ptr noundef null, ptr noundef %i.uw, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #15
  %i.ux = load i32, ptr %i.c, align 4             ; 2 uses
  %i.uy = load i32, ptr %i.d, align 4
  %.not.i413.i = icmp eq i32 %i.ux, %i.uy
  br i1 %.not.i413.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.uz = load i32, ptr %i.e, align 4
  %i.va = load i32, ptr %i.f, align 4
  %.not68.i.i = icmp eq i32 %i.uz, %i.va
  br i1 %.not68.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.vb = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.vc = call i32 @errcode(i32 noundef 67141764) #15 ; 0 uses
  %i.vd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.141, ptr noundef nonnull %i.tu) #15 ; 0 uses
  %i.ve = load i32, ptr %i.c, align 4
  %i.vf = load i32, ptr %i.e, align 4
  %i.vg = call ptr @format_type_with_typemod(i32 noundef %i.ve, i32 noundef %i.vf) #15
  %i.vh = load i32, ptr %i.d, align 4
  %i.vi = load i32, ptr %i.f, align 4
  %i.vj = call ptr @format_type_with_typemod(i32 noundef %i.vh, i32 noundef %i.vi) #15
  %i.vk = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.125, ptr noundef %i.vg, ptr noundef %i.vj) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3345, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  unreachable

bb.du:                                            ; preds = %bb.ds
  %i.vl = call i32 @GetColumnDefCollation(ptr noundef null, ptr noundef nonnull %i.us, i32 noundef %i.ux) #15 ; 2 uses
  %i.vm = load i32, ptr %i.d, align 4
  %i.vn = call i32 @GetColumnDefCollation(ptr noundef null, ptr noundef nonnull %i.ts, i32 noundef %i.vm) #15 ; 2 uses
  %.not69.i.i = icmp eq i32 %i.vl, %i.vn
  br i1 %.not69.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vo = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.vp = call i32 @errcode(i32 noundef 17432708) #15 ; 0 uses
  %i.vq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.142, ptr noundef nonnull %i.tu) #15 ; 0 uses
  %i.vr = call ptr @get_collation_name(i32 noundef %i.vl) #15
  %i.vs = call ptr @get_collation_name(i32 noundef %i.vn) #15
  %i.vt = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.127, ptr noundef %i.vr, ptr noundef %i.vs) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3359, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ts, i64 64 ; 2 uses
  %i.vv = load i8, ptr %i.vu, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.us, i64 64
  store i8 %i.vv, ptr %i.vw, align 8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.us, i64 37 ; 3 uses
  %i.vy = load i8, ptr %i.vx, align 1             ; 2 uses
  %i.vz = icmp eq i8 %i.vy, 0
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ts, i64 37
  %i.wb = load i8, ptr %i.wa, align 1             ; 3 uses
  br i1 %i.vz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i8 %i.wb, ptr %i.vx, align 1
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dw
  %.not70.i.i = icmp eq i8 %i.wb, 0
  %.not71.i.i = icmp eq i8 %i.vy, %i.wb
  %or.cond.i414.i = or i1 %.not70.i.i, %.not71.i.i
  br i1 %or.cond.i414.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ts, i64 37
  %i.wd = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.we = call i32 @errcode(i32 noundef 67141764) #15 ; 0 uses
  %i.wf = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.143, ptr noundef nonnull %i.tu) #15 ; 0 uses
  %i.wg = load i8, ptr %i.vx, align 1
  %i.wh = call fastcc ptr @storage_name(i8 noundef signext %i.wg)
  %i.wi = load i8, ptr %i.wc, align 1
  %i.wj = call fastcc ptr @storage_name(i8 noundef signext %i.wi)
  %i.wk = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.125, ptr noundef nonnull %i.wh, ptr noundef nonnull %i.wj) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3379, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  unreachable

bb.ea:                                            ; preds = %bb.dy, %bb.dx
  %i.wl = getelementptr inbounds nuw i8, ptr %i.us, i64 24 ; 3 uses
  %i.wm = load ptr, ptr %i.wl, align 8            ; 2 uses
  %i.wn = icmp eq ptr %i.wm, null
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8            ; 3 uses
  br i1 %i.wn, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store ptr %i.wp, ptr %i.wl, align 8
  br label %bb.ef

bb.ec:                                            ; preds = %bb.ea
  %.not72.i.i = icmp eq ptr %i.wp, null
  br i1 %.not72.i.i, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.wq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.wm, ptr noundef nonnull dereferenceable(1) %i.wp) #17
  %.not73.i.i = icmp eq i32 %i.wq, 0
  br i1 %.not73.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.ws = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.wt = call i32 @errcode(i32 noundef 67141764) #15 ; 0 uses
  %i.wu = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.129, ptr noundef nonnull %i.tu) #15 ; 0 uses
  %i.wv = load ptr, ptr %i.wl, align 8
  %i.ww = load ptr, ptr %i.wr, align 8
  %i.wx = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.125, ptr noundef %i.wv, ptr noundef %i.ww) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3393, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  unreachable

bb.ef:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ts, i64 35
  %i.wz = load i8, ptr %i.wy, align 1, !range !6, !noundef !7
  %i.xa = getelementptr inbounds nuw i8, ptr %i.us, i64 35 ; 2 uses
  %i.xb = load i8, ptr %i.xa, align 1, !range !6, !noundef !7
  %i.xc = or i8 %i.xb, %i.wz
  store i8 %i.xc, ptr %i.xa, align 1
  %i.xd = getelementptr inbounds nuw i8, ptr %i.us, i64 80
  %i.xe = load i8, ptr %i.xd, align 8             ; 2 uses
  %.not74.i.i = icmp eq i8 %i.xe, 0
  br i1 %.not74.i.i, label %bb.el, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ts, i64 48
  %i.xg = load ptr, ptr %i.xf, align 8            ; 2 uses
  %.not76.i.i = icmp eq ptr %i.xg, null
  br i1 %.not76.i.i, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ts, i64 80
  %i.xi = load i8, ptr %i.xh, align 8
  %.not77.i.i = icmp eq i8 %i.xi, 0
  br i1 %.not77.i.i, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.xj = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.xk = call i32 @errcode(i32 noundef 17064068) #15 ; 0 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8
  %i.xn = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.111, ptr noundef %i.xm) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3421, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  unreachable

bb.ej:                                            ; preds = %bb.eh, %bb.eg
  %i.xo = load i8, ptr %i.vu, align 8
  %.not78.i.i = icmp eq i8 %i.xo, 0
  br i1 %.not78.i.i, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.xp = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.xq = call i32 @errcode(i32 noundef 17064068) #15 ; 0 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8
  %i.xt = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.112, ptr noundef %i.xs) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3426, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  unreachable

bb.el:                                            ; preds = %bb.ef
  %i.xu = getelementptr inbounds nuw i8, ptr %i.ts, i64 80
  %i.xv = load i8, ptr %i.xu, align 8
  %.not75.i.i = icmp eq i8 %i.xv, 0
  br i1 %.not75.i.i, label %..thread_crit_edge.i.i, label %bb.em

..thread_crit_edge.i.i:                           ; preds = %bb.el
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 48
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %.thread.i.i

bb.em:                                            ; preds = %bb.el
  %i.xw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.xx = call i32 @errcode(i32 noundef 17064068) #15 ; 0 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8
  %i.ya = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.113, ptr noundef %i.xz) #15 ; 0 uses
  %i.yb = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.114) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3435, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  unreachable

bb.en:                                            ; preds = %bb.ej
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ts, i64 80
  %i.yd = load i8, ptr %i.yc, align 8             ; 2 uses
  %.not80.i.i = icmp eq i8 %i.yd, 0
  %.not81.i.i = icmp eq i8 %i.yd, %i.xe
  %or.cond83.i.i = or i1 %.not80.i.i, %.not81.i.i
  br i1 %or.cond83.i.i, label %.thread.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ye = getelementptr inbounds nuw i8, ptr %i.us, i64 80
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ts, i64 80
  %i.yg = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.yh = call i32 @errcode(i32 noundef 17064068) #15 ; 0 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8
  %i.yk = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.115, ptr noundef %i.yj) #15 ; 0 uses
  %i.yl = load i8, ptr %i.ye, align 8
  %i.ym = icmp eq i8 %i.yl, 115
  %i.yn = select i1 %i.ym, ptr @.str.117, ptr @.str.118
  %i.yo = load i8, ptr %i.yf, align 8
  %i.yp = icmp eq i8 %i.yo, 115
  %i.yq = select i1 %i.yp, ptr @.str.117, ptr @.str.118
  %i.yr = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.116, ptr noundef nonnull %i.yn, ptr noundef nonnull %i.yq) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3445, ptr noundef nonnull @__func__.MergeChildAttribute) #15
  unreachable

.thread.i.i:                                      ; preds = %bb.en, %..thread_crit_edge.i.i
  %i.ys = phi ptr [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %i.xg, %bb.en ] ; 2 uses
  %.not82.i.i = icmp eq ptr %i.ys, null
  br i1 %.not82.i.i, label %MergeChildAttribute.exit.i, label %bb.ep

bb.ep:                                            ; preds = %.thread.i.i
  %i.yt = getelementptr inbounds nuw i8, ptr %i.us, i64 48
  store ptr %i.ys, ptr %i.yt, align 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ts, i64 56
  %i.yv = load ptr, ptr %i.yu, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.us, i64 56
  store ptr %i.yv, ptr %i.yw, align 8
  br label %MergeChildAttribute.exit.i

MergeChildAttribute.exit.i:                       ; preds = %bb.ep, %.thread.i.i
  %i.yx = getelementptr inbounds nuw i8, ptr %i.us, i64 34
  store i8 1, ptr %i.yx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.eq

findAttrByName.exit409.thread.i:                  ; preds = %bb.dl, %.lr.ph.i402.i, %.lr.ph670
  %i.yy = call ptr @lappend(ptr noundef %.4756.i669, ptr noundef %i.ts) #15
  br label %bb.eq

bb.eq:                                            ; preds = %findAttrByName.exit409.thread.i, %MergeChildAttribute.exit.i
  %.5.i = phi ptr [ %.4756.i669, %MergeChildAttribute.exit.i ], [ %i.yy, %findAttrByName.exit409.thread.i ] ; 3 uses
  %i.yz = load i32, ptr %i.gd, align 4
  %i.za = sext i32 %i.yz to i64
  %i.zb = icmp slt i64 %indvars.iv.next966.i, %i.za
  br i1 %i.zb, label %.lr.ph670, label %.critedge381.i

bb.er:                                            ; preds = %list_length.exit411.i
  %i.zc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.zd = call i32 @errcode(i32 noundef 17039621) #15 ; 0 uses
  %i.ze = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.95, i32 noundef 1600) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3090, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

list_length.exit411.thread.i:                     ; preds = %.lr.ph742.i, %list_length.exit411.i, %.critedge381.i, %.critedge379.i, %.critedge424.i
  %.0309.lcssa1020.i = phi i1 [ %.us-phi714.i, %.critedge379.i ], [ %.us-phi714.i, %list_length.exit411.i ], [ %.us-phi714.i, %.critedge381.i ], [ false, %.critedge424.i ], [ false, %.lr.ph742.i ]
  %.0312.lcssa1019.i = phi ptr [ %.us-phi735.i, %.critedge379.i ], [ %.us-phi735.i, %list_length.exit411.i ], [ %.us-phi735.i, %.critedge381.i ], [ null, %.critedge424.i ], [ null, %.lr.ph742.i ]
  %.0315.lcssa1018.i = phi ptr [ %.3318.i, %.critedge379.i ], [ %.3318.i, %list_length.exit411.i ], [ %.3318.i, %.critedge381.i ], [ null, %.critedge424.i ], [ null, %.lr.ph742.i ]
  %.4327.i = phi ptr [ %spec.select.i, %.critedge379.i ], [ %.4.lcssa1031.i, %list_length.exit411.i ], [ null, %.critedge381.i ], [ %spec.select.i, %.critedge424.i ], [ %spec.select.i, %.lr.ph742.i ]
  %.4327.fr.i = freeze ptr %.4327.i               ; 8 uses
  %.not348422.not.i = icmp ne ptr %.0323.lcssa.i, null
  %or.cond.not1271.i = and i1 %i.do, %.not348422.not.i
  br i1 %or.cond.not1271.i, label %.lr.ph796.i, label %.critedge383.i

.lr.ph796.i:                                      ; preds = %list_length.exit411.thread.i
  %i.zf = getelementptr inbounds nuw i8, ptr %.0323.lcssa.i, i64 4 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.0323.lcssa.i, i64 16 ; 2 uses
  %.not353.i = icmp eq ptr %.4327.fr.i, null
  %i.zh = getelementptr inbounds nuw i8, ptr %.4327.fr.i, i64 4 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.4327.fr.i, i64 16
  %i.zj = load i32, ptr %i.zf, align 4
  %i.zk = icmp sgt i32 %i.zj, 0                   ; 2 uses
  br i1 %.not353.i, label %.lr.ph796.split.us.split.us.i, label %.lr.ph796.split.split.i.preheader

.lr.ph796.split.split.i.preheader:                ; preds = %.lr.ph796.i
  br i1 %i.zk, label %.lr.ph771.i.preheader, label %.critedge383.i

.lr.ph771.i.preheader:                            ; preds = %.lr.ph796.split.split.i.preheader
  %.pre930 = load i32, ptr %i.zh, align 4
  br label %.lr.ph771.i

.lr.ph796.split.us.split.us.i:                    ; preds = %.lr.ph796.i
  br i1 %i.zk, label %.split799.us.i, label %MergeAttributes.exit

.split799.us.i:                                   ; preds = %.lr.ph796.split.us.split.us.i
  %i.zl = load ptr, ptr %i.zg, align 8
  %i.zm = load ptr, ptr %i.zl, align 8
  br label %.split799.i

.lr.ph796.split.split.i:                          ; preds = %..critedge385_crit_edge773.split.i
  %indvars.iv.next973.i.a = add nuw nsw i64 %indvars.iv972.i673, 1 ; 2 uses
  %i.zn = load i32, ptr %i.zf, align 4
  %i.zo = sext i32 %i.zn to i64
  %i.zp = icmp slt i64 %indvars.iv.next973.i.a, %i.zo
  br i1 %i.zp, label %.lr.ph771.i, label %.critedge383.i

.lr.ph771.i:                                      ; preds = %.lr.ph771.i.preheader, %.lr.ph796.split.split.i
  %i.zq = phi i32 [ %i.abs, %.lr.ph796.split.split.i ], [ %.pre930, %.lr.ph771.i.preheader ] ; 3 uses
  %indvars.iv972.i673 = phi i64 [ %indvars.iv.next973.i.a, %.lr.ph796.split.split.i ], [ 0, %.lr.ph771.i.preheader ] ; 2 uses
  %i.zr = load ptr, ptr %i.zg, align 8
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %indvars.iv972.i673
  %i.zt = load ptr, ptr %i.zs, align 8            ; 6 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8 ; 5 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 48 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 80 ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 64
  %i.zy = icmp sgt i32 %i.zq, 0
  br i1 %i.zy, label %.lr.ph793.i, label %.split799.i

.lr.ph793.i:                                      ; preds = %.lr.ph771.i, %bb.ez
  %i.zz = phi i32 [ %i.abs, %bb.ez ], [ %i.zq, %.lr.ph771.i ] ; 2 uses
  %i.aaa = phi i32 [ %i.abt, %bb.ez ], [ %i.zq, %.lr.ph771.i ] ; 2 uses
  %indvars.iv970.i = phi i64 [ %indvars.iv.next971.i, %bb.ez ], [ 0, %.lr.ph771.i ] ; 2 uses
  %.0284769792.i = phi i1 [ %.1.i, %bb.ez ], [ false, %.lr.ph771.i ]
  %i.aab = load ptr, ptr %i.zi, align 8
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %indvars.iv970.i
  %i.aad = load ptr, ptr %i.aac, align 8          ; 5 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8
  %i.aag = load ptr, ptr %i.zu, align 8
  %i.aah = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aaf, ptr noundef nonnull dereferenceable(1) %i.aag) #17
  %i.aai = icmp eq i32 %i.aah, 0
  br i1 %i.aai, label %bb.es, label %bb.ez

..critedge385_crit_edge773.split.i:               ; preds = %bb.ez
  br i1 %.1.i, label %.lr.ph796.split.split.i, label %.split799.i

bb.es:                                            ; preds = %.lr.ph793.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aad, i64 80
  %i.aak = load i8, ptr %i.aaj, align 8           ; 2 uses
  %.not355.i = icmp eq i8 %i.aak, 0
  br i1 %.not355.i, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aal = load ptr, ptr %i.zv, align 8           ; 2 uses
  %.not357.i = icmp eq ptr %i.aal, null
  br i1 %.not357.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aam = load i8, ptr %i.zw, align 8
  %.not358.i = icmp eq i8 %i.aam, 0
  br i1 %.not358.i, label %.split777.i, label %bb.ev

.split777.i:                                      ; preds = %bb.eu
  %i.aan = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.aao = call i32 @errcode(i32 noundef 17064068) #15 ; 0 uses
  %i.aap = load ptr, ptr %i.zu, align 8
  %i.aaq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.111, ptr noundef %i.aap) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3127, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.aar = load i8, ptr %i.zx, align 8
  %.not359.i = icmp eq i8 %i.aar, 0
  br i1 %.not359.i, label %bb.ex, label %.split780.i

.split780.i:                                      ; preds = %bb.ev
  %i.aas = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.aat = call i32 @errcode(i32 noundef 17064068) #15 ; 0 uses
  %i.aau = load ptr, ptr %i.zu, align 8
  %i.aav = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.112, ptr noundef %i.aau) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3132, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

bb.ew:                                            ; preds = %bb.es
  %i.aaw = load i8, ptr %i.zw, align 8
  %.not356.i = icmp eq i8 %i.aaw, 0
  br i1 %.not356.i, label %..thread420_crit_edge.i, label %.split788.i

..thread420_crit_edge.i:                          ; preds = %bb.ew
  %.pre978.i = load ptr, ptr %i.zv, align 8
  br label %.thread420.i

.split788.i:                                      ; preds = %bb.ew
  %i.aax = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.aay = call i32 @errcode(i32 noundef 17064068) #15 ; 0 uses
  %i.aaz = load ptr, ptr %i.zu, align 8
  %i.aba = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.113, ptr noundef %i.aaz) #15 ; 0 uses
  %i.abb = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.114) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3141, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

bb.ex:                                            ; preds = %bb.ev
  %i.abc = load i8, ptr %i.zw, align 8            ; 2 uses
  %.not361.i = icmp eq i8 %i.abc, 0
  %.not362.i = icmp eq i8 %i.aak, %i.abc
  %or.cond386.i = or i1 %.not361.i, %.not362.i
  br i1 %or.cond386.i, label %.thread420.i, label %.split783.i

.split783.i:                                      ; preds = %bb.ex
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aad, i64 80
  %i.abe = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.abf = call i32 @errcode(i32 noundef 17064068) #15 ; 0 uses
  %i.abg = load ptr, ptr %i.zu, align 8
  %i.abh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.115, ptr noundef %i.abg) #15 ; 0 uses
  %i.abi = load i8, ptr %i.abd, align 8
  %i.abj = icmp eq i8 %i.abi, 115
  %i.abk = select i1 %i.abj, ptr @.str.117, ptr @.str.118
  %i.abl = load i8, ptr %i.zw, align 8
  %i.abm = icmp eq i8 %i.abl, 115
  %i.abn = select i1 %i.abm, ptr @.str.117, ptr @.str.118
  %i.abo = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.116, ptr noundef nonnull %i.abk, ptr noundef nonnull %i.abn) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3151, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

.thread420.i:                                     ; preds = %bb.ex, %..thread420_crit_edge.i
  %i.abp = phi ptr [ %.pre978.i, %..thread420_crit_edge.i ], [ %i.aal, %bb.ex ] ; 2 uses
  %.not363.i = icmp eq ptr %i.abp, null
  br i1 %.not363.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.thread420.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aad, i64 48
  store ptr %i.abp, ptr %i.abq, align 8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aad, i64 56
  store ptr null, ptr %i.abr, align 8
  %.pre979.i = load i32, ptr %i.zh, align 4       ; 2 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.thread420.i, %.lr.ph793.i
  %i.abs = phi i32 [ %.pre979.i, %bb.ey ], [ %i.zz, %.thread420.i ], [ %i.zz, %.lr.ph793.i ] ; 2 uses
  %i.abt = phi i32 [ %.pre979.i, %bb.ey ], [ %i.aaa, %.thread420.i ], [ %i.aaa, %.lr.ph793.i ] ; 2 uses
  %.1.i = phi i1 [ true, %bb.ey ], [ true, %.thread420.i ], [ %.0284769792.i, %.lr.ph793.i ] ; 2 uses
  %indvars.iv.next971.i = add nuw nsw i64 %indvars.iv970.i, 1 ; 2 uses
  %i.abu = sext i32 %i.abt to i64
  %i.abv = icmp slt i64 %indvars.iv.next971.i, %i.abu
  br i1 %i.abv, label %.lr.ph793.i, label %..critedge385_crit_edge773.split.i

.split799.i:                                      ; preds = %..critedge385_crit_edge773.split.i, %.lr.ph771.i, %.split799.us.i
  %.us-phi800.i = phi ptr [ %i.zm, %.split799.us.i ], [ %i.zt, %.lr.ph771.i ], [ %i.zt, %..critedge385_crit_edge773.split.i ]
  %i.abw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.abx = call i32 @errcode(i32 noundef 50360452) #15 ; 0 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.us-phi800.i, i64 8
  %i.abz = load ptr, ptr %i.aby, align 8
  %i.aca = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.96, ptr noundef %i.abz) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3177, ptr noundef nonnull @__func__.MergeAttributes) #15
  unreachable

end_hunk_0
begin_hunk_1_@DefineRelation:bb.a
  store i32 2, ptr %i.ads, align 8
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  store i32 0, ptr %i.adt, align 4
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  store ptr null, ptr %i.adu, align 8
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  store i16 %indvars, ptr %i.adv, align 8
  %i.adw = load ptr, ptr %i.adq, align 8
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ads, i64 24
  store ptr %i.adw, ptr %i.adx, align 8
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ads, i64 32
  store i8 1, ptr %i.ady, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ads, i64 33
  store i8 0, ptr %i.adz, align 1
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ads, i64 34
  store i8 1, ptr %i.aea, align 2
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ads, i64 36
  store i16 0, ptr %i.aeb, align 4
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ads, i64 38
  store i8 0, ptr %i.aec, align 2
  %i.aed = call ptr @lappend(ptr noundef %.0274675690, ptr noundef nonnull %i.ads) #15
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg, %bb.fe
  %.1277 = phi ptr [ %i.adp, %bb.fe ], [ %.0276674691, %bb.fg ], [ %.0276674691, %bb.ff ] ; 2 uses
  %.1275 = phi ptr [ %.0274675690, %bb.fe ], [ %i.aed, %bb.fg ], [ %.0274675690, %bb.ff ] ; 2 uses
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 1 ; 2 uses
  %i.aee = load i32, ptr %i.acx, align 4
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = icmp slt i64 %indvars.iv.next914, %i.aef
  br i1 %i.aeg, label %.lr.ph692, label %.critedge337

bb.fi:                                            ; preds = %.critedge337
  %i.aeh = icmp eq i8 %.0369, 114
  %i.aei = icmp eq i8 %.0369, 116
  %or.cond = or i1 %i.aeh, %i.aei
  %i.aej = icmp eq i8 %.0369, 109
  %or.cond5 = or i1 %i.aej, %or.cond
  switch i8 %.0369, label %bb.fn [
    i8 116, label %bb.fj
    i8 114, label %bb.fj
    i8 112, label %bb.fj
    i8 109, label %bb.fj
  ]

bb.fj:                                            ; preds = %bb.fi, %bb.fi, %bb.fi, %bb.fi
  %i.aek = load ptr, ptr %i.bc, align 8
  %.not313 = icmp eq ptr %i.aek, null
  br i1 %.not313, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ael = getelementptr i8, ptr %.0264.lcssa, i64 16
  %.0264.val341 = load ptr, ptr %i.ael, align 8
  %i.aem = load i32, ptr %.0264.val341, align 8
  %i.aen = call i32 @get_rel_relam(i32 noundef %i.aem) #15
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.0265 = phi i32 [ %i.aen, %bb.fk ], [ 0, %bb.fj ] ; 2 uses
  %i.aeo = icmp eq i32 %.0265, 0
  %or.cond16.not = select i1 %or.cond5, i1 %i.aeo, i1 false
  br i1 %or.cond16.not, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aep = load ptr, ptr @default_table_access_method, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge337, %bb.fm
  %.sink = phi ptr [ %i.aep, %bb.fm ], [ %i.adi, %.critedge337 ]
  %i.aeq = call i32 @get_table_am_oid(ptr noundef %.sink, i1 noundef zeroext false) #15
  br label %bb.fn

bb.fn:                                            ; preds = %.sink.split, %bb.fi, %bb.fl
  %.1266 = phi i32 [ 0, %bb.fi ], [ %.0265, %bb.fl ], [ %i.aeq, %.sink.split ]
  %i.aer = call ptr @list_concat(ptr noundef %.0274.lcssa, ptr noundef %.0315.lcssa1018.i) #15
  %i.aes = load ptr, ptr %i.s, align 8
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 33
  %i.aeu = load i8, ptr %i.aet, align 1
  %i.aev = load i32, ptr %i.x, align 8
  %i.aew = load i8, ptr @allowSystemTableMods, align 1, !range !6, !noundef !7
  %i.aex = trunc nuw i8 %i.aew to i1
  %i.aey = call i32 @heap_create_with_catalog(ptr noundef nonnull %i.m, i32 noundef %i.at, i32 noundef %.1, i32 noundef 0, i32 noundef 0, i32 noundef %.0267, i32 noundef %.0258, i32 noundef %.1266, ptr noundef %i.acv, ptr noundef %i.aer, i8 noundef signext %.0369, i8 noundef signext %i.aeu, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %i.aev, i64 noundef %i.cz, i1 noundef zeroext true, i1 noundef zeroext %i.aex, i1 noundef zeroext false, i32 noundef 0, ptr noundef %3) #15 ; 5 uses
  call void @CommandCounterIncrement() #15
  %i.aez = call ptr @relation_open(i32 noundef %i.aey, i32 noundef 8) #15 ; 17 uses
  %.not315 = icmp eq ptr %.0276.lcssa, null
  br i1 %.not315, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.afa = call ptr @AddRelationNewConstraints(ptr noundef %i.aez, ptr noundef nonnull %.0276.lcssa, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %4) #15 ; 0 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  call void @CommandCounterIncrement() #15
  %i.afb = load ptr, ptr %i.bc, align 8
  %.not316 = icmp eq ptr %i.afb, null
  br i1 %.not316, label %bb.fw, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afc = getelementptr i8, ptr %.0264.lcssa, i64 16
  %.0264.val340 = load ptr, ptr %i.afc, align 8
  %i.afd = load i32, ptr %.0264.val340, align 8
  %i.afe = call ptr @table_open(i32 noundef %i.afd, i32 noundef 0) #15 ; 7 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 56 ; 2 uses
  %i.afg = load ptr, ptr %i.aff, align 8
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 119
  %i.afi = load i8, ptr %i.afh, align 1
  %.not317 = icmp eq i8 %i.afi, 112
  br i1 %.not317, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.afj = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.afk = call i32 @errcode(i32 noundef 117833860) #15 ; 0 uses
  %i.afl = load ptr, ptr %i.aff, align 8
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 4
  %i.afn = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.afm) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1191, ptr noundef nonnull @__func__.DefineRelation) #15
  unreachable

bb.fs:                                            ; preds = %bb.fq
  %i.afo = call ptr @RelationGetPartitionDesc(ptr noundef nonnull %i.afe, i1 noundef zeroext true) #15
  %i.afp = call i32 @get_default_oid_from_partdesc(ptr noundef %i.afo) #15 ; 2 uses
  %.not318 = icmp eq i32 %i.afp, 0                ; 2 uses
  br i1 %.not318, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.afq = call ptr @table_open(i32 noundef %i.afp, i32 noundef 8) #15
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.0263 = phi ptr [ %i.afq, %bb.ft ], [ null, %bb.fs ] ; 2 uses
  %i.afr = call ptr @make_parsestate(ptr noundef null) #15 ; 5 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  store ptr %4, ptr %i.afs, align 8
  %i.aft = call ptr @addRangeTableEntryForRelation(ptr noundef %i.afr, ptr noundef %i.aez, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @addNSItemToQuery(ptr noundef %i.afr, ptr noundef %i.aft, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #15
  %i.afu = load ptr, ptr %i.bc, align 8
  %i.afv = call ptr @transformPartitionBound(ptr noundef %i.afr, ptr noundef nonnull %i.afe, ptr noundef %i.afu) #15 ; 3 uses
  call void @check_new_partition_bound(ptr noundef nonnull %i.m, ptr noundef nonnull %i.afe, ptr noundef %i.afv, ptr noundef %i.afr) #15
  br i1 %.not318, label %.thread374, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @check_default_partition_contents(ptr noundef nonnull %i.afe, ptr noundef %.0263, ptr noundef %i.afv) #15
  call void @table_close(ptr noundef %.0263, i32 noundef 0) #15
  br label %.thread374

.thread374:                                       ; preds = %bb.fu, %bb.fv
  call void @StorePartitionBound(ptr noundef %i.aez, ptr noundef nonnull %i.afe, ptr noundef %i.afv) #15
  call void @table_close(ptr noundef nonnull %i.afe, i32 noundef 0) #15
  %.in.pre = load ptr, ptr %i.bc, align 8
  %i.afw = icmp eq ptr %.in.pre, null
  %i.afx = select i1 %i.afw, i32 110, i32 97
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fp
  br i1 %.not343.i, label %StoreCatalogInheritance.exit, label %bb.fx

bb.fx:                                            ; preds = %.thread374, %bb.fw
  %.in = phi i32 [ %i.afx, %.thread374 ], [ 110, %bb.fw ]
  %i.afy = call ptr @table_open(i32 noundef 2611, i32 noundef 3) #15
  %i.afz = getelementptr inbounds nuw i8, ptr %.0264.lcssa, i64 4 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 4
  %.not15.i = icmp sgt i32 %i.aga, 0
  br i1 %.not15.i, label %.lr.ph.i343, label %.critedge.i

.lr.ph.i343:                                      ; preds = %bb.fx
  %i.agb = getelementptr inbounds nuw i8, ptr %.0264.lcssa, i64 16
  %i.agc = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.agd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.age = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.agf = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.fy

bb.fy:                                            ; preds = %StoreCatalogInheritance1.exit.i, %.lr.ph.i343
  %indvars.iv.i344 = phi i64 [ 0, %.lr.ph.i343 ], [ %indvars.iv.next.i345, %StoreCatalogInheritance1.exit.i ] ; 2 uses
  %.01316.i = phi i32 [ 1, %.lr.ph.i343 ], [ %i.agk, %StoreCatalogInheritance1.exit.i ] ; 2 uses
  %i.agg = load ptr, ptr %i.agb, align 8
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %indvars.iv.i344
  %i.agi = load i32, ptr %i.agh, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @StoreSingleInheritance(i32 noundef %i.aey, i32 noundef %i.agi, i32 noundef %.01316.i) #15
  store i32 1259, ptr %6, align 4
  store i32 %i.agi, ptr %i.agc, align 4
  store i32 0, ptr %i.agd, align 4
  store i32 1259, ptr %5, align 4
  store i32 %i.aey, ptr %i.age, align 4
  store i32 0, ptr %i.agf, align 4
  call void @recordDependencyOn(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %.in) #15
  %i.agj = load ptr, ptr @object_access_hook, align 8
  %.not.i.i = icmp eq ptr %i.agj, null
  br i1 %.not.i.i, label %StoreCatalogInheritance1.exit.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @RunObjectPostAlterHook(i32 noundef 2611, i32 noundef %i.aey, i32 noundef 0, i32 noundef %i.agi, i1 noundef zeroext false) #15
  br label %StoreCatalogInheritance1.exit.i

StoreCatalogInheritance1.exit.i:                  ; preds = %bb.fz, %bb.fy
  call void @SetRelationHasSubclass(i32 noundef %i.agi, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.agk = add nuw nsw i32 %.01316.i, 1
  %indvars.iv.next.i345 = add nuw nsw i64 %indvars.iv.i344, 1 ; 2 uses
  %i.agl = load i32, ptr %i.afz, align 4
  %i.agm = sext i32 %i.agl to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i345, %i.agm
  br i1 %.not.i, label %bb.fy, label %.critedge.i, !llvm.loop !12

.critedge.i:                                      ; preds = %StoreCatalogInheritance1.exit.i, %bb.fx
  call void @table_close(ptr noundef %i.afy, i32 noundef 3) #15
  br label %StoreCatalogInheritance.exit

StoreCatalogInheritance.exit:                     ; preds = %bb.fw, %.critedge.i
  br i1 %.not296, label %bb.ga, label %bb.hq

bb.ga:                                            ; preds = %StoreCatalogInheritance.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  %i.agn = call ptr @make_parsestate(ptr noundef null) #15 ; 5 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  store ptr %4, ptr %i.ago, align 8
  %i.agp = load ptr, ptr %i.af, align 8           ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 8 ; 3 uses
  %i.agr = load ptr, ptr %i.agq, align 8          ; 2 uses
  %.not.i346 = icmp eq ptr %i.agr, null
  br i1 %.not.i346, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.ga
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 4
  %i.agt = load i32, ptr %i.ags, align 4          ; 2 uses
  %i.agu = icmp sgt i32 %i.agt, 32
  br i1 %i.agu, label %bb.gb, label %list_length.exit.thread

bb.gb:                                            ; preds = %list_length.exit
  %i.agv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.agw = call i32 @errcode(i32 noundef 17039621) #15 ; 0 uses
  %i.agx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10, i32 noundef 32) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1285, ptr noundef nonnull @__func__.DefineRelation) #15
  unreachable

list_length.exit.thread:                          ; preds = %bb.ga, %list_length.exit
  %i.agy = phi i32 [ %i.agt, %list_length.exit ], [ 0, %bb.ga ]
  %i.agz = call noundef ptr @palloc0(i64 noundef 24) #15 ; 7 uses
  store i32 101, ptr %i.agz, align 4
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agp, i64 4 ; 2 uses
  %i.ahb = load i32, ptr %i.aha, align 4
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agz, i64 4 ; 2 uses
  store i32 %i.ahb, ptr %i.ahc, align 4
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agz, i64 8 ; 4 uses
  store ptr null, ptr %i.ahd, align 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  %i.ahf = load i32, ptr %i.ahe, align 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  store i32 %i.ahf, ptr %i.ahg, align 8
  %i.ahh = load i32, ptr %i.aha, align 4
  %i.ahi = icmp eq i32 %i.ahh, 108
  br i1 %i.ahi, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %list_length.exit.thread
  %i.ahj = load ptr, ptr %i.agq, align 8          ; 2 uses
  %.not.i.i351 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i351, label %list_length.exit.thread.i, label %list_length.exit.i352

list_length.exit.i352:                            ; preds = %bb.gc
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4
  %i.ahl = load i32, ptr %i.ahk, align 4
  %.not.i353 = icmp eq i32 %i.ahl, 1
  br i1 %.not.i353, label %bb.gd, label %list_length.exit.thread.i

list_length.exit.thread.i:                        ; preds = %list_length.exit.i352, %bb.gc
  %i.ahm = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.ahn = call i32 @errcode(i32 noundef 117833860) #15 ; 0 uses
  %i.aho = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.531) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 20392, ptr noundef nonnull @__func__.transformPartitionSpec) #15
  unreachable

bb.gd:                                            ; preds = %list_length.exit.i352, %list_length.exit.thread
  %i.ahp = call ptr @make_parsestate(ptr noundef null) #15 ; 4 uses
  %i.ahq = call ptr @addRangeTableEntryForRelation(ptr noundef %i.ahp, ptr noundef %i.aez, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #15
  call void @addNSItemToQuery(ptr noundef %i.ahp, ptr noundef %i.ahq, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #15
  %i.ahr = load ptr, ptr %i.agq, align 8          ; 3 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4 ; 2 uses
  %.not30.i = icmp eq ptr %i.ahr, null
  br i1 %.not30.i, label %transformPartitionSpec.exit, label %.lr.ph.i347

.lr.ph.i347:                                      ; preds = %bb.gd
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16
  %i.ahu = load i32, ptr %i.ahs, align 4
  %i.ahv = icmp sgt i32 %i.ahu, 0
  br i1 %i.ahv, label %.lr.ph37.i, label %transformPartitionSpec.exit

.lr.ph37.i:                                       ; preds = %.lr.ph.i347, %bb.gf
  %indvars.iv.i349 = phi i64 [ %indvars.iv.next.i350, %bb.gf ], [ 0, %.lr.ph.i347 ] ; 2 uses
  %i.ahw = load ptr, ptr %i.aht, align 8
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.ahw, i64 %indvars.iv.i349
  %i.ahy = load ptr, ptr %i.ahx, align 8          ; 3 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  %i.aia = load ptr, ptr %i.ahz, align 8
  %.not32.i = icmp eq ptr %i.aia, null
  br i1 %.not32.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph37.i
  %i.aib = call ptr @copyObjectImpl(ptr noundef nonnull %i.ahy) #15 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16 ; 2 uses
  %i.aid = load ptr, ptr %i.aic, align 8
  %i.aie = call ptr @transformExpr(ptr noundef %i.ahp, ptr noundef %i.aid, i32 noundef 41) #15 ; 2 uses
  store ptr %i.aie, ptr %i.aic, align 8
  call void @assign_expr_collations(ptr noundef %i.ahp, ptr noundef %i.aie) #15
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.lr.ph37.i
  %.0.i = phi ptr [ %i.aib, %bb.ge ], [ %i.ahy, %.lr.ph37.i ]
  %i.aif = load ptr, ptr %i.ahd, align 8
  %i.aig = call ptr @lappend(ptr noundef %i.aif, ptr noundef nonnull %.0.i) #15
  store ptr %i.aig, ptr %i.ahd, align 8
  %indvars.iv.next.i350 = add nuw nsw i64 %indvars.iv.i349, 1 ; 2 uses
  %i.aih = load i32, ptr %i.ahs, align 4
  %i.aii = sext i32 %i.aih to i64
  %i.aij = icmp slt i64 %indvars.iv.next.i350, %i.aii
  br i1 %i.aij, label %.lr.ph37.i, label %transformPartitionSpec.exit

transformPartitionSpec.exit:                      ; preds = %bb.gf, %bb.gd, %.lr.ph.i347
  store ptr %i.agz, ptr %i.af, align 8
  %i.aik = load ptr, ptr %i.ahd, align 8          ; 3 uses
  %.not.i354 = icmp eq ptr %i.aik, null
  br i1 %.not.i354, label %ComputePartitionAttrs.exit, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %transformPartitionSpec.exit
  %i.ail = load i32, ptr %i.ahc, align 4
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aik, i64 4 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aik, i64 16
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aez, i64 72 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aez, i64 56
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aez, i64 64
  %i.air = icmp eq i32 %i.ail, 104                ; 3 uses
  %..i = select i1 %i.air, i32 405, i32 403       ; 2 uses
  %i.ais = select i1 %i.air, ptr @.str.543, ptr @.str.545
  %i.ait = load i32, ptr %i.aim, align 4
  %i.aiu = icmp sgt i32 %i.ait, 0
  br i1 %i.aiu, label %.lr.ph701, label %ComputePartitionAttrs.exit

.lr.ph701:                                        ; preds = %.lr.ph140.i, %bb.hp
  %indvars.iv.i355699 = phi i64 [ %indvars.iv.next.i358, %bb.hp ], [ 0, %.lr.ph140.i ] ; 8 uses
  %.0364698 = phi ptr [ %.1365, %bb.hp ], [ null, %.lr.ph140.i ] ; 3 uses
  %i.aiv = load ptr, ptr %i.ain, align 8
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.aiv, i64 %indvars.iv.i355699
  %i.aix = load ptr, ptr %i.aiw, align 8          ; 11 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 8
  %i.aiz = load ptr, ptr %i.aiy, align 8          ; 2 uses
  %.not100.i = icmp eq ptr %i.aiz, null
  br i1 %.not100.i, label %bb.gn, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph701
  %i.aja = load i32, ptr %i.aio, align 8
  %i.ajb = call ptr @SearchSysCacheAttName(i32 noundef %i.aja, ptr noundef nonnull %i.aiz) #15 ; 3 uses
  %.not102.i = icmp eq ptr %i.ajb, null
  br i1 %.not102.i, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aix, i64 8
  %i.ajd = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.aje = call i32 @errcode(i32 noundef 50360452) #15 ; 0 uses
  %i.ajf = load ptr, ptr %i.ajc, align 8
  %i.ajg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.532, ptr noundef %i.ajf) #15 ; 0 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aix, i64 40
  %i.aji = load i32, ptr %i.ajh, align 8
  %i.ajj = call i32 @parser_errposition(ptr noundef %i.agn, i32 noundef %i.aji) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 20460, ptr noundef nonnull @__func__.ComputePartitionAttrs) #15
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.ajk = getelementptr i8, ptr %i.ajb, i64 16
  %.val.i = load ptr, ptr %i.ajk, align 8         ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.ajm = load i8, ptr %i.ajl, align 2
  %i.ajn = zext i8 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ajn ; 4 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 74
  %i.ajq = load i16, ptr %i.ajp, align 2          ; 2 uses
  %i.ajr = icmp slt i16 %i.ajq, 1
  br i1 %i.ajr, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.aix, i64 8
  %i.ajt = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.aju = call i32 @errcode(i32 noundef 117833860) #15 ; 0 uses
  %i.ajv = load ptr, ptr %i.ajs, align 8
  %i.ajw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.533, ptr noundef %i.ajv) #15 ; 0 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aix, i64 40
  %i.ajy = load i32, ptr %i.ajx, align 8
  %i.ajz = call i32 @parser_errposition(ptr noundef %i.agn, i32 noundef %i.ajy) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 20468, ptr noundef nonnull @__func__.ComputePartitionAttrs) #15
  unreachable

bb.gk:                                            ; preds = %bb.gi
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajo, i64 90
  %i.akb = load i8, ptr %i.aka, align 2
  %.not103.i = icmp eq i8 %i.akb, 0
  br i1 %.not103.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
end_hunk_1
