Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjbench?download=true
inline.NumInlined: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a

bb.dk:                                            ; preds = %bb.dj
  store i32 4, ptr @pf, align 4, !tbaa !9
  br label %bb.gp

bb.dl:                                            ; preds = %bb.dj
  %i.fv = call i32 @strcasecmp(ptr noundef nonnull %i.fl, ptr noundef nonnull @.str.60) #23
  %.not1107 = icmp eq i32 %i.fv, 0
  br i1 %.not1107, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 5, ptr @pf, align 4, !tbaa !9
  br label %bb.gp

bb.dn:                                            ; preds = %bb.dl
  %i.fw = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.fw)
  unreachable

bb.do:                                            ; preds = %bb.cv
  %i.fx = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @str.54, i64 noundef %spec.select) #23
  %.not1108 = icmp eq i32 %i.fx, 0
  br i1 %.not1108, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store ptr @.str.3, ptr @ext, align 8, !tbaa !13
  br label %bb.gp

bb.dq:                                            ; preds = %bb.do
  %i.fy = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.62, i64 noundef %spec.select1159) #23
  %.not1109 = icmp eq i32 %i.fy, 0
  %or.cond1211 = select i1 %.not1109, i1 %i.ba, i1 false
  br i1 %or.cond1211, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.fz = add nsw i32 %.08681319, 1               ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !13
  %i.gd = call i64 @strtol(ptr noundef nonnull captures(none) %i.gc, ptr noundef null, i32 noundef 10) #22, !inline_history !30
  %i.ge = trunc i64 %i.gd to i32                  ; 2 uses
  %i.gf = add i32 %i.ge, -17
  %or.cond14 = icmp ult i32 %i.gf, -15
  br i1 %or.cond14, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.gg = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.gg)
  unreachable

bb.dt:                                            ; preds = %bb.dr
  store i32 %i.ge, ptr @precision, align 4, !tbaa !9
  br label %bb.gp

bb.du:                                            ; preds = %bb.dq
  %i.gh = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @str.110, i64 noundef %spec.select1152) #23
  %.not1110 = icmp eq i32 %i.gh, 0
  br i1 %.not1110, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %puts1111 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  store i1 true, ptr @progressive, align 4
  %i.gi = load i32, ptr @xformOpt, align 4, !tbaa !9
  %i.gj = or i32 %i.gi, 32
  store i32 %i.gj, ptr @xformOpt, align 4, !tbaa !9
  br label %bb.gp

bb.dw:                                            ; preds = %bb.du
  %i.gk = call i32 @strcasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.65) #23
  %.not1112 = icmp eq i32 %i.gk, 0
  br i1 %.not1112, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 2, ptr @quiet, align 4, !tbaa !9
  br label %bb.gp

bb.dy:                                            ; preds = %bb.dw
  %i.gl = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @str.60, i64 noundef %spec.select1152) #23
  %.not1113 = icmp eq i32 %i.gl, 0
  br i1 %.not1113, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 1, ptr @quiet, align 4, !tbaa !9
  br label %bb.gp

bb.ea:                                            ; preds = %bb.dy
  %i.gm = call i32 @strcasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.67) #23
  %.not1114 = icmp eq i32 %i.gm, 0
  br i1 %.not1114, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr @pf, align 4, !tbaa !9
  br label %bb.gp

bb.ec:                                            ; preds = %bb.ea
  %i.gn = call i32 @strcasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.68) #23
  %.not1115 = icmp eq i32 %i.gn, 0
  br i1 %.not1115, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store i32 2, ptr @pf, align 4, !tbaa !9
  br label %bb.gp

bb.ee:                                            ; preds = %bb.ec
  %i.go = call i32 @strcasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.69) #23
  %.not1116 = icmp eq i32 %i.go, 0
  br i1 %.not1116, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 5, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.eg:                                            ; preds = %bb.ee
  %i.gp = call i32 @strcasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.70) #23
  %.not1117 = icmp eq i32 %i.gp, 0
  br i1 %.not1117, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 6, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.ei:                                            ; preds = %bb.eg
  %i.gq = call i32 @strcasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.71) #23
  %.not1118 = icmp eq i32 %i.gq, 0
  br i1 %.not1118, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i32 7, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.ek:                                            ; preds = %bb.ei
  %i.gr = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.72, i64 noundef %spec.select) #23
  %.not1119 = icmp eq i32 %i.gr, 0
  %or.cond1216 = select i1 %.not1119, i1 %i.ba, i1 false
  br i1 %or.cond1216, label %bb.el, label %bb.es

bb.el:                                            ; preds = %bb.ek
  %i.gs = add nsw i32 %.08681319, 1               ; 4 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !13 ; 4 uses
  %i.gw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gv) #23 ; 2 uses
  %spec.select1217 = call i64 @llvm.umax.i64(i64 %i.gw, i64 2)
  %i.gx = call i32 @strncasecmp(ptr noundef nonnull %i.gv, ptr noundef nonnull @.str.73, i64 noundef %spec.select1217) #23
  %.not1120 = icmp eq i32 %i.gx, 0
  br i1 %.not1120, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 5, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.en:                                            ; preds = %bb.el
  %spec.select1218 = call i64 @llvm.umax.i64(i64 %i.gw, i64 3) ; 2 uses
  %i.gy = call i32 @strncasecmp(ptr noundef nonnull %i.gv, ptr noundef nonnull @.str.74, i64 noundef %spec.select1218) #23
  %.not1121 = icmp eq i32 %i.gy, 0
  br i1 %.not1121, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 6, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.ep:                                            ; preds = %bb.en
  %i.gz = call i32 @strncasecmp(ptr noundef nonnull %i.gv, ptr noundef nonnull @.str.75, i64 noundef %spec.select1218) #23
  %.not1122 = icmp eq i32 %i.gz, 0
  br i1 %.not1122, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 7, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.er:                                            ; preds = %bb.ep
  %i.ha = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.ha)
  unreachable

bb.es:                                            ; preds = %bb.ek
  %i.hb = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.76, i64 noundef %spec.select1152) #23
  %.not1123 = icmp eq i32 %i.hb, 0
  %or.cond1222 = select i1 %.not1123, i1 %i.ba, i1 false
  br i1 %or.cond1222, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i32 -1, ptr %i.i, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store i8 0, ptr %i.j, align 1, !tbaa !16
  %i.hc = add nsw i32 %.08681319, 1               ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !13
  %i.hg = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.hf, ptr noundef nonnull @.str.77, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #22 ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 1
  %i.hi = load i32, ptr %i.i, align 4             ; 2 uses
  %i.hj = icmp ugt i32 %i.hi, 65535
  %or.cond18 = select i1 %i.hh, i1 true, i1 %i.hj
  br i1 %or.cond18, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.hk = icmp eq i32 %i.hg, 2
  %i.hl = load i8, ptr %i.j, align 1
  %i.hm = and i8 %i.hl, -33                       ; 2 uses
  %i.hn = icmp ne i8 %i.hm, 66
  %or.cond24 = select i1 %i.hk, i1 %i.hn, i1 false
  br i1 %or.cond24, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.ho = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.ho)
  unreachable

bb.ew:                                            ; preds = %bb.eu
  %.not1347 = icmp eq i8 %i.hm, 66
  %restartIntervalRows.restartIntervalBlocks = select i1 %.not1347, ptr @restartIntervalBlocks, ptr @restartIntervalRows
  store i32 %i.hi, ptr %restartIntervalRows.restartIntervalBlocks, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %bb.gp

bb.ex:                                            ; preds = %bb.es
  %i.hp = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @str.66, i64 noundef %spec.select) #23
  %.not1124 = icmp eq i32 %i.hp, 0
  br i1 %.not1124, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.hq = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.79, i64 noundef %spec.select) #23
  %.not1125 = icmp eq i32 %i.hq, 0
  br i1 %.not1125, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  store i1 true, ptr @stopOnWarning, align 4
  br label %bb.gp

bb.fa:                                            ; preds = %bb.ey
  %i.hr = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.80, i64 noundef %spec.select) #23
  %.not1126 = icmp eq i32 %i.hr, 0
  %or.cond1227 = select i1 %.not1126, i1 %i.ba, i1 false
  br i1 %or.cond1227, label %bb.fb, label %bb.fm

bb.fb:                                            ; preds = %bb.fa
  %i.hs = add nsw i32 %.08681319, 1               ; 11 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !13 ; 11 uses
  %i.hw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hv) #23 ; 2 uses
  %spec.select1228 = call i64 @llvm.umax.i64(i64 %i.hw, i64 1) ; 2 uses
  %i.hx = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.55, i64 noundef %spec.select1228) #23
  %.not1127 = icmp eq i32 %i.hx, 0
  br i1 %.not1127, label %bb.gp, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.hy = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.56, i64 noundef %spec.select1228) #23
  %.not1128 = icmp eq i32 %i.hy, 0
  br i1 %.not1128, label %bb.gp, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %spec.select1230 = call i64 @llvm.umax.i64(i64 %i.hw, i64 3) ; 8 uses
  %i.hz = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.81, i64 noundef %spec.select1230) #23
  %.not1129 = icmp eq i32 %i.hz, 0
  br i1 %.not1129, label %bb.gp, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ia = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.82, i64 noundef %spec.select1230) #23
  %.not1130 = icmp eq i32 %i.ia, 0
  br i1 %.not1130, label %bb.gp, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ib = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.83, i64 noundef %spec.select1230) #23
  %.not1131 = icmp eq i32 %i.ib, 0
  br i1 %.not1131, label %bb.gp, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ic = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.84, i64 noundef %spec.select1230) #23
  %.not1132 = icmp eq i32 %i.ic, 0
  br i1 %.not1132, label %bb.gp, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.id = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.85, i64 noundef %spec.select1230) #23
  %.not1133 = icmp eq i32 %i.id, 0
  br i1 %.not1133, label %bb.gp, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ie = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.86, i64 noundef %spec.select1230) #23
  %.not1134 = icmp eq i32 %i.ie, 0
  br i1 %.not1134, label %bb.gp, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.if = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.87, i64 noundef %spec.select1230) #23
  %.not1135 = icmp eq i32 %i.if, 0
  br i1 %.not1135, label %bb.gp, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ig = call i32 @strncasecmp(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.88, i64 noundef %spec.select1230) #23
  %.not1136 = icmp eq i32 %i.ig, 0
  br i1 %.not1136, label %bb.gp, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ih = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.ih)
  unreachable

bb.fm:                                            ; preds = %bb.fa
  %i.ii = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.89, i64 noundef %spec.select1152) #23
  %.not1137 = icmp eq i32 %i.ii, 0
  %or.cond1240 = select i1 %.not1137, i1 %i.ba, i1 false
  br i1 %or.cond1240, label %bb.fn, label %bb.fs

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i32 0, ptr %i.k, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store i32 0, ptr %i.l, align 4, !tbaa !9
  %i.ij = add nsw i32 %.08681319, 1               ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !13
  %i.in = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.im, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #22
  %i.io = icmp eq i32 %i.in, 2
  br i1 %i.io, label %.preheader, label %bb.fr

.preheader:                                       ; preds = %bb.fn
  %i.ip = load i32, ptr @nsf, align 4, !tbaa !9   ; 2 uses
  %.not11391317 = icmp sgt i32 %i.ip, 0
  br i1 %.not11391317, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.iq = load i32, ptr %i.k, align 4, !tbaa !9
  %i.ir = sitofp i32 %i.iq to double
  %i.is = load i32, ptr %i.l, align 4, !tbaa !9
  %i.it = sitofp i32 %i.is to double
  %i.iu = fdiv double %i.ir, %i.it
  %i.iv = load ptr, ptr @scalingFactors, align 8, !tbaa !11 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ip to i64
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.fp, !llvm.loop !32

bb.fp:                                            ; preds = %.lr.ph, %bb.fo
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fo ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv
  %i.ix = load <2 x i32>, ptr %i.iw, align 4, !tbaa !9
  %i.iy = sitofp <2 x i32> %i.ix to <2 x double>  ; 2 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 0
  %i.ja = extractelement <2 x double> %i.iy, i64 1
  %i.jb = fdiv double %i.iz, %i.ja
  %i.jc = fcmp oeq double %i.iu, %i.jb
  br i1 %i.jc, label %bb.fq, label %bb.fo

bb.fq:                                            ; preds = %bb.fp
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv
  %i.je = load i64, ptr %i.jd, align 4, !tbaa !9
  store i64 %i.je, ptr @sf, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  br label %bb.gp

.critedge:                                        ; preds = %.preheader, %bb.fo
  %i.jf = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.jf)
  unreachable

bb.fr:                                            ; preds = %bb.fn
  %i.jg = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.jg)
  unreachable

bb.fs:                                            ; preds = %bb.fm
  %i.jh = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @str.69, i64 noundef %spec.select) #23
  %.not1140 = icmp eq i32 %i.jh, 0
  br i1 %.not1140, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  store i1 true, ptr @doTile, align 4
  %i.ji = load i32, ptr @xformOpt, align 4, !tbaa !9
  %i.jj = or i32 %i.ji, 4
  store i32 %i.jj, ptr @xformOpt, align 4, !tbaa !9
  br label %bb.gp

bb.fu:                                            ; preds = %bb.fs
  %spec.select1242 = call i64 @llvm.umax.i64(i64 %i.au, i64 7)
  %i.jk = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.92, i64 noundef %spec.select1242) #23
  %.not1141 = icmp eq i32 %i.jk, 0
  br i1 %.not1141, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 4, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.fw:                                            ; preds = %bb.fu
  %i.jl = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.93, i64 noundef %spec.select1152) #23
  %.not1142 = icmp eq i32 %i.jl, 0
  br i1 %.not1142, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i32 3, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.fy:                                            ; preds = %bb.fw
  %i.jm = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.94, i64 noundef %spec.select1152) #23
  %.not1143 = icmp eq i32 %i.jm, 0
  br i1 %.not1143, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  store i32 2, ptr @xformOp, align 4, !tbaa !9
  br label %bb.gp

bb.ga:                                            ; preds = %bb.fy
  %i.jn = call i32 @strncasecmp(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.95, i64 noundef %spec.select1152) #23
  %.not1144 = icmp eq i32 %i.jn, 0
  %or.cond1247 = select i1 %.not1144, i1 %i.ba, i1 false
  br i1 %or.cond1247, label %bb.gb, label %bb.ge
end_hunk_0
