Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/arrayfuncs?download=true
inline.NumInlined: 302
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@array_set_element:bb.a

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph208.i.epil, %.epilog-lcssa
  %i.hi = load i32, ptr %i.fh, align 4
  %i.hj = add i32 %i.hi, %.0176185.i
  store i32 %i.hj, ptr %i.fh, align 4
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.i, %bb.as
  %i.hk = load i8, ptr %i.bp, align 2, !range !8, !noundef !9
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %._crit_edge221.i, label %bb.aw

._crit_edge221.i:                                 ; preds = %bb.av
  %.pre222.i = sext i32 %i.dw to i64
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.hm = icmp eq ptr %.2141.i, null
  %.pre223.i = sext i32 %i.dw to i64              ; 5 uses
  br i1 %i.hm, label %._crit_edge220.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = getelementptr inbounds i8, ptr %.2141.i, i64 %.pre223.i
  %i.ho = load i8, ptr %i.hn, align 1, !range !8, !noundef !9
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %.thread191.i, label %._crit_edge220.i

.thread191.i:                                     ; preds = %bb.ax
  %i.hq = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre223.i
  store i64 %.0.i229, ptr %i.hq, align 8
  br label %bb.az

._crit_edge220.i:                                 ; preds = %bb.ax, %bb.aw
  %i.hr = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre223.i
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = inttoptr i64 %i.hs to ptr
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge220.i, %._crit_edge221.i
  %.pre-phi.i = phi i64 [ %.pre222.i, %._crit_edge221.i ], [ %.pre223.i, %._crit_edge220.i ] ; 2 uses
  %.0131.i = phi ptr [ null, %._crit_edge221.i ], [ %i.ht, %._crit_edge220.i ] ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre-phi.i
  store i64 %.0.i229, ptr %i.hu, align 8
  %.not160.i = icmp eq ptr %.2141.i, null
  br i1 %.not160.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread191.i
  %i.hv = phi i64 [ %.pre223.i, %.thread191.i ], [ %.pre-phi.i, %bb.ay ]
  %.0131194.i = phi ptr [ null, %.thread191.i ], [ %.0131.i, %bb.ay ]
  %i.hw = getelementptr inbounds i8, ptr %.2141.i, i64 %i.hv
  store i8 %i.g, ptr %i.hw, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0131195.i = phi ptr [ %.0131194.i, %bb.az ], [ %.0131.i, %bb.ay ] ; 4 uses
  %.not161.i = icmp eq ptr %.0131195.i, null
  br i1 %.not161.i, label %array_set_element_expanded.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hx = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = icmp ult ptr %.0131195.i, %i.hy
  br i1 %i.hz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ia = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ib = load ptr, ptr %i.ia, align 8
  %.not162.i = icmp ult ptr %.0131195.i, %i.ib
  br i1 %.not162.i, label %array_set_element_expanded.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @pfree(ptr noundef nonnull %.0131195.i) #16
  br label %array_set_element_expanded.exit

array_set_element_expanded.exit:                  ; preds = %bb.ba, %bb.bc, %bb.bd
  %i.ic = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %array_bitmap_copy.exit

VARATT_IS_EXTERNAL_EXPANDED.exit.thread:          ; preds = %bb.o, %VARATT_IS_EXTERNAL_EXPANDED.exit
  %i.id = tail call ptr @pg_detoast_datum(ptr noundef nonnull %i.aq) #16 ; 9 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 5 uses
  %i.if = load i32, ptr %i.ie, align 4            ; 2 uses
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %.lr.ph334.preheader, label %bb.be

.lr.ph334.preheader:                              ; preds = %VARATT_IS_EXTERNAL_EXPANDED.exit.thread
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ik = shl nuw nsw i64 %i.ij, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 4 %2, i64 %i.ik, i1 false)
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph334, label %vector.body

vector.body:                                      ; preds = %.lr.ph334.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph334.preheader ] ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <4 x i32> splat (i32 1), ptr %i.il, align 16
  store <4 x i32> splat (i32 1), ptr %i.im, align 16
  %index.next = add nuw i64 %index, 8
  br label %vector.body, !llvm.loop !74

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %.lr.ph334
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %.lr.ph334 ], [ 0, %.lr.ph334.preheader ] ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv352
  store i32 1, ptr %i.in, align 4
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %exitcond356.not = icmp eq i64 %indvars.iv.next353, %i.ij
  br i1 %exitcond356.not, label %._crit_edge, label %.lr.ph334, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph334
  %i.io = call ptr @construct_md_array(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.ii, i32 noundef %6, i1 noundef zeroext %7, i8 noundef signext %8)
  br label %array_bitmap_copy.exit

bb.be:                                            ; preds = %VARATT_IS_EXTERNAL_EXPANDED.exit.thread
  %.not = icmp eq i32 %i.if, %1
  br i1 %.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ip = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.iq = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.ir = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2321, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.is = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 4 uses
  %i.it = zext nneg i32 %1 to i64                 ; 2 uses
  %i.iu = shl nuw nsw i64 %i.it, 2                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 4 %i.is, i64 %i.iu, i1 false)
  %i.iv = load i32, ptr %i.ie, align 4
  %i.iw = sext i32 %i.iv to i64
  %i.ix = shl nsw i64 %i.iw, 2
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 4 %i.iy, i64 %i.iu, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 4 uses
  %i.ja = load i32, ptr %i.iz, align 4
  %.not214 = icmp ne i32 %i.ja, 0
  %i.jb = or i1 %4, %.not214                      ; 3 uses
  %i.jc = icmp eq i32 %1, 1
  br i1 %i.jc, label %bb.bh, label %.lr.ph

bb.bh:                                            ; preds = %bb.bg
  %i.jd = load i32, ptr %2, align 4               ; 6 uses
  %i.je = load i32, ptr %i.f, align 16            ; 3 uses
  %i.jf = icmp slt i32 %i.jd, %i.je
  br i1 %i.jf, label %bb.bi, label %._crit_edge357

._crit_edge357:                                   ; preds = %bb.bh
  %.pre = load i32, ptr %i.e, align 16
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.jg = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.je, i32 %i.jd) ; 2 uses
  %i.jh = extractvalue { i32, i1 } %i.jg, 1
  %i.ji = extractvalue { i32, i1 } %i.jg, 0       ; 3 uses
  br i1 %i.jh, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jj = load i32, ptr %i.e, align 16
  %i.jk = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.jj, i32 %i.ji) ; 2 uses
  %i.jl = extractvalue { i32, i1 } %i.jk, 1
  %i.jm = extractvalue { i32, i1 } %i.jk, 0       ; 2 uses
  store i32 %i.jm, ptr %i.e, align 16
  br i1 %i.jl, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.jn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.jo = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.jp = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2347, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.bl:                                            ; preds = %bb.bj
  store i32 %i.jd, ptr %i.f, align 16
  %i.jq = icmp sgt i32 %i.ji, 1
  %spec.select = select i1 %i.jq, i1 true, i1 %i.jb
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge357, %bb.bl
  %i.jr = phi i32 [ %i.jd, %bb.bl ], [ %i.je, %._crit_edge357 ]
  %i.js = phi i32 [ %i.jm, %bb.bl ], [ %.pre, %._crit_edge357 ] ; 2 uses
  %.0295 = phi i32 [ %i.ji, %bb.bl ], [ 0, %._crit_edge357 ] ; 2 uses
  %.0191 = phi i1 [ %spec.select, %bb.bl ], [ %i.jb, %._crit_edge357 ] ; 2 uses
  %i.jt = add i32 %i.jr, %i.js                    ; 2 uses
  %.not216 = icmp slt i32 %i.jd, %i.jt
  br i1 %.not216, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ju = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.jd, i32 %i.jt) ; 2 uses
  %i.jv = extractvalue { i32, i1 } %i.ju, 1
  br i1 %i.jv, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jw = extractvalue { i32, i1 } %i.ju, 0
  %i.jx = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.jw, i32 1) ; 2 uses
  %i.jy = extractvalue { i32, i1 } %i.jx, 1
  %i.jz = extractvalue { i32, i1 } %i.jx, 0       ; 3 uses
  br i1 %i.jy, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ka = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.js, i32 %i.jz) ; 2 uses
  %i.kb = extractvalue { i32, i1 } %i.ka, 1
  %i.kc = extractvalue { i32, i1 } %i.ka, 0
  store i32 %i.kc, ptr %i.e, align 16
  br i1 %i.kb, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.kd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.ke = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.kf = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2362, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.kg = icmp sgt i32 %i.jz, 1
  %spec.select228 = select i1 %i.kg, i1 true, i1 %.0191
  %9 = icmp eq i32 %i.jz, 0
  br label %.loopexit

bb.bs:                                            ; preds = %bb.bt
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.it
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.bg, %bb.bs
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bs ], [ 0, %bb.bg ] ; 4 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ki = load i32, ptr %i.kh, align 4            ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.kk = load i32, ptr %i.kj, align 4            ; 2 uses
  %i.kl = icmp slt i32 %i.ki, %i.kk
  br i1 %i.kl, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.kn = load i32, ptr %i.km, align 4
  %i.ko = add i32 %i.kn, %i.kk
  %.not215 = icmp slt i32 %i.ki, %i.ko
  br i1 %.not215, label %bb.bs, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph
  %i.kp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.kq = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.kr = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2379, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

.loopexit:                                        ; preds = %bb.bs, %bb.br, %bb.bm
  %.1296 = phi i32 [ %.0295, %bb.bm ], [ %.0295, %bb.br ], [ 0, %bb.bs ] ; 3 uses
  %.0294 = phi i1 [ true, %bb.bm ], [ %9, %bb.br ], [ true, %bb.bs ] ; 3 uses
  %.1192 = phi i1 [ %.0191, %bb.bm ], [ %spec.select228, %bb.br ], [ %i.jb, %bb.bs ] ; 2 uses
  %i.ks = call i32 @ArrayGetNItems(i32 noundef %1, ptr noundef nonnull %i.e) #16 ; 2 uses
  call void @ArrayCheckBounds(i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  %i.kt = shl nuw nsw i32 %1, 3                   ; 2 uses
  br i1 %.1192, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.loopexit
  %i.ku = add i32 %i.ks, 7
  %i.kv = sdiv i32 %i.ku, 8
  %i.kw = add nuw nsw i32 %i.kt, 23
  %i.kx = add nsw i32 %i.kw, %i.kv
  %i.ky = and i32 %i.kx, -8                       ; 2 uses
  br label %bb.bx

bb.bw:                                            ; preds = %.loopexit
  %i.kz = add nuw nsw i32 %i.kt, 16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.la = phi i32 [ %i.ky, %bb.bv ], [ 0, %bb.bw ]
  %.0188 = phi i32 [ %i.ky, %bb.bv ], [ %i.kz, %bb.bw ] ; 2 uses
  %i.lb = call i32 @ArrayGetNItems(i32 noundef %1, ptr noundef nonnull %i.is) #16 ; 5 uses
  %i.lc = load i32, ptr %i.iz, align 4            ; 2 uses
  %.not217 = icmp eq i32 %i.lc, 0                 ; 5 uses
  %i.ld = load i32, ptr %i.ie, align 4            ; 2 uses
  %i.le = shl i32 %i.ld, 3
  %i.lf = add i32 %i.le, 16
  %i.lg = sext i32 %i.ld to i64
  %i.lh = shl nsw i64 %i.lg, 3
  %i.li = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.lh ; 4 uses
  %i.lj = select i1 %.not217, ptr null, ptr %i.li ; 4 uses
  %i.lk = select i1 %.not217, i32 %i.lf, i32 %i.lc ; 2 uses
  %.val = load i32, ptr %i.id, align 4
  %i.ll = lshr i32 %.val, 2
  %i.lm = sext i32 %i.lk to i64
  %i.ln = sub i32 %i.ll, %i.lk                    ; 3 uses
  %.not219 = icmp eq i32 %.1296, 0                ; 2 uses
  br i1 %.not219, label %bb.by, label %bb.cp

bb.by:                                            ; preds = %bb.bx
  br i1 %.0294, label %bb.bz, label %bb.cp

bb.bz:                                            ; preds = %bb.by
  %i.lo = call i32 @ArrayGetOffset(i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %2) #16 ; 4 uses
  %i.lp = load i32, ptr %i.iz, align 4            ; 2 uses
  %.not221 = icmp eq i32 %i.lp, 0
  br i1 %.not221, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lq = sext i32 %i.lp to i64
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.lr = load i32, ptr %i.ie, align 4
  %i.ls = sext i32 %i.lr to i64
  %i.lt = shl nsw i64 %i.ls, 3
  %i.lu = add nsw i64 %i.lt, 16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.lv = phi i64 [ %i.lq, %bb.ca ], [ %i.lu, %bb.cb ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.lv
  %i.lx = call fastcc ptr @array_seek(ptr noundef nonnull %i.lw, i32 noundef 0, ptr noundef %i.lj, i32 noundef %i.lo, i32 noundef %6, i8 noundef signext %8) ; 5 uses
  %i.ly = load i32, ptr %i.iz, align 4            ; 2 uses
  %.not222 = icmp eq i32 %i.ly, 0
  br i1 %.not222, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lz = sext i32 %i.ly to i64
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ma = load i32, ptr %i.ie, align 4
  %i.mb = sext i32 %i.ma to i64
  %i.mc = shl nsw i64 %i.mb, 3
  %i.md = add nsw i64 %i.mc, 16
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.me = phi i64 [ %i.lz, %bb.cd ], [ %i.md, %bb.ce ]
  %i.mf = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.me
  %i.mg = ptrtoint ptr %i.lx to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = trunc i64 %i.mi to i32                  ; 2 uses
  br i1 %.not217, label %array_get_isnull.exit.thread, label %array_get_isnull.exit

array_get_isnull.exit:                            ; preds = %bb.cf
  %i.mk = sdiv i32 %i.lo, 8
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds i8, ptr %i.li, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1
  %i.mo = zext i8 %i.mn to i32
  %i.mp = and i32 %i.lo, 7
  %i.mq = shl nuw nsw i32 1, %i.mp
  %i.mr = and i32 %i.mq, %i.mo
  %.not.i230 = icmp eq i32 %i.mr, 0
  br i1 %.not.i230, label %bb.co, label %array_get_isnull.exit.thread

array_get_isnull.exit.thread:                     ; preds = %bb.cf, %array_get_isnull.exit
  %i.ms = icmp sgt i32 %6, 0
  br i1 %i.ms, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %array_get_isnull.exit.thread
  %i.mt = zext nneg i32 %6 to i64
  br label %VARSIZE_ANY.exit

bb.ch:                                            ; preds = %array_get_isnull.exit.thread
  br i1 %i.al, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mu = load i8, ptr %i.lx, align 1             ; 2 uses
  %i.mv = zext i8 %i.mu to i32                    ; 2 uses
  %i.mw = icmp eq i8 %i.mu, 1
  br i1 %i.mw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mx = getelementptr i8, ptr %i.lx, i64 1
  %.val.i234 = load i8, ptr %i.mx, align 1        ; 2 uses
  %i.my = add i8 %.val.i234, -1
  %or.cond.i.i.i = icmp ult i8 %i.my, 3
  %i.mz = icmp eq i8 %.val.i234, 18
  %i.na = select i1 %i.mz, i64 18, i64 2
  %i.nb = select i1 %or.cond.i.i.i, i64 10, i64 %i.na
  br label %VARSIZE_ANY.exit

bb.ck:                                            ; preds = %bb.ci
  %i.nc = and i32 %i.mv, 1
  %.not.i232 = icmp eq i32 %i.nc, 0
  br i1 %.not.i232, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nd = lshr i32 %i.mv, 1
  %i.ne = zext nneg i32 %i.nd to i64
  br label %VARSIZE_ANY.exit

bb.cm:                                            ; preds = %bb.ck
  %i.nf = load i32, ptr %i.lx, align 4
  %i.ng = lshr i32 %i.nf, 2
  %i.nh = zext nneg i32 %i.ng to i64
  br label %VARSIZE_ANY.exit

bb.cn:                                            ; preds = %bb.ch
  %i.ni = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #18
  %i.nj = add i64 %i.ni, 1
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.cm, %bb.cl, %bb.cj, %bb.cn, %bb.cg
  %i.nk = phi i64 [ %i.mt, %bb.cg ], [ %i.nj, %bb.cn ], [ %i.nb, %bb.cj ], [ %i.ne, %bb.cl ], [ %i.nh, %bb.cm ]
  %i.nl = zext nneg i8 %switch.load to i64        ; 2 uses
  %i.nm = add nuw nsw i64 %i.nl, 4294967295
  %i.nn = add i64 %i.nm, %i.nk
  %i.no = sub nsw i64 0, %i.nl
  %i.np = and i64 %i.nn, %i.no
  %i.nq = trunc i64 %i.np to i32
  br label %bb.co

bb.co:                                            ; preds = %array_get_isnull.exit, %VARSIZE_ANY.exit
  %.0190 = phi i32 [ %i.nq, %VARSIZE_ANY.exit ], [ 0, %array_get_isnull.exit ] ; 2 uses
  %i.nr = add i32 %.0190, %i.mj
  %i.ns = sub i32 %i.ln, %i.nr
  %i.nt = sext i32 %.0190 to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.by, %bb.bx, %bb.co
  %.0193 = phi i32 [ %i.lo, %bb.co ], [ 0, %bb.bx ], [ %i.lb, %bb.by ] ; 7 uses
  %.1 = phi i64 [ %i.nt, %bb.co ], [ 0, %bb.bx ], [ 0, %bb.by ]
  %.0187 = phi i32 [ %i.mj, %bb.co ], [ 0, %bb.bx ], [ %i.ln, %bb.by ] ; 2 uses
  %.0 = phi i32 [ %i.ns, %bb.co ], [ %i.ln, %bb.bx ], [ 0, %bb.by ] ; 2 uses
  br i1 %4, label %bb.cz, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nu = icmp sgt i32 %6, 0
  br i1 %i.nu, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.nv = zext nneg i32 %6 to i64
  br label %VARSIZE_ANY.exit239

bb.cs:                                            ; preds = %bb.cq
  %i.nw = inttoptr i64 %i.ap to ptr               ; 4 uses
  br i1 %i.al, label %bb.cy, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nx = load i8, ptr %i.nw, align 1             ; 2 uses
  %i.ny = zext i8 %i.nx to i32                    ; 2 uses
  %i.nz = icmp eq i8 %i.nx, 1
  br i1 %i.nz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.oa = getelementptr i8, ptr %i.nw, i64 1
  %.val.i237 = load i8, ptr %i.oa, align 1        ; 2 uses
  %i.ob = add i8 %.val.i237, -1
  %or.cond.i.i.i238 = icmp ult i8 %i.ob, 3
  %i.oc = icmp eq i8 %.val.i237, 18
  %i.od = select i1 %i.oc, i64 18, i64 2
  %i.oe = select i1 %or.cond.i.i.i238, i64 10, i64 %i.od
  br label %VARSIZE_ANY.exit239

bb.cv:                                            ; preds = %bb.ct
end_hunk_0
