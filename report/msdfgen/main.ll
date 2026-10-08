Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/main?download=true
inline.NumInlined: 364
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@main:bb.a
bb.fz:                                            ; preds = %bb.fy, %bb.fx, %bb.fw, %bb.fv
  store i32 1, ptr %i.ac, align 8, !tbaa !143
  store i32 0, ptr %i.af, align 4, !tbaa !144
  br label %.backedge, !llvm.loop !32

bb.ga:                                            ; preds = %bb.fy
  %i.ol = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nq, ptr noundef nonnull dereferenceable(14) @.str.104) #22
  %.not1223 = icmp eq i32 %i.ol, 0
  br i1 %.not1223, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.om = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nq, ptr noundef nonnull dereferenceable(20) @.str.105) #22
  %.not1224 = icmp eq i32 %i.om, 0
  br i1 %.not1224, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  store i32 1, ptr %i.ac, align 8, !tbaa !143
  store i32 2, ptr %i.af, align 4, !tbaa !144
  br label %.backedge, !llvm.loop !32

bb.gd:                                            ; preds = %bb.gb
  %i.on = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nq, ptr noundef nonnull dereferenceable(10) @.str.106) #22
  %.not1225 = icmp eq i32 %i.on, 0
  br i1 %.not1225, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  store i32 3, ptr %i.ac, align 8, !tbaa !143
  store i32 0, ptr %i.af, align 4, !tbaa !144
  br label %.backedge, !llvm.loop !32

bb.gf:                                            ; preds = %bb.gd
  %i.oo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nq, ptr noundef nonnull dereferenceable(5) @.str.107) #22
  %.not1226 = icmp eq i32 %i.oo, 0
  br i1 %.not1226, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.op = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nq, ptr noundef nonnull dereferenceable(10) @.str.108) #22
  %.not1227 = icmp eq i32 %i.op, 0
  br i1 %.not1227, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  store i32 3, ptr %i.ac, align 8, !tbaa !143
  store i32 2, ptr %i.af, align 4, !tbaa !144
  br label %.backedge, !llvm.loop !32

bb.gi:                                            ; preds = %bb.gg
  %i.oq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.nq, ptr noundef nonnull dereferenceable(5) @.str.109) #22
  %.not1228 = icmp eq i32 %i.oq, 0
  br i1 %.not1228, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.or = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.185) ; 0 uses
  br label %_ZL12parseUnicodeRjPKc.exit.thread

bb.gk:                                            ; preds = %bb.gi
  %i.os = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1229 = call i64 @fwrite(ptr nonnull @.str.110, i64 79, i64 1, ptr %i.os) #23 ; 0 uses
  br label %.backedge, !llvm.loop !32

bb.gl:                                            ; preds = %bb.ff, %bb.fe
  %i.ot = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(21) @.str.111) #22
  %.not1230 = icmp eq i32 %i.ot, 0
  br i1 %.not1230, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  %i.ou = add nsw i32 %.08554492, 1               ; 2 uses
  %i.ov = icmp slt i32 %i.ou, %0
  br i1 %i.ov, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.ow = sext i32 %i.ou to i64
  %i.ox = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ow
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store ptr null, ptr %i.h, align 8, !tbaa !15
  %i.oz = call double @strtod(ptr noundef %i.oy, ptr noundef nonnull %i.h) #21 ; 2 uses
  %i.pa = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.pb = icmp ugt ptr %i.pa, %i.oy
  br i1 %i.pb, label %_ZL11parseDoubleRdPKc.exit1326, label %_ZL11parseDoubleRdPKc.exit1326.thread

_ZL11parseDoubleRdPKc.exit1326.thread:            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %.loopexit2361

_ZL11parseDoubleRdPKc.exit1326:                   ; preds = %bb.gn
  %i.pc = load i8, ptr %i.pa, align 1, !tbaa !16
  %.not.i1325 = icmp eq i8 %i.pc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  %i.pd = fcmp ogt double %i.oz, 0.000000e+00
  %or.cond17 = select i1 %.not.i1325, i1 %i.pd, i1 false
  br i1 %or.cond17, label %bb.go, label %.loopexit2361

.loopexit2361:                                    ; preds = %_ZL11parseDoubleRdPKc.exit1326, %_ZL11parseDoubleRdPKc.exit1326.thread
  %i.pe = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1231 = call i64 @fwrite(ptr nonnull @.str.112, i64 93, i64 1, ptr %i.pe) #23 ; 0 uses
  br label %_ZL12parseUnicodeRjPKc.exit.thread

bb.go:                                            ; preds = %_ZL11parseDoubleRdPKc.exit1326
  store double %i.oz, ptr %i.ag, align 8, !tbaa !145
  br label %.backedge, !llvm.loop !32

bb.gp:                                            ; preds = %bb.gm, %bb.gl
  %i.pf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(19) @.str.113) #22
  %.not1232 = icmp eq i32 %i.pf, 0
  br i1 %.not1232, label %bb.gq, label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  %i.pg = add nsw i32 %.08554492, 1               ; 2 uses
  %i.ph = icmp slt i32 %i.pg, %0
  br i1 %i.ph, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %i.pi = sext i32 %i.pg to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.pi
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store ptr null, ptr %i.g, align 8, !tbaa !15
  %i.pl = call double @strtod(ptr noundef %i.pk, ptr noundef nonnull %i.g) #21 ; 2 uses
  %i.pm = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %i.pn = icmp ugt ptr %i.pm, %i.pk
  br i1 %i.pn, label %_ZL11parseDoubleRdPKc.exit1328, label %_ZL11parseDoubleRdPKc.exit1328.thread

_ZL11parseDoubleRdPKc.exit1328.thread:            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %.loopexit2360

_ZL11parseDoubleRdPKc.exit1328:                   ; preds = %bb.gr
  %i.po = load i8, ptr %i.pm, align 1, !tbaa !16
  %.not.i1327 = icmp eq i8 %i.po, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  %i.pp = fcmp ogt double %i.pl, 0.000000e+00
  %or.cond19 = select i1 %.not.i1327, i1 %i.pp, i1 false
  br i1 %or.cond19, label %bb.gs, label %.loopexit2360

.loopexit2360:                                    ; preds = %_ZL11parseDoubleRdPKc.exit1328, %_ZL11parseDoubleRdPKc.exit1328.thread
  %i.pq = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1233 = call i64 @fwrite(ptr nonnull @.str.114, i64 93, i64 1, ptr %i.pq) #23 ; 0 uses
  br label %_ZL12parseUnicodeRjPKc.exit.thread

bb.gs:                                            ; preds = %_ZL11parseDoubleRdPKc.exit1328
  store double %i.pl, ptr %i.ah, align 8, !tbaa !146
  br label %.backedge, !llvm.loop !32

bb.gt:                                            ; preds = %bb.gq, %bb.gp
  %i.pr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(18) @.str.115) #22
  %.not1234 = icmp eq i32 %i.pr, 0
  br i1 %.not1234, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ps = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(14) @.str.116) #22
  %.not1235 = icmp eq i32 %i.ps, 0
  br i1 %.not1235, label %bb.gv, label %bb.ha

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.pt = add nsw i32 %.08554492, 1               ; 2 uses
  %i.pu = icmp slt i32 %i.pt, %0
  br i1 %i.pu, label %bb.gw, label %bb.ha

bb.gw:                                            ; preds = %bb.gv
  %i.pv = sext i32 %i.pt to i64
  %i.pw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.pv
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !15 ; 3 uses
  %i.py = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.px, ptr noundef nonnull dereferenceable(7) @.str.117) #22
  %.not1236 = icmp eq i32 %i.py, 0
  br i1 %.not1236, label %.backedge, label %bb.gx, !llvm.loop !32

bb.gx:                                            ; preds = %bb.gw
  %i.pz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.px, ptr noundef nonnull dereferenceable(8) @.str.118) #22
  %.not1237 = icmp eq i32 %i.pz, 0
  br i1 %.not1237, label %.backedge, label %bb.gy, !llvm.loop !32

bb.gy:                                            ; preds = %bb.gx
  %i.qa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.px, ptr noundef nonnull dereferenceable(9) @.str.100) #22
  %.not1238 = icmp eq i32 %i.qa, 0
  br i1 %.not1238, label %.backedge, label %bb.gz, !llvm.loop !32

bb.gz:                                            ; preds = %bb.gy
  %i.qb = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1239 = call i64 @fwrite(ptr nonnull @.str.119, i64 37, i64 1, ptr %i.qb) #23 ; 0 uses
  br label %.backedge, !llvm.loop !32

bb.ha:                                            ; preds = %bb.gv, %bb.gu
  %i.qc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(12) @.str.120) #22
  %.not1240 = icmp eq i32 %i.qc, 0
  br i1 %.not1240, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.qd = add nsw i32 %.08554492, 1               ; 2 uses
  %i.qe = icmp slt i32 %i.qd, %0
  br i1 %i.qe, label %.preheader2349, label %bb.he

.preheader2349:                                   ; preds = %bb.hb
  %i.qf = sext i32 %i.qd to i64
  %i.qg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.qf
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !15 ; 3 uses
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !16  ; 2 uses
  %.not12414480 = icmp eq i8 %i.qi, 0
  br i1 %.not12414480, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader2349, %bb.hd
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.hd ], [ 0, %.preheader2349 ]
  %i.qj = phi i8 [ %i.qm, %bb.hd ], [ %i.qi, %.preheader2349 ]
  switch i8 %i.qj, label %bb.hc [
    i8 32, label %bb.hd
    i8 63, label %bb.hd
    i8 44, label %bb.hd
    i8 99, label %bb.hd
    i8 109, label %bb.hd
    i8 119, label %bb.hd
    i8 121, label %bb.hd
    i8 67, label %bb.hd
    i8 77, label %bb.hd
    i8 87, label %bb.hd
    i8 89, label %bb.hd
  ]

bb.hc:                                            ; preds = %.preheader
  %i.qk = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1243 = call i64 @fwrite(ptr nonnull @.str.122, i64 185, i64 1, ptr %i.qk) #23 ; 0 uses
  br label %_ZL12parseUnicodeRjPKc.exit.thread

bb.hd:                                            ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv.next
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !16  ; 2 uses
  %.not1241 = icmp eq i8 %i.qm, 0
  br i1 %.not1241, label %._crit_edge, label %.preheader, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.hd, %.preheader2349
  br label %.backedge, !llvm.loop !32

bb.he:                                            ; preds = %bb.hb, %bb.ha
  %i.qn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(15) @.str.123) #22
  %.not1244 = icmp eq i32 %i.qn, 0
  br i1 %.not1244, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %bb.he
  %i.qo = add nsw i32 %.08554492, 1               ; 2 uses
  %i.qp = icmp slt i32 %i.qo, %0
  br i1 %i.qp, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %i.qq = sext i32 %i.qo to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.qq
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store ptr null, ptr %i.f, align 8, !tbaa !15
  %i.qt = call double @strtod(ptr noundef %i.qs, ptr noundef nonnull %i.f) #21
  %i.qu = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.qv = icmp ugt ptr %i.qu, %i.qs
  br i1 %i.qv, label %_ZL11parseDoubleRdPKc.exit1330, label %_ZL11parseDoubleRdPKc.exit1330.thread

_ZL11parseDoubleRdPKc.exit1330.thread:            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %.loopexit2359

_ZL11parseDoubleRdPKc.exit1330:                   ; preds = %bb.hg
  %i.qw = load i8, ptr %i.qu, align 1, !tbaa !16
  %.not.i1329 = icmp eq i8 %i.qw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br i1 %.not.i1329, label %bb.hh, label %.loopexit2359

.loopexit2359:                                    ; preds = %_ZL11parseDoubleRdPKc.exit1330, %_ZL11parseDoubleRdPKc.exit1330.thread
  %i.qx = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1245 = call i64 @fwrite(ptr nonnull @.str.124, i64 70, i64 1, ptr %i.qx) #23 ; 0 uses
  br label %_ZL12parseUnicodeRjPKc.exit.thread

bb.hh:                                            ; preds = %_ZL11parseDoubleRdPKc.exit1330
  %i.qy = fptrunc double %i.qt to float
  br label %.backedge, !llvm.loop !32

bb.hi:                                            ; preds = %bb.hf, %bb.he
  %i.qz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(13) @.str.125) #22
  %.not1246 = icmp eq i32 %i.qz, 0
  br i1 %.not1246, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %bb.hi
  %i.ra = add nsw i32 %.08554492, 1               ; 2 uses
  %i.rb = icmp slt i32 %i.ra, %0
  br i1 %i.rb, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.rc = sext i32 %i.ra to i64
  %i.rd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.rc
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !15
  br label %.backedge, !llvm.loop !32

bb.hl:                                            ; preds = %bb.hj, %bb.hi
  %i.rf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(11) @.str.126) #22
  %.not1247 = icmp eq i32 %i.rf, 0
  br i1 %.not1247, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %i.rg = add nsw i32 %.08554492, 1               ; 2 uses
  %i.rh = icmp slt i32 %i.rg, %0
  br i1 %i.rh, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ri = sext i32 %i.rg to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ri
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !15
  br label %.backedge, !llvm.loop !32

bb.ho:                                            ; preds = %bb.hm, %bb.hl
  %i.rl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(12) @.str.127) #22
  %.not1248 = icmp eq i32 %i.rl, 0
  %i.rm = add nsw i32 %.08554492, 3               ; 3 uses
  %i.rn = icmp slt i32 %i.rm, %0                  ; 2 uses
  %or.cond1288 = select i1 %.not1248, i1 %i.rn, i1 false
  br i1 %or.cond1288, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.ro = getelementptr i8, ptr %i.aq, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !15
  %i.rq = getelementptr i8, ptr %i.aq, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr null, ptr %i.e, align 8, !tbaa !15
  %i.rs = call i64 @__isoc23_strtoul(ptr noundef %i.rr, ptr noundef nonnull %i.e, i32 noundef 10) #21
  %i.rt = trunc i64 %i.rs to i32                  ; 2 uses
  %i.ru = load ptr, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.rv = icmp ugt ptr %i.ru, %i.rr
  br i1 %i.rv, label %_ZL13parseUnsignedRjPKc.exit1332, label %_ZL13parseUnsignedRjPKc.exit1332.thread

_ZL13parseUnsignedRjPKc.exit1332.thread:          ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %.loopexit2358

_ZL13parseUnsignedRjPKc.exit1332:                 ; preds = %bb.hp
  %i.rw = load i8, ptr %i.ru, align 1, !tbaa !16
  %.not.i1331 = icmp eq i8 %i.rw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br i1 %.not.i1331, label %bb.hq, label %.loopexit2358

bb.hq:                                            ; preds = %_ZL13parseUnsignedRjPKc.exit1332
  %i.rx = sext i32 %i.rm to i64
  %i.ry = getelementptr inbounds [8 x i8], ptr %1, i64 %i.rx
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr null, ptr %i.d, align 8, !tbaa !15
  %i.sa = call i64 @__isoc23_strtoul(ptr noundef %i.rz, ptr noundef nonnull %i.d, i32 noundef 10) #21
  %i.sb = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.sc = icmp ugt ptr %i.sb, %i.rz
  br i1 %i.sc, label %_ZL13parseUnsignedRjPKc.exit1334, label %_ZL13parseUnsignedRjPKc.exit1334.thread

_ZL13parseUnsignedRjPKc.exit1334.thread:          ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.loopexit2358

_ZL13parseUnsignedRjPKc.exit1334:                 ; preds = %bb.hq
  %i.sd = trunc i64 %i.sa to i32                  ; 2 uses
  %i.se = add nsw i32 %.08554492, 4
  %i.sf = load i8, ptr %i.sb, align 1, !tbaa !16
  %.not.i1333 = icmp eq i8 %i.sf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.sg = icmp sgt i32 %i.rt, 0
  %or.cond21 = select i1 %.not.i1333, i1 %i.sg, i1 false
  %i.sh = icmp sgt i32 %i.sd, 0
  %or.cond23 = select i1 %or.cond21, i1 %i.sh, i1 false
  br i1 %or.cond23, label %.backedge, label %.loopexit2358, !llvm.loop !32

.loopexit2358:                                    ; preds = %_ZL13parseUnsignedRjPKc.exit1332, %_ZL13parseUnsignedRjPKc.exit1334, %_ZL13parseUnsignedRjPKc.exit1334.thread, %_ZL13parseUnsignedRjPKc.exit1332.thread
  %i.si = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1249 = call i64 @fwrite(ptr nonnull @.str.128, i64 82, i64 1, ptr %i.si) #23 ; 0 uses
  br label %_ZL12parseUnicodeRjPKc.exit.thread

bb.hr:                                            ; preds = %bb.ho
  %i.sj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(17) @.str.129) #22
  %.not1250 = icmp eq i32 %i.sj, 0
  %or.cond1290 = select i1 %.not1250, i1 %i.rn, i1 false
  br i1 %or.cond1290, label %bb.hs, label %bb.hu

bb.hs:                                            ; preds = %bb.hr
  %i.sk = getelementptr i8, ptr %i.aq, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !15
  %i.sm = getelementptr i8, ptr %i.aq, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr null, ptr %i.c, align 8, !tbaa !15
  %i.so = call i64 @__isoc23_strtoul(ptr noundef %i.sn, ptr noundef nonnull %i.c, i32 noundef 10) #21
  %i.sp = trunc i64 %i.so to i32                  ; 2 uses
  %i.sq = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.sr = icmp ugt ptr %i.sq, %i.sn
  br i1 %i.sr, label %_ZL13parseUnsignedRjPKc.exit1336, label %_ZL13parseUnsignedRjPKc.exit1336.thread

_ZL13parseUnsignedRjPKc.exit1336.thread:          ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %.loopexit2357

_ZL13parseUnsignedRjPKc.exit1336:                 ; preds = %bb.hs
  %i.ss = load i8, ptr %i.sq, align 1, !tbaa !16
  %.not.i1335 = icmp eq i8 %i.ss, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br i1 %.not.i1335, label %bb.ht, label %.loopexit2357

bb.ht:                                            ; preds = %_ZL13parseUnsignedRjPKc.exit1336
  %i.st = sext i32 %i.rm to i64
  %i.su = getelementptr inbounds [8 x i8], ptr %1, i64 %i.st
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.sw = call i64 @__isoc23_strtoul(ptr noundef %i.sv, ptr noundef nonnull %i.b, i32 noundef 10) #21
  %i.sx = load ptr, ptr %i.b, align 8, !tbaa !15  ; 2 uses
  %i.sy = icmp ugt ptr %i.sx, %i.sv
  br i1 %i.sy, label %_ZL13parseUnsignedRjPKc.exit1338, label %_ZL13parseUnsignedRjPKc.exit1338.thread

_ZL13parseUnsignedRjPKc.exit1338.thread:          ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit2357

_ZL13parseUnsignedRjPKc.exit1338:                 ; preds = %bb.ht
  %i.sz = trunc i64 %i.sw to i32                  ; 2 uses
  %i.ta = add nsw i32 %.08554492, 4
  %i.tb = load i8, ptr %i.sx, align 1, !tbaa !16
  %.not.i1337 = icmp eq i8 %i.tb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.tc = icmp sgt i32 %i.sp, 0
  %or.cond25 = select i1 %.not.i1337, i1 %i.tc, i1 false
  %i.td = icmp sgt i32 %i.sz, 0
  %or.cond27 = select i1 %or.cond25, i1 %i.td, i1 false
  br i1 %or.cond27, label %.backedge, label %.loopexit2357, !llvm.loop !32

.loopexit2357:                                    ; preds = %_ZL13parseUnsignedRjPKc.exit1336, %_ZL13parseUnsignedRjPKc.exit1338, %_ZL13parseUnsignedRjPKc.exit1338.thread, %_ZL13parseUnsignedRjPKc.exit1336.thread
  %i.te = load ptr, ptr @stderr, align 8, !tbaa !138
end_hunk_0
begin_hunk_1_@main:bb.a
  %.2820.jt2 = phi i32 [ %.08184505, %bb.d ], [ %.08184505, %bb.f ], [ %.08184505, %bb.h ], [ %.08184505, %bb.j ], [ %.08184505, %bb.l ], [ %.08184505, %bb.o ], [ %.08184505, %bb.ek ], [ %.08184505, %bb.am ], [ %.08184505, %bb.ao ], [ %.08184505, %bb.aq ], [ %.08184505, %bb.at ], [ %.08184505, %bb.av ], [ %.08184505, %bb.ay ], [ %.08184505, %bb.bc ], [ %.08184505, %bb.be ], [ %.08184505, %bb.bg ], [ %.08184505, %bb.bi ], [ %.08184505, %bb.bk ], [ %.08184505, %bb.bm ], [ %.08184505, %bb.bo ], [ %.08184505, %bb.bq ], [ %.08184505, %bb.bs ], [ %.08184505, %bb.bu ], [ %.08184505, %bb.t ], [ %.08184505, %bb.cc ], [ %.08184505, %bb.df ], [ %.08184505, %bb.dm ], [ %i.sz, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.08184505, %bb.eo ], [ %.08184505, %bb.es ], [ %.08184505, %bb.ew ], [ %.08184505, %bb.fd ], [ %.08184505, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.08184505, %bb.fo ], [ %.08184505, %bb.fj ], [ %.08184505, %bb.fu ], [ %.08184505, %bb.gc ], [ %.08184505, %._crit_edge ], [ %.08184505, %bb.gh ], [ %.08184505, %bb.gz ], [ %.08184505, %bb.hk ], [ %.08184505, %bb.hn ], [ %.08184505, %bb.gk ], [ %.08184505, %bb.ge ], [ %.08184505, %bb.hv ], [ %.08184505, %bb.hx ], [ %.08184505, %bb.hz ], [ %.08184505, %bb.ic ], [ %.08184505, %bb.if ], [ %.08184505, %bb.ii ], [ %.08184505, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.08184505, %bb.fz ], [ %.08184505, %bb.fr ], [ %.08184505, %bb.go ], [ %.08184505, %bb.iq ], [ %.08184505, %bb.gs ], [ %.08184505, %bb.gy ], [ %.08184505, %bb.gx ], [ %.08184505, %bb.ak ], [ %.08184505, %bb.aj ], [ %.08184505, %bb.ai ], [ %.08184505, %bb.ah ], [ %.08184505, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.08184505, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.08184505, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.08184505, %bb.u ], [ %.08184505, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.08184505, %bb.aa ], [ %.08184505, %bb.cb ], [ %.08184505, %bb.ca ], [ %.08184505, %bb.by ], [ %.08184505, %bb.bz ], [ %.08184505, %bb.bx ], [ %.08184505, %bb.cf ], [ %.08184505, %bb.de ], [ %.08184505, %bb.dc ], [ %.08184505, %bb.cz ], [ %.08184505, %bb.cw ], [ %.08184505, %bb.ct ], [ %.08184505, %bb.cq ], [ %.08184505, %bb.co ], [ %.08184505, %bb.cm ], [ %.08184505, %bb.cj ], [ %.08184505, %bb.ch ], [ %.08184505, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.08184505, %bb.dt ], [ %.08184505, %bb.gw ], [ %.08184505, %bb.dz ], [ %.08184505, %bb.hh ], [ %.08184505, %bb.ef ] ; 10 uses
  %.2816.jt2 = phi i32 [ %.08144506, %bb.d ], [ %.08144506, %bb.f ], [ %.08144506, %bb.h ], [ %.08144506, %bb.j ], [ %.08144506, %bb.l ], [ %.08144506, %bb.o ], [ %.08144506, %bb.ek ], [ %.08144506, %bb.am ], [ %.08144506, %bb.ao ], [ %.08144506, %bb.aq ], [ %.08144506, %bb.at ], [ %.08144506, %bb.av ], [ %.08144506, %bb.ay ], [ %.08144506, %bb.bc ], [ %.08144506, %bb.be ], [ %.08144506, %bb.bg ], [ %.08144506, %bb.bi ], [ %.08144506, %bb.bk ], [ %.08144506, %bb.bm ], [ %.08144506, %bb.bo ], [ %.08144506, %bb.bq ], [ %.08144506, %bb.bs ], [ %.08144506, %bb.bu ], [ %.08144506, %bb.t ], [ %.08144506, %bb.cc ], [ %.08144506, %bb.df ], [ %.08144506, %bb.dm ], [ %i.sp, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.08144506, %bb.eo ], [ %.08144506, %bb.es ], [ %.08144506, %bb.ew ], [ %.08144506, %bb.fd ], [ %.08144506, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.08144506, %bb.fo ], [ %.08144506, %bb.fj ], [ %.08144506, %bb.fu ], [ %.08144506, %bb.gc ], [ %.08144506, %._crit_edge ], [ %.08144506, %bb.gh ], [ %.08144506, %bb.gz ], [ %.08144506, %bb.hk ], [ %.08144506, %bb.hn ], [ %.08144506, %bb.gk ], [ %.08144506, %bb.ge ], [ %.08144506, %bb.hv ], [ %.08144506, %bb.hx ], [ %.08144506, %bb.hz ], [ %.08144506, %bb.ic ], [ %.08144506, %bb.if ], [ %.08144506, %bb.ii ], [ %.08144506, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.08144506, %bb.fz ], [ %.08144506, %bb.fr ], [ %.08144506, %bb.go ], [ %.08144506, %bb.iq ], [ %.08144506, %bb.gs ], [ %.08144506, %bb.gy ], [ %.08144506, %bb.gx ], [ %.08144506, %bb.ak ], [ %.08144506, %bb.aj ], [ %.08144506, %bb.ai ], [ %.08144506, %bb.ah ], [ %.08144506, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.08144506, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.08144506, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.08144506, %bb.u ], [ %.08144506, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.08144506, %bb.aa ], [ %.08144506, %bb.cb ], [ %.08144506, %bb.ca ], [ %.08144506, %bb.by ], [ %.08144506, %bb.bz ], [ %.08144506, %bb.bx ], [ %.08144506, %bb.cf ], [ %.08144506, %bb.de ], [ %.08144506, %bb.dc ], [ %.08144506, %bb.cz ], [ %.08144506, %bb.cw ], [ %.08144506, %bb.ct ], [ %.08144506, %bb.cq ], [ %.08144506, %bb.co ], [ %.08144506, %bb.cm ], [ %.08144506, %bb.cj ], [ %.08144506, %bb.ch ], [ %.08144506, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.08144506, %bb.dt ], [ %.08144506, %bb.gw ], [ %.08144506, %bb.dz ], [ %.08144506, %bb.hh ], [ %.08144506, %bb.ef ] ; 10 uses
  %.2813.jt2 = phi i32 [ %.08114507, %bb.d ], [ %.08114507, %bb.f ], [ %.08114507, %bb.h ], [ %.08114507, %bb.j ], [ %.08114507, %bb.l ], [ %.08114507, %bb.o ], [ %.08114507, %bb.ek ], [ %.08114507, %bb.am ], [ %.08114507, %bb.ao ], [ %.08114507, %bb.aq ], [ %.08114507, %bb.at ], [ %.08114507, %bb.av ], [ %.08114507, %bb.ay ], [ %.08114507, %bb.bc ], [ %.08114507, %bb.be ], [ %.08114507, %bb.bg ], [ %.08114507, %bb.bi ], [ %.08114507, %bb.bk ], [ %.08114507, %bb.bm ], [ %.08114507, %bb.bo ], [ %.08114507, %bb.bq ], [ %.08114507, %bb.bs ], [ %.08114507, %bb.bu ], [ %.08114507, %bb.t ], [ %.08114507, %bb.cc ], [ %.08114507, %bb.df ], [ %.08114507, %bb.dm ], [ %.08114507, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.08114507, %bb.eo ], [ %.08114507, %bb.es ], [ %.08114507, %bb.ew ], [ %.08114507, %bb.fd ], [ %.08114507, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.08114507, %bb.fo ], [ %.08114507, %bb.fj ], [ %.08114507, %bb.fu ], [ %.08114507, %bb.gc ], [ %.08114507, %._crit_edge ], [ %.08114507, %bb.gh ], [ %.08114507, %bb.gz ], [ %.08114507, %bb.hk ], [ %.08114507, %bb.hn ], [ %.08114507, %bb.gk ], [ %.08114507, %bb.ge ], [ %.08114507, %bb.hv ], [ %.08114507, %bb.hx ], [ %.08114507, %bb.hz ], [ %.08114507, %bb.ic ], [ %.08114507, %bb.if ], [ %.08114507, %bb.ii ], [ %.08114507, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.08114507, %bb.fz ], [ %.08114507, %bb.fr ], [ %.08114507, %bb.go ], [ %.08114507, %bb.iq ], [ %.08114507, %bb.gs ], [ %.08114507, %bb.gy ], [ %.08114507, %bb.gx ], [ %.08114507, %bb.ak ], [ %.08114507, %bb.aj ], [ %.08114507, %bb.ai ], [ %.08114507, %bb.ah ], [ %i.sd, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.08114507, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.08114507, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.08114507, %bb.u ], [ %.08114507, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.08114507, %bb.aa ], [ %.08114507, %bb.cb ], [ %.08114507, %bb.ca ], [ %.08114507, %bb.by ], [ %.08114507, %bb.bz ], [ %.08114507, %bb.bx ], [ %.08114507, %bb.cf ], [ %.08114507, %bb.de ], [ %.08114507, %bb.dc ], [ %.08114507, %bb.cz ], [ %.08114507, %bb.cw ], [ %.08114507, %bb.ct ], [ %.08114507, %bb.cq ], [ %.08114507, %bb.co ], [ %.08114507, %bb.cm ], [ %.08114507, %bb.cj ], [ %.08114507, %bb.ch ], [ %.08114507, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.08114507, %bb.dt ], [ %.08114507, %bb.gw ], [ %.08114507, %bb.dz ], [ %.08114507, %bb.hh ], [ %.08114507, %bb.ef ] ; 10 uses
  %.2809.jt2 = phi i32 [ %.08074508, %bb.d ], [ %.08074508, %bb.f ], [ %.08074508, %bb.h ], [ %.08074508, %bb.j ], [ %.08074508, %bb.l ], [ %.08074508, %bb.o ], [ %.08074508, %bb.ek ], [ %.08074508, %bb.am ], [ %.08074508, %bb.ao ], [ %.08074508, %bb.aq ], [ %.08074508, %bb.at ], [ %.08074508, %bb.av ], [ %.08074508, %bb.ay ], [ %.08074508, %bb.bc ], [ %.08074508, %bb.be ], [ %.08074508, %bb.bg ], [ %.08074508, %bb.bi ], [ %.08074508, %bb.bk ], [ %.08074508, %bb.bm ], [ %.08074508, %bb.bo ], [ %.08074508, %bb.bq ], [ %.08074508, %bb.bs ], [ %.08074508, %bb.bu ], [ %.08074508, %bb.t ], [ %.08074508, %bb.cc ], [ %.08074508, %bb.df ], [ %.08074508, %bb.dm ], [ %.08074508, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.08074508, %bb.eo ], [ %.08074508, %bb.es ], [ %.08074508, %bb.ew ], [ %.08074508, %bb.fd ], [ %.08074508, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.08074508, %bb.fo ], [ %.08074508, %bb.fj ], [ %.08074508, %bb.fu ], [ %.08074508, %bb.gc ], [ %.08074508, %._crit_edge ], [ %.08074508, %bb.gh ], [ %.08074508, %bb.gz ], [ %.08074508, %bb.hk ], [ %.08074508, %bb.hn ], [ %.08074508, %bb.gk ], [ %.08074508, %bb.ge ], [ %.08074508, %bb.hv ], [ %.08074508, %bb.hx ], [ %.08074508, %bb.hz ], [ %.08074508, %bb.ic ], [ %.08074508, %bb.if ], [ %.08074508, %bb.ii ], [ %.08074508, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.08074508, %bb.fz ], [ %.08074508, %bb.fr ], [ %.08074508, %bb.go ], [ %.08074508, %bb.iq ], [ %.08074508, %bb.gs ], [ %.08074508, %bb.gy ], [ %.08074508, %bb.gx ], [ %.08074508, %bb.ak ], [ %.08074508, %bb.aj ], [ %.08074508, %bb.ai ], [ %.08074508, %bb.ah ], [ %i.rt, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.08074508, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.08074508, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.08074508, %bb.u ], [ %.08074508, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.08074508, %bb.aa ], [ %.08074508, %bb.cb ], [ %.08074508, %bb.ca ], [ %.08074508, %bb.by ], [ %.08074508, %bb.bz ], [ %.08074508, %bb.bx ], [ %.08074508, %bb.cf ], [ %.08074508, %bb.de ], [ %.08074508, %bb.dc ], [ %.08074508, %bb.cz ], [ %.08074508, %bb.cw ], [ %.08074508, %bb.ct ], [ %.08074508, %bb.cq ], [ %.08074508, %bb.co ], [ %.08074508, %bb.cm ], [ %.08074508, %bb.cj ], [ %.08074508, %bb.ch ], [ %.08074508, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.08074508, %bb.dt ], [ %.08074508, %bb.gw ], [ %.08074508, %bb.dz ], [ %.08074508, %bb.hh ], [ %.08074508, %bb.ef ] ; 16 uses
  %.2806.jt2 = phi i32 [ %.08044509, %bb.d ], [ %.08044509, %bb.f ], [ %.08044509, %bb.h ], [ %.08044509, %bb.j ], [ %.08044509, %bb.l ], [ %.08044509, %bb.o ], [ %.08044509, %bb.ek ], [ %.08044509, %bb.am ], [ %.08044509, %bb.ao ], [ %.08044509, %bb.aq ], [ %.08044509, %bb.at ], [ %.08044509, %bb.av ], [ %.08044509, %bb.ay ], [ %.08044509, %bb.bc ], [ %.08044509, %bb.be ], [ %.08044509, %bb.bg ], [ %.08044509, %bb.bi ], [ %.08044509, %bb.bk ], [ %.08044509, %bb.bm ], [ %.08044509, %bb.bo ], [ %.08044509, %bb.bq ], [ %.08044509, %bb.bs ], [ %.08044509, %bb.bu ], [ %.08044509, %bb.t ], [ %.08044509, %bb.cc ], [ %.08044509, %bb.df ], [ %.08044509, %bb.dm ], [ %.08044509, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.08044509, %bb.eo ], [ %.08044509, %bb.es ], [ %.08044509, %bb.ew ], [ %.08044509, %bb.fd ], [ %.08044509, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.08044509, %bb.fo ], [ %.08044509, %bb.fj ], [ %.08044509, %bb.fu ], [ %.08044509, %bb.gc ], [ %.08044509, %._crit_edge ], [ %.08044509, %bb.gh ], [ %.08044509, %bb.gz ], [ %.08044509, %bb.hk ], [ %.08044509, %bb.hn ], [ %.08044509, %bb.gk ], [ %.08044509, %bb.ge ], [ %.08044509, %bb.hv ], [ %.08044509, %bb.hx ], [ %.08044509, %bb.hz ], [ %.08044509, %bb.ic ], [ %.08044509, %bb.if ], [ %.08044509, %bb.ii ], [ %.08044509, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.08044509, %bb.fz ], [ %.08044509, %bb.fr ], [ %.08044509, %bb.go ], [ %.08044509, %bb.iq ], [ %.08044509, %bb.gs ], [ %.08044509, %bb.gy ], [ %.08044509, %bb.gx ], [ %.08044509, %bb.ak ], [ %.08044509, %bb.aj ], [ %.08044509, %bb.ai ], [ %.08044509, %bb.ah ], [ %.08044509, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.08044509, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.08044509, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.08044509, %bb.u ], [ %.08044509, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.08044509, %bb.aa ], [ %.08044509, %bb.cb ], [ %.08044509, %bb.ca ], [ %.08044509, %bb.by ], [ %.08044509, %bb.bz ], [ %.08044509, %bb.bx ], [ %.08044509, %bb.cf ], [ %.08044509, %bb.de ], [ %.08044509, %bb.dc ], [ %.08044509, %bb.cz ], [ %.08044509, %bb.cw ], [ %.08044509, %bb.ct ], [ %.08044509, %bb.cq ], [ %.08044509, %bb.co ], [ %.08044509, %bb.cm ], [ %.08044509, %bb.cj ], [ %.08044509, %bb.ch ], [ %i.hn, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.08044509, %bb.dt ], [ %.08044509, %bb.gw ], [ %.08044509, %bb.dz ], [ %.08044509, %bb.hh ], [ %.08044509, %bb.ef ] ; 22 uses
  %.2803.jt2 = phi i32 [ %.08014510, %bb.d ], [ %.08014510, %bb.f ], [ %.08014510, %bb.h ], [ %.08014510, %bb.j ], [ %.08014510, %bb.l ], [ %.08014510, %bb.o ], [ %.08014510, %bb.ek ], [ %.08014510, %bb.am ], [ %.08014510, %bb.ao ], [ %.08014510, %bb.aq ], [ %.08014510, %bb.at ], [ %.08014510, %bb.av ], [ %.08014510, %bb.ay ], [ %.08014510, %bb.bc ], [ %.08014510, %bb.be ], [ %.08014510, %bb.bg ], [ %.08014510, %bb.bi ], [ %.08014510, %bb.bk ], [ %.08014510, %bb.bm ], [ %.08014510, %bb.bo ], [ %.08014510, %bb.bq ], [ %.08014510, %bb.bs ], [ %.08014510, %bb.bu ], [ %.08014510, %bb.t ], [ %.08014510, %bb.cc ], [ %.08014510, %bb.df ], [ %.08014510, %bb.dm ], [ %.08014510, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.08014510, %bb.eo ], [ %.08014510, %bb.es ], [ %.08014510, %bb.ew ], [ %.08014510, %bb.fd ], [ %.08014510, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.08014510, %bb.fo ], [ %.08014510, %bb.fj ], [ %.08014510, %bb.fu ], [ %.08014510, %bb.gc ], [ %.08014510, %._crit_edge ], [ %.08014510, %bb.gh ], [ %.08014510, %bb.gz ], [ %.08014510, %bb.hk ], [ %.08014510, %bb.hn ], [ %.08014510, %bb.gk ], [ %.08014510, %bb.ge ], [ %.08014510, %bb.hv ], [ %.08014510, %bb.hx ], [ %.08014510, %bb.hz ], [ %.08014510, %bb.ic ], [ %.08014510, %bb.if ], [ %.08014510, %bb.ii ], [ %.08014510, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.08014510, %bb.fz ], [ %.08014510, %bb.fr ], [ %.08014510, %bb.go ], [ %.08014510, %bb.iq ], [ %.08014510, %bb.gs ], [ %.08014510, %bb.gy ], [ %.08014510, %bb.gx ], [ %.08014510, %bb.ak ], [ %.08014510, %bb.aj ], [ %.08014510, %bb.ai ], [ %.08014510, %bb.ah ], [ %.08014510, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.08014510, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.08014510, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.08014510, %bb.u ], [ %.08014510, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.08014510, %bb.aa ], [ %.08014510, %bb.cb ], [ %.08014510, %bb.ca ], [ %.08014510, %bb.by ], [ %.08014510, %bb.bz ], [ %.08014510, %bb.bx ], [ %.08014510, %bb.cf ], [ %.08014510, %bb.de ], [ %.08014510, %bb.dc ], [ %.08014510, %bb.cz ], [ %.08014510, %bb.cw ], [ %.08014510, %bb.ct ], [ %.08014510, %bb.cq ], [ %.08014510, %bb.co ], [ %.08014510, %bb.cm ], [ %.08014510, %bb.cj ], [ %.08014510, %bb.ch ], [ %i.hd, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.08014510, %bb.dt ], [ %.08014510, %bb.gw ], [ %.08014510, %bb.dz ], [ %.08014510, %bb.hh ], [ %.08014510, %bb.ef ] ; 26 uses
  %.1800.jt2 = phi i1 [ %.07994511, %bb.d ], [ %.07994511, %bb.f ], [ %.07994511, %bb.h ], [ %.07994511, %bb.j ], [ %.07994511, %bb.l ], [ %.07994511, %bb.o ], [ %.07994511, %bb.ek ], [ true, %bb.am ], [ true, %bb.ao ], [ true, %bb.aq ], [ %.07994511, %bb.at ], [ %.07994511, %bb.av ], [ %.07994511, %bb.ay ], [ %.07994511, %bb.bc ], [ %.07994511, %bb.be ], [ true, %bb.bg ], [ %.07994511, %bb.bi ], [ %.07994511, %bb.bk ], [ %.07994511, %bb.bm ], [ %.07994511, %bb.bo ], [ %.07994511, %bb.bq ], [ %.07994511, %bb.bs ], [ %.07994511, %bb.bu ], [ %.07994511, %bb.t ], [ %.07994511, %bb.cc ], [ %.07994511, %bb.df ], [ %.07994511, %bb.dm ], [ %.07994511, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07994511, %bb.eo ], [ %.07994511, %bb.es ], [ %.07994511, %bb.ew ], [ %.07994511, %bb.fd ], [ %.07994511, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07994511, %bb.fo ], [ %.07994511, %bb.fj ], [ %.07994511, %bb.fu ], [ %.07994511, %bb.gc ], [ %.07994511, %._crit_edge ], [ %.07994511, %bb.gh ], [ %.07994511, %bb.gz ], [ %.07994511, %bb.hk ], [ %.07994511, %bb.hn ], [ %.07994511, %bb.gk ], [ %.07994511, %bb.ge ], [ %.07994511, %bb.hv ], [ %.07994511, %bb.hx ], [ %.07994511, %bb.hz ], [ %.07994511, %bb.ic ], [ %.07994511, %bb.if ], [ %.07994511, %bb.ii ], [ %.07994511, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07994511, %bb.fz ], [ %.07994511, %bb.fr ], [ %.07994511, %bb.go ], [ %.07994511, %bb.iq ], [ %.07994511, %bb.gs ], [ %.07994511, %bb.gy ], [ %.07994511, %bb.gx ], [ %.07994511, %bb.ak ], [ %.07994511, %bb.aj ], [ %.07994511, %bb.ai ], [ %.07994511, %bb.ah ], [ %.07994511, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07994511, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07994511, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07994511, %bb.u ], [ %.07994511, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07994511, %bb.aa ], [ %.07994511, %bb.cb ], [ %.07994511, %bb.ca ], [ %.07994511, %bb.by ], [ %.07994511, %bb.bz ], [ %.07994511, %bb.bx ], [ %.07994511, %bb.cf ], [ %.07994511, %bb.de ], [ %.07994511, %bb.dc ], [ %.07994511, %bb.cz ], [ %.07994511, %bb.cw ], [ %.07994511, %bb.ct ], [ %.07994511, %bb.cq ], [ %.07994511, %bb.co ], [ %.07994511, %bb.cm ], [ %.07994511, %bb.cj ], [ %.07994511, %bb.ch ], [ %.07994511, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07994511, %bb.dt ], [ %.07994511, %bb.gw ], [ %.07994511, %bb.dz ], [ %.07994511, %bb.hh ], [ %.07994511, %bb.ef ] ; 2 uses
  %.1798.jt2 = phi i32 [ %.07974512, %bb.d ], [ %.07974512, %bb.f ], [ %.07974512, %bb.h ], [ %.07974512, %bb.j ], [ %.07974512, %bb.l ], [ %.07974512, %bb.o ], [ %.07974512, %bb.ek ], [ 0, %bb.am ], [ 1, %bb.ao ], [ 2, %bb.aq ], [ %.07974512, %bb.at ], [ %.07974512, %bb.av ], [ %.07974512, %bb.ay ], [ %.07974512, %bb.bc ], [ %.07974512, %bb.be ], [ 2, %bb.bg ], [ %.07974512, %bb.bi ], [ %.07974512, %bb.bk ], [ %.07974512, %bb.bm ], [ %.07974512, %bb.bo ], [ %.07974512, %bb.bq ], [ %.07974512, %bb.bs ], [ %.07974512, %bb.bu ], [ %.07974512, %bb.t ], [ %.07974512, %bb.cc ], [ %.07974512, %bb.df ], [ %.07974512, %bb.dm ], [ %.07974512, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07974512, %bb.eo ], [ %.07974512, %bb.es ], [ %.07974512, %bb.ew ], [ %.07974512, %bb.fd ], [ %.07974512, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07974512, %bb.fo ], [ %.07974512, %bb.fj ], [ %.07974512, %bb.fu ], [ %.07974512, %bb.gc ], [ %.07974512, %._crit_edge ], [ %.07974512, %bb.gh ], [ %.07974512, %bb.gz ], [ %.07974512, %bb.hk ], [ %.07974512, %bb.hn ], [ %.07974512, %bb.gk ], [ %.07974512, %bb.ge ], [ %.07974512, %bb.hv ], [ %.07974512, %bb.hx ], [ %.07974512, %bb.hz ], [ %.07974512, %bb.ic ], [ %.07974512, %bb.if ], [ %.07974512, %bb.ii ], [ %.07974512, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07974512, %bb.fz ], [ %.07974512, %bb.fr ], [ %.07974512, %bb.go ], [ %.07974512, %bb.iq ], [ %.07974512, %bb.gs ], [ %.07974512, %bb.gy ], [ %.07974512, %bb.gx ], [ %.07974512, %bb.ak ], [ %.07974512, %bb.aj ], [ %.07974512, %bb.ai ], [ %.07974512, %bb.ah ], [ %.07974512, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07974512, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07974512, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07974512, %bb.u ], [ %.07974512, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07974512, %bb.aa ], [ %.07974512, %bb.cb ], [ %.07974512, %bb.ca ], [ %.07974512, %bb.by ], [ %.07974512, %bb.bz ], [ %.07974512, %bb.bx ], [ %.07974512, %bb.cf ], [ %.07974512, %bb.de ], [ %.07974512, %bb.dc ], [ %.07974512, %bb.cz ], [ %.07974512, %bb.cw ], [ %.07974512, %bb.ct ], [ %.07974512, %bb.cq ], [ %.07974512, %bb.co ], [ %.07974512, %bb.cm ], [ %.07974512, %bb.cj ], [ %.07974512, %bb.ch ], [ %.07974512, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07974512, %bb.dt ], [ %.07974512, %bb.gw ], [ %.07974512, %bb.dz ], [ %.07974512, %bb.hh ], [ %.07974512, %bb.ef ] ; 2 uses
  %.2796.jt2 = phi i1 [ %.07944513, %bb.d ], [ %.07944513, %bb.f ], [ %.07944513, %bb.h ], [ %.07944513, %bb.j ], [ %.07944513, %bb.l ], [ %.07944513, %bb.o ], [ %.07944513, %bb.ek ], [ %.07944513, %bb.am ], [ %.07944513, %bb.ao ], [ %.07944513, %bb.aq ], [ %.07944513, %bb.at ], [ %.07944513, %bb.av ], [ %.07944513, %bb.ay ], [ %.07944513, %bb.bc ], [ %.07944513, %bb.be ], [ %.07944513, %bb.bg ], [ %.07944513, %bb.bi ], [ %.07944513, %bb.bk ], [ %.07944513, %bb.bm ], [ %.07944513, %bb.bo ], [ %.07944513, %bb.bq ], [ %.07944513, %bb.bs ], [ %.07944513, %bb.bu ], [ %.07944513, %bb.t ], [ %.07944513, %bb.cc ], [ %.07944513, %bb.df ], [ %.07944513, %bb.dm ], [ %.07944513, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07944513, %bb.eo ], [ %.07944513, %bb.es ], [ %.07944513, %bb.ew ], [ %.07944513, %bb.fd ], [ %.07944513, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07944513, %bb.fo ], [ %.07944513, %bb.fj ], [ %.07944513, %bb.fu ], [ %.07944513, %bb.gc ], [ %.07944513, %._crit_edge ], [ %.07944513, %bb.gh ], [ %.07944513, %bb.gz ], [ %.07944513, %bb.hk ], [ %.07944513, %bb.hn ], [ %.07944513, %bb.gk ], [ %.07944513, %bb.ge ], [ %.07944513, %bb.hv ], [ %.07944513, %bb.hx ], [ %.07944513, %bb.hz ], [ %.07944513, %bb.ic ], [ %.07944513, %bb.if ], [ %.07944513, %bb.ii ], [ %.07944513, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07944513, %bb.fz ], [ %.07944513, %bb.fr ], [ %.07944513, %bb.go ], [ %.07944513, %bb.iq ], [ %.07944513, %bb.gs ], [ %.07944513, %bb.gy ], [ %.07944513, %bb.gx ], [ %.07944513, %bb.ak ], [ %.07944513, %bb.aj ], [ %.07944513, %bb.ai ], [ %.07944513, %bb.ah ], [ %.07944513, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07944513, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07944513, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07944513, %bb.u ], [ %.07944513, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ true, %bb.aa ], [ %.07944513, %bb.cb ], [ %.07944513, %bb.ca ], [ %.07944513, %bb.by ], [ %.07944513, %bb.bz ], [ %.07944513, %bb.bx ], [ %.07944513, %bb.cf ], [ %.07944513, %bb.de ], [ %.07944513, %bb.dc ], [ %.07944513, %bb.cz ], [ %.07944513, %bb.cw ], [ %.07944513, %bb.ct ], [ %.07944513, %bb.cq ], [ %.07944513, %bb.co ], [ %.07944513, %bb.cm ], [ %.07944513, %bb.cj ], [ %.07944513, %bb.ch ], [ %.07944513, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07944513, %bb.dt ], [ %.07944513, %bb.gw ], [ %.07944513, %bb.dz ], [ %.07944513, %bb.hh ], [ %.07944513, %bb.ef ] ; 2 uses
  %.1793.jt2 = phi i8 [ %.07924514, %bb.d ], [ %.07924514, %bb.f ], [ %.07924514, %bb.h ], [ %.07924514, %bb.j ], [ %.07924514, %bb.l ], [ %.07924514, %bb.o ], [ %.07924514, %bb.ek ], [ %.07924514, %bb.am ], [ %.07924514, %bb.ao ], [ %.07924514, %bb.aq ], [ %.07924514, %bb.at ], [ %.07924514, %bb.av ], [ %.07924514, %bb.ay ], [ 1, %bb.bc ], [ %.07924514, %bb.be ], [ %.07924514, %bb.bg ], [ %.07924514, %bb.bi ], [ %.07924514, %bb.bk ], [ %.07924514, %bb.bm ], [ %.07924514, %bb.bo ], [ %.07924514, %bb.bq ], [ %.07924514, %bb.bs ], [ %.07924514, %bb.bu ], [ %.07924514, %bb.t ], [ %.07924514, %bb.cc ], [ %.07924514, %bb.df ], [ %.07924514, %bb.dm ], [ %.07924514, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07924514, %bb.eo ], [ %.07924514, %bb.es ], [ %.07924514, %bb.ew ], [ %.07924514, %bb.fd ], [ %.07924514, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07924514, %bb.fo ], [ %.07924514, %bb.fj ], [ %.07924514, %bb.fu ], [ %.07924514, %bb.gc ], [ %.07924514, %._crit_edge ], [ %.07924514, %bb.gh ], [ %.07924514, %bb.gz ], [ %.07924514, %bb.hk ], [ %.07924514, %bb.hn ], [ %.07924514, %bb.gk ], [ %.07924514, %bb.ge ], [ %.07924514, %bb.hv ], [ %.07924514, %bb.hx ], [ %.07924514, %bb.hz ], [ %.07924514, %bb.ic ], [ %.07924514, %bb.if ], [ %.07924514, %bb.ii ], [ %.07924514, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07924514, %bb.fz ], [ %.07924514, %bb.fr ], [ %.07924514, %bb.go ], [ %.07924514, %bb.iq ], [ %.07924514, %bb.gs ], [ %.07924514, %bb.gy ], [ %.07924514, %bb.gx ], [ %.07924514, %bb.ak ], [ %.07924514, %bb.aj ], [ %.07924514, %bb.ai ], [ %.07924514, %bb.ah ], [ %.07924514, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07924514, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07924514, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07924514, %bb.u ], [ %.07924514, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07924514, %bb.aa ], [ %.07924514, %bb.cb ], [ %.07924514, %bb.ca ], [ %.07924514, %bb.by ], [ %.07924514, %bb.bz ], [ %.07924514, %bb.bx ], [ %.07924514, %bb.cf ], [ %.07924514, %bb.de ], [ %.07924514, %bb.dc ], [ %.07924514, %bb.cz ], [ %.07924514, %bb.cw ], [ %.07924514, %bb.ct ], [ %.07924514, %bb.cq ], [ %.07924514, %bb.co ], [ %.07924514, %bb.cm ], [ %.07924514, %bb.cj ], [ %.07924514, %bb.ch ], [ %.07924514, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07924514, %bb.dt ], [ %.07924514, %bb.gw ], [ %.07924514, %bb.dz ], [ %.07924514, %bb.hh ], [ %.07924514, %bb.ef ] ; 2 uses
  %.1791.jt2 = phi ptr [ %.07904515, %bb.d ], [ %.07904515, %bb.f ], [ %.07904515, %bb.h ], [ %.07904515, %bb.j ], [ %.07904515, %bb.l ], [ %.07904515, %bb.o ], [ %.07904515, %bb.ek ], [ %.07904515, %bb.am ], [ %.07904515, %bb.ao ], [ %.07904515, %bb.aq ], [ %.07904515, %bb.at ], [ %.07904515, %bb.av ], [ %.07904515, %bb.ay ], [ %.07904515, %bb.bc ], [ %.07904515, %bb.be ], [ %.07904515, %bb.bg ], [ %.07904515, %bb.bi ], [ %.07904515, %bb.bk ], [ %.07904515, %bb.bm ], [ %.07904515, %bb.bo ], [ %.07904515, %bb.bq ], [ %.07904515, %bb.bs ], [ %.07904515, %bb.bu ], [ %.07904515, %bb.t ], [ %.07904515, %bb.cc ], [ %.07904515, %bb.df ], [ %.07904515, %bb.dm ], [ %i.sl, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07904515, %bb.eo ], [ %.07904515, %bb.es ], [ %.07904515, %bb.ew ], [ %.07904515, %bb.fd ], [ %.07904515, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07904515, %bb.fo ], [ %.07904515, %bb.fj ], [ %.07904515, %bb.fu ], [ %.07904515, %bb.gc ], [ %.07904515, %._crit_edge ], [ %.07904515, %bb.gh ], [ %.07904515, %bb.gz ], [ %.07904515, %bb.hk ], [ %.07904515, %bb.hn ], [ %.07904515, %bb.gk ], [ %.07904515, %bb.ge ], [ %.07904515, %bb.hv ], [ %.07904515, %bb.hx ], [ %.07904515, %bb.hz ], [ %.07904515, %bb.ic ], [ %.07904515, %bb.if ], [ %.07904515, %bb.ii ], [ %.07904515, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07904515, %bb.fz ], [ %.07904515, %bb.fr ], [ %.07904515, %bb.go ], [ %.07904515, %bb.iq ], [ %.07904515, %bb.gs ], [ %.07904515, %bb.gy ], [ %.07904515, %bb.gx ], [ %.07904515, %bb.ak ], [ %.07904515, %bb.aj ], [ %.07904515, %bb.ai ], [ %.07904515, %bb.ah ], [ %.07904515, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07904515, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07904515, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07904515, %bb.u ], [ %.07904515, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07904515, %bb.aa ], [ %.07904515, %bb.cb ], [ %.07904515, %bb.ca ], [ %.07904515, %bb.by ], [ %.07904515, %bb.bz ], [ %.07904515, %bb.bx ], [ %.07904515, %bb.cf ], [ %.07904515, %bb.de ], [ %.07904515, %bb.dc ], [ %.07904515, %bb.cz ], [ %.07904515, %bb.cw ], [ %.07904515, %bb.ct ], [ %.07904515, %bb.cq ], [ %.07904515, %bb.co ], [ %.07904515, %bb.cm ], [ %.07904515, %bb.cj ], [ %.07904515, %bb.ch ], [ %.07904515, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07904515, %bb.dt ], [ %.07904515, %bb.gw ], [ %.07904515, %bb.dz ], [ %.07904515, %bb.hh ], [ %.07904515, %bb.ef ] ; 25 uses
  %.1789.jt2 = phi ptr [ %.07884516, %bb.d ], [ %.07884516, %bb.f ], [ %.07884516, %bb.h ], [ %.07884516, %bb.j ], [ %.07884516, %bb.l ], [ %.07884516, %bb.o ], [ %.07884516, %bb.ek ], [ %.07884516, %bb.am ], [ %.07884516, %bb.ao ], [ %.07884516, %bb.aq ], [ %.07884516, %bb.at ], [ %.07884516, %bb.av ], [ %.07884516, %bb.ay ], [ %.07884516, %bb.bc ], [ %.07884516, %bb.be ], [ %.07884516, %bb.bg ], [ %.07884516, %bb.bi ], [ %.07884516, %bb.bk ], [ %.07884516, %bb.bm ], [ %.07884516, %bb.bo ], [ %.07884516, %bb.bq ], [ %.07884516, %bb.bs ], [ %.07884516, %bb.bu ], [ %.07884516, %bb.t ], [ %.07884516, %bb.cc ], [ %.07884516, %bb.df ], [ %.07884516, %bb.dm ], [ %.07884516, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07884516, %bb.eo ], [ %.07884516, %bb.es ], [ %.07884516, %bb.ew ], [ %.07884516, %bb.fd ], [ %.07884516, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07884516, %bb.fo ], [ %.07884516, %bb.fj ], [ %.07884516, %bb.fu ], [ %.07884516, %bb.gc ], [ %.07884516, %._crit_edge ], [ %.07884516, %bb.gh ], [ %.07884516, %bb.gz ], [ %.07884516, %bb.hk ], [ %.07884516, %bb.hn ], [ %.07884516, %bb.gk ], [ %.07884516, %bb.ge ], [ %.07884516, %bb.hv ], [ %.07884516, %bb.hx ], [ %.07884516, %bb.hz ], [ %.07884516, %bb.ic ], [ %.07884516, %bb.if ], [ %.07884516, %bb.ii ], [ %.07884516, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07884516, %bb.fz ], [ %.07884516, %bb.fr ], [ %.07884516, %bb.go ], [ %.07884516, %bb.iq ], [ %.07884516, %bb.gs ], [ %.07884516, %bb.gy ], [ %.07884516, %bb.gx ], [ %.07884516, %bb.ak ], [ %.07884516, %bb.aj ], [ %.07884516, %bb.ai ], [ %.07884516, %bb.ah ], [ %i.rp, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07884516, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07884516, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07884516, %bb.u ], [ %.07884516, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07884516, %bb.aa ], [ %.07884516, %bb.cb ], [ %.07884516, %bb.ca ], [ %.07884516, %bb.by ], [ %.07884516, %bb.bz ], [ %.07884516, %bb.bx ], [ %.07884516, %bb.cf ], [ %.07884516, %bb.de ], [ %.07884516, %bb.dc ], [ %.07884516, %bb.cz ], [ %.07884516, %bb.cw ], [ %.07884516, %bb.ct ], [ %.07884516, %bb.cq ], [ %.07884516, %bb.co ], [ %.07884516, %bb.cm ], [ %.07884516, %bb.cj ], [ %.07884516, %bb.ch ], [ %.07884516, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07884516, %bb.dt ], [ %.07884516, %bb.gw ], [ %.07884516, %bb.dz ], [ %.07884516, %bb.hh ], [ %.07884516, %bb.ef ] ; 25 uses
  %.1787.jt2 = phi ptr [ %.07864517, %bb.d ], [ %.07864517, %bb.f ], [ %.07864517, %bb.h ], [ %.07864517, %bb.j ], [ %.07864517, %bb.l ], [ %.07864517, %bb.o ], [ %.07864517, %bb.ek ], [ %.07864517, %bb.am ], [ %.07864517, %bb.ao ], [ %.07864517, %bb.aq ], [ %.07864517, %bb.at ], [ %.07864517, %bb.av ], [ %.07864517, %bb.ay ], [ %.07864517, %bb.bc ], [ %.07864517, %bb.be ], [ %.07864517, %bb.bg ], [ %.07864517, %bb.bi ], [ %.07864517, %bb.bk ], [ %.07864517, %bb.bm ], [ %.07864517, %bb.bo ], [ %.07864517, %bb.bq ], [ %.07864517, %bb.bs ], [ %.07864517, %bb.bu ], [ %.07864517, %bb.t ], [ %.07864517, %bb.cc ], [ %.07864517, %bb.df ], [ %.07864517, %bb.dm ], [ %.07864517, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07864517, %bb.eo ], [ %.07864517, %bb.es ], [ %.07864517, %bb.ew ], [ %.07864517, %bb.fd ], [ %.07864517, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07864517, %bb.fo ], [ %.07864517, %bb.fj ], [ %.07864517, %bb.fu ], [ %.07864517, %bb.gc ], [ %.07864517, %._crit_edge ], [ %.07864517, %bb.gh ], [ %.07864517, %bb.gz ], [ %.07864517, %bb.hk ], [ %i.rk, %bb.hn ], [ %.07864517, %bb.gk ], [ %.07864517, %bb.ge ], [ %.07864517, %bb.hv ], [ %.07864517, %bb.hx ], [ %.07864517, %bb.hz ], [ %.07864517, %bb.ic ], [ %.07864517, %bb.if ], [ %.07864517, %bb.ii ], [ %.07864517, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07864517, %bb.fz ], [ %.07864517, %bb.fr ], [ %.07864517, %bb.go ], [ %.07864517, %bb.iq ], [ %.07864517, %bb.gs ], [ %.07864517, %bb.gy ], [ %.07864517, %bb.gx ], [ %.07864517, %bb.ak ], [ %.07864517, %bb.aj ], [ %.07864517, %bb.ai ], [ %.07864517, %bb.ah ], [ %.07864517, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07864517, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07864517, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07864517, %bb.u ], [ %.07864517, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07864517, %bb.aa ], [ %.07864517, %bb.cb ], [ %.07864517, %bb.ca ], [ %.07864517, %bb.by ], [ %.07864517, %bb.bz ], [ %.07864517, %bb.bx ], [ %.07864517, %bb.cf ], [ %.07864517, %bb.de ], [ %.07864517, %bb.dc ], [ %.07864517, %bb.cz ], [ %.07864517, %bb.cw ], [ %.07864517, %bb.ct ], [ %.07864517, %bb.cq ], [ %.07864517, %bb.co ], [ %.07864517, %bb.cm ], [ %.07864517, %bb.cj ], [ %.07864517, %bb.ch ], [ %.07864517, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07864517, %bb.dt ], [ %.07864517, %bb.gw ], [ %.07864517, %bb.dz ], [ %.07864517, %bb.hh ], [ %.07864517, %bb.ef ] ; 4 uses
  %.1785.jt2 = phi ptr [ %.07844518, %bb.d ], [ %.07844518, %bb.f ], [ %.07844518, %bb.h ], [ %.07844518, %bb.j ], [ %.07844518, %bb.l ], [ %.07844518, %bb.o ], [ %.07844518, %bb.ek ], [ %.07844518, %bb.am ], [ %.07844518, %bb.ao ], [ %.07844518, %bb.aq ], [ %.07844518, %bb.at ], [ %.07844518, %bb.av ], [ %.07844518, %bb.ay ], [ %.07844518, %bb.bc ], [ %.07844518, %bb.be ], [ %.07844518, %bb.bg ], [ %.07844518, %bb.bi ], [ %.07844518, %bb.bk ], [ %.07844518, %bb.bm ], [ %.07844518, %bb.bo ], [ %.07844518, %bb.bq ], [ %.07844518, %bb.bs ], [ %.07844518, %bb.bu ], [ %.07844518, %bb.t ], [ %.07844518, %bb.cc ], [ %.07844518, %bb.df ], [ %.07844518, %bb.dm ], [ %.07844518, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07844518, %bb.eo ], [ %.07844518, %bb.es ], [ %.07844518, %bb.ew ], [ %.07844518, %bb.fd ], [ %.07844518, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07844518, %bb.fo ], [ %.07844518, %bb.fj ], [ %.07844518, %bb.fu ], [ %.07844518, %bb.gc ], [ %.07844518, %._crit_edge ], [ %.07844518, %bb.gh ], [ %.07844518, %bb.gz ], [ %i.re, %bb.hk ], [ %.07844518, %bb.hn ], [ %.07844518, %bb.gk ], [ %.07844518, %bb.ge ], [ %.07844518, %bb.hv ], [ %.07844518, %bb.hx ], [ %.07844518, %bb.hz ], [ %.07844518, %bb.ic ], [ %.07844518, %bb.if ], [ %.07844518, %bb.ii ], [ %.07844518, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07844518, %bb.fz ], [ %.07844518, %bb.fr ], [ %.07844518, %bb.go ], [ %.07844518, %bb.iq ], [ %.07844518, %bb.gs ], [ %.07844518, %bb.gy ], [ %.07844518, %bb.gx ], [ %.07844518, %bb.ak ], [ %.07844518, %bb.aj ], [ %.07844518, %bb.ai ], [ %.07844518, %bb.ah ], [ %.07844518, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07844518, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07844518, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07844518, %bb.u ], [ %.07844518, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07844518, %bb.aa ], [ %.07844518, %bb.cb ], [ %.07844518, %bb.ca ], [ %.07844518, %bb.by ], [ %.07844518, %bb.bz ], [ %.07844518, %bb.bx ], [ %.07844518, %bb.cf ], [ %.07844518, %bb.de ], [ %.07844518, %bb.dc ], [ %.07844518, %bb.cz ], [ %.07844518, %bb.cw ], [ %.07844518, %bb.ct ], [ %.07844518, %bb.cq ], [ %.07844518, %bb.co ], [ %.07844518, %bb.cm ], [ %.07844518, %bb.cj ], [ %.07844518, %bb.ch ], [ %.07844518, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07844518, %bb.dt ], [ %.07844518, %bb.gw ], [ %.07844518, %bb.dz ], [ %.07844518, %bb.hh ], [ %.07844518, %bb.ef ] ; 4 uses
  %.2783.jt2 = phi ptr [ %.07814519, %bb.d ], [ %.07814519, %bb.f ], [ %.07814519, %bb.h ], [ %.07814519, %bb.j ], [ %.07814519, %bb.l ], [ %.07814519, %bb.o ], [ %.07814519, %bb.ek ], [ %.07814519, %bb.am ], [ %.07814519, %bb.ao ], [ %.07814519, %bb.aq ], [ %.07814519, %bb.at ], [ %.07814519, %bb.av ], [ %.07814519, %bb.ay ], [ %i.em, %bb.bc ], [ null, %bb.be ], [ %.07814519, %bb.bg ], [ %.07814519, %bb.bi ], [ %.07814519, %bb.bk ], [ %.07814519, %bb.bm ], [ %.07814519, %bb.bo ], [ %.07814519, %bb.bq ], [ %.07814519, %bb.bs ], [ %.07814519, %bb.bu ], [ %.07814519, %bb.t ], [ %.07814519, %bb.cc ], [ %.07814519, %bb.df ], [ %.07814519, %bb.dm ], [ %.07814519, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07814519, %bb.eo ], [ %.07814519, %bb.es ], [ %.07814519, %bb.ew ], [ %.07814519, %bb.fd ], [ %.07814519, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07814519, %bb.fo ], [ %.07814519, %bb.fj ], [ %.07814519, %bb.fu ], [ %.07814519, %bb.gc ], [ %.07814519, %._crit_edge ], [ %.07814519, %bb.gh ], [ %.07814519, %bb.gz ], [ %.07814519, %bb.hk ], [ %.07814519, %bb.hn ], [ %.07814519, %bb.gk ], [ %.07814519, %bb.ge ], [ %.07814519, %bb.hv ], [ %.07814519, %bb.hx ], [ %.07814519, %bb.hz ], [ %.07814519, %bb.ic ], [ %.07814519, %bb.if ], [ %.07814519, %bb.ii ], [ %.07814519, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07814519, %bb.fz ], [ %.07814519, %bb.fr ], [ %.07814519, %bb.go ], [ %.07814519, %bb.iq ], [ %.07814519, %bb.gs ], [ %.07814519, %bb.gy ], [ %.07814519, %bb.gx ], [ %.07814519, %bb.ak ], [ %.07814519, %bb.aj ], [ %.07814519, %bb.ai ], [ %.07814519, %bb.ah ], [ %.07814519, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07814519, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07814519, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07814519, %bb.u ], [ %.07814519, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07814519, %bb.aa ], [ %.07814519, %bb.cb ], [ %.07814519, %bb.ca ], [ %.07814519, %bb.by ], [ %.07814519, %bb.bz ], [ %.07814519, %bb.bx ], [ %.07814519, %bb.cf ], [ %spec.select1275, %bb.de ], [ %spec.select1274, %bb.dc ], [ %spec.select1273, %bb.cz ], [ %spec.select1272, %bb.cw ], [ %spec.select1271, %bb.ct ], [ %spec.select1270, %bb.cq ], [ %spec.select1269, %bb.co ], [ %spec.select1268, %bb.cm ], [ %spec.select1267, %bb.cj ], [ %spec.select1266, %bb.ch ], [ %.07814519, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07814519, %bb.dt ], [ %.07814519, %bb.gw ], [ %.07814519, %bb.dz ], [ %.07814519, %bb.hh ], [ %.07814519, %bb.ef ] ; 47 uses
  %.1780.jt2 = phi ptr [ %.07794520, %bb.d ], [ %.07794520, %bb.f ], [ %.07794520, %bb.h ], [ %.07794520, %bb.j ], [ %.07794520, %bb.l ], [ %i.bn, %bb.o ], [ %.07794520, %bb.ek ], [ %.07794520, %bb.am ], [ %.07794520, %bb.ao ], [ %.07794520, %bb.aq ], [ %i.dr, %bb.at ], [ @.str.15, %bb.av ], [ %i.dz, %bb.ay ], [ %.07794520, %bb.bc ], [ %.07794520, %bb.be ], [ %.07794520, %bb.bg ], [ %.07794520, %bb.bi ], [ %.07794520, %bb.bk ], [ %.07794520, %bb.bm ], [ %.07794520, %bb.bo ], [ %.07794520, %bb.bq ], [ %.07794520, %bb.bs ], [ %.07794520, %bb.bu ], [ %i.bt, %bb.t ], [ %.07794520, %bb.cc ], [ %.07794520, %bb.df ], [ %.07794520, %bb.dm ], [ %.07794520, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07794520, %bb.eo ], [ %.07794520, %bb.es ], [ %.07794520, %bb.ew ], [ %.07794520, %bb.fd ], [ %.07794520, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07794520, %bb.fo ], [ %.07794520, %bb.fj ], [ %.07794520, %bb.fu ], [ %.07794520, %bb.gc ], [ %.07794520, %._crit_edge ], [ %.07794520, %bb.gh ], [ %.07794520, %bb.gz ], [ %.07794520, %bb.hk ], [ %.07794520, %bb.hn ], [ %.07794520, %bb.gk ], [ %.07794520, %bb.ge ], [ %.07794520, %bb.hv ], [ %.07794520, %bb.hx ], [ %.07794520, %bb.hz ], [ %.07794520, %bb.ic ], [ %.07794520, %bb.if ], [ %.07794520, %bb.ii ], [ %.07794520, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07794520, %bb.fz ], [ %.07794520, %bb.fr ], [ %.07794520, %bb.go ], [ %.07794520, %bb.iq ], [ %.07794520, %bb.gs ], [ %.07794520, %bb.gy ], [ %.07794520, %bb.gx ], [ %i.bt, %bb.ak ], [ %i.bt, %bb.aj ], [ %i.bt, %bb.ai ], [ %i.bt, %bb.ah ], [ %.07794520, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %i.bt, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %i.bt, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %i.bt, %bb.u ], [ %i.bt, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %i.bt, %bb.aa ], [ %.07794520, %bb.cb ], [ %.07794520, %bb.ca ], [ %.07794520, %bb.by ], [ %.07794520, %bb.bz ], [ %.07794520, %bb.bx ], [ %.07794520, %bb.cf ], [ %.07794520, %bb.de ], [ %.07794520, %bb.dc ], [ %.07794520, %bb.cz ], [ %.07794520, %bb.cw ], [ %.07794520, %bb.ct ], [ %.07794520, %bb.cq ], [ %.07794520, %bb.co ], [ %.07794520, %bb.cm ], [ %.07794520, %bb.cj ], [ %.07794520, %bb.ch ], [ %.07794520, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07794520, %bb.dt ], [ %.07794520, %bb.gw ], [ %.07794520, %bb.dz ], [ %.07794520, %bb.hh ], [ %.07794520, %bb.ef ] ; 7 uses
  %.2778.jt2 = phi i32 [ %.07764521, %bb.d ], [ %.07764521, %bb.f ], [ %.07764521, %bb.h ], [ %.07764521, %bb.j ], [ %.07764521, %bb.l ], [ %.07764521, %bb.o ], [ %.07764521, %bb.ek ], [ %.07764521, %bb.am ], [ %.07764521, %bb.ao ], [ %.07764521, %bb.aq ], [ %.07764521, %bb.at ], [ %.07764521, %bb.av ], [ %.07764521, %bb.ay ], [ %.07764521, %bb.bc ], [ %.07764521, %bb.be ], [ %.07764521, %bb.bg ], [ %.07764521, %bb.bi ], [ %.07764521, %bb.bk ], [ %.07764521, %bb.bm ], [ %.07764521, %bb.bo ], [ %.07764521, %bb.bq ], [ %.07764521, %bb.bs ], [ %.07764521, %bb.bu ], [ %.07764521, %bb.t ], [ %.07764521, %bb.cc ], [ %.07764521, %bb.df ], [ %.07764521, %bb.dm ], [ %.07764521, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07764521, %bb.eo ], [ %.07764521, %bb.es ], [ %.07764521, %bb.ew ], [ %.07764521, %bb.fd ], [ %.07764521, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07764521, %bb.fo ], [ %.07764521, %bb.fj ], [ %.07764521, %bb.fu ], [ %.07764521, %bb.gc ], [ %.07764521, %._crit_edge ], [ %.07764521, %bb.gh ], [ %.07764521, %bb.gz ], [ %.07764521, %bb.hk ], [ %.07764521, %bb.hn ], [ %.07764521, %bb.gk ], [ %.07764521, %bb.ge ], [ %.07764521, %bb.hv ], [ %.07764521, %bb.hx ], [ %.07764521, %bb.hz ], [ %.07764521, %bb.ic ], [ %.07764521, %bb.if ], [ %.07764521, %bb.ii ], [ %.07764521, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07764521, %bb.fz ], [ %.07764521, %bb.fr ], [ %.07764521, %bb.go ], [ %.07764521, %bb.iq ], [ %.07764521, %bb.gs ], [ %.07764521, %bb.gy ], [ %.07764521, %bb.gx ], [ %.07764521, %bb.ak ], [ %.07764521, %bb.aj ], [ %.07764521, %bb.ai ], [ %.07764521, %bb.ah ], [ %.07764521, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07764521, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07764521, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07764521, %bb.u ], [ %.07764521, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07764521, %bb.aa ], [ 3, %bb.cb ], [ 2, %bb.ca ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 0, %bb.bx ], [ %.07764521, %bb.cf ], [ %.07764521, %bb.de ], [ %.07764521, %bb.dc ], [ %.07764521, %bb.cz ], [ %.07764521, %bb.cw ], [ %.07764521, %bb.ct ], [ %.07764521, %bb.cq ], [ %.07764521, %bb.co ], [ %.07764521, %bb.cm ], [ %.07764521, %bb.cj ], [ %.07764521, %bb.ch ], [ %.07764521, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07764521, %bb.dt ], [ %.07764521, %bb.gw ], [ %.07764521, %bb.dz ], [ %.07764521, %bb.hh ], [ %.07764521, %bb.ef ] ; 7 uses
  %.1775.jt2 = phi i1 [ %.07744522, %bb.d ], [ %.07744522, %bb.f ], [ %.07744522, %bb.h ], [ %.07744522, %bb.j ], [ %.07744522, %bb.l ], [ %.07744522, %bb.o ], [ %.07744522, %bb.ek ], [ %.07744522, %bb.am ], [ %.07744522, %bb.ao ], [ %.07744522, %bb.aq ], [ %.07744522, %bb.at ], [ %.07744522, %bb.av ], [ %.07744522, %bb.ay ], [ %.07744522, %bb.bc ], [ %.07744522, %bb.be ], [ %.07744522, %bb.bg ], [ %.07744522, %bb.bi ], [ %.07744522, %bb.bk ], [ %.07744522, %bb.bm ], [ %.07744522, %bb.bo ], [ %.07744522, %bb.bq ], [ false, %bb.bs ], [ true, %bb.bu ], [ %.07744522, %bb.t ], [ true, %bb.cc ], [ %.07744522, %bb.df ], [ %.07744522, %bb.dm ], [ %.07744522, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07744522, %bb.eo ], [ %.07744522, %bb.es ], [ %.07744522, %bb.ew ], [ %.07744522, %bb.fd ], [ %.07744522, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07744522, %bb.fo ], [ %.07744522, %bb.fj ], [ %.07744522, %bb.fu ], [ %.07744522, %bb.gc ], [ %.07744522, %._crit_edge ], [ %.07744522, %bb.gh ], [ %.07744522, %bb.gz ], [ %.07744522, %bb.hk ], [ %.07744522, %bb.hn ], [ %.07744522, %bb.gk ], [ %.07744522, %bb.ge ], [ %.07744522, %bb.hv ], [ %.07744522, %bb.hx ], [ %.07744522, %bb.hz ], [ %.07744522, %bb.ic ], [ %.07744522, %bb.if ], [ %.07744522, %bb.ii ], [ %.07744522, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07744522, %bb.fz ], [ %.07744522, %bb.fr ], [ %.07744522, %bb.go ], [ %.07744522, %bb.iq ], [ %.07744522, %bb.gs ], [ %.07744522, %bb.gy ], [ %.07744522, %bb.gx ], [ %.07744522, %bb.ak ], [ %.07744522, %bb.aj ], [ %.07744522, %bb.ai ], [ %.07744522, %bb.ah ], [ %.07744522, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07744522, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07744522, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07744522, %bb.u ], [ %.07744522, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07744522, %bb.aa ], [ true, %bb.cb ], [ true, %bb.ca ], [ true, %bb.by ], [ true, %bb.bz ], [ true, %bb.bx ], [ %.07744522, %bb.cf ], [ %.07744522, %bb.de ], [ %.07744522, %bb.dc ], [ %.07744522, %bb.cz ], [ %.07744522, %bb.cw ], [ %.07744522, %bb.ct ], [ %.07744522, %bb.cq ], [ %.07744522, %bb.co ], [ %.07744522, %bb.cm ], [ %.07744522, %bb.cj ], [ %.07744522, %bb.ch ], [ %.07744522, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07744522, %bb.dt ], [ %.07744522, %bb.gw ], [ %.07744522, %bb.dz ], [ %.07744522, %bb.hh ], [ %.07744522, %bb.ef ] ; 3 uses
  %.1773.jt2 = phi i8 [ %.07724523, %bb.d ], [ %.07724523, %bb.f ], [ %.07724523, %bb.h ], [ %.07724523, %bb.j ], [ %.07724523, %bb.l ], [ %.07724523, %bb.o ], [ %.07724523, %bb.ek ], [ %.07724523, %bb.am ], [ %.07724523, %bb.ao ], [ %.07724523, %bb.aq ], [ %.07724523, %bb.at ], [ %.07724523, %bb.av ], [ %.07724523, %bb.ay ], [ %.07724523, %bb.bc ], [ %.07724523, %bb.be ], [ 1, %bb.bg ], [ %.07724523, %bb.bi ], [ %.07724523, %bb.bk ], [ %.07724523, %bb.bm ], [ %.07724523, %bb.bo ], [ %.07724523, %bb.bq ], [ %.07724523, %bb.bs ], [ %.07724523, %bb.bu ], [ %.07724523, %bb.t ], [ %.07724523, %bb.cc ], [ %.07724523, %bb.df ], [ %.07724523, %bb.dm ], [ %.07724523, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07724523, %bb.eo ], [ %.07724523, %bb.es ], [ %.07724523, %bb.ew ], [ %.07724523, %bb.fd ], [ %.07724523, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07724523, %bb.fo ], [ %.07724523, %bb.fj ], [ %.07724523, %bb.fu ], [ %.07724523, %bb.gc ], [ %.07724523, %._crit_edge ], [ %.07724523, %bb.gh ], [ %.07724523, %bb.gz ], [ %.07724523, %bb.hk ], [ %.07724523, %bb.hn ], [ %.07724523, %bb.gk ], [ %.07724523, %bb.ge ], [ %.07724523, %bb.hv ], [ %.07724523, %bb.hx ], [ %.07724523, %bb.hz ], [ %.07724523, %bb.ic ], [ %.07724523, %bb.if ], [ %.07724523, %bb.ii ], [ %.07724523, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07724523, %bb.fz ], [ %.07724523, %bb.fr ], [ %.07724523, %bb.go ], [ %.07724523, %bb.iq ], [ %.07724523, %bb.gs ], [ %.07724523, %bb.gy ], [ %.07724523, %bb.gx ], [ %.07724523, %bb.ak ], [ %.07724523, %bb.aj ], [ %.07724523, %bb.ai ], [ %.07724523, %bb.ah ], [ %.07724523, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07724523, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07724523, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07724523, %bb.u ], [ %.07724523, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07724523, %bb.aa ], [ %.07724523, %bb.cb ], [ %.07724523, %bb.ca ], [ %.07724523, %bb.by ], [ %.07724523, %bb.bz ], [ %.07724523, %bb.bx ], [ %.07724523, %bb.cf ], [ %.07724523, %bb.de ], [ %.07724523, %bb.dc ], [ %.07724523, %bb.cz ], [ %.07724523, %bb.cw ], [ %.07724523, %bb.ct ], [ %.07724523, %bb.cq ], [ %.07724523, %bb.co ], [ %.07724523, %bb.cm ], [ %.07724523, %bb.cj ], [ %.07724523, %bb.ch ], [ %.07724523, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07724523, %bb.dt ], [ %.07724523, %bb.gw ], [ %.07724523, %bb.dz ], [ %.07724523, %bb.hh ], [ %.07724523, %bb.ef ] ; 2 uses
  %.1771.jt2 = phi i32 [ %.07704524, %bb.d ], [ %.07704524, %bb.f ], [ %.07704524, %bb.h ], [ %.07704524, %bb.j ], [ %.07704524, %bb.l ], [ %.07704524, %bb.o ], [ %.07704524, %bb.ek ], [ %.07704524, %bb.am ], [ %.07704524, %bb.ao ], [ %.07704524, %bb.aq ], [ %.07704524, %bb.at ], [ %.07704524, %bb.av ], [ %.07704524, %bb.ay ], [ %.07704524, %bb.bc ], [ %.07704524, %bb.be ], [ %.07704524, %bb.bg ], [ 0, %bb.bi ], [ 1, %bb.bk ], [ 2, %bb.bm ], [ %.07704524, %bb.bo ], [ %.07704524, %bb.bq ], [ %.07704524, %bb.bs ], [ %.07704524, %bb.bu ], [ %.07704524, %bb.t ], [ %.07704524, %bb.cc ], [ %.07704524, %bb.df ], [ %.07704524, %bb.dm ], [ %.07704524, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07704524, %bb.eo ], [ %.07704524, %bb.es ], [ %.07704524, %bb.ew ], [ %.07704524, %bb.fd ], [ %.07704524, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07704524, %bb.fo ], [ %.07704524, %bb.fj ], [ %.07704524, %bb.fu ], [ %.07704524, %bb.gc ], [ %.07704524, %._crit_edge ], [ %.07704524, %bb.gh ], [ %.07704524, %bb.gz ], [ %.07704524, %bb.hk ], [ %.07704524, %bb.hn ], [ %.07704524, %bb.gk ], [ %.07704524, %bb.ge ], [ %.07704524, %bb.hv ], [ %.07704524, %bb.hx ], [ %.07704524, %bb.hz ], [ %.07704524, %bb.ic ], [ %.07704524, %bb.if ], [ %.07704524, %bb.ii ], [ %.07704524, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07704524, %bb.fz ], [ %.07704524, %bb.fr ], [ %.07704524, %bb.go ], [ %.07704524, %bb.iq ], [ %.07704524, %bb.gs ], [ %.07704524, %bb.gy ], [ %.07704524, %bb.gx ], [ %.07704524, %bb.ak ], [ %.07704524, %bb.aj ], [ %.07704524, %bb.ai ], [ %.07704524, %bb.ah ], [ %.07704524, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07704524, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07704524, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07704524, %bb.u ], [ %.07704524, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07704524, %bb.aa ], [ %.07704524, %bb.cb ], [ %.07704524, %bb.ca ], [ %.07704524, %bb.by ], [ %.07704524, %bb.bz ], [ %.07704524, %bb.bx ], [ %.07704524, %bb.cf ], [ %.07704524, %bb.de ], [ %.07704524, %bb.dc ], [ %.07704524, %bb.cz ], [ %.07704524, %bb.cw ], [ %.07704524, %bb.ct ], [ %.07704524, %bb.cq ], [ %.07704524, %bb.co ], [ %.07704524, %bb.cm ], [ %.07704524, %bb.cj ], [ %.07704524, %bb.ch ], [ %.07704524, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07704524, %bb.dt ], [ %.07704524, %bb.gw ], [ %.07704524, %bb.dz ], [ %.07704524, %bb.hh ], [ %.07704524, %bb.ef ] ; 2 uses
  %.1769.jt2 = phi i32 [ 0, %bb.d ], [ 1, %bb.f ], [ 2, %bb.h ], [ 3, %bb.j ], [ 4, %bb.l ], [ %.07684525, %bb.o ], [ %.07684525, %bb.ek ], [ %.07684525, %bb.am ], [ %.07684525, %bb.ao ], [ %.07684525, %bb.aq ], [ %.07684525, %bb.at ], [ %.07684525, %bb.av ], [ %.07684525, %bb.ay ], [ %.07684525, %bb.bc ], [ %.07684525, %bb.be ], [ %.07684525, %bb.bg ], [ %.07684525, %bb.bi ], [ %.07684525, %bb.bk ], [ %.07684525, %bb.bm ], [ %.07684525, %bb.bo ], [ %.07684525, %bb.bq ], [ %.07684525, %bb.bs ], [ %.07684525, %bb.bu ], [ %.07684525, %bb.t ], [ %.07684525, %bb.cc ], [ %.07684525, %bb.df ], [ %.07684525, %bb.dm ], [ %.07684525, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07684525, %bb.eo ], [ %.07684525, %bb.es ], [ %.07684525, %bb.ew ], [ %.07684525, %bb.fd ], [ %.07684525, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07684525, %bb.fo ], [ %.07684525, %bb.fj ], [ %.07684525, %bb.fu ], [ %.07684525, %bb.gc ], [ %.07684525, %._crit_edge ], [ %.07684525, %bb.gh ], [ %.07684525, %bb.gz ], [ %.07684525, %bb.hk ], [ %.07684525, %bb.hn ], [ %.07684525, %bb.gk ], [ %.07684525, %bb.ge ], [ %.07684525, %bb.hv ], [ %.07684525, %bb.hx ], [ %.07684525, %bb.hz ], [ %.07684525, %bb.ic ], [ %.07684525, %bb.if ], [ %.07684525, %bb.ii ], [ %.07684525, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07684525, %bb.fz ], [ %.07684525, %bb.fr ], [ %.07684525, %bb.go ], [ %.07684525, %bb.iq ], [ %.07684525, %bb.gs ], [ %.07684525, %bb.gy ], [ %.07684525, %bb.gx ], [ %.07684525, %bb.ak ], [ %.07684525, %bb.aj ], [ %.07684525, %bb.ai ], [ %.07684525, %bb.ah ], [ %.07684525, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.07684525, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.07684525, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %.07684525, %bb.u ], [ %.07684525, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.07684525, %bb.aa ], [ %.07684525, %bb.cb ], [ %.07684525, %bb.ca ], [ %.07684525, %bb.by ], [ %.07684525, %bb.bz ], [ %.07684525, %bb.bx ], [ %.07684525, %bb.cf ], [ %.07684525, %bb.de ], [ %.07684525, %bb.dc ], [ %.07684525, %bb.cz ], [ %.07684525, %bb.cw ], [ %.07684525, %bb.ct ], [ %.07684525, %bb.cq ], [ %.07684525, %bb.co ], [ %.07684525, %bb.cm ], [ %.07684525, %bb.cj ], [ %.07684525, %bb.ch ], [ %.07684525, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07684525, %bb.dt ], [ %.07684525, %bb.gw ], [ %.07684525, %bb.dz ], [ %.07684525, %bb.hh ], [ %.07684525, %bb.ef ] ; 6 uses
  %.3767.jt2 = phi i32 [ %.07644526, %bb.d ], [ %.07644526, %bb.f ], [ %.07644526, %bb.h ], [ %.07644526, %bb.j ], [ %.07644526, %bb.l ], [ 1, %bb.o ], [ %.07644526, %bb.ek ], [ %.07644526, %bb.am ], [ %.07644526, %bb.ao ], [ %.07644526, %bb.aq ], [ 5, %bb.at ], [ 6, %bb.av ], [ 7, %bb.ay ], [ %.07644526, %bb.bc ], [ %.07644526, %bb.be ], [ %.07644526, %bb.bg ], [ %.07644526, %bb.bi ], [ %.07644526, %bb.bk ], [ %.07644526, %bb.bm ], [ %.07644526, %bb.bo ], [ %.07644526, %bb.bq ], [ %.07644526, %bb.bs ], [ %.07644526, %bb.bu ], [ 2, %bb.t ], [ %.07644526, %bb.cc ], [ %.07644526, %bb.df ], [ %.07644526, %bb.dm ], [ %.07644526, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %.07644526, %bb.eo ], [ %.07644526, %bb.es ], [ %.07644526, %bb.ew ], [ %.07644526, %bb.fd ], [ %.07644526, %_ZL11parseDoubleRdPKc.exit1324 ], [ %.07644526, %bb.fo ], [ %.07644526, %bb.fj ], [ %.07644526, %bb.fu ], [ %.07644526, %bb.gc ], [ %.07644526, %._crit_edge ], [ %.07644526, %bb.gh ], [ %.07644526, %bb.gz ], [ %.07644526, %bb.hk ], [ %.07644526, %bb.hn ], [ %.07644526, %bb.gk ], [ %.07644526, %bb.ge ], [ %.07644526, %bb.hv ], [ %.07644526, %bb.hx ], [ %.07644526, %bb.hz ], [ %.07644526, %bb.ic ], [ %.07644526, %bb.if ], [ %.07644526, %bb.ii ], [ %.07644526, %_ZL15parseUnsignedLLRyPKc.exit ], [ %.07644526, %bb.fz ], [ %.07644526, %bb.fr ], [ %.07644526, %bb.go ], [ %.07644526, %bb.iq ], [ %.07644526, %bb.gs ], [ %.07644526, %bb.gy ], [ %.07644526, %bb.gx ], [ %.1765, %bb.ak ], [ %.1765, %bb.aj ], [ %.1765, %bb.ai ], [ %.1765, %bb.ah ], [ %.07644526, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %.1765, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %.1765, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %spec.select1265, %bb.u ], [ %.1765, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %.1765, %bb.aa ], [ %.07644526, %bb.cb ], [ %.07644526, %bb.ca ], [ %.07644526, %bb.by ], [ %.07644526, %bb.bz ], [ %.07644526, %bb.bx ], [ %.07644526, %bb.cf ], [ %.07644526, %bb.de ], [ %.07644526, %bb.dc ], [ %.07644526, %bb.cz ], [ %.07644526, %bb.cw ], [ %.07644526, %bb.ct ], [ %.07644526, %bb.cq ], [ %.07644526, %bb.co ], [ %.07644526, %bb.cm ], [ %.07644526, %bb.cj ], [ %.07644526, %bb.ch ], [ %.07644526, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %.07644526, %bb.dt ], [ %.07644526, %bb.gw ], [ %.07644526, %bb.dz ], [ %.07644526, %bb.hh ], [ %.07644526, %bb.ef ] ; 5 uses
  %i.uu = phi <2 x double> [ %i.am, %bb.d ], [ %i.am, %bb.f ], [ %i.am, %bb.h ], [ %i.am, %bb.j ], [ %i.am, %bb.l ], [ %i.am, %bb.o ], [ %i.kp, %bb.ek ], [ %i.am, %bb.am ], [ %i.am, %bb.ao ], [ %i.am, %bb.aq ], [ %i.am, %bb.at ], [ %i.am, %bb.av ], [ %i.am, %bb.ay ], [ %i.am, %bb.bc ], [ %i.am, %bb.be ], [ %i.am, %bb.bg ], [ %i.am, %bb.bi ], [ %i.am, %bb.bk ], [ %i.am, %bb.bm ], [ %i.am, %bb.bo ], [ %i.am, %bb.bq ], [ %i.am, %bb.bs ], [ %i.am, %bb.bu ], [ %i.am, %bb.t ], [ %i.am, %bb.cc ], [ %i.am, %bb.df ], [ %i.am, %bb.dm ], [ %i.am, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %i.am, %bb.eo ], [ %i.am, %bb.es ], [ %i.am, %bb.ew ], [ %i.am, %bb.fd ], [ %i.am, %_ZL11parseDoubleRdPKc.exit1324 ], [ %i.am, %bb.fo ], [ %i.am, %bb.fj ], [ %i.am, %bb.fu ], [ %i.am, %bb.gc ], [ %i.am, %._crit_edge ], [ %i.am, %bb.gh ], [ %i.am, %bb.gz ], [ %i.am, %bb.hk ], [ %i.am, %bb.hn ], [ %i.am, %bb.gk ], [ %i.am, %bb.ge ], [ %i.am, %bb.hv ], [ %i.am, %bb.hx ], [ %i.am, %bb.hz ], [ %i.am, %bb.ic ], [ %i.am, %bb.if ], [ %i.am, %bb.ii ], [ %i.am, %_ZL15parseUnsignedLLRyPKc.exit ], [ %i.am, %bb.fz ], [ %i.am, %bb.fr ], [ %i.am, %bb.go ], [ %i.am, %bb.iq ], [ %i.am, %bb.gs ], [ %i.am, %bb.gy ], [ %i.am, %bb.gx ], [ %i.am, %bb.ak ], [ %i.am, %bb.aj ], [ %i.am, %bb.ai ], [ %i.am, %bb.ah ], [ %i.am, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %i.am, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %i.am, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %i.am, %bb.u ], [ %i.am, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %i.am, %bb.aa ], [ %i.am, %bb.cb ], [ %i.am, %bb.ca ], [ %i.am, %bb.by ], [ %i.am, %bb.bz ], [ %i.am, %bb.bx ], [ %i.am, %bb.cf ], [ %i.am, %bb.de ], [ %i.am, %bb.dc ], [ %i.am, %bb.cz ], [ %i.am, %bb.cw ], [ %i.am, %bb.ct ], [ %i.am, %bb.cq ], [ %i.am, %bb.co ], [ %i.am, %bb.cm ], [ %i.am, %bb.cj ], [ %i.am, %bb.ch ], [ %i.am, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %i.am, %bb.dt ], [ %i.am, %bb.gw ], [ %i.jb, %bb.dz ], [ %i.am, %bb.hh ], [ %i.am, %bb.ef ] ; 5 uses
  %i.uv = phi <2 x double> [ %i.an, %bb.d ], [ %i.an, %bb.f ], [ %i.an, %bb.h ], [ %i.an, %bb.j ], [ %i.an, %bb.l ], [ %i.an, %bb.o ], [ %i.an, %bb.ek ], [ %i.an, %bb.am ], [ %i.an, %bb.ao ], [ %i.an, %bb.aq ], [ %i.an, %bb.at ], [ %i.an, %bb.av ], [ %i.an, %bb.ay ], [ %i.an, %bb.bc ], [ %i.an, %bb.be ], [ %i.an, %bb.bg ], [ %i.an, %bb.bi ], [ %i.an, %bb.bk ], [ %i.an, %bb.bm ], [ %i.an, %bb.bo ], [ %i.an, %bb.bq ], [ %i.an, %bb.bs ], [ %i.an, %bb.bu ], [ %i.an, %bb.t ], [ %i.an, %bb.cc ], [ %i.an, %bb.df ], [ %i.an, %bb.dm ], [ %i.an, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %i.an, %bb.eo ], [ %i.an, %bb.es ], [ %i.an, %bb.ew ], [ %i.an, %bb.fd ], [ %i.an, %_ZL11parseDoubleRdPKc.exit1324 ], [ %i.an, %bb.fo ], [ %i.an, %bb.fj ], [ %i.an, %bb.fu ], [ %i.an, %bb.gc ], [ %i.an, %._crit_edge ], [ %i.an, %bb.gh ], [ %i.an, %bb.gz ], [ %i.an, %bb.hk ], [ %i.an, %bb.hn ], [ %i.an, %bb.gk ], [ %i.an, %bb.ge ], [ %i.an, %bb.hv ], [ %i.an, %bb.hx ], [ %i.an, %bb.hz ], [ %i.an, %bb.ic ], [ %i.an, %bb.if ], [ %i.an, %bb.ii ], [ %i.an, %_ZL15parseUnsignedLLRyPKc.exit ], [ %i.an, %bb.fz ], [ %i.an, %bb.fr ], [ %i.an, %bb.go ], [ %i.an, %bb.iq ], [ %i.an, %bb.gs ], [ %i.an, %bb.gy ], [ %i.an, %bb.gx ], [ %i.an, %bb.ak ], [ %i.an, %bb.aj ], [ %i.an, %bb.ai ], [ %i.an, %bb.ah ], [ %i.an, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %i.an, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %i.an, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %i.an, %bb.u ], [ %i.an, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %i.an, %bb.aa ], [ %i.an, %bb.cb ], [ %i.an, %bb.ca ], [ %i.an, %bb.by ], [ %i.an, %bb.bz ], [ %i.an, %bb.bx ], [ %i.an, %bb.cf ], [ %i.an, %bb.de ], [ %i.an, %bb.dc ], [ %i.an, %bb.cz ], [ %i.an, %bb.cw ], [ %i.an, %bb.ct ], [ %i.an, %bb.cq ], [ %i.an, %bb.co ], [ %i.an, %bb.cm ], [ %i.an, %bb.cj ], [ %i.an, %bb.ch ], [ %i.an, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %i.il, %bb.dt ], [ %i.an, %bb.gw ], [ %i.an, %bb.dz ], [ %i.an, %bb.hh ], [ %i.jv, %bb.ef ] ; 5 uses
  %i.uw = phi <2 x double> [ %i.ao, %bb.d ], [ %i.ao, %bb.f ], [ %i.ao, %bb.h ], [ %i.ao, %bb.j ], [ %i.ao, %bb.l ], [ %i.ao, %bb.o ], [ %i.ao, %bb.ek ], [ %i.ao, %bb.am ], [ %i.ao, %bb.ao ], [ %i.ao, %bb.aq ], [ %i.ao, %bb.at ], [ %i.ao, %bb.av ], [ %i.ao, %bb.ay ], [ %i.ao, %bb.bc ], [ %i.ao, %bb.be ], [ %i.ao, %bb.bg ], [ %i.ao, %bb.bi ], [ %i.ao, %bb.bk ], [ %i.ao, %bb.bm ], [ %i.ao, %bb.bo ], [ %i.ao, %bb.bq ], [ %i.ao, %bb.bs ], [ %i.ao, %bb.bu ], [ %i.ao, %bb.t ], [ %i.ao, %bb.cc ], [ %i.ao, %bb.df ], [ %i.ao, %bb.dm ], [ %i.ao, %_ZL13parseUnsignedRjPKc.exit1338 ], [ %i.ao, %bb.eo ], [ %i.ao, %bb.es ], [ %i.ao, %bb.ew ], [ %i.ao, %bb.fd ], [ %i.nb, %_ZL11parseDoubleRdPKc.exit1324 ], [ %i.ao, %bb.fo ], [ %i.ao, %bb.fj ], [ %i.ao, %bb.fu ], [ %i.ao, %bb.gc ], [ %i.ao, %._crit_edge ], [ %i.ao, %bb.gh ], [ %i.ao, %bb.gz ], [ %i.ao, %bb.hk ], [ %i.ao, %bb.hn ], [ %i.ao, %bb.gk ], [ %i.ao, %bb.ge ], [ %i.ao, %bb.hv ], [ %i.ao, %bb.hx ], [ %i.ao, %bb.hz ], [ %i.ao, %bb.ic ], [ %i.ao, %bb.if ], [ %i.ao, %bb.ii ], [ %i.ao, %_ZL15parseUnsignedLLRyPKc.exit ], [ %i.ao, %bb.fz ], [ %i.ao, %bb.fr ], [ %i.ao, %bb.go ], [ %i.ao, %bb.iq ], [ %i.ao, %bb.gs ], [ %i.ao, %bb.gy ], [ %i.ao, %bb.gx ], [ %i.ao, %bb.ak ], [ %i.ao, %bb.aj ], [ %i.ao, %bb.ai ], [ %i.ao, %bb.ah ], [ %i.ao, %_ZL13parseUnsignedRjPKc.exit1334 ], [ %i.ao, %_ZL21parseUnsignedDecOrHexRjPKc.exit.i ], [ %i.ao, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread ], [ %i.ao, %bb.u ], [ %i.ao, %_ZL21parseUnsignedDecOrHexRjPKc.exit ], [ %i.ao, %bb.aa ], [ %i.ao, %bb.cb ], [ %i.ao, %bb.ca ], [ %i.ao, %bb.by ], [ %i.ao, %bb.bz ], [ %i.ao, %bb.bx ], [ %i.ao, %bb.cf ], [ %i.ao, %bb.de ], [ %i.ao, %bb.dc ], [ %i.ao, %bb.cz ], [ %i.ao, %bb.cw ], [ %i.ao, %bb.ct ], [ %i.ao, %bb.cq ], [ %i.ao, %bb.co ], [ %i.ao, %bb.cm ], [ %i.ao, %bb.cj ], [ %i.ao, %bb.ch ], [ %i.ao, %_ZL13parseUnsignedRjPKc.exit1299 ], [ %i.ao, %bb.dt ], [ %i.ao, %bb.gw ], [ %i.ao, %bb.dz ], [ %i.ao, %bb.hh ], [ %i.ao, %bb.ef ] ; 2 uses
  %i.ux = icmp slt i32 %.17872.jt2, %0
  br i1 %i.ux, label %.lr.ph, label %._crit_edge4529, !llvm.loop !32

._crit_edge4529:                                  ; preds = %.backedge
  %i.uy = extractelement <2 x double> %i.uv, i64 1 ; 2 uses
  %i.uz = extractelement <2 x double> %i.uv, i64 0 ; 3 uses
  %i.va = extractelement <2 x double> %i.uu, i64 1 ; 2 uses
  %i.vb = extractelement <2 x double> %i.uu, i64 0 ; 3 uses
  %i.vc = trunc nuw i8 %.1822.jt2 to i1           ; 4 uses
  %i.vd = trunc nuw i8 %.3832.jt2 to i1           ; 4 uses
  %i.ve = trunc nuw i8 %.1844.jt2 to i1           ; 3 uses
  %i.vf = trunc nuw i8 %.1793.jt2 to i1
  %i.vg = trunc nuw i8 %.1773.jt2 to i1           ; 4 uses
  %i.vh = trunc nuw i8 %.1846.jt2 to i1           ; 12 uses
  br i1 %.1874.jt2, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %._crit_edge4529
  %i.vi = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite = call i64 @fwrite(ptr nonnull @.str.147, i64 32, i64 1, ptr %i.vi) #23 ; 0 uses
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %._crit_edge4529
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #21
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !12
  %i.vj = icmp ne i32 %.3767.jt2, 0
  %i.vk = icmp ne ptr %.1780.jt2, null
  %or.cond29 = select i1 %i.vj, i1 %i.vk, i1 false
  br i1 %or.cond29, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %.thread4905, %bb.is
  %i.vl = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1020 = call i64 @fwrite(ptr nonnull @.str.148, i64 103, i64 1, ptr %i.vl) #23 ; 0 uses
  br label %bb.zi

bb.iu:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZN7msdfgen5ShapeC1Ev(ptr noundef nonnull align 8 dereferenceable(25) %10)
  switch i32 %.3767.jt2, label %default.unreachable [
    i32 1, label %bb.iv
    i32 2, label %bb.jh
    i32 3, label %bb.jh
    i32 4, label %bb.jh
    i32 5, label %bb.kz
    i32 6, label %bb.lc
    i32 7, label %bb.lf
  ]

bb.iv:                                            ; preds = %bb.iu
  %i.vm = invoke noundef i32 @_ZN7msdfgen12loadSvgShapeERNS_5ShapeERNS0_6BoundsEPKc(ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %.1780.jt2)
          to label %bb.iw unwind label %bb.ix     ; 5 uses

bb.iw:                                            ; preds = %bb.iv
  %i.vn = load i32, ptr @_ZN7msdfgen23SVG_IMPORT_SUCCESS_FLAGE, align 4, !tbaa !136
  %i.vo = and i32 %i.vn, %i.vm
  %.not1036.not = icmp eq i32 %i.vo, 0
  br i1 %.not1036.not, label %bb.jg, label %bb.iy

bb.ix:                                            ; preds = %bb.iv
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.zh

bb.iy:                                            ; preds = %bb.iw
  %i.vq = load i32, ptr @_ZN7msdfgen31SVG_IMPORT_PARTIAL_FAILURE_FLAGE, align 4, !tbaa !136
  %i.vr = and i32 %i.vq, %i.vm
  %.not1038 = icmp eq i32 %i.vr, 0
  br i1 %.not1038, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.vs = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1039 = call i64 @fwrite(ptr nonnull @.str.150, i64 42, i64 1, ptr %i.vs) #23 ; 0 uses
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.vt = load i32, ptr @_ZN7msdfgen26SVG_IMPORT_INCOMPLETE_FLAGE, align 4, !tbaa !136
  %i.vu = and i32 %i.vt, %i.vm
  %.not1040 = icmp eq i32 %i.vu, 0
  br i1 %.not1040, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.vv = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1043 = call i64 @fwrite(ptr nonnull @.str.151, i64 95, i64 1, ptr %i.vv) #23 ; 0 uses
  br label %bb.je

bb.jc:                                            ; preds = %bb.ja
  %i.vw = load i32, ptr @_ZN7msdfgen35SVG_IMPORT_UNSUPPORTED_FEATURE_FLAGE, align 4, !tbaa !136
  %i.vx = and i32 %i.vw, %i.vm
  %.not1041 = icmp eq i32 %i.vx, 0
  br i1 %.not1041, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.vy = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1042 = call i64 @fwrite(ptr nonnull @.str.152, i64 65, i64 1, ptr %i.vy) #23 ; 0 uses
  br label %bb.je

bb.je:                                            ; preds = %bb.jc, %bb.jd, %bb.jb
  %i.vz = load i32, ptr @_ZN7msdfgen38SVG_IMPORT_TRANSFORMATION_IGNORED_FLAGE, align 4, !tbaa !136
  %i.wa = and i32 %i.vz, %i.vm
  %.not1044 = icmp eq i32 %i.wa, 0
  br i1 %.not1044, label %.thread2192, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.wb = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1045 = call i64 @fwrite(ptr nonnull @.str.153, i64 42, i64 1, ptr %i.wb) #23 ; 0 uses
  br label %.thread2192

bb.jg:                                            ; preds = %bb.iw
  %i.wc = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1037 = call i64 @fwrite(ptr nonnull @.str.149, i64 36, i64 1, ptr %i.wc) #23 ; 0 uses
  br label %.thread2207

bb.jh:                                            ; preds = %bb.iu, %bb.iu, %bb.iu
  %i.wd = icmp eq i32 %.3767.jt2, 4               ; 2 uses
  %or.cond31 = select i1 %i.wd, i1 true, i1 %.2796.jt2
  %i.we = icmp ne i32 %.22117.jt2, 0              ; 2 uses
  %or.cond33 = select i1 %or.cond31, i1 true, i1 %i.we
  br i1 %or.cond33, label %bb.jk, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.wf = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1026 = call i64 @fwrite(ptr nonnull @.str.154, i64 196, i64 1, ptr %i.wf) #23 ; 0 uses
  br label %.thread2207

bb.jj:                                            ; preds = %bb.lq, %bb.lo, %.thread2192, %bb.lc, %bb.kz
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.zh

bb.jk:                                            ; preds = %bb.jh
  %i.wh = invoke noundef ptr @_ZN7msdfgen18initializeFreetypeEv()
          to label %bb.jl unwind label %bb.jm     ; 13 uses

bb.jl:                                            ; preds = %bb.jk
  %.not1027 = icmp eq ptr %i.wh, null
  br i1 %.not1027, label %_ZZ4mainEN17FreetypeFontGuardD2Ev.exit.thread, label %bb.jn

_ZZ4mainEN17FreetypeFontGuardD2Ev.exit.thread:    ; preds = %bb.jl
  %i.wi = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1028 = call i64 @fwrite(ptr nonnull @.str.155, i64 39, i64 1, ptr %i.wi) #23 ; 0 uses
  br label %.thread2207

bb.jm:                                            ; preds = %bb.kp, %bb.ko, %bb.kn, %bb.jk
  %.sroa.02001.0 = phi ptr [ %i.wh, %bb.kp ], [ %i.wh, %bb.ko ], [ %i.wh, %bb.kn ], [ null, %bb.jk ]
  %.sroa.102004.0 = phi ptr [ %.sroa.102004.12313, %bb.kp ], [ %.sroa.102004.12313, %bb.ko ], [ null, %bb.kn ], [ null, %bb.jk ]
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.jn:                                            ; preds = %bb.jl
  %i.wk = add nsw i32 %.3767.jt2, -3
  %or.cond35 = icmp ult i32 %i.wk, 2
  br i1 %or.cond35, label %bb.jo, label %bb.kn

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.wl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.wl, ptr %2, align 8, !tbaa !148
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 0, ptr %i.wm, align 8, !tbaa !151
  store i8 0, ptr %i.wl, align 8, !tbaa !16
  br label %bb.jp

bb.jp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.jo
  %.026.i = phi ptr [ %.1780.jt2, %bb.jo ], [ %i.wo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ] ; 4 uses
  %i.wn = load i8, ptr %.026.i, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.wn, label %bb.jq [
    i8 0, label %.critedge.i1341
    i8 63, label %.critedge.i1341
  ]

bb.jq:                                            ; preds = %bb.jp
  %i.wo = getelementptr inbounds nuw i8, ptr %.026.i, i64 1
  %i.wp = load i64, ptr %i.wm, align 8, !tbaa !151 ; 4 uses
  %i.wq = add i64 %i.wp, 1                        ; 3 uses
  %i.wr = load ptr, ptr %2, align 8, !tbaa !152   ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.wl
  br i1 %i.ws, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.jq
  %i.wt = icmp ult i64 %i.wp, 16
  call void @llvm.assume(i1 %i.wt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.jq
  %i.wu = load i64, ptr %i.wl, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.wv = phi i64 [ %i.wu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ww = icmp ugt i64 %i.wq, %i.wv
  br i1 %i.ww, label %bb.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.jr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.wp, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i unwind label %bb.js

.noexc.i:                                         ; preds = %bb.jr
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !152
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.wx = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.wr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.wp
  store i8 %i.wn, ptr %i.wy, align 1, !tbaa !16
  store i64 %i.wq, ptr %i.wm, align 8, !tbaa !151
  %i.wz = load ptr, ptr %2, align 8, !tbaa !152
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.wq
  store i8 0, ptr %i.xa, align 1, !tbaa !16
  br label %bb.jp

bb.js:                                            ; preds = %bb.jr
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

.critedge.i1341:                                  ; preds = %bb.jp, %bb.jp
  %i.xc = load ptr, ptr %2, align 8, !tbaa !152
  %i.xd = invoke noundef ptr @_ZN7msdfgen8loadFontEPNS_14FreetypeHandleEPKc(ptr noundef nonnull %i.wh, ptr noundef %i.xc)
          to label %bb.jt unwind label %.loopexit.split-lp.i ; 9 uses

bb.jt:                                            ; preds = %.critedge.i1341
  %.not34.i = icmp eq ptr %i.xd, null             ; 2 uses
  br i1 %.not34.i, label %.loopexit52.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.xe = load i8, ptr %.026.i, align 1, !tbaa !16
  %i.xf = icmp eq i8 %i.xe, 63
  br i1 %i.xf, label %.preheader.i, label %.loopexit52.i

.preheader.i:                                     ; preds = %bb.ju, %.loopexit.i
  %.12123 = phi i1 [ %.22124, %.loopexit.i ], [ false, %bb.ju ] ; 4 uses
  %.026.pn.i = phi ptr [ %.3.i, %.loopexit.i ], [ %.026.i, %bb.ju ]
  store i64 0, ptr %i.wm, align 8, !tbaa !151
  %i.xg = load ptr, ptr %2, align 8, !tbaa !152
  store i8 0, ptr %i.xg, align 1, !tbaa !16
  br label %bb.jv

bb.jv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit45.i, %.preheader.i
  %.026.pn.pn.i = phi ptr [ %.026.pn.i, %.preheader.i ], [ %.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit45.i ] ; 2 uses
  %.2.i = getelementptr inbounds nuw i8, ptr %.026.pn.pn.i, i64 1 ; 2 uses
  %i.xh = load i8, ptr %.2.i, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.xh, label %bb.jw [
    i8 61, label %bb.jy
    i8 0, label %.loopexit52.i
  ]

bb.jw:                                            ; preds = %bb.jv
  %i.xi = load i64, ptr %i.wm, align 8, !tbaa !151 ; 4 uses
  %i.xj = add i64 %i.xi, 1                        ; 3 uses
  %i.xk = load ptr, ptr %2, align 8, !tbaa !152   ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.wl
  br i1 %i.xl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43.i: ; preds = %bb.jw
  %i.xm = icmp ult i64 %i.xi, 16
  call void @llvm.assume(i1 %i.xm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i: ; preds = %bb.jw
  %i.xn = load i64, ptr %i.wl, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43.i
  %i.xo = phi i64 [ %i.xn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43.i ]
  %i.xp = icmp ugt i64 %i.xj, %i.xo
  br i1 %i.xp, label %bb.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit45.i

bb.jx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.xi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc44.i unwind label %.loopexit51.i

.noexc44.i:                                       ; preds = %bb.jx
  %.pre.i42.i = load ptr, ptr %2, align 8, !tbaa !152
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit45.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit45.i: ; preds = %.noexc44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41.i
  %i.xq = phi ptr [ %.pre.i42.i, %.noexc44.i ], [ %i.xk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i41.i ]
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.xi
  store i8 %i.xh, ptr %i.xr, align 1, !tbaa !16
  store i64 %i.xj, ptr %i.wm, align 8, !tbaa !151
  %i.xs = load ptr, ptr %2, align 8, !tbaa !152
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.xj
  store i8 0, ptr %i.xt, align 1, !tbaa !16
  br label %bb.jv

.loopexit51.i:                                    ; preds = %bb.jx
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

.loopexit.split-lp.i:                             ; preds = %.critedge.i1341
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.jy:                                            ; preds = %bb.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.xu = getelementptr inbounds nuw i8, ptr %.026.pn.pn.i, i64 2 ; 3 uses
  %i.xv = call double @strtod(ptr noundef nonnull %i.xu, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.xw = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  %i.xx = icmp ugt ptr %i.xw, %i.xu
  br i1 %i.xx, label %bb.jz, label %.loopexit.i

bb.jz:                                            ; preds = %bb.jy
  %i.xy = load i64, ptr %i.wm, align 8, !tbaa !151
  %i.xz = icmp eq i64 %i.xy, 4
  br i1 %i.xz, label %bb.ka, label %bb.kd

bb.ka:                                            ; preds = %bb.jz
  %i.ya = load ptr, ptr %2, align 8, !tbaa !152
  invoke void @_ZN7msdfgen17FontVariationAxis3TagC1EPKc(ptr noundef nonnull align 1 dereferenceable(4) %3, ptr noundef %i.ya)
          to label %bb.kb unwind label %bb.kg

bb.kb:                                            ; preds = %bb.ka
  %i.yb = load i32, ptr %3, align 4
  %i.yc = invoke noundef zeroext i1 @_ZN7msdfgen20setFontVariationAxisEPNS_14FreetypeHandleEPNS_10FontHandleENS_17FontVariationAxis3TagEd(ptr noundef nonnull %i.wh, ptr noundef nonnull %i.xd, i32 %i.yb, double noundef %i.xv)
          to label %bb.kc unwind label %bb.kg

bb.kc:                                            ; preds = %bb.kb
  br i1 %i.yc, label %.loopexit.i, label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.jz
  %i.yd = load ptr, ptr %2, align 8, !tbaa !152
  %i.ye = invoke noundef zeroext i1 @_ZN7msdfgen20setFontVariationAxisEPNS_14FreetypeHandleEPNS_10FontHandleEPKcd(ptr noundef nonnull %i.wh, ptr noundef nonnull %i.xd, ptr noundef %i.yd, double noundef %i.xv)
          to label %bb.ke unwind label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  br i1 %i.ye, label %.loopexit.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.yf = load ptr, ptr @stderr, align 8, !tbaa !138
  %i.yg = load ptr, ptr %2, align 8, !tbaa !152
  %i.yh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yf, ptr noundef nonnull @.str.186, ptr noundef %i.yg) #24 ; 0 uses
  br label %.loopexit.i

bb.kg:                                            ; preds = %bb.kd, %bb.kb, %bb.ka
  %i.yi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.kh

.loopexit.i:                                      ; preds = %bb.kf, %bb.ke, %bb.kc, %bb.jy
  %.22124 = phi i1 [ %.12123, %bb.kc ], [ %.12123, %bb.ke ], [ true, %bb.kf ], [ %.12123, %bb.jy ] ; 2 uses
  %.3.i = phi ptr [ %i.xw, %bb.kc ], [ %i.xw, %bb.ke ], [ %i.xw, %bb.kf ], [ %i.xu, %bb.jy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre.i1342 = load i8, ptr %.3.i, align 1, !tbaa !16
  %i.yj = icmp eq i8 %.pre.i1342, 38
  br i1 %i.yj, label %.preheader.i, label %.loopexit52.i, !llvm.loop !35

.loopexit52.i:                                    ; preds = %.loopexit.i, %bb.jv, %bb.ju, %bb.jt
  %.02122 = phi i1 [ false, %bb.jt ], [ %.12123, %bb.jv ], [ false, %bb.ju ], [ %.22124, %.loopexit.i ]
  %i.yk = load ptr, ptr %2, align 8, !tbaa !152   ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.wl
  br i1 %i.yl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %.loopexit52.i
  %i.ym = load i64, ptr %i.wl, align 8, !tbaa !16
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yn) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i

bb.kh:                                            ; preds = %bb.kg, %.loopexit.split-lp.i, %.loopexit51.i, %bb.js
  %.pn38.i = phi { ptr, i32 } [ %i.xb, %bb.js ], [ %i.yi, %bb.kg ], [ %lpad.loopexit.i, %.loopexit51.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.yo = load ptr, ptr %2, align 8, !tbaa !152   ; 2 uses
  %i.yp = icmp eq ptr %i.yo, %i.wl
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.kh
  %i.yq = load i64, ptr %i.wl, align 8, !tbaa !16
  %i.yr = add i64 %i.yq, 1
  call void @_ZdlPvm(ptr noundef %i.yo, i64 noundef %i.yr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %bb.kh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i: ; preds = %.loopexit52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.not34.i, label %bb.kv, label %bb.ki

bb.ki:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i
  br i1 %i.wd, label %bb.kj, label %bb.kl

bb.kj:                                            ; preds = %bb.ki
  %i.ys = load ptr, ptr @stdout, align 8, !tbaa !138
  invoke fastcc void @_ZL20printVarFontAxisListP8_IO_FILEPN7msdfgen14FreetypeHandleEPNS1_10FontHandleE(ptr noundef %i.ys, ptr noundef nonnull %i.wh, ptr noundef %i.xd)
          to label %bb.kw unwind label %bb.kk

bb.kk:                                            ; preds = %bb.km, %bb.kj
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.kl:                                            ; preds = %bb.ki
  br i1 %.02122, label %bb.km, label %.thread2195.thread

bb.km:                                            ; preds = %bb.kl
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !138
  invoke fastcc void @_ZL20printVarFontAxisListP8_IO_FILEPN7msdfgen14FreetypeHandleEPNS1_10FontHandleE(ptr noundef %i.yu, ptr noundef nonnull %i.wh, ptr noundef %i.xd)
          to label %.thread2195.thread unwind label %bb.kk

bb.kn:                                            ; preds = %bb.jn
  %i.yv = invoke noundef ptr @_ZN7msdfgen8loadFontEPNS_14FreetypeHandleEPKc(ptr noundef nonnull %i.wh, ptr noundef nonnull %.1780.jt2)
          to label %.thread2195 unwind label %bb.jm ; 2 uses

.thread2195:                                      ; preds = %bb.kn
  %.not1030 = icmp eq ptr %i.yv, null
  br i1 %.not1030, label %bb.kv, label %.thread2195.thread

.thread2195.thread:                               ; preds = %bb.kl, %bb.km, %.thread2195
  %.sroa.102004.12313 = phi ptr [ %i.yv, %.thread2195 ], [ %i.xd, %bb.km ], [ %i.xd, %bb.kl ] ; 8 uses
  br i1 %i.we, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %.thread2195.thread
  %i.yw = invoke noundef zeroext i1 @_ZN7msdfgen13getGlyphIndexERNS_10GlyphIndexEPNS_10FontHandleEj(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull %.sroa.102004.12313, i32 noundef %.22117.jt2)
          to label %bb.kp unwind label %bb.jm     ; 0 uses

bb.kp:                                            ; preds = %bb.ko, %.thread2195.thread
  %.sroa.0185.0.copyload = load i32, ptr %5, align 4, !tbaa !136
  %i.yx = invoke noundef zeroext i1 @_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd(ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull %.sroa.102004.12313, i32 %.sroa.0185.0.copyload, i32 noundef %.1798.jt2, ptr noundef nonnull %i.ab)
          to label %bb.kq unwind label %bb.jm

bb.kq:                                            ; preds = %bb.kp
  br i1 %i.yx, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.yy = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1034 = call i64 @fwrite(ptr nonnull @.str.157, i64 37, i64 1, ptr %i.yy) #23 ; 0 uses
  br label %bb.kw

bb.ks:                                            ; preds = %bb.kq
  br i1 %.1800.jt2, label %bb.kw, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %.not = xor i1 %i.vc, true
  %or.cond37 = select i1 %.not, i1 true, i1 %i.vd
  %i.yz = icmp eq i32 %.5828.jt2, 0
  %or.cond39 = select i1 %or.cond37, i1 true, i1 %i.yz
  %i.za = icmp eq i32 %.1769.jt2, 4
  %or.cond41 = select i1 %or.cond39, i1 true, i1 %i.za
  %or.cond43 = select i1 %or.cond41, i1 true, i1 %i.ve
  %i.zb = icmp ne ptr %.1785.jt2, null
  %or.cond45 = select i1 %or.cond43, i1 true, i1 %i.zb
  %i.zc = icmp ne ptr %.1787.jt2, null
  %or.cond47 = select i1 %or.cond45, i1 true, i1 %i.zc
  br i1 %or.cond47, label %bb.ku, label %bb.kw

bb.ku:                                            ; preds = %bb.kt
  %i.zd = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1035 = call i64 @fwrite(ptr nonnull @.str.158, i64 490, i64 1, ptr %i.zd) #23 ; 0 uses
  br label %bb.kw

bb.kv:                                            ; preds = %.thread2195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i
  %i.ze = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1031 = call i64 @fwrite(ptr nonnull @.str.156, i64 26, i64 1, ptr %i.ze) #23 ; 0 uses
  br label %bb.kx

bb.kw:                                            ; preds = %bb.kj, %bb.ks, %bb.ku, %bb.kt, %bb.kr
  %.sroa.102004.2.ph = phi ptr [ %.sroa.102004.12313, %bb.kr ], [ %.sroa.102004.12313, %bb.kt ], [ %.sroa.102004.12313, %bb.ku ], [ %.sroa.102004.12313, %bb.ks ], [ %i.xd, %bb.kj ]
  %cond3.ph = phi i1 [ false, %bb.kr ], [ true, %bb.kt ], [ true, %bb.ku ], [ true, %bb.ks ], [ false, %bb.kj ]
  %.21.ph = phi i32 [ 1, %bb.kr ], [ 0, %bb.kt ], [ 0, %bb.ku ], [ 0, %bb.ks ], [ 0, %bb.kj ]
  invoke void @_ZN7msdfgen11destroyFontEPNS_10FontHandleE(ptr noundef nonnull %.sroa.102004.2.ph)
          to label %bb.kx unwind label %bb.ky

bb.kx:                                            ; preds = %bb.kv, %bb.kw
  %.214972 = phi i32 [ %.21.ph, %bb.kw ], [ 1, %bb.kv ]
  %cond34970 = phi i1 [ %cond3.ph, %bb.kw ], [ false, %bb.kv ]
  invoke void @_ZN7msdfgen20deinitializeFreetypeEPNS_14FreetypeHandleE(ptr noundef nonnull %i.wh)
          to label %_ZZ4mainEN17FreetypeFontGuardD2Ev.exit unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %i.zf = landingpad { ptr, i32 }
          catch ptr null
  %i.zg = extractvalue { ptr, i32 } %i.zf, 0
  call void @__clang_call_terminate(ptr %i.zg) #26
  unreachable

_ZZ4mainEN17FreetypeFontGuardD2Ev.exit:           ; preds = %bb.kx
  br i1 %cond34970, label %.thread2192, label %.thread2207
end_hunk_1
