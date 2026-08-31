Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSaucy?download=true
inline.NumInlined: 426
inline.NumDeleted: 115
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@saucyGateWay:bb.a
  %i.ov = zext nneg i32 %spec.select.i179.i to i64
  %i.ow = shl nuw nsw i64 %i.ov, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ox = tail call ptr @realloc(ptr noundef nonnull %i.ou, i64 noundef %i.ow) #30
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.oy = tail call noalias ptr @malloc(i64 noundef %i.ow) #28
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.oz = phi ptr [ %i.ox, %bb.dn ], [ %i.oy, %bb.do ]
  store ptr %i.oz, ptr %i.ot, align 8, !tbaa !58
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.dp, %Vec_IntGrow.exit.i181.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i179.i, %bb.dp ], [ 16, %Vec_IntGrow.exit.i181.i ]
  store i32 %spec.select.sink.i.i, ptr %i.og, align 8, !tbaa !258
  %.pre243.i = load i32, ptr %i.oh, align 4, !tbaa !54
  %.pre244.i = load ptr, ptr %i.nv, align 8, !tbaa !53
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.dl, %.lr.ph202.i
  %i.pa = phi ptr [ %i.oa, %.lr.ph202.i ], [ %i.oa, %bb.dl ], [ %.pre244.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.pb = phi i32 [ %i.oi, %.lr.ph202.i ], [ %i.oi, %bb.dl ], [ %.pre243.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !58
  %i.pe = add nsw i32 %i.pb, 1
  store i32 %i.pe, ptr %i.oh, align 4, !tbaa !54
  %i.pf = sext i32 %i.pb to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pd, i64 %i.pf
  store i32 %i.nz, ptr %i.pg, align 4, !tbaa !44
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %i.ph = getelementptr i8, ptr %i.pa, i64 4
  %.val65.i = load i32, ptr %i.ph, align 4, !tbaa !54
  %i.pi = sext i32 %.val65.i to i64
  %i.pj = icmp slt i64 %indvars.iv.next219.i, %i.pi
  br i1 %i.pj, label %.lr.ph202.i, label %._crit_edge203.loopexit.i, !llvm.loop !270

._crit_edge203.loopexit.i:                        ; preds = %Vec_IntPush.exit.i
  %.val.pre.i = load ptr, ptr %i.v, align 8, !tbaa !22
  br label %._crit_edge203.i

._crit_edge203.i:                                 ; preds = %._crit_edge203.loopexit.i, %.preheader.i
  %.val.i = phi ptr [ %.val.pre.i, %._crit_edge203.loopexit.i ], [ %.val245.i, %.preheader.i ] ; 2 uses
  %indvars.iv.next222.i = add nuw nsw i64 %indvars.iv221.i, 1 ; 2 uses
  %i.pk = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.pk, align 4, !tbaa !34
  %i.pl = sext i32 %.val.val.i to i64
  %i.pm = icmp slt i64 %indvars.iv.next222.i, %i.pl
  br i1 %i.pm, label %.preheader.i, label %getDependencies.exit, !llvm.loop !271

getDependencies.exit:                             ; preds = %._crit_edge203.i, %bb.f, %.preheader182.i
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %.val26.i = load ptr, ptr %i.l, align 8, !tbaa !45 ; 2 uses
  %i.pn = getelementptr i8, ptr %.val26.i, i64 4
  %.val26.val.i = load i32, ptr %i.pn, align 4, !tbaa !34 ; 2 uses
  %i.po = sext i32 %.val26.val.i to i64           ; 2 uses
  %i.pp = shl nsw i64 %i.po, 3
  %i.pq = tail call noalias ptr @malloc(i64 noundef %i.pp) #28 ; 3 uses
  %i.pr = icmp sgt i32 %.val26.val.i, 0
  br i1 %i.pr, label %.lr.ph.i95, label %.preheader.i91

.preheader.i91:                                   ; preds = %.lr.ph.i95, %getDependencies.exit
  %i.ps = getelementptr i8, ptr %.0, i64 56       ; 2 uses
  %.val41.i = load ptr, ptr %i.ps, align 8, !tbaa !38 ; 2 uses
  %i.pt = getelementptr i8, ptr %.val41.i, i64 4
  %.val.val42.i = load i32, ptr %i.pt, align 4, !tbaa !34
  %i.pu = icmp sgt i32 %.val.val42.i, 0
  br i1 %i.pu, label %.lr.ph45.i, label %findTopologicalOrder.exit

.lr.ph45.i:                                       ; preds = %.preheader.i91
  %i.pv = getelementptr inbounds nuw i8, ptr %.0, i64 232 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0, i64 224 ; 2 uses
  %i.px = getelementptr i8, ptr %.0, i64 32
  %i.py = getelementptr inbounds nuw i8, ptr %.0, i64 228
  %i.pz = getelementptr inbounds nuw i8, ptr %.0, i64 216 ; 2 uses
  br label %bb.dq

.lr.ph.i95:                                       ; preds = %getDependencies.exit, %.lr.ph.i95
  %indvars.iv.i96 = phi i64 [ %indvars.iv.next.i97, %.lr.ph.i95 ], [ 0, %getDependencies.exit ] ; 2 uses
  %i.qa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store i32 0, ptr %i.qb, align 4, !tbaa !34
  store i32 50, ptr %i.qa, align 8, !tbaa !221
  %i.qc = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store ptr %i.qc, ptr %i.qd, align 8, !tbaa !42
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv.i96
  store ptr %i.qa, ptr %i.qe, align 8, !tbaa !46
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i97, %i.po
  br i1 %exitcond.not, label %.preheader.i91, label %.lr.ph.i95, !llvm.loop !272

bb.dq:                                            ; preds = %.critedge2.i, %.lr.ph45.i
  %indvars.iv50.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next51.i, %.critedge2.i ] ; 3 uses
  %.val44.i = phi ptr [ %.val41.i, %.lr.ph45.i ], [ %.val.i93, %.critedge2.i ]
  %i.qf = getelementptr i8, ptr %.val44.i, i64 8
  %.val27.val.i = load ptr, ptr %i.qf, align 8, !tbaa !42
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %.val27.val.i, i64 %indvars.iv50.i
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !47 ; 5 uses
  %i.qi = load ptr, ptr %i.pv, align 8, !tbaa !273
  %.not.i.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i, label %bb.dr, label %Abc_NtkIncrementTravId.exit.i

bb.dr:                                            ; preds = %bb.dq
  %.val.i.i = load ptr, ptr %i.px, align 8, !tbaa !265
  %i.qj = getelementptr i8, ptr %.val.i.i, i64 4
  %.val.val.i.i = load i32, ptr %i.qj, align 4, !tbaa !34 ; 2 uses
  %i.qk = add nsw i32 %.val.val.i.i, 500          ; 5 uses
  %i.ql = load i32, ptr %i.pw, align 8, !tbaa !258
  %.not.i.i.i.i = icmp slt i32 %i.ql, %i.qk
  br i1 %.not.i.i.i.i, label %bb.ds, label %Vec_IntGrow.exit.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.qm = sext i32 %i.qk to i64
  %i.qn = shl nsw i64 %i.qm, 2
  %i.qo = tail call noalias ptr @malloc(i64 noundef %i.qn) #28 ; 2 uses
  store ptr %i.qo, ptr %i.pv, align 8, !tbaa !58
  store i32 %i.qk, ptr %i.pw, align 8, !tbaa !258
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.ds, %bb.dr
  %i.qp = phi ptr [ %i.qo, %bb.ds ], [ null, %bb.dr ]
  %i.qq = icmp sgt i32 %.val.val.i.i, -500
  br i1 %i.qq, label %.lr.ph.i.i.i, label %Vec_IntFill.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.qr = zext nneg i32 %i.qk to i64
  %i.qs = shl nuw nsw i64 %i.qr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.qp, i8 0, i64 %i.qs, i1 false), !tbaa !44
  br label %Vec_IntFill.exit.i.i

Vec_IntFill.exit.i.i:                             ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.qk, ptr %i.py, align 4, !tbaa !54
  br label %Abc_NtkIncrementTravId.exit.i

Abc_NtkIncrementTravId.exit.i:                    ; preds = %Vec_IntFill.exit.i.i, %bb.dq
  %i.qt = load i32, ptr %i.pz, align 8, !tbaa !274
  %i.qu = add nsw i32 %i.qt, 1
  store i32 %i.qu, ptr %i.pz, align 8, !tbaa !274
  %.val28.i = load ptr, ptr %i.qh, align 8, !tbaa !261 ; 8 uses
  %i.qv = getelementptr i8, ptr %i.qh, i64 16
  %.val29.i = load i32, ptr %i.qv, align 8, !tbaa !275 ; 7 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.val28.i, i64 216
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !274
  %i.qy = getelementptr inbounds nuw i8, ptr %.val28.i, i64 224 ; 2 uses
  %i.qz = add nsw i32 %.val29.i, 1                ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.val28.i, i64 228 ; 3 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !54 ; 4 uses
  %.not.i.not.i.i.i.i = icmp slt i32 %.val29.i, %i.rb
  br i1 %.not.i.not.i.i.i.i, label %Abc_NodeSetTravIdCurrent.exit.i, label %bb.dt

bb.dt:                                            ; preds = %Abc_NtkIncrementTravId.exit.i
  %i.rc = load i32, ptr %i.qy, align 8, !tbaa !258 ; 4 uses
  %i.rd = shl nsw i32 %i.rc, 1                    ; 2 uses
  %.not.i.i.i33.i = icmp slt i32 %.val29.i, %i.rd
  %.not.i.i.not.i.i.i.i = icmp sgt i32 %i.rc, %.val29.i ; 2 uses
  br i1 %.not.i.i.i33.i, label %bb.dz, label %bb.du

bb.du:                                            ; preds = %bb.dt
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.re = getelementptr inbounds nuw i8, ptr %.val28.i, i64 232 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !58 ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.rf, null
  %i.rg = sext i32 %i.qz to i64
  %i.rh = shl nsw i64 %i.rg, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ri = tail call ptr @realloc(ptr noundef nonnull %i.rf, i64 noundef %i.rh) #30
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.rj = tail call noalias ptr @malloc(i64 noundef %i.rh) #28
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.rk = phi ptr [ %i.ri, %bb.dw ], [ %i.rj, %bb.dx ]
  store ptr %i.rk, ptr %i.re, align 8, !tbaa !58
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dt
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.rl = icmp slt i32 %i.rc, 1073741823
  %spec.select.i.i.i.i.i = select i1 %i.rl, i32 %i.rd, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i = icmp slt i32 %i.rc, %spec.select.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i, label %bb.eb, label %Vec_IntGrow.exit.i.i.i.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.rm = getelementptr inbounds nuw i8, ptr %.val28.i, i64 232 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !58 ; 2 uses
  %.not9.i23.i.i.i.i.i = icmp eq ptr %i.rn, null
  %i.ro = sext i32 %spec.select.i.i.i.i.i to i64
  %i.rp = shl nuw nsw i64 %i.ro, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rq = tail call ptr @realloc(ptr noundef nonnull %i.rn, i64 noundef %i.rp) #30
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.rr = tail call noalias ptr @malloc(i64 noundef %i.rp) #28
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.rs = phi ptr [ %i.rq, %bb.ec ], [ %i.rr, %bb.ed ]
  store ptr %i.rs, ptr %i.rm, align 8, !tbaa !58
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i:            ; preds = %bb.ee, %bb.dy
  %spec.select.sink.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %bb.ee ], [ %i.qz, %bb.dy ]
  store i32 %spec.select.sink.i.i.i.i.i, ptr %i.qy, align 8, !tbaa !258
  %.pre.i.i.i.i = load i32, ptr %i.ra, align 4, !tbaa !54
  br label %Vec_IntGrow.exit.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i, %bb.ea, %bb.dz, %bb.du
  %i.rt = phi i32 [ %.pre.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %i.rb, %bb.ea ], [ %i.rb, %bb.dz ], [ %i.rb, %bb.du ] ; 3 uses
  %.not4.i.i.i.i = icmp sgt i32 %i.rt, %.val29.i
  br i1 %.not4.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %.val28.i, i64 232
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !58
  %i.rw = sext i32 %i.rt to i64
  %i.rx = shl nsw i64 %i.rw, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.rv, i64 %i.rx
  %i.ry = sub i32 %.val29.i, %i.rt
  %i.rz = zext i32 %i.ry to i64
  %i.sa = shl nuw nsw i64 %i.rz, 2
  %i.sb = add nuw nsw i64 %i.sa, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i, i8 0, i64 %i.sb, i1 false), !tbaa !44
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !54
  %.pre.i92 = load ptr, ptr %i.qh, align 8, !tbaa !261
  br label %Abc_NodeSetTravIdCurrent.exit.i

Abc_NodeSetTravIdCurrent.exit.i:                  ; preds = %._crit_edge.i.i.i.i.i, %Abc_NtkIncrementTravId.exit.i
  %i.sc = phi ptr [ %.val28.i, %Abc_NtkIncrementTravId.exit.i ], [ %.pre.i92, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.sd = getelementptr i8, ptr %.val28.i, i64 232
  %.val.i.i.i.i = load ptr, ptr %i.sd, align 8, !tbaa !58
  %i.se = sext i32 %.val29.i to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.se
  store i32 %i.qx, ptr %i.sf, align 4, !tbaa !44
  %.val.i34.i = load i32, ptr %i.sc, align 8, !tbaa !276
  %.not.i35.i = icmp eq i32 %.val.i34.i, 1
  br i1 %.not.i35.i, label %bb.ef, label %Abc_ObjFanout0Ntk.exit.i

bb.ef:                                            ; preds = %Abc_NodeSetTravIdCurrent.exit.i
  %i.sg = getelementptr i8, ptr %i.qh, i64 48
  %.val4.i.i = load ptr, ptr %i.sg, align 8, !tbaa !277
  %i.sh = getelementptr i8, ptr %i.sc, i64 32
  %.val3.val.i.i = load ptr, ptr %i.sh, align 8, !tbaa !265
  %.val4.val.i.i = load i32, ptr %.val4.i.i, align 4, !tbaa !44
  %i.si = getelementptr i8, ptr %.val3.val.i.i, i64 8
  %.val3.val.val.i.i = load ptr, ptr %i.si, align 8, !tbaa !42
  %i.sj = sext i32 %.val4.val.i.i to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %.val3.val.val.i.i, i64 %i.sj
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !47
  br label %Abc_ObjFanout0Ntk.exit.i

Abc_ObjFanout0Ntk.exit.i:                         ; preds = %bb.ef, %Abc_NodeSetTravIdCurrent.exit.i
  %i.sm = phi ptr [ %i.sl, %bb.ef ], [ %i.qh, %Abc_NodeSetTravIdCurrent.exit.i ] ; 3 uses
  %i.sn = getelementptr i8, ptr %i.sm, i64 44     ; 2 uses
  %.val3038.i = load i32, ptr %i.sn, align 4, !tbaa !278
  %i.so = icmp sgt i32 %.val3038.i, 0
  br i1 %i.so, label %.lr.ph40.i, label %.critedge2.i

.lr.ph40.i:                                       ; preds = %Abc_ObjFanout0Ntk.exit.i
  %i.sp = getelementptr i8, ptr %i.sm, i64 48
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %indvars.iv50.i
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !46
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.lr.ph40.i
  %indvars.iv47.i = phi i64 [ 0, %.lr.ph40.i ], [ %indvars.iv.next48.i, %bb.eg ] ; 2 uses
  %.val31.i = load ptr, ptr %i.sm, align 8, !tbaa !261
  %.val32.i = load ptr, ptr %i.sp, align 8, !tbaa !277
  %i.ss = getelementptr i8, ptr %.val31.i, i64 32
  %.val31.val.i = load ptr, ptr %i.ss, align 8, !tbaa !265
  %i.st = getelementptr i8, ptr %.val31.val.i, i64 8
  %.val31.val.val.i = load ptr, ptr %i.st, align 8, !tbaa !42
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.val32.i, i64 %indvars.iv47.i
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !44
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [8 x i8], ptr %.val31.val.val.i, i64 %i.sw
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !47
  tail call void @Abc_NtkDfsReverse_rec(ptr noundef %i.sy, ptr noundef %i.sr) #26
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %.val30.i = load i32, ptr %i.sn, align 4, !tbaa !278
  %i.sz = sext i32 %.val30.i to i64
  %i.ta = icmp slt i64 %indvars.iv.next48.i, %i.sz
  br i1 %i.ta, label %bb.eg, label %.critedge2.i, !llvm.loop !279

.critedge2.i:                                     ; preds = %bb.eg, %Abc_ObjFanout0Ntk.exit.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %.val.i93 = load ptr, ptr %i.ps, align 8, !tbaa !38 ; 2 uses
  %i.tb = getelementptr i8, ptr %.val.i93, i64 4
  %.val.val.i94 = load i32, ptr %i.tb, align 4, !tbaa !34
  %i.tc = sext i32 %.val.val.i94 to i64
  %i.td = icmp slt i64 %indvars.iv.next51.i, %i.tc
  br i1 %i.td, label %bb.dq, label %findTopologicalOrder.exit.loopexit, !llvm.loop !280

findTopologicalOrder.exit.loopexit:               ; preds = %.critedge2.i
  %.0.val88.pre = load ptr, ptr %i.l, align 8, !tbaa !45
  br label %findTopologicalOrder.exit

findTopologicalOrder.exit:                        ; preds = %findTopologicalOrder.exit.loopexit, %.preheader.i91
  %.0.val88 = phi ptr [ %.0.val88.pre, %findTopologicalOrder.exit.loopexit ], [ %.val26.i, %.preheader.i91 ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.o, i64 576
  store ptr %i.pq, ptr %i.te, align 8, !tbaa !212
  %.0.val85 = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.tf = getelementptr i8, ptr %.0.val85, i64 4
  %.0.val85.val = load i32, ptr %i.tf, align 4, !tbaa !34 ; 9 uses
  %i.tg = getelementptr i8, ptr %.0.val88, i64 4
  %.0.val88.val = load i32, ptr %i.tg, align 4, !tbaa !34 ; 7 uses
  %i.th = add nsw i32 %.0.val88.val, %.0.val85.val
  %i.ti = sext i32 %i.th to i64
  %i.tj = shl nsw i64 %i.ti, 2
  %i.tk = tail call noalias noundef ptr @malloc(i64 noundef %i.tj) #28 ; 6 uses
  %.not = icmp eq i32 %5, 0                       ; 3 uses
  %i.tl = icmp sgt i32 %.0.val85.val, 0           ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader101

.preheader101:                                    ; preds = %findTopologicalOrder.exit
  br i1 %i.tl, label %.lr.ph.preheader, label %.loopexit100

.lr.ph.preheader:                                 ; preds = %.preheader101
  %wide.trip.count = zext nneg i32 %.0.val85.val to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.0.val85.val, 8
  br i1 %min.iters.check, label %.lr.ph.preheader276, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %index ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  store <4 x i32> %vec.ind, ptr %i.tm, align 4, !tbaa !44
  store <4 x i32> %step.add, ptr %i.tn, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.to = icmp eq i64 %index.next, %n.vec
  br i1 %i.to, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit100, label %.lr.ph.preheader276

.lr.ph.preheader276:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %findTopologicalOrder.exit
  br i1 %i.tl, label %.lr.ph113.preheader, label %.loopexit100

.lr.ph113.preheader:                              ; preds = %.preheader
  %i.tp = zext nneg i32 %.0.val85.val to i64
  %i.tq = shl nuw nsw i64 %i.tp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.tk, i8 0, i64 %i.tq, i1 false), !tbaa !44
  br label %.loopexit100

.lr.ph:                                           ; preds = %.lr.ph.preheader276, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader276 ] ; 3 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %indvars.iv
  %i.ts = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ts, ptr %i.tr, align 4, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond129.not, label %.loopexit100, label %.lr.ph, !llvm.loop !282

.loopexit100:                                     ; preds = %.lr.ph, %middle.block, %.lr.ph113.preheader, %.preheader101, %.preheader
  %.not74 = icmp eq i32 %6, 0
  br i1 %.not74, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.loopexit100
  %i.tt = icmp sgt i32 %.0.val88.val, 0
  br i1 %i.tt, label %.lr.ph115.preheader, label %.loopexit

.lr.ph115.preheader:                              ; preds = %bb.eh
  %spec.select = select i1 %.not, i32 1, i32 %.0.val85.val ; 2 uses
  %i.tu = sext i32 %.0.val85.val to i64
  %wide.trip.count136 = zext nneg i32 %.0.val88.val to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.tk, i64 %i.tu ; 2 uses
  %min.iters.check249 = icmp ult i32 %.0.val88.val, 8
  br i1 %min.iters.check249, label %.lr.ph115.preheader274, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph115.preheader
  %n.vec251 = and i64 %wide.trip.count136, 2147483640 ; 3 uses
end_hunk_0
begin_hunk_1_@select_smallest_max_connected_cell:bb.a
  store i32 0, ptr %i.bz, align 4, !tbaa !44
  %i.ca = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv85
  %i.cb = getelementptr i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !44
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cd
  store i32 0, ptr %i.ce, align 4, !tbaa !44
  %indvars.iv.next86.3 = add nsw i64 %indvars.iv85, 4 ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %indvars.iv.next86.3, %wide.trip.count88
  br i1 %exitcond89.not.3, label %.loopexit, label %._crit_edge.new, !llvm.loop !359

.loopexit:                                        ; preds = %.prol.loopexit, %._crit_edge.new, %._crit_edge.thread, %bb.c
  %.261 = phi i32 [ %.05974, %bb.c ], [ %.160100, %._crit_edge.thread ], [ %.160, %._crit_edge.new ], [ %.160, %.prol.loopexit ] ; 2 uses
  %.256 = phi i32 [ %.05476, %bb.c ], [ %.155101, %._crit_edge.thread ], [ %.155, %._crit_edge.new ], [ %.155, %.prol.loopexit ]
  %.2 = phi i32 [ %.05277, %bb.c ], [ %.153102, %._crit_edge.thread ], [ %.153, %._crit_edge.new ], [ %.153, %.prol.loopexit ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %2
  br i1 %i.ch, label %bb.c, label %._crit_edge79, !llvm.loop !360

._crit_edge79:                                    ; preds = %.loopexit, %.preheader
  %.059.lcssa = phi i32 [ -1, %.preheader ], [ %.261, %.loopexit ]
  %.not63 = icmp eq ptr %i.c, null
  br i1 %.not63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge79
  tail call void @free(ptr noundef nonnull %i.c) #26
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge79, %bb.k
  ret i32 %.059.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @descend(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44
  %i.f = add nsw i32 %i.e, %2                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !146
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !146
  %.val = load ptr, ptr %1, align 8, !tbaa !102   ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val39 = load ptr, ptr %i.l, align 8, !tbaa !103 ; 2 uses
  %i.m = sext i32 %3 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44   ; 2 uses
  %i.p = sext i32 %i.f to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44   ; 2 uses
  store i32 %i.r, ptr %i.n, align 4, !tbaa !44
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.s
  store i32 %3, ptr %i.t, align 4, !tbaa !44
  store i32 %i.o, ptr %i.q, align 4, !tbaa !44
  %i.u = sext i32 %i.o to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.u
  store i32 %i.f, ptr %i.v, align 4, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.x = load i32, ptr %i.w, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  store i32 %i.x, ptr %i.ad, align 4, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !148
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj
  store i32 %i.af, ptr %i.ak, align 4, !tbaa !44
  %i.al = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !118
  %i.ap = tail call i32 %i.ao(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.f) #26 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.at = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !121
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !121
  %i.au = tail call fastcc range(i32 0, 2) i32 @refine(ptr noundef %0, ptr noundef nonnull %1)
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %double_check_OPP_isomorphism.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !143
  %.not32 = icmp eq i32 %i.aw, 0
  br i1 %.not32, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = tail call fastcc i32 @check_OPP_for_Boolean_matching(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not33 = icmp eq i32 %i.ax, 0
  br i1 %.not33, label %double_check_OPP_isomorphism.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pr = load i32, ptr %i.av, align 8, !tbaa !143
  %.not34 = icmp eq i32 %.pr, 0
  br i1 %.not34, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = tail call fastcc i32 @check_OPP_for_Boolean_matching(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not35 = icmp eq i32 %i.ay, 0
  br i1 %.not35, label %double_check_OPP_isomorphism.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !287
  %.not36 = icmp eq i32 %i.ba, 0
  br i1 %.not36, label %check_OPP_only_has_swaps.exit.thread, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = icmp eq ptr %1, %i.bb
  br i1 %i.bc, label %check_OPP_only_has_swaps.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 2 uses
  %i.be = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 4 uses
  store i32 0, ptr %i.bf, align 4, !tbaa !54
  store i32 16, ptr %i.be, align 8, !tbaa !258
  %i.bg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !58
  %i.bi = load i32, ptr %0, align 8, !tbaa !41
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.preheader.lr.ph.i, label %._crit_edge84.i

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i = load ptr, ptr %i.bk, align 8, !tbaa !101
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge82.i, %.preheader.lr.ph.i
  %.val45107.i = phi ptr [ %i.bd, %.preheader.lr.ph.i ], [ %.val45.i, %._crit_edge82.i ] ; 2 uses
  %.promoted76.i = phi ptr [ %i.bg, %.preheader.lr.ph.i ], [ %.val43.i, %._crit_edge82.i ]
  %.promoted73.i = phi i32 [ 16, %.preheader.lr.ph.i ], [ %.promoted73104.i, %._crit_edge82.i ] ; 2 uses
  %.promoted65.i = phi i32 [ 16, %.preheader.lr.ph.i ], [ %.promoted65101.i, %._crit_edge82.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i, %.preheader.lr.ph.i ], [ %i.dq, %._crit_edge82.i ]
  %.083.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.du, %._crit_edge82.i ] ; 3 uses
  %i.bp = sext i32 %.083.i to i64                 ; 4 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !44
  %.not62.i = icmp slt i32 %i.br, 0
  br i1 %.not62.i, label %bb.x, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %Vec_IntPush.exit53.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %Vec_IntPush.exit53.i ], [ %i.bp, %.preheader.i ] ; 4 uses
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %Vec_IntPush.exit53.i ], [ 0, %.preheader.i ] ; 10 uses
  %storemerge6077.i = phi ptr [ %storemerge6078.i, %Vec_IntPush.exit53.i ], [ %.promoted76.i, %.preheader.i ] ; 6 uses
  %spec.select.sink.i5075.i = phi i32 [ %spec.select.sink.i5074.i, %Vec_IntPush.exit53.i ], [ %.promoted73.i, %.preheader.i ] ; 4 uses
  %storemerge69.i = phi ptr [ %storemerge70.i, %Vec_IntPush.exit53.i ], [ %.val45107.i, %.preheader.i ] ; 6 uses
  %spec.select.sink.i67.i = phi i32 [ %spec.select.sink.i66.i, %Vec_IntPush.exit53.i ], [ %.promoted65.i, %.preheader.i ] ; 4 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !134
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !129
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv90.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !44
  %i.bz = trunc nsw i64 %indvars.iv88.i to i32    ; 2 uses
  %i.ca = icmp eq i32 %spec.select.sink.i67.i, %i.bz
  br i1 %i.ca, label %bb.h, label %Vec_IntPush.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.cb = icmp samesign ult i64 %indvars.iv88.i, 16
  br i1 %i.cb, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i = icmp eq ptr %storemerge69.i, null
  br i1 %.not9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge69.i, i64 noundef 64) #30
  br label %Vec_IntPush.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %bb.h
  %i.ce = icmp samesign ult i64 %indvars.iv88.i, 1073741823
  %i.cf = shl nuw nsw i32 %spec.select.sink.i67.i, 1
  %spec.select.i.i = select i1 %i.ce, i32 %i.cf, i32 2147483647 ; 3 uses
  %i.cg = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv88.i, %i.cg
  br i1 %.not.i9.i.i, label %bb.m, label %Vec_IntPush.exit.i

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i.i = icmp eq ptr %storemerge69.i, null
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %storemerge69.i, i64 noundef %i.ch) #30
  br label %Vec_IntPush.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #28
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %.lr.ph.i
  %storemerge70.i = phi ptr [ %storemerge69.i, %.lr.ph.i ], [ %storemerge69.i, %bb.l ], [ %i.cd, %bb.k ], [ %i.cc, %bb.j ], [ %i.ci, %bb.n ], [ %i.cj, %bb.o ] ; 3 uses
  %spec.select.sink.i66.i = phi i32 [ %spec.select.sink.i67.i, %.lr.ph.i ], [ %spec.select.sink.i67.i, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i.i, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %storemerge70.i, i64 %indvars.iv88.i
  store i32 %i.by, ptr %i.ck, align 4, !tbaa !44
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !133
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv90.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !44
  %i.cs = icmp eq i32 %spec.select.sink.i5075.i, %i.bz
  br i1 %i.cs, label %bb.p, label %Vec_IntPush.exit53.i

bb.p:                                             ; preds = %Vec_IntPush.exit.i
  %i.ct = icmp samesign ult i64 %indvars.iv88.i, 16
  br i1 %i.ct, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i51.i = icmp eq ptr %storemerge6077.i, null
  br i1 %.not9.i.i51.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge6077.i, i64 noundef 64) #30
  br label %Vec_IntPush.exit53.i

bb.s:                                             ; preds = %bb.q
  %i.cv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit53.i

bb.t:                                             ; preds = %bb.p
  %i.cw = icmp samesign ult i64 %indvars.iv88.i, 1073741823
  %i.cx = shl nuw nsw i32 %spec.select.sink.i5075.i, 1
  %spec.select.i46.i = select i1 %i.cw, i32 %i.cx, i32 2147483647 ; 3 uses
  %i.cy = zext nneg i32 %spec.select.i46.i to i64 ; 2 uses
  %.not.i9.i47.i = icmp samesign ult i64 %indvars.iv88.i, %i.cy
  br i1 %.not.i9.i47.i, label %bb.u, label %Vec_IntPush.exit53.i

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i48.i = icmp eq ptr %storemerge6077.i, null
  %i.cz = shl nuw nsw i64 %i.cy, 2                ; 2 uses
  br i1 %.not9.i10.i48.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = tail call ptr @realloc(ptr noundef nonnull %storemerge6077.i, i64 noundef %i.cz) #30
  br label %Vec_IntPush.exit53.i

bb.w:                                             ; preds = %bb.u
  %i.db = tail call noalias ptr @malloc(i64 noundef %i.cz) #28
  br label %Vec_IntPush.exit53.i

Vec_IntPush.exit53.i:                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %Vec_IntPush.exit.i
  %storemerge6078.i = phi ptr [ %storemerge6077.i, %Vec_IntPush.exit.i ], [ %storemerge6077.i, %bb.t ], [ %i.cv, %bb.s ], [ %i.cu, %bb.r ], [ %i.da, %bb.v ], [ %i.db, %bb.w ] ; 3 uses
  %spec.select.sink.i5074.i = phi i32 [ %spec.select.sink.i5075.i, %Vec_IntPush.exit.i ], [ %spec.select.sink.i5075.i, %bb.t ], [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i46.i, %bb.v ], [ %spec.select.i46.i, %bb.w ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %storemerge6078.i, i64 %indvars.iv88.i
  store i32 %i.cr, ptr %i.dc, align 4, !tbaa !44
  %indvars.iv.next91.i = add nsw i64 %indvars.iv90.i, 1
  %i.dd = load ptr, ptr %i.bk, align 8, !tbaa !101
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.bp
  %i.df = load i32, ptr %i.de, align 4, !tbaa !44
  %i.dg = add nsw i32 %i.df, %.083.i
  %i.dh = sext i32 %i.dg to i64
  %.not.not.i = icmp slt i64 %indvars.iv90.i, %i.dh
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !361

._crit_edge.i:                                    ; preds = %Vec_IntPush.exit53.i
  %i.di = trunc nsw i64 %indvars.iv.next89.i to i32 ; 2 uses
  store i32 %i.di, ptr %i.bf, align 4, !tbaa !54
  store i32 %spec.select.sink.i5074.i, ptr %i.be, align 8
  store ptr %storemerge6078.i, ptr %i.bh, align 8
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %.preheader.i
  %.val45.i = phi ptr [ %storemerge70.i, %._crit_edge.i ], [ %.val45107.i, %.preheader.i ] ; 5 uses
  %.val44.i = phi i32 [ %i.di, %._crit_edge.i ], [ 0, %.preheader.i ] ; 3 uses
  %.promoted73104.i = phi i32 [ %spec.select.sink.i5074.i, %._crit_edge.i ], [ %.promoted73.i, %.preheader.i ]
  %.promoted65101.i = phi i32 [ %spec.select.sink.i66.i, %._crit_edge.i ], [ %.promoted65.i, %.preheader.i ]
  %i.dj = sext i32 %.val44.i to i64
  tail call void @qsort(ptr noundef %.val45.i, i64 noundef %i.dj, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompareUnsigned) #26
  %.val42.i = load i32, ptr %i.bf, align 4, !tbaa !54
  %.val43.i = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 5 uses
  %i.dk = sext i32 %.val42.i to i64
  tail call void @qsort(ptr noundef %.val43.i, i64 noundef %i.dk, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompareUnsigned) #26
  %i.dl = icmp sgt i32 %.val44.i, 0
  br i1 %i.dl, label %.lr.ph81.preheader.i, label %._crit_edge82.i

.lr.ph81.preheader.i:                             ; preds = %bb.x
  %wide.trip.count.i = zext nneg i32 %.val44.i to i64
  br label %.lr.ph81.i

bb.y:                                             ; preds = %.lr.ph81.i
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge82.i, label %.lr.ph81.i, !llvm.loop !362

.lr.ph81.i:                                       ; preds = %bb.y, %.lr.ph81.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph81.preheader.i ], [ %indvars.iv.next98.i, %bb.y ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val45.i, i64 %indvars.iv97.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !44
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val43.i, i64 %indvars.iv97.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !44
  %.not39.i = icmp eq i32 %i.dn, %i.dp
  br i1 %.not39.i, label %bb.y, label %Vec_IntFree.exit55.i

Vec_IntFree.exit55.i:                             ; preds = %.lr.ph81.i
  tail call void @free(ptr noundef nonnull %.val45.i) #26
  tail call void @free(ptr noundef nonnull %.val43.i) #26
  tail call void @free(ptr noundef nonnull %i.be) #26
  br label %double_check_OPP_isomorphism.exit

._crit_edge82.i:                                  ; preds = %bb.y, %bb.x
  store i32 0, ptr %i.bf, align 4, !tbaa !54
  %i.dq = load ptr, ptr %i.bk, align 8, !tbaa !101 ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.bp
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.dt = add i32 %.083.i, 1
  %i.du = add i32 %i.dt, %i.ds                    ; 2 uses
  %i.dv = load i32, ptr %0, align 8, !tbaa !41
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %.preheader.i, label %._crit_edge84.i, !llvm.loop !363

._crit_edge84.i:                                  ; preds = %._crit_edge82.i, %bb.g
  %i.dx = phi ptr [ %i.bg, %bb.g ], [ %.val43.i, %._crit_edge82.i ]
  %i.dy = phi ptr [ %i.bd, %bb.g ], [ %.val45.i, %._crit_edge82.i ] ; 2 uses
  %.not.i56.i = icmp eq ptr %i.dy, null
  br i1 %.not.i56.i, label %Vec_IntFree.exit57.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge84.i
  tail call void @free(ptr noundef nonnull %i.dy) #26
  %.pre109.i = load ptr, ptr %i.bh, align 8, !tbaa !58
  br label %Vec_IntFree.exit57.i

Vec_IntFree.exit57.i:                             ; preds = %bb.z, %._crit_edge84.i
  %i.dz = phi ptr [ %i.dx, %._crit_edge84.i ], [ %.pre109.i, %bb.z ] ; 2 uses
  %.not.i58.i = icmp eq ptr %i.dz, null
  br i1 %.not.i58.i, label %check_OPP_only_has_swaps.exit.thread.sink.split, label %check_OPP_only_has_swaps.exit

check_OPP_only_has_swaps.exit:                    ; preds = %Vec_IntFree.exit57.i
  tail call void @free(ptr noundef nonnull %i.dz) #26
  br label %check_OPP_only_has_swaps.exit.thread.sink.split

check_OPP_only_has_swaps.exit.thread.sink.split:  ; preds = %Vec_IntFree.exit57.i, %check_OPP_only_has_swaps.exit
  tail call void @free(ptr noundef nonnull %i.be) #26
  br label %check_OPP_only_has_swaps.exit.thread

check_OPP_only_has_swaps.exit.thread:             ; preds = %check_OPP_only_has_swaps.exit.thread.sink.split, %bb.f, %.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = icmp eq ptr %1, %i.ea
  br i1 %i.eb, label %double_check_OPP_isomorphism.exit, label %bb.aa

bb.aa:                                            ; preds = %check_OPP_only_has_swaps.exit.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !100
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !126
  %i.eg = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ep = sext i32 %i.ed to i64
  %i.eq = sext i32 %i.ek to i64                   ; 2 uses
  %indvars.iv.next151.i104 = add nsw i64 %i.ep, -1 ; 2 uses
  %i.er = icmp sgt i64 %indvars.iv.next151.i104, %i.eq
  br i1 %i.er, label %.lr.ph.preheader, label %double_check_OPP_isomorphism.exit

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.es = load ptr, ptr %1, align 8, !tbaa !102   ; 2 uses
  %i.et = load ptr, ptr %i.el, align 8, !tbaa !141
  %i.eu = load ptr, ptr %i.ar, align 8, !tbaa !190 ; 4 uses
  %i.ev = load ptr, ptr %i.ea, align 8, !tbaa !123 ; 2 uses
  br label %.lr.ph

bb.ab:                                            ; preds = %._crit_edge124.i
  %indvars.iv.next151.i = add nsw i64 %indvars.iv.next151.i105, -1 ; 2 uses
  %i.ew = icmp sgt i64 %indvars.iv.next151.i, %i.eq
  br i1 %i.ew, label %.lr.ph, label %double_check_OPP_isomorphism.exit, !llvm.loop !364

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %indvars.iv.next151.i105 = phi i64 [ %indvars.iv.next151.i, %bb.ab ], [ %indvars.iv.next151.i104, %.lr.ph.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.et, i64 %indvars.iv.next151.i105
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !44
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !44
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !44 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fd, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !44 ; 2 uses
  %i.fh = icmp slt i32 %i.fe, %i.fg
  br i1 %i.fh, label %.lr.ph.i41, label %._crit_edge.i40

.lr.ph.i41:                                       ; preds = %.lr.ph
  %i.fi = load ptr, ptr %i.em, align 8, !tbaa !111 ; 5 uses
  %i.fj = load ptr, ptr %i.as, align 8, !tbaa !191 ; 5 uses
  %i.fk = sext i32 %i.fe to i64                   ; 4 uses
  %wide.trip.count.i42 = sext i32 %i.fg to i64    ; 2 uses
  %i.fl = sub nsw i64 %wide.trip.count.i42, %i.fk ; 2 uses
  %xtraiter = and i64 %i.fl, 3                    ; 3 uses
  %i.fm = sub nsw i64 %i.fk, %wide.trip.count.i42
  %i.fn = icmp ugt i64 %i.fm, -4
  br i1 %i.fn, label %.epil.preheader, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.lr.ph.i41
  %unroll_iter = and i64 %i.fl, -4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i41.new
  %indvars.iv.i43 = phi i64 [ %i.fk, %.lr.ph.i41.new ], [ %indvars.iv.next.i44.3, %bb.ac ] ; 5 uses
  %.083101.i = phi i32 [ 0, %.lr.ph.i41.new ], [ %i.gs, %bb.ac ]
  %.087100.i = phi i32 [ 0, %.lr.ph.i41.new ], [ %i.gr, %bb.ac ]
  %niter = phi i64 [ 0, %.lr.ph.i41.new ], [ %niter.next.3, %bb.ac ]
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %indvars.iv.i43
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !44
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !44 ; 2 uses
  %i.ft = add nsw i32 %i.fs, %.087100.i
  %i.fu = xor i32 %i.fs, %.083101.i
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %indvars.iv.i43
  %i.fw = getelementptr i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !44
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !44 ; 2 uses
  %i.gb = add nsw i32 %i.ga, %i.ft
  %i.gc = xor i32 %i.ga, %i.fu
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %indvars.iv.i43
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !44
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !44 ; 2 uses
  %i.gj = add nsw i32 %i.gi, %i.gb
  %i.gk = xor i32 %i.gi, %i.gc
  %i.gl = getelementptr [4 x i8], ptr %i.fj, i64 %indvars.iv.i43
end_hunk_1
