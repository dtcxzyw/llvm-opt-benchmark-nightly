inline.NumInlined: 40
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@encode_one_frame:bb.a
  %i.of = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.mg) ; 0 uses
  call void @report_stats_on_error() #18
  call void @exit(i32 noundef -1) #20
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.og = load ptr, ptr @imgY_org_frm, align 8, !tbaa !48
  call void @buf2img(ptr noundef %i.og, ptr noundef %i.mt, i32 noundef %i.lu, i32 noundef %i.lw, i32 noundef %i.md)
  %i.oh = load ptr, ptr @img, align 8, !tbaa !26
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 15536
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !27
  %.not50.i = icmp eq i32 %i.oj, 0
  br i1 %.not50.i, label %ReadOneFrame.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ok = load i32, ptr @p_in, align 4, !tbaa !4
  %i.ol = sext i32 %i.mh to i64                   ; 4 uses
  %i.om = call i64 @read(i32 noundef %i.ok, ptr noundef %i.mt, i64 noundef %i.ol) #18
  %.not51.i = icmp eq i64 %i.om, %i.ol
  br i1 %.not51.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.on = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.mg) ; 0 uses
  call void @report_stats_on_error() #18
  call void @exit(i32 noundef -1) #20
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.oo = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !90
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !48
  call void @buf2img(ptr noundef %i.op, ptr noundef %i.mt, i32 noundef %i.ly, i32 noundef %i.ma, i32 noundef %i.md)
  br i1 %i.mr, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.oq = load i32, ptr @p_in, align 4, !tbaa !4
  %i.or = sub nsw i64 0, %i.mk
  %i.os = call i64 @lseek64(i32 noundef %i.oq, i64 noundef %i.or, i32 noundef 1) #18 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ot = load i32, ptr @p_in, align 4, !tbaa !4
  %i.ou = call i64 @read(i32 noundef %i.ot, ptr noundef %i.mt, i64 noundef %i.ol) #18
  %.not52.i = icmp eq i64 %i.ou, %i.ol
  br i1 %.not52.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ov = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.mg) ; 0 uses
  call void @report_stats_on_error() #18
  call void @exit(i32 noundef -1) #20
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.ow = load ptr, ptr @imgUV_org_frm, align 8, !tbaa !90
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !48
  call void @buf2img(ptr noundef %i.oy, ptr noundef %i.mt, i32 noundef %i.ly, i32 noundef %i.ma, i32 noundef %i.md)
  br i1 %i.mr, label %bb.ce, label %ReadOneFrame.exit

bb.ce:                                            ; preds = %bb.cd
  %i.oz = load i32, ptr @p_in, align 4, !tbaa !4
  %i.pa = shl nsw i64 %i.mk, 1
  %i.pb = sdiv i64 %i.pa, 3
  %i.pc = call i64 @lseek64(i32 noundef %i.oz, i64 noundef %i.pb, i32 noundef 1) #18 ; 0 uses
  br label %ReadOneFrame.exit

bb.cf:                                            ; preds = %bb.br
  %i.pd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) ; 0 uses
  call void @exit(i32 noundef -1) #20
  unreachable

ReadOneFrame.exit:                                ; preds = %bb.bw, %bb.cd, %bb.ce
  call void @free(ptr noundef %i.mt) #18
  %i.pe = load ptr, ptr @input, align 8, !tbaa !26 ; 11 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 56
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !138 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 60
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !139 ; 4 uses
  %i.pj = load ptr, ptr @img, align 8, !tbaa !26  ; 10 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 52
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !146 ; 6 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 68
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !121 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pe, i64 5268
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !140 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 5264
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !141 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pj, i64 64
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !147 ; 6 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pj, i64 80
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !148 ; 2 uses
  %i.pw = icmp sgt i32 %i.pi, 0
  br i1 %i.pw, label %.preheader63.lr.ph.i, label %.preheader62.i

.preheader63.lr.ph.i:                             ; preds = %ReadOneFrame.exit
  %i.px = icmp slt i32 %i.pg, %i.pl
  %i.py = load ptr, ptr @imgY_org_frm, align 8
  br i1 %i.px, label %.preheader63.preheader.i, label %.preheader62.i

.preheader63.preheader.i:                         ; preds = %.preheader63.lr.ph.i
  %i.pz = sext i32 %i.pg to i64                   ; 5 uses
  %wide.trip.count81.i = zext nneg i32 %i.pi to i64
  %wide.trip.count.i137 = sext i32 %i.pl to i64   ; 3 uses
  %i.qa = shl nsw i64 %i.pz, 1
  %i.qb = sub nsw i64 %wide.trip.count.i137, %i.pz
  %xtraiter489 = and i64 %i.qb, 7                 ; 2 uses
  %lcmp.mod490.not = icmp eq i64 %xtraiter489, 0
  %i.qc = sub nsw i64 %i.pz, %wide.trip.count.i137
  %i.qd = icmp ugt i64 %i.qc, -8
  br label %.preheader63.i

.preheader63.i:                                   ; preds = %._crit_edge.i141, %.preheader63.preheader.i
  %indvars.iv78.i = phi i64 [ 0, %.preheader63.preheader.i ], [ %indvars.iv.next79.i, %._crit_edge.i141 ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %indvars.iv78.i
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !44 ; 10 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 %i.qa
  %scevgep471 = getelementptr i8, ptr %i.qg, i64 -2
  %load_initial472 = load i16, ptr %scevgep471, align 2 ; 9 uses
  br i1 %lcmp.mod490.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader63.i, %.prol.preheader
  %indvars.iv.i138.prol = phi i64 [ %indvars.iv.next.i139.prol, %.prol.preheader ], [ %i.pz, %.preheader63.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader63.i ]
  %i.qh = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138.prol
  store i16 %load_initial472, ptr %i.qh, align 2, !tbaa !149
  %indvars.iv.next.i139.prol = add nsw i64 %indvars.iv.i138.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter489
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !150

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader63.i
  %indvars.iv.i138.unr = phi i64 [ %i.pz, %.preheader63.i ], [ %indvars.iv.next.i139.prol, %.prol.preheader ]
  br i1 %i.qd, label %._crit_edge.i141, label %.preheader63.i.new

.preheader62.i:                                   ; preds = %._crit_edge.i141, %.preheader63.lr.ph.i, %ReadOneFrame.exit
  %i.qi = icmp slt i32 %i.pi, %i.pn
  br i1 %i.qi, label %.preheader61.lr.ph.i, label %._crit_edge69.split.i

.preheader61.lr.ph.i:                             ; preds = %.preheader62.i
  %i.qj = icmp sgt i32 %i.pl, 0
  %i.qk = load ptr, ptr @imgY_org_frm, align 8
  br i1 %i.qj, label %.preheader61.preheader.i, label %._crit_edge69.split.i

.preheader61.preheader.i:                         ; preds = %.preheader61.lr.ph.i
  %i.ql = sext i32 %i.pi to i64
  %wide.trip.count91.i = sext i32 %i.pn to i64
  %wide.trip.count86.i = zext nneg i32 %i.pl to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.pl, 4
  %min.iters.check415 = icmp ult i32 %i.pl, 16
  %n.mod.vf = and i64 %wide.trip.count86.i, 12
  %n.vec = and i64 %wide.trip.count86.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86.i
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec418 = and i64 %wide.trip.count86.i, 2147483644 ; 3 uses
  %cmp.n422 = icmp eq i64 %n.vec418, %wide.trip.count86.i
  %xtraiter491 = and i64 %wide.trip.count86.i, 3  ; 2 uses
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  br label %iter.check

.preheader63.i.new:                               ; preds = %.prol.loopexit, %.preheader63.i.new
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139.7, %.preheader63.i.new ], [ %indvars.iv.i138.unr, %.prol.loopexit ] ; 9 uses
  %i.qm = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138
  store i16 %load_initial472, ptr %i.qm, align 2, !tbaa !149
  %i.qn = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138
  %i.qo = getelementptr i8, ptr %i.qn, i64 2
  store i16 %load_initial472, ptr %i.qo, align 2, !tbaa !149
  %i.qp = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138
  %i.qq = getelementptr i8, ptr %i.qp, i64 4
  store i16 %load_initial472, ptr %i.qq, align 2, !tbaa !149
  %i.qr = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138
  %i.qs = getelementptr i8, ptr %i.qr, i64 6
  store i16 %load_initial472, ptr %i.qs, align 2, !tbaa !149
  %i.qt = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138
  %i.qu = getelementptr i8, ptr %i.qt, i64 8
  store i16 %load_initial472, ptr %i.qu, align 2, !tbaa !149
  %i.qv = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138
  %i.qw = getelementptr i8, ptr %i.qv, i64 10
  store i16 %load_initial472, ptr %i.qw, align 2, !tbaa !149
  %i.qx = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138
  %i.qy = getelementptr i8, ptr %i.qx, i64 12
  store i16 %load_initial472, ptr %i.qy, align 2, !tbaa !149
  %i.qz = getelementptr [2 x i8], ptr %i.qf, i64 %indvars.iv.i138
  %i.ra = getelementptr i8, ptr %i.qz, i64 14
  store i16 %load_initial472, ptr %i.ra, align 2, !tbaa !149
  %indvars.iv.next.i139.7 = add nsw i64 %indvars.iv.i138, 8 ; 2 uses
  %exitcond.not.i140.7 = icmp eq i64 %indvars.iv.next.i139.7, %wide.trip.count.i137
  br i1 %exitcond.not.i140.7, label %._crit_edge.i141, label %.preheader63.i.new, !llvm.loop !151

._crit_edge.i141:                                 ; preds = %.preheader63.i.new, %.prol.loopexit
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count81.i
  br i1 %exitcond82.not.i, label %.preheader62.i, label %.preheader63.i, !llvm.loop !152

iter.check:                                       ; preds = %._crit_edge67.i, %.preheader61.preheader.i
  %indvars.iv88.i = phi i64 [ %i.ql, %.preheader61.preheader.i ], [ %indvars.iv.next89.i, %._crit_edge67.i ] ; 2 uses
  %i.rb = getelementptr [8 x i8], ptr %i.qk, i64 %indvars.iv88.i ; 2 uses
  %i.rc = getelementptr i8, ptr %i.rb, i64 -8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !44 ; 8 uses
  %i.re = load ptr, ptr %i.rb, align 8, !tbaa !44 ; 8 uses
  %i.rf = ptrtoaddr ptr %i.re to i64
  %i.rg = ptrtoaddr ptr %i.rd to i64
  %i.rh = sub i64 %i.rg, %i.rf
  %diff.check = icmp ugt i64 %i.rh, -32
  %or.cond478 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond478, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check415, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.rd, i64 %index ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %wide.load = load <8 x i16>, ptr %i.ri, align 2, !tbaa !149
  %wide.load416 = load <8 x i16>, ptr %i.rj, align 2, !tbaa !149
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %index ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store <8 x i16> %wide.load, ptr %i.rk, align 2, !tbaa !149
  store <8 x i16> %wide.load416, ptr %i.rl, align 2, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rm = icmp eq i64 %index.next, %n.vec
  br i1 %i.rm, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge67.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index419 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next421, %vec.epilog.vector.body ] ; 3 uses
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.rd, i64 %index419
  %wide.load420 = load <4 x i16>, ptr %i.rn, align 2, !tbaa !149
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %index419
  store <4 x i16> %wide.load420, ptr %i.ro, align 2, !tbaa !149
  %index.next421 = add nuw i64 %index419, 4       ; 2 uses
  %i.rp = icmp eq i64 %index.next421, %n.vec418
  br i1 %i.rp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n422, label %._crit_edge67.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv83.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec418, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod492.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv83.i.prol = phi i64 [ %indvars.iv.next84.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv83.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter493 = phi i64 [ %prol.iter493.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.rd, i64 %indvars.iv83.i.prol
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !149
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %indvars.iv83.i.prol
  store i16 %i.rr, ptr %i.rs, align 2, !tbaa !149
  %indvars.iv.next84.i.prol = add nuw nsw i64 %indvars.iv83.i.prol, 1 ; 2 uses
  %prol.iter493.next = add i64 %prol.iter493, 1   ; 2 uses
  %prol.iter493.cmp.not = icmp eq i64 %prol.iter493.next, %xtraiter491
  br i1 %prol.iter493.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !158

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv83.i.unr = phi i64 [ %indvars.iv83.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next84.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.rt = sub nsw i64 %indvars.iv83.i.ph, %wide.trip.count86.i
  %i.ru = icmp ugt i64 %i.rt, -4
  br i1 %i.ru, label %._crit_edge67.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv83.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.rd, i64 %indvars.iv83.i
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !149
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %indvars.iv83.i
  store i16 %i.rw, ptr %i.rx, align 2, !tbaa !149
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.rd, i64 %indvars.iv.next84.i
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !149
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %indvars.iv.next84.i
  store i16 %i.rz, ptr %i.sa, align 2, !tbaa !149
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.rd, i64 %indvars.iv.next84.i.1
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !149
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %indvars.iv.next84.i.1
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !149
  %indvars.iv.next84.i.2 = add nuw nsw i64 %indvars.iv83.i, 3 ; 2 uses
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %i.rd, i64 %indvars.iv.next84.i.2
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !149
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %indvars.iv.next84.i.2
  store i16 %i.sf, ptr %i.sg, align 2, !tbaa !149
  %indvars.iv.next84.i.3 = add nuw nsw i64 %indvars.iv83.i, 4 ; 2 uses
  %exitcond87.not.i.3 = icmp eq i64 %indvars.iv.next84.i.3, %wide.trip.count86.i
  br i1 %exitcond87.not.i.3, label %._crit_edge67.i, label %vec.epilog.scalar.ph, !llvm.loop !159

._crit_edge67.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next89.i = add nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %wide.trip.count91.i
  br i1 %exitcond92.not.i, label %._crit_edge69.split.i, label %iter.check, !llvm.loop !160

._crit_edge69.split.i:                            ; preds = %._crit_edge67.i, %.preheader61.lr.ph.i, %.preheader62.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.pj, i64 15536
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !27
  %.not.i136 = icmp eq i32 %i.si, 0
  br i1 %.not.i136, label %PaddAutoCropBorders.exit, label %.preheader60.i

.preheader60.i:                                   ; preds = %._crit_edge69.split.i
  %i.sj = icmp sgt i32 %i.pr, 0
  %i.sk = icmp slt i32 %i.pp, %i.pt
  %or.cond.i = and i1 %i.sj, %i.sk
  br i1 %or.cond.i, label %.preheader59.lr.ph.split.i, label %.preheader58.i

.preheader59.lr.ph.split.i:                       ; preds = %.preheader60.i
  %i.sl = load ptr, ptr @imgUV_org_frm, align 8   ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sl, align 8, !tbaa !48
  %i.so = load ptr, ptr %i.sm, align 8, !tbaa !48
  %i.sp = sext i32 %i.pp to i64                   ; 10 uses
  %wide.trip.count101.i = zext nneg i32 %i.pr to i64
  %wide.trip.count96.i = sext i32 %i.pt to i64    ; 5 uses
  %i.sq = shl nsw i64 %i.sp, 1
  %i.sr = add nsw i64 %i.sq, -2                   ; 4 uses
  %i.ss = shl nsw i64 %wide.trip.count96.i, 1     ; 2 uses
  %i.st = sub nsw i64 %wide.trip.count96.i, %i.sp ; 2 uses
  %i.su = xor i64 %i.sp, -1
  %i.sv = add nsw i64 %i.su, %wide.trip.count96.i ; 2 uses
  %xtraiter496 = and i64 %i.st, 3                 ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  %i.sw = icmp ult i64 %i.sv, 3
  %xtraiter499 = and i64 %i.st, 1
  %lcmp.mod500.not = icmp eq i64 %xtraiter499, 0
  %i.sx = add nsw i64 %i.sp, -1                   ; 2 uses
  %indvars.iv.next94.i.lver.orig.prol = add nsw i64 %i.sp, 1
  %i.sy = icmp eq i64 %i.sv, 0
  br label %.lver.check

.lver.check:                                      ; preds = %._crit_edge71.i, %.preheader59.lr.ph.split.i
  %indvars.iv98.i = phi i64 [ 0, %.preheader59.lr.ph.split.i ], [ %indvars.iv.next99.i, %._crit_edge71.i ] ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %indvars.iv98.i
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !44 ; 14 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %indvars.iv98.i
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !44 ; 14 uses
  %scevgep = getelementptr i8, ptr %i.ta, i64 %i.sr
  %scevgep463 = getelementptr i8, ptr %i.ta, i64 %i.ss
  %scevgep464 = getelementptr i8, ptr %i.tc, i64 %i.sr
  %scevgep465 = getelementptr i8, ptr %i.tc, i64 %i.ss
  %bound0 = icmp ult ptr %scevgep, %scevgep465
  %bound1 = icmp ult ptr %scevgep464, %scevgep463
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.ph.lver.orig.preheader, label %.ph

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  br i1 %lcmp.mod500.not, label %.ph.lver.orig.prol.loopexit, label %.ph.lver.orig.prol

.ph.lver.orig.prol:                               ; preds = %.ph.lver.orig.preheader
  %i.td = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.sx
  %i.te = load i16, ptr %i.td, align 2, !tbaa !149
  %i.tf = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.sp
  store i16 %i.te, ptr %i.tf, align 2, !tbaa !149
  %i.tg = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %i.sx
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !149
  %i.ti = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %i.sp
  store i16 %i.th, ptr %i.ti, align 2, !tbaa !149
  br label %.ph.lver.orig.prol.loopexit

.ph.lver.orig.prol.loopexit:                      ; preds = %.ph.lver.orig.prol, %.ph.lver.orig.preheader
  %indvars.iv93.i.lver.orig.unr = phi i64 [ %i.sp, %.ph.lver.orig.preheader ], [ %indvars.iv.next94.i.lver.orig.prol, %.ph.lver.orig.prol ]
  br i1 %i.sy, label %._crit_edge71.i, label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig.prol.loopexit, %.ph.lver.orig
  %indvars.iv93.i.lver.orig = phi i64 [ %indvars.iv.next94.i.lver.orig.1, %.ph.lver.orig ], [ %indvars.iv93.i.lver.orig.unr, %.ph.lver.orig.prol.loopexit ] ; 7 uses
  %i.tj = add nsw i64 %indvars.iv93.i.lver.orig, -1 ; 2 uses
  %i.tk = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.tj
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !149
  %i.tm = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %indvars.iv93.i.lver.orig
  store i16 %i.tl, ptr %i.tm, align 2, !tbaa !149
  %i.tn = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %i.tj
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !149
  %i.tp = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %indvars.iv93.i.lver.orig
  store i16 %i.to, ptr %i.tp, align 2, !tbaa !149
  %indvars.iv.next94.i.lver.orig = add nsw i64 %indvars.iv93.i.lver.orig, 1 ; 2 uses
  %i.tq = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %indvars.iv93.i.lver.orig
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !149
  %i.ts = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %indvars.iv.next94.i.lver.orig
  store i16 %i.tr, ptr %i.ts, align 2, !tbaa !149
  %i.tt = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %indvars.iv93.i.lver.orig
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !149
  %i.tv = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %indvars.iv.next94.i.lver.orig
  store i16 %i.tu, ptr %i.tv, align 2, !tbaa !149
  %indvars.iv.next94.i.lver.orig.1 = add nsw i64 %indvars.iv93.i.lver.orig, 2 ; 2 uses
  %exitcond97.not.i.lver.orig.1 = icmp eq i64 %indvars.iv.next94.i.lver.orig.1, %wide.trip.count96.i
  br i1 %exitcond97.not.i.lver.orig.1, label %._crit_edge71.i, label %.ph.lver.orig, !llvm.loop !161

.ph:                                              ; preds = %.lver.check
  %scevgep467 = getelementptr i8, ptr %i.ta, i64 %i.sr
  %load_initial = load i16, ptr %scevgep467, align 2 ; 5 uses
  %scevgep468 = getelementptr i8, ptr %i.tc, i64 %i.sr
  %load_initial469 = load i16, ptr %scevgep468, align 2 ; 5 uses
  br i1 %lcmp.mod497.not, label %.prol.loopexit495, label %.prol.preheader494

.prol.preheader494:                               ; preds = %.ph, %.prol.preheader494
  %indvars.iv93.i.prol = phi i64 [ %indvars.iv.next94.i.prol, %.prol.preheader494 ], [ %i.sp, %.ph ] ; 3 uses
  %prol.iter498 = phi i64 [ %prol.iter498.next, %.prol.preheader494 ], [ 0, %.ph ]
  %i.tw = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %indvars.iv93.i.prol
  store i16 %load_initial, ptr %i.tw, align 2, !tbaa !149
  %i.tx = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %indvars.iv93.i.prol
  store i16 %load_initial469, ptr %i.tx, align 2, !tbaa !149
  %indvars.iv.next94.i.prol = add nsw i64 %indvars.iv93.i.prol, 1 ; 2 uses
  %prol.iter498.next = add i64 %prol.iter498, 1   ; 2 uses
  %prol.iter498.cmp.not = icmp eq i64 %prol.iter498.next, %xtraiter496
  br i1 %prol.iter498.cmp.not, label %.prol.loopexit495, label %.prol.preheader494, !llvm.loop !162

.prol.loopexit495:                                ; preds = %.prol.preheader494, %.ph
  %indvars.iv93.i.unr = phi i64 [ %i.sp, %.ph ], [ %indvars.iv.next94.i.prol, %.prol.preheader494 ]
  br i1 %i.sw, label %._crit_edge71.i, label %.ph.new

.preheader58.i:                                   ; preds = %._crit_edge71.i, %.preheader60.i
  %i.ty = icmp slt i32 %i.pr, %i.pv
  %i.tz = icmp sgt i32 %i.pt, 0
  %or.cond123.i = and i1 %i.tz, %i.ty
  br i1 %or.cond123.i, label %.preheader.lr.ph.split.i, label %PaddAutoCropBorders.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader58.i
  %i.ua = load ptr, ptr @imgUV_org_frm, align 8   ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ua, align 8, !tbaa !48 ; 2 uses
  %i.ud = load ptr, ptr %i.ub, align 8, !tbaa !48 ; 2 uses
  %i.ue = sext i32 %i.pr to i64
  %wide.trip.count111.i = sext i32 %i.pv to i64
  %wide.trip.count106.i = zext nneg i32 %i.pt to i64 ; 8 uses
  %min.iters.check432 = icmp ult i32 %i.pt, 4
  %min.iters.check434 = icmp ult i32 %i.pt, 16
  %n.mod.vf436 = and i64 %wide.trip.count106.i, 12
  %n.vec437 = and i64 %wide.trip.count106.i, 2147483632 ; 4 uses
  %cmp.n446 = icmp eq i64 %n.vec437, %wide.trip.count106.i
  %min.epilog.iters.check451 = icmp eq i64 %n.mod.vf436, 0
  %n.vec454 = and i64 %wide.trip.count106.i, 2147483644 ; 3 uses
  %cmp.n461 = icmp eq i64 %n.vec454, %wide.trip.count106.i
  %xtraiter502 = and i64 %wide.trip.count106.i, 1
  %lcmp.mod503.not = icmp eq i64 %xtraiter502, 0
  %i.uf = add nsw i64 %wide.trip.count106.i, -1
  br label %iter.check448

.ph.new:                                          ; preds = %.prol.loopexit495, %.ph.new
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i.3, %.ph.new ], [ %indvars.iv93.i.unr, %.prol.loopexit495 ] ; 6 uses
  %i.ug = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %indvars.iv93.i
  store i16 %load_initial, ptr %i.ug, align 2, !tbaa !149
  %i.uh = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %indvars.iv93.i
  store i16 %load_initial469, ptr %i.uh, align 2, !tbaa !149
  %indvars.iv.next94.i = add nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.ui = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %indvars.iv.next94.i
  store i16 %load_initial, ptr %i.ui, align 2, !tbaa !149
  %i.uj = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %indvars.iv.next94.i
  store i16 %load_initial469, ptr %i.uj, align 2, !tbaa !149
  %indvars.iv.next94.i.1 = add nsw i64 %indvars.iv93.i, 2 ; 2 uses
  %i.uk = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %indvars.iv.next94.i.1
  store i16 %load_initial, ptr %i.uk, align 2, !tbaa !149
  %i.ul = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %indvars.iv.next94.i.1
  store i16 %load_initial469, ptr %i.ul, align 2, !tbaa !149
  %indvars.iv.next94.i.2 = add nsw i64 %indvars.iv93.i, 3 ; 2 uses
  %i.um = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %indvars.iv.next94.i.2
  store i16 %load_initial, ptr %i.um, align 2, !tbaa !149
  %i.un = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %indvars.iv.next94.i.2
  store i16 %load_initial469, ptr %i.un, align 2, !tbaa !149
  %indvars.iv.next94.i.3 = add nsw i64 %indvars.iv93.i, 4 ; 2 uses
  %exitcond97.not.i.3 = icmp eq i64 %indvars.iv.next94.i.3, %wide.trip.count96.i
  br i1 %exitcond97.not.i.3, label %._crit_edge71.i, label %.ph.new, !llvm.loop !161

._crit_edge71.i:                                  ; preds = %.prol.loopexit495, %.ph.new, %.ph.lver.orig.prol.loopexit, %.ph.lver.orig
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count101.i
  br i1 %exitcond102.not.i, label %.preheader58.i, label %.lver.check, !llvm.loop !163

iter.check448:                                    ; preds = %._crit_edge74.i, %.preheader.lr.ph.split.i
  %indvars.iv108.i = phi i64 [ %i.ue, %.preheader.lr.ph.split.i ], [ %indvars.iv.next109.i, %._crit_edge74.i ] ; 4 uses
  %i.uo = add nsw i64 %indvars.iv108.i, -1        ; 2 uses
  %i.up = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.uo
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !44 ; 6 uses
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %indvars.iv108.i
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !44 ; 6 uses
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.ud, i64 %i.uo
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !44 ; 6 uses
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.ud, i64 %indvars.iv108.i
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !44 ; 6 uses
  br i1 %min.iters.check432, label %vec.epilog.scalar.ph449.preheader, label %vector.memcheck423

vector.memcheck423:                               ; preds = %iter.check448
  %i.ux = ptrtoaddr ptr %i.uw to i64              ; 3 uses
  %i.uy = ptrtoaddr ptr %i.uu to i64              ; 2 uses
  %i.uz = ptrtoaddr ptr %i.us to i64              ; 3 uses
  %i.va = ptrtoaddr ptr %i.uq to i64              ; 2 uses
  %i.vb = sub i64 %i.uz, %i.ux
  %diff.check424 = icmp ugt i64 %i.vb, -32
  %i.vc = sub i64 %i.va, %i.uz
  %diff.check425 = icmp ugt i64 %i.vc, -32
  %conflict.rdx = or i1 %diff.check424, %diff.check425
  %i.vd = sub i64 %i.uz, %i.uy
  %diff.check426 = icmp ugt i64 %i.vd, -32
  %conflict.rdx427 = or i1 %conflict.rdx, %diff.check426
  %i.ve = sub i64 %i.va, %i.ux
  %diff.check428 = icmp ugt i64 %i.ve, -32
  %conflict.rdx429 = or i1 %conflict.rdx427, %diff.check428
  %i.vf = sub i64 %i.uy, %i.ux
  %diff.check430 = icmp ugt i64 %i.vf, -32
  %conflict.rdx431 = or i1 %conflict.rdx429, %diff.check430
  br i1 %conflict.rdx431, label %vec.epilog.scalar.ph449.preheader, label %vector.main.loop.iter.check433

vector.main.loop.iter.check433:                   ; preds = %vector.memcheck423
  br i1 %min.iters.check434, label %vec.epilog.ph452, label %vector.body438

vector.body438:                                   ; preds = %vector.main.loop.iter.check433, %vector.body438
  %index439 = phi i64 [ %index.next444, %vector.body438 ], [ 0, %vector.main.loop.iter.check433 ] ; 5 uses
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %index439 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load440 = load <8 x i16>, ptr %i.vg, align 2, !tbaa !149
  %wide.load441 = load <8 x i16>, ptr %i.vh, align 2, !tbaa !149
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.us, i64 %index439 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store <8 x i16> %wide.load440, ptr %i.vi, align 2, !tbaa !149
  store <8 x i16> %wide.load441, ptr %i.vj, align 2, !tbaa !149
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %index439 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %wide.load442 = load <8 x i16>, ptr %i.vk, align 2, !tbaa !149
  %wide.load443 = load <8 x i16>, ptr %i.vl, align 2, !tbaa !149
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.uw, i64 %index439 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <8 x i16> %wide.load442, ptr %i.vm, align 2, !tbaa !149
  store <8 x i16> %wide.load443, ptr %i.vn, align 2, !tbaa !149
  %index.next444 = add nuw i64 %index439, 16      ; 2 uses
  %i.vo = icmp eq i64 %index.next444, %n.vec437
  br i1 %i.vo, label %middle.block445, label %vector.body438, !llvm.loop !164

middle.block445:                                  ; preds = %vector.body438
  br i1 %cmp.n446, label %._crit_edge74.i, label %vec.epilog.iter.check450

vec.epilog.iter.check450:                         ; preds = %middle.block445
  br i1 %min.epilog.iters.check451, label %vec.epilog.scalar.ph449.preheader, label %vec.epilog.ph452, !prof !156

vec.epilog.ph452:                                 ; preds = %vector.main.loop.iter.check433, %vec.epilog.iter.check450
  %vec.epilog.resume.val447 = phi i64 [ %n.vec437, %vec.epilog.iter.check450 ], [ 0, %vector.main.loop.iter.check433 ]
  br label %vec.epilog.vector.body455

vec.epilog.vector.body455:                        ; preds = %vec.epilog.vector.body455, %vec.epilog.ph452
  %index456 = phi i64 [ %vec.epilog.resume.val447, %vec.epilog.ph452 ], [ %index.next459, %vec.epilog.vector.body455 ] ; 5 uses
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %index456
  %wide.load457 = load <4 x i16>, ptr %i.vp, align 2, !tbaa !149
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.us, i64 %index456
  store <4 x i16> %wide.load457, ptr %i.vq, align 2, !tbaa !149
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %index456
  %wide.load458 = load <4 x i16>, ptr %i.vr, align 2, !tbaa !149
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.uw, i64 %index456
  store <4 x i16> %wide.load458, ptr %i.vs, align 2, !tbaa !149
  %index.next459 = add nuw i64 %index456, 4       ; 2 uses
  %i.vt = icmp eq i64 %index.next459, %n.vec454
  br i1 %i.vt, label %vec.epilog.middle.block460, label %vec.epilog.vector.body455, !llvm.loop !165

vec.epilog.middle.block460:                       ; preds = %vec.epilog.vector.body455
  br i1 %cmp.n461, label %._crit_edge74.i, label %vec.epilog.scalar.ph449.preheader

vec.epilog.scalar.ph449.preheader:                ; preds = %vector.memcheck423, %iter.check448, %vec.epilog.iter.check450, %vec.epilog.middle.block460
  %indvars.iv103.i.ph = phi i64 [ 0, %iter.check448 ], [ 0, %vector.memcheck423 ], [ %n.vec437, %vec.epilog.iter.check450 ], [ %n.vec454, %vec.epilog.middle.block460 ] ; 7 uses
  br i1 %lcmp.mod503.not, label %vec.epilog.scalar.ph449.prol.loopexit, label %vec.epilog.scalar.ph449.prol

vec.epilog.scalar.ph449.prol:                     ; preds = %vec.epilog.scalar.ph449.preheader
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv103.i.ph
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !149
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.us, i64 %indvars.iv103.i.ph
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !149
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %indvars.iv103.i.ph
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !149
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.uw, i64 %indvars.iv103.i.ph
  store i16 %i.vy, ptr %i.vz, align 2, !tbaa !149
  %indvars.iv.next104.i.prol = or disjoint i64 %indvars.iv103.i.ph, 1
  br label %vec.epilog.scalar.ph449.prol.loopexit

vec.epilog.scalar.ph449.prol.loopexit:            ; preds = %vec.epilog.scalar.ph449.prol, %vec.epilog.scalar.ph449.preheader
  %indvars.iv103.i.unr = phi i64 [ %indvars.iv103.i.ph, %vec.epilog.scalar.ph449.preheader ], [ %indvars.iv.next104.i.prol, %vec.epilog.scalar.ph449.prol ]
  %i.wa = icmp eq i64 %indvars.iv103.i.ph, %i.uf
  br i1 %i.wa, label %._crit_edge74.i, label %vec.epilog.scalar.ph449

vec.epilog.scalar.ph449:                          ; preds = %vec.epilog.scalar.ph449.prol.loopexit, %vec.epilog.scalar.ph449
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i.1, %vec.epilog.scalar.ph449 ], [ %indvars.iv103.i.unr, %vec.epilog.scalar.ph449.prol.loopexit ] ; 6 uses
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv103.i
  %i.wc = load i16, ptr %i.wb, align 2, !tbaa !149
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.us, i64 %indvars.iv103.i
  store i16 %i.wc, ptr %i.wd, align 2, !tbaa !149
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %indvars.iv103.i
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !149
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.uw, i64 %indvars.iv103.i
  store i16 %i.wf, ptr %i.wg, align 2, !tbaa !149
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 4 uses
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv.next104.i
  %i.wi = load i16, ptr %i.wh, align 2, !tbaa !149
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.us, i64 %indvars.iv.next104.i
  store i16 %i.wi, ptr %i.wj, align 2, !tbaa !149
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %indvars.iv.next104.i
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !149
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.uw, i64 %indvars.iv.next104.i
  store i16 %i.wl, ptr %i.wm, align 2, !tbaa !149
  %indvars.iv.next104.i.1 = add nuw nsw i64 %indvars.iv103.i, 2 ; 2 uses
  %exitcond107.not.i.1 = icmp eq i64 %indvars.iv.next104.i.1, %wide.trip.count106.i
  br i1 %exitcond107.not.i.1, label %._crit_edge74.i, label %vec.epilog.scalar.ph449, !llvm.loop !166

._crit_edge74.i:                                  ; preds = %vec.epilog.scalar.ph449.prol.loopexit, %vec.epilog.scalar.ph449, %vec.epilog.middle.block460, %middle.block445
  %indvars.iv.next109.i = add nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %wide.trip.count111.i
  br i1 %exitcond112.not.i, label %PaddAutoCropBorders.exit, label %iter.check448, !llvm.loop !167

PaddAutoCropBorders.exit:                         ; preds = %._crit_edge74.i, %._crit_edge69.split.i, %.preheader58.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.pe, i64 2112
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !168
  %i.wp = getelementptr inbounds nuw i8, ptr %i.pj, i64 14452
  store i32 %i.wo, ptr %i.wp, align 4, !tbaa !169
  %i.wq = getelementptr inbounds nuw i8, ptr %i.pe, i64 4752
  %i.wr = getelementptr inbounds nuw i8, ptr %i.pj, i64 14440
  %i.ws = load <2 x i32>, ptr %i.wq, align 8, !tbaa !4
  store <2 x i32> %i.ws, ptr %i.wr, align 8, !tbaa !4
  %i.wt = getelementptr inbounds nuw i8, ptr %i.pe, i64 4760
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !170
  %i.wv = getelementptr inbounds nuw i8, ptr %i.pj, i64 14448
  store i32 %i.wu, ptr %i.wv, align 8, !tbaa !171
  %i.ww = getelementptr inbounds nuw i8, ptr %i.pe, i64 5652
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !172
  %i.wy = getelementptr inbounds nuw i8, ptr %i.pj, i64 15260
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !173
  %i.wz = getelementptr inbounds nuw i8, ptr %i.pj, i64 20 ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !60
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr @frame_ctr, i64 %i.xb ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !4
  %i.xe = add nsw i32 %i.xd, 1
  store i32 %i.xe, ptr %i.xc, align 4, !tbaa !4
  %i.xf = load ptr, ptr @snr, align 8, !tbaa !26
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 120 ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !174
  %i.xi = add nsw i32 %i.xh, 1
  store i32 %i.xi, ptr %i.xg, align 4, !tbaa !174
  %i.xj = load i32, ptr %i.wz, align 4, !tbaa !60
  %i.xk = icmp eq i32 %i.xj, 3
  br i1 %i.xk, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %PaddAutoCropBorders.exit
  %i.xl = getelementptr inbounds nuw i8, ptr %i.pe, i64 2152
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !110
  %.not87 = icmp eq i32 %i.xm, 0
  br i1 %.not87, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i32 1, ptr @sp2_frame_indicator, align 4, !tbaa !4
  call void @read_SP_coefficients()
  %.pre265 = load ptr, ptr @input, align 8, !tbaa !26
  br label %bb.cj

bb.ci:                                            ; preds = %PaddAutoCropBorders.exit
  store i32 0, ptr @sp2_frame_indicator, align 4, !tbaa !4
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cg, %bb.ch, %bb.ci
  %i.xn = phi ptr [ %i.pe, %bb.cg ], [ %.pre265, %bb.ch ], [ %i.pe, %bb.ci ] ; 8 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 4704
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !176
  %i.xq = icmp eq i32 %i.xp, 1
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 5116
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !108
  %.not106 = icmp eq i32 %i.xs, 0                 ; 2 uses
  br i1 %i.xq, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  br i1 %.not106, label %.thread353, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xt = load ptr, ptr @generic_RC, align 8, !tbaa !26
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  store i32 1, ptr %i.xu, align 4, !tbaa !177
  br label %.thread353

.thread353:                                       ; preds = %bb.ck, %bb.cl
  %i.xv = load ptr, ptr @img, align 8, !tbaa !26
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 15312
  store i32 1, ptr %i.xw, align 8, !tbaa !179
  %i.xx = load ptr, ptr @top_pic, align 8, !tbaa !26
  %i.xy = load ptr, ptr @bottom_pic, align 8, !tbaa !26
  call void @field_picture(ptr noundef %i.xx, ptr noundef %i.xy)
  %i.xz = load ptr, ptr @img, align 8, !tbaa !26  ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 14256
  store i32 1, ptr %i.ya, align 8, !tbaa !180
  br label %bb.fs

bb.cm:                                            ; preds = %bb.cj
  br i1 %.not106, label %bb.cn, label %.thread363

bb.cn:                                            ; preds = %bb.cm
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xn, i64 4708
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !181
  %.not89 = icmp eq i32 %i.yc, 0
  br i1 %.not89, label %bb.co, label %.thread348

.thread363:                                       ; preds = %bb.cm
  %i.yd = load ptr, ptr @generic_RC, align 8, !tbaa !26
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  store i32 0, ptr %i.ye, align 4, !tbaa !177
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xn, i64 4708
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !181
  %.not89364 = icmp eq i32 %i.yg, 0
end_hunk_0
begin_hunk_1_@buf2img:bb.a
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  %lcmp.mod199 = trunc i32 %2 to i1
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  switch i32 %4, label %.loopexit88 [
    i32 1, label %.preheader81
    i32 2, label %.preheader84
    i32 4, label %.preheader87
  ]

.preheader87:                                     ; preds = %bb.d
  %i.i = icmp sgt i32 %3, 0
  %i.j = icmp sgt i32 %2, 0
  %or.cond102 = and i1 %i.i, %i.j
  br i1 %or.cond102, label %.preheader86.preheader, label %.loopexit88

.preheader86.preheader:                           ; preds = %.preheader87
  %i.k = zext nneg i32 %2 to i64                  ; 3 uses
  %wide.trip.count111 = zext nneg i32 %3 to i64
  %xtraiter = and i64 %i.k, 1
  %i.l = icmp eq i32 %2, 1
  %unroll_iter = and i64 %i.k, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod191 = trunc i32 %2 to i1
  br label %.preheader86

.preheader84:                                     ; preds = %bb.d
  %i.m = icmp sgt i32 %3, 0
  %i.n = icmp sgt i32 %2, 0
  %or.cond103 = and i1 %i.m, %i.n
  br i1 %or.cond103, label %.preheader83.preheader, label %.loopexit

.preheader83.preheader:                           ; preds = %.preheader84
  %i.o = zext nneg i32 %2 to i64                  ; 10 uses
  %wide.trip.count121 = zext nneg i32 %3 to i64
  %i.p = mul nsw i64 %i.o, -2
  %min.iters.check = icmp ult i32 %2, 4
  %min.iters.check151 = icmp ult i32 %2, 16
  %n.mod.vf = and i64 %i.o, 12
  %n.vec = and i64 %i.o, 2147483632               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.o
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec154 = and i64 %i.o, 2147483644            ; 3 uses
  %cmp.n158 = icmp eq i64 %n.vec154, %i.o
  %xtraiter192 = and i64 %i.o, 1
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  %i.q = add nsw i64 %i.o, -1
  br label %iter.check

.preheader81:                                     ; preds = %bb.d
  %i.r = icmp sgt i32 %3, 0
  %i.s = icmp sgt i32 %2, 0
  %or.cond104 = and i1 %i.r, %i.s
  br i1 %or.cond104, label %.preheader80.preheader, label %.loopexit

.preheader80.preheader:                           ; preds = %.preheader81
  %i.t = zext nneg i32 %2 to i64                  ; 11 uses
  %wide.trip.count131 = zext nneg i32 %3 to i64   ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = mul nuw nsw i64 %wide.trip.count131, %i.t
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.v
  %min.iters.check161 = icmp ult i32 %2, 4
  %min.iters.check163 = icmp ult i32 %2, 16
  %n.mod.vf165 = and i64 %i.t, 12
  %n.vec166 = and i64 %i.t, 2147483632            ; 4 uses
  %cmp.n173 = icmp eq i64 %n.vec166, %i.t
  %min.epilog.iters.check178 = icmp eq i64 %n.mod.vf165, 0
  %n.vec181 = and i64 %i.t, 2147483644            ; 3 uses
  %cmp.n187 = icmp eq i64 %n.vec181, %i.t
  %xtraiter194 = and i64 %i.t, 3                  ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br label %iter.check175

iter.check175:                                    ; preds = %.preheader80.preheader, %._crit_edge97
  %indvars.iv128 = phi i64 [ 0, %.preheader80.preheader ], [ %indvars.iv.next129, %._crit_edge97 ] ; 3 uses
  %i.w = mul nuw nsw i64 %indvars.iv128, %i.t
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44   ; 9 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 7 uses
  br i1 %min.iters.check161, label %vec.epilog.scalar.ph176.preheader, label %vector.memcheck159

vector.memcheck159:                               ; preds = %iter.check175
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.u
  %bound0 = icmp ult ptr %i.y, %scevgep160
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph176.preheader, label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %vector.memcheck159
  br i1 %min.iters.check163, label %vec.epilog.ph179, label %vector.body167

vector.body167:                                   ; preds = %vector.main.loop.iter.check162, %vector.body167
  %index168 = phi i64 [ %index.next171, %vector.body167 ], [ 0, %vector.main.loop.iter.check162 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index168 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load169 = load <8 x i8>, ptr %i.z, align 1, !tbaa !43, !alias.scope !406
  %wide.load170 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !43, !alias.scope !406
  %i.ab = zext <8 x i8> %wide.load169 to <8 x i16>
  %i.ac = zext <8 x i8> %wide.load170 to <8 x i16>
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index168 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <8 x i16> %i.ab, ptr %i.ad, align 2, !tbaa !149, !alias.scope !409, !noalias !406
  store <8 x i16> %i.ac, ptr %i.ae, align 2, !tbaa !149, !alias.scope !409, !noalias !406
  %index.next171 = add nuw i64 %index168, 16      ; 2 uses
  %i.af = icmp eq i64 %index.next171, %n.vec166
  br i1 %i.af, label %middle.block172, label %vector.body167, !llvm.loop !411

middle.block172:                                  ; preds = %vector.body167
  br i1 %cmp.n173, label %._crit_edge97, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block172
  br i1 %min.epilog.iters.check178, label %vec.epilog.scalar.ph176.preheader, label %vec.epilog.ph179, !prof !156

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check177
  %vec.epilog.resume.val174 = phi i64 [ %n.vec166, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check162 ]
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph179
  %index183 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph179 ], [ %index.next185, %vec.epilog.vector.body182 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index183
  %wide.load184 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !43, !alias.scope !406
  %i.ah = zext <4 x i8> %wide.load184 to <4 x i16>
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index183
  store <4 x i16> %i.ah, ptr %i.ai, align 2, !tbaa !149, !alias.scope !409, !noalias !406
  %index.next185 = add nuw i64 %index183, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next185, %n.vec181
  br i1 %i.aj, label %vec.epilog.middle.block186, label %vec.epilog.vector.body182, !llvm.loop !412

vec.epilog.middle.block186:                       ; preds = %vec.epilog.vector.body182
  br i1 %cmp.n187, label %._crit_edge97, label %vec.epilog.scalar.ph176.preheader

vec.epilog.scalar.ph176.preheader:                ; preds = %vector.memcheck159, %iter.check175, %vec.epilog.iter.check177, %vec.epilog.middle.block186
  %indvars.iv123.ph = phi i64 [ 0, %iter.check175 ], [ 0, %vector.memcheck159 ], [ %n.vec166, %vec.epilog.iter.check177 ], [ %n.vec181, %vec.epilog.middle.block186 ] ; 3 uses
  br i1 %lcmp.mod195.not, label %vec.epilog.scalar.ph176.prol.loopexit, label %vec.epilog.scalar.ph176.prol

vec.epilog.scalar.ph176.prol:                     ; preds = %vec.epilog.scalar.ph176.preheader, %vec.epilog.scalar.ph176.prol
  %indvars.iv123.prol = phi i64 [ %indvars.iv.next124.prol, %vec.epilog.scalar.ph176.prol ], [ %indvars.iv123.ph, %vec.epilog.scalar.ph176.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph176.prol ], [ 0, %vec.epilog.scalar.ph176.preheader ]
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv123.prol
  %i.ak = load i8, ptr %gep.prol, align 1, !tbaa !43
  %i.al = zext i8 %i.ak to i16
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv123.prol
  store i16 %i.al, ptr %i.am, align 2, !tbaa !149
  %indvars.iv.next124.prol = add nuw nsw i64 %indvars.iv123.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter194
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph176.prol.loopexit, label %vec.epilog.scalar.ph176.prol, !llvm.loop !413

vec.epilog.scalar.ph176.prol.loopexit:            ; preds = %vec.epilog.scalar.ph176.prol, %vec.epilog.scalar.ph176.preheader
  %indvars.iv123.unr = phi i64 [ %indvars.iv123.ph, %vec.epilog.scalar.ph176.preheader ], [ %indvars.iv.next124.prol, %vec.epilog.scalar.ph176.prol ]
  %i.an = sub nsw i64 %indvars.iv123.ph, %i.t
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge97, label %vec.epilog.scalar.ph176

vec.epilog.scalar.ph176:                          ; preds = %vec.epilog.scalar.ph176.prol.loopexit, %vec.epilog.scalar.ph176
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.3, %vec.epilog.scalar.ph176 ], [ %indvars.iv123.unr, %vec.epilog.scalar.ph176.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv123
  %i.ap = load i8, ptr %gep, align 1, !tbaa !43
  %i.aq = zext i8 %i.ap to i16
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv123
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !149
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next124
  %i.as = load i8, ptr %gep.1, align 1, !tbaa !43
  %i.at = zext i8 %i.as to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next124
  store i16 %i.at, ptr %i.au, align 2, !tbaa !149
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next124.1
  %i.av = load i8, ptr %gep.2, align 1, !tbaa !43
  %i.aw = zext i8 %i.av to i16
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next124.1
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !149
  %indvars.iv.next124.2 = add nuw nsw i64 %indvars.iv123, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next124.2
  %i.ay = load i8, ptr %gep.3, align 1, !tbaa !43
  %i.az = zext i8 %i.ay to i16
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next124.2
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !149
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %exitcond127.not.3 = icmp eq i64 %indvars.iv.next124.3, %i.t
  br i1 %exitcond127.not.3, label %._crit_edge97, label %vec.epilog.scalar.ph176, !llvm.loop !414

._crit_edge97:                                    ; preds = %vec.epilog.scalar.ph176.prol.loopexit, %vec.epilog.scalar.ph176, %vec.epilog.middle.block186, %middle.block172
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit, label %iter.check175, !llvm.loop !415

iter.check:                                       ; preds = %.preheader83.preheader, %._crit_edge94
  %indvars.iv118 = phi i64 [ 0, %.preheader83.preheader ], [ %indvars.iv.next119, %._crit_edge94 ] ; 4 uses
  %i.bb = mul nuw nsw i64 %indvars.iv118, %i.o    ; 5 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv118
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !44 ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.be = ptrtoaddr ptr %i.bd to i64
  %i.bf = mul i64 %i.p, %indvars.iv118
  %i.bg = sub i64 %i.bf, %i.a
  %5 = add i64 %i.bg, %i.be
  %i.bh = add i64 %5, -1
  %diff.check = icmp ult i64 %i.bh, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bi = add nuw nsw i64 %index, %i.bb
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <8 x i16>, ptr %i.bk, align 1
  %wide.load152 = load <8 x i16>, ptr %i.bl, align 1
  %i.bm = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.bn = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load152)
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <8 x i16> %i.bm, ptr %i.bo, align 2, !tbaa !149
  store <8 x i16> %i.bn, ptr %i.bp, align 2, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !416

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge94, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %vec.epilog.vector.body ] ; 3 uses
  %i.br = add nuw nsw i64 %index155, %i.bb
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %wide.load156 = load <4 x i16>, ptr %i.bt, align 1
  %i.bu = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load156)
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %index155
  store <4 x i16> %i.bu, ptr %i.bv, align 2, !tbaa !149
  %index.next157 = add nuw i64 %index155, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next157, %n.vec154
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !417

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n158, label %._crit_edge94, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv113.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec154, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod193.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bx = add nuw nsw i64 %indvars.iv113.ph, %i.bb
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %.0.copyload6.prol = load i16, ptr %i.bz, align 1
  %rev78.prol = tail call i16 @llvm.bswap.i16(i16 %.0.copyload6.prol)
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv113.ph
  store i16 %rev78.prol, ptr %i.ca, align 2, !tbaa !149
  %indvars.iv.next114.prol = or disjoint i64 %indvars.iv113.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv113.unr = phi i64 [ %indvars.iv113.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next114.prol, %vec.epilog.scalar.ph.prol ]
  %i.cb = icmp eq i64 %indvars.iv113.ph, %i.q
  br i1 %i.cb, label %._crit_edge94, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.1, %vec.epilog.scalar.ph ], [ %indvars.iv113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.cc = add nuw nsw i64 %indvars.iv113, %i.bb
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.cd
  %.0.copyload6 = load i16, ptr %i.ce, align 1
  %rev78 = tail call i16 @llvm.bswap.i16(i16 %.0.copyload6)
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv113
  store i16 %rev78, ptr %i.cf, align 2, !tbaa !149
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.cg = add nuw nsw i64 %indvars.iv.next114, %i.bb
  %i.ch = shl nuw nsw i64 %i.cg, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %.0.copyload6.1 = load i16, ptr %i.ci, align 1
  %rev78.1 = tail call i16 @llvm.bswap.i16(i16 %.0.copyload6.1)
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv.next114
  store i16 %rev78.1, ptr %i.cj, align 2, !tbaa !149
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %exitcond117.not.1 = icmp eq i64 %indvars.iv.next114.1, %i.o
  br i1 %exitcond117.not.1, label %._crit_edge94, label %vec.epilog.scalar.ph, !llvm.loop !418

._crit_edge94:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %.loopexit, label %iter.check, !llvm.loop !419

.preheader86:                                     ; preds = %.preheader86.preheader, %._crit_edge
  %indvars.iv108 = phi i64 [ 0, %.preheader86.preheader ], [ %indvars.iv.next109, %._crit_edge ] ; 3 uses
  %i.ck = mul nuw nsw i64 %indvars.iv108, %i.k    ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv108
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !44 ; 3 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader86.new

.preheader86.new:                                 ; preds = %.preheader86, %.preheader86.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader86.new ], [ 0, %.preheader86 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader86.new ], [ 0, %.preheader86 ]
  %i.cn = add nuw nsw i64 %indvars.iv, %i.ck
  %i.co = shl i64 %i.cn, 2
  %i.cp = and i64 %i.co, 4294967292
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %.0.copyload = load i32, ptr %i.cq, align 1
  %rev = tail call i32 @llvm.bswap.i32(i32 %.0.copyload)
  %i.cr = trunc i32 %rev to i16
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !149
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ct = add nuw nsw i64 %indvars.iv.next, %i.ck
  %i.cu = shl i64 %i.ct, 2
  %i.cv = and i64 %i.cu, 4294967292
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %.0.copyload.1 = load i32, ptr %i.cw, align 1
  %rev.1 = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.1)
  %i.cx = trunc i32 %rev.1 to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.next
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !149
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader86.new, !llvm.loop !420

._crit_edge.unr-lcssa:                            ; preds = %.preheader86.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader86
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader86 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.cz = add nuw nsw i64 %indvars.iv.epil.init, %i.ck
  %i.da = shl i64 %i.cz, 2
  %i.db = and i64 %i.da, 4294967292
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %.0.copyload.epil = load i32, ptr %i.dc, align 1
  %rev.epil = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.epil)
  %i.dd = trunc i32 %rev.epil to i16
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.epil.init
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !149
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %.loopexit88, label %.preheader86, !llvm.loop !421

.loopexit88:                                      ; preds = %._crit_edge, %.preheader87, %bb.d
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 500) #18
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge100
  %indvars.iv138 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next139, %._crit_edge100 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv138 ; 3 uses
  %i.dg = mul nuw nsw i64 %indvars.iv138, %i.g    ; 3 uses
  br i1 %i.h, label %.epil.preheader196, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv133 = phi i64 [ %indvars.iv.next134.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter201 = phi i64 [ %niter201.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv133 ; 2 uses
  store i16 0, ptr %i.di, align 2, !tbaa !149
  %i.dj = add nuw nsw i64 %indvars.iv133, %i.dg
  %i.dk = mul nsw i64 %i.dj, %i.b
  %i.dl = getelementptr inbounds i8, ptr %1, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.di, ptr align 1 %i.dl, i64 %i.b, i1 false)
  %indvars.iv.next134 = or disjoint i64 %indvars.iv133, 1 ; 2 uses
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv.next134 ; 2 uses
  store i16 0, ptr %i.dn, align 2, !tbaa !149
  %i.do = add nuw nsw i64 %indvars.iv.next134, %i.dg
  %i.dp = mul nsw i64 %i.do, %i.b
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dn, ptr align 1 %i.dq, i64 %i.b, i1 false)
  %indvars.iv.next134.1 = add nuw nsw i64 %indvars.iv133, 2 ; 2 uses
  %niter201.next.1 = add i64 %niter201, 2         ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %._crit_edge100.unr-lcssa, label %.preheader.new, !llvm.loop !422

._crit_edge100.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod198.not, label %._crit_edge100, label %.epil.preheader196

.epil.preheader196:                               ; preds = %._crit_edge100.unr-lcssa, %.preheader
  %indvars.iv133.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next134.1, %._crit_edge100.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.dr = load ptr, ptr %i.df, align 8, !tbaa !44
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %indvars.iv133.epil.init ; 2 uses
  store i16 0, ptr %i.ds, align 2, !tbaa !149
  %i.dt = add nuw nsw i64 %indvars.iv133.epil.init, %i.dg
  %i.du = mul nsw i64 %i.dt, %i.b
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ds, ptr align 1 %i.dv, i64 %i.b, i1 false)
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.unr-lcssa, %.epil.preheader196
end_hunk_1
