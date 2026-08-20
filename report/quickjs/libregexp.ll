inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@re_emit_string_list:bb.a
  %i.cp = icmp ugt i32 %i.co, %i.cm
  br i1 %i.cp, label %._crit_edge11.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %.0.i.i.i(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci, i64 noundef 8) #20, !inline_history !105
  %i.cq = shl i64 %.178.i.i, 1                    ; 2 uses
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %.18016.i.i
  br i1 %i.cs, label %bb.q, label %._crit_edge11.i.i, !llvm.loop !108

._crit_edge11.i.i:                                ; preds = %bb.t, %bb.s, %.lr.ph17.i.i
  %.180.i.i = add i64 %.18016.i.i, -8             ; 2 uses
  %.not85.i.i = icmp eq i64 %.180.i.i, 0
  br i1 %.not85.i.i, label %.loopexit.i, label %.lr.ph17.i.i, !llvm.loop !109

.lr.ph288:                                        ; preds = %.lr.ph43.preheader.i, %.lr.ph43.i
  %.in = phi i32 [ %i.ct, %.lr.ph43.i ], [ %i.ak, %.lr.ph43.preheader.i ]
  %.019139.i287 = phi i64 [ %.1192.i, %.lr.ph43.i ], [ %i.ah, %.lr.ph43.preheader.i ] ; 3 uses
  %.118940.i286 = phi ptr [ %.2190.i, %.lr.ph43.i ], [ %i.ae, %.lr.ph43.preheader.i ] ; 4 uses
  %.018641.i285 = phi ptr [ %.1187.i, %.lr.ph43.i ], [ %i.af, %.lr.ph43.preheader.i ] ; 12 uses
  %i.ct = add nsw i32 %.in, 1                     ; 3 uses
  %i.cu = shl i64 %.019139.i287, 1
  %i.cv = and i64 %i.cu, -8                       ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cv ; 3 uses
  %i.cx = shl i64 %i.cv, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cx ; 3 uses
  %i.cz = mul i64 %i.cv, 3
  %i.da = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cz ; 3 uses
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !88
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !88
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !38 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !38 ; 3 uses
  %i.dh = icmp ult i32 %i.dg, %i.de
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !88
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !38 ; 4 uses
  br i1 %i.dh, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph288
  %i.dl = icmp ult i32 %i.dk, %i.dg
  br i1 %i.dl, label %med3.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = icmp ult i32 %i.dk, %i.de
  %i.dn = select i1 %i.dm, ptr %i.da, ptr %i.cw
  br label %med3.exit.i

bb.w:                                             ; preds = %.lr.ph288
  %i.do = icmp ugt i32 %i.dk, %i.dg
  br i1 %i.do, label %med3.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = icmp ult i32 %i.dk, %i.de
  %i.dq = select i1 %i.dp, ptr %i.cw, ptr %i.da
  br label %med3.exit.i

med3.exit.i:                                      ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.dr = phi ptr [ %i.dn, %bb.v ], [ %i.dq, %bb.x ], [ %i.cy, %bb.u ], [ %i.cy, %bb.w ]
  call void %.0.i104.i(ptr noundef nonnull %.018641.i285, ptr noundef nonnull %i.dr, i64 noundef 8) #20, !inline_history !110
  %i.ds = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 8 ; 2 uses
  %i.dt = shl i64 %.019139.i287, 3
  %i.du = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.dt ; 5 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.af, %med3.exit.i
  %.0183.i = phi ptr [ %i.ds, %med3.exit.i ], [ %i.ex, %bb.af ] ; 3 uses
  %.0180.i = phi ptr [ %i.du, %med3.exit.i ], [ %i.ek, %bb.af ] ; 3 uses
  %.0177.i = phi ptr [ %i.ds, %med3.exit.i ], [ %.1178.lcssa.i, %bb.af ] ; 2 uses
  %.0174.i = phi ptr [ %i.du, %med3.exit.i ], [ %.117524.i, %bb.af ] ; 2 uses
  %.0172.i = phi i64 [ 1, %med3.exit.i ], [ %i.ew, %bb.af ] ; 2 uses
  %.0169.i = phi i64 [ 1, %med3.exit.i ], [ %.1170.lcssa.i, %bb.af ] ; 2 uses
  %.0167.i = phi i64 [ %.019139.i287, %med3.exit.i ], [ %.116825.i, %bb.af ] ; 2 uses
  %i.dv = icmp ult ptr %.0183.i, %.0180.i
  br i1 %i.dv, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.y, %bb.ab
  %.117015.i = phi i64 [ %.2171.i, %bb.ab ], [ %.0169.i, %bb.y ] ; 3 uses
  %.117314.i = phi i64 [ %i.ef, %bb.ab ], [ %.0172.i, %bb.y ] ; 2 uses
  %.117813.i = phi ptr [ %.2179.i, %bb.ab ], [ %.0177.i, %bb.y ] ; 4 uses
  %.118412.i = phi ptr [ %i.eg, %bb.ab ], [ %.0183.i, %bb.y ] ; 4 uses
  %i.dw = load ptr, ptr %.018641.i285, align 8, !tbaa !88
  %i.dx = load ptr, ptr %.118412.i, align 8, !tbaa !88
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !38 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !38 ; 2 uses
  %.not.i = icmp ult i32 %i.eb, %i.dz
  br i1 %.not.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %i.ec = icmp eq i32 %i.eb, %i.dz
  br i1 %i.ec, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void %.0.i104.i(ptr noundef %.117813.i, ptr noundef nonnull %.118412.i, i64 noundef 8) #20, !inline_history !110
  %i.ed = add i64 %.117015.i, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.117813.i, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2179.i = phi ptr [ %i.ee, %bb.aa ], [ %.117813.i, %bb.z ] ; 2 uses
  %.2171.i = phi i64 [ %i.ed, %bb.aa ], [ %.117015.i, %bb.z ] ; 2 uses
  %i.ef = add i64 %.117314.i, 1                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.118412.i, i64 8 ; 3 uses
  %i.eh = icmp ult ptr %i.eg, %.0180.i
  br i1 %i.eh, label %.lr.ph.i, label %.critedge.i, !llvm.loop !111

.critedge.i:                                      ; preds = %bb.ab, %.lr.ph.i, %bb.y
  %.1184.lcssa.i = phi ptr [ %.0183.i, %bb.y ], [ %.118412.i, %.lr.ph.i ], [ %i.eg, %bb.ab ] ; 7 uses
  %.1178.lcssa.i = phi ptr [ %.0177.i, %bb.y ], [ %.117813.i, %.lr.ph.i ], [ %.2179.i, %bb.ab ] ; 2 uses
  %.1173.lcssa.i = phi i64 [ %.0172.i, %bb.y ], [ %.117314.i, %.lr.ph.i ], [ %i.ef, %bb.ab ] ; 3 uses
  %.1170.lcssa.i = phi i64 [ %.0169.i, %bb.y ], [ %.117015.i, %.lr.ph.i ], [ %.2171.i, %bb.ab ] ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.0180.i, i64 -8 ; 2 uses
  %i.ej = icmp ult ptr %.1184.lcssa.i, %i.ei
  br i1 %i.ej, label %.lr.ph26.i, label %.critedge3.i

.lr.ph26.i:                                       ; preds = %.critedge.i, %bb.ae
  %i.ek = phi ptr [ %i.eu, %bb.ae ], [ %i.ei, %.critedge.i ] ; 5 uses
  %.116825.i = phi i64 [ %.2.i, %bb.ae ], [ %.0167.i, %.critedge.i ] ; 3 uses
  %.117524.i = phi ptr [ %.2176.i, %bb.ae ], [ %.0174.i, %.critedge.i ] ; 3 uses
  %i.el = load ptr, ptr %.018641.i285, align 8, !tbaa !88
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !88
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !38 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !38 ; 2 uses
  %.not1.i = icmp ugt i32 %i.eq, %i.eo
  br i1 %.not1.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph26.i
  %i.er = icmp eq i32 %i.eq, %i.eo
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = add i64 %.116825.i, -1
  %i.et = getelementptr inbounds i8, ptr %.117524.i, i64 -8 ; 2 uses
  call void %.0.i104.i(ptr noundef nonnull %i.et, ptr noundef nonnull %i.ek, i64 noundef 8) #20, !inline_history !110
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2176.i = phi ptr [ %i.et, %bb.ad ], [ %.117524.i, %bb.ac ] ; 2 uses
  %.2.i = phi i64 [ %i.es, %bb.ad ], [ %.116825.i, %bb.ac ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 2 uses
  %i.ev = icmp ult ptr %.1184.lcssa.i, %i.eu
  br i1 %i.ev, label %.lr.ph26.i, label %.critedge3.i, !llvm.loop !112

bb.af:                                            ; preds = %.lr.ph26.i
  call void %.0.i104.i(ptr noundef %.1184.lcssa.i, ptr noundef nonnull %i.ek, i64 noundef 8) #20, !inline_history !110
  %i.ew = add i64 %.1173.lcssa.i, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %.1184.lcssa.i, i64 8
  br label %bb.y

.critedge3.i:                                     ; preds = %.critedge.i, %bb.ae
  %.1175.lcssa.i = phi ptr [ %.2176.i, %bb.ae ], [ %.0174.i, %.critedge.i ]
  %.1168.lcssa.i = phi i64 [ %.2.i, %bb.ae ], [ %.0167.i, %.critedge.i ]
  %i.ey = ptrtoint ptr %.1178.lcssa.i to i64      ; 2 uses
  %i.ez = ptrtoint ptr %.018641.i285 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ptrtoint ptr %.1184.lcssa.i to i64      ; 2 uses
  %i.fc = sub i64 %i.fb, %i.ey
  %i.fd = sub i64 %.1173.lcssa.i, %.1170.lcssa.i  ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fc) ; 2 uses
  %i.fe = sub i64 0, %spec.select.i
  %i.ff = getelementptr inbounds i8, ptr %.1184.lcssa.i, i64 %i.fe
  call void %.0.i209.i(ptr noundef nonnull %.018641.i285, ptr noundef %i.ff, i64 noundef %spec.select.i) #20, !inline_history !110
  %i.fg = ptrtoint ptr %i.du to i64
  %i.fh = ptrtoint ptr %.1175.lcssa.i to i64      ; 2 uses
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sub i64 %i.fh, %i.fb                    ; 2 uses
  %i.fk = sub i64 0, %i.fj
  %i.fl = getelementptr inbounds i8, ptr %i.du, i64 %i.fk ; 2 uses
  %i.fm = sub i64 %.1168.lcssa.i, %.1173.lcssa.i  ; 3 uses
  %.1.i = call i64 @llvm.umin.i64(i64 %i.fi, i64 %i.fj) ; 2 uses
  %i.fn = sub i64 0, %.1.i
  %i.fo = getelementptr inbounds i8, ptr %i.du, i64 %i.fn
  call void %.0.i209.i(ptr noundef %.1184.lcssa.i, ptr noundef nonnull %i.fo, i64 noundef %.1.i) #20, !inline_history !110
  %i.fp = icmp ugt i64 %i.fd, %i.fm
  br i1 %i.fp, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge3.i
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.critedge3.i
  %.sink71.i = phi ptr [ %i.fl, %bb.ag ], [ %.018641.i285, %.critedge3.i ]
  %.sink.i = phi i64 [ %i.fm, %bb.ag ], [ %i.fd, %.critedge3.i ]
  %.1192.i = phi i64 [ %i.fd, %bb.ag ], [ %i.fm, %.critedge3.i ] ; 4 uses
  %.1187.i = phi ptr [ %.018641.i285, %bb.ag ], [ %i.fl, %.critedge3.i ] ; 3 uses
  store ptr %.sink71.i, ptr %.118940.i286, align 8, !tbaa !99
  %i.fq = getelementptr inbounds nuw i8, ptr %.118940.i286, i64 8
  store i64 %.sink.i, ptr %i.fq, align 8, !tbaa !101
  %i.fr = getelementptr inbounds nuw i8, ptr %.118940.i286, i64 16
  store i32 %i.ct, ptr %i.fr, align 8, !tbaa !102
  %.2190.i = getelementptr inbounds nuw i8, ptr %.118940.i286, i64 24 ; 3 uses
  %i.fs = icmp ugt i64 %.1192.i, 6
  br i1 %i.fs, label %.lr.ph43.i, label %heapsortx.exit.i, !llvm.loop !104

heapsortx.exit.i:                                 ; preds = %bb.ah, %bb.m
  %.118910.i = phi ptr [ %i.ae, %bb.m ], [ %.2190.i, %bb.ah ] ; 2 uses
  %.01868.i = phi ptr [ %i.af, %bb.m ], [ %.1187.i, %bb.ah ] ; 3 uses
  %.2193.i = phi i64 [ %i.ah, %bb.m ], [ %.1192.i, %bb.ah ] ; 2 uses
  %i.ft = shl nuw nsw i64 %.2193.i, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %.01868.i, i64 %i.ft
  %i.fv = icmp samesign ugt i64 %.2193.i, 1
  br i1 %i.fv, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %heapsortx.exit.i
  %.218550.i = getelementptr inbounds nuw i8, ptr %.01868.i, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge5.i, %.preheader.preheader.i
  %.218551.i = phi ptr [ %.2185.i, %.critedge5.i ], [ %.218550.i, %.preheader.preheader.i ] ; 2 uses
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.preheader.i, %bb.ai
  %.218247.i = phi ptr [ %i.fw, %bb.ai ], [ %.218551.i, %.preheader.i ] ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %.218247.i, i64 -8 ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !88
  %i.fy = load ptr, ptr %.218247.i, align 8, !tbaa !88
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !38
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !38
  %i.gd = icmp ugt i32 %i.gc, %i.ga
  br i1 %i.gd, label %bb.ai, label %.critedge5.i

bb.ai:                                            ; preds = %.lr.ph48.i
  call void %.0.i104.i(ptr noundef nonnull %.218247.i, ptr noundef nonnull %i.fw, i64 noundef 8) #20, !inline_history !110
  %i.ge = icmp ugt ptr %i.fw, %.01868.i
  br i1 %i.ge, label %.lr.ph48.i, label %.critedge5.i, !llvm.loop !113

.critedge5.i:                                     ; preds = %.lr.ph48.i, %bb.ai
  %.2185.i = getelementptr inbounds nuw i8, ptr %.218551.i, i64 8 ; 2 uses
  %i.gf = icmp ult ptr %.2185.i, %i.fu
  br i1 %i.gf, label %.preheader.i, label %.loopexit.i, !llvm.loop !114

rqsort.exit:                                      ; preds = %.loopexit.i, %exchange_func.exit210.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.gg = icmp sgt i32 %.072.lcssa, 0
  br i1 %i.gg, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %rqsort.exit
  %i.gh = add nsw i32 %.072.lcssa, -1
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 26 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.gl = getelementptr i8, ptr %0, i64 24
  %i.gm = zext nneg i32 %i.gh to i64
  %wide.trip.count197 = zext nneg i32 %.072.lcssa to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph162, %bb.bn
  %indvars.iv194 = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next195, %bb.bn ] ; 3 uses
  %.075161 = phi i32 [ -1, %.lr.ph162 ], [ %.176, %bb.bn ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv194
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !88 ; 2 uses
  br i1 %.071.lcssa, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gp = load i32, ptr %1, align 8, !tbaa !115
  %i.gq = icmp eq i32 %i.gp, 0
  %i.gr = icmp eq i64 %indvars.iv194, %i.gm
  %or.cond = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %or.cond, label %bb.ap, label %.thread

.thread:                                          ; preds = %bb.aj, %bb.ak
  %i.gs = load i64, ptr %i.gi, align 8, !tbaa !33
  %i.gt = load i64, ptr %i.gj, align 8, !tbaa !32 ; 3 uses
  %i.gu = icmp eq i64 %i.gs, %i.gt
  br i1 %i.gu, label %bb.al, label %bb.am, !prof !34

bb.al:                                            ; preds = %.thread
  call fastcc void @__dbuf_putc(ptr noundef nonnull %0, i8 noundef zeroext 15)
  br label %dbuf_putc.exit.i

bb.am:                                            ; preds = %.thread
  %i.gv = load ptr, ptr %0, align 8, !tbaa !35
  %i.gw = add i64 %i.gt, 1
  store i64 %i.gw, ptr %i.gj, align 8, !tbaa !32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gt
  store i8 15, ptr %i.gx, align 1, !tbaa !12
  br label %dbuf_putc.exit.i

dbuf_putc.exit.i:                                 ; preds = %bb.am, %bb.al
  %i.gy = load i64, ptr %i.gj, align 8, !tbaa !36 ; 3 uses
  %i.gz = load i64, ptr %i.gi, align 8, !tbaa !33
  %i.ha = sub i64 %i.gz, %i.gy
  %i.hb = icmp ult i64 %i.ha, 4
  br i1 %i.hb, label %bb.an, label %bb.ao, !prof !34

bb.an:                                            ; preds = %dbuf_putc.exit.i
  %i.hc = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %0, i32 noundef 0) ; 0 uses
  br label %re_emit_op_u32.exit

bb.ao:                                            ; preds = %dbuf_putc.exit.i
  %i.hd = load ptr, ptr %0, align 8, !tbaa !35
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gy
  store i32 0, ptr %i.he, align 1
  %i.hf = load i64, ptr %i.gj, align 8, !tbaa !32
  %i.hg = add i64 %i.hf, 4
  store i64 %i.hg, ptr %i.gj, align 8, !tbaa !32
  br label %re_emit_op_u32.exit

re_emit_op_u32.exit:                              ; preds = %bb.an, %bb.ao
  %i.hh = trunc i64 %i.gy to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %re_emit_op_u32.exit
  %i.hi = phi i1 [ false, %re_emit_op_u32.exit ], [ true, %bb.ak ]
  %.078 = phi i32 [ %i.hh, %re_emit_op_u32.exit ], [ 0, %bb.ak ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.go, i64 12 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !38
  %.not170 = icmp eq i32 %i.hk, 0
  br i1 %.not170, label %._crit_edge159, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.ap
  %i.hl = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph158, %re_emit_char.exit
  %indvars.iv191 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next192, %re_emit_char.exit ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv191
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !38 ; 4 uses
  %i.ho = icmp slt i32 %i.hn, 65536
  %i.hp = load i8, ptr %i.gk, align 2, !tbaa !23, !range !40, !noundef !41 ; 2 uses
  %i.hq = load i64, ptr %i.gi, align 8, !tbaa !33 ; 3 uses
  %i.hr = load i64, ptr %i.gj, align 8, !tbaa !32 ; 5 uses
  %i.hs = icmp eq i64 %i.hq, %i.hr                ; 2 uses
  br i1 %i.ho, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.ht = add nuw nsw i8 %i.hp, 1                 ; 2 uses
  br i1 %i.hs, label %bb.as, label %bb.au, !prof !34

bb.as:                                            ; preds = %bb.ar
  %.not245 = icmp eq i64 %i.hq, -1
  br i1 %.not245, label %._crit_edge.i110, label %bb.at, !prof !116

bb.at:                                            ; preds = %bb.as
  %i.hu = call fastcc i32 @dbuf_claim(ptr noundef nonnull %0, i64 noundef 1)
  %.not.i.i109 = icmp eq i32 %i.hu, 0
  %.pre201 = load i64, ptr %i.gj, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i.i109, label %._crit_edge.i110, label %dbuf_putc.exit.i.i

._crit_edge.i110:                                 ; preds = %bb.at, %bb.as
  %i.hv = phi i64 [ -1, %bb.as ], [ %.pre201, %bb.at ]
  %i.hw = load ptr, ptr %0, align 8, !tbaa !35
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hv
  store i8 %i.ht, ptr %i.hx, align 1
  %i.hy = load i64, ptr %i.gj, align 8, !tbaa !32
  %i.hz = add i64 %i.hy, 1                        ; 2 uses
  store i64 %i.hz, ptr %i.gj, align 8, !tbaa !32
  br label %dbuf_putc.exit.i.i

bb.au:                                            ; preds = %bb.ar
  %i.ia = load ptr, ptr %0, align 8, !tbaa !35
  %i.ib = add i64 %i.hr, 1
  store i64 %i.ib, ptr %i.gj, align 8, !tbaa !32
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hr
  store i8 %i.ht, ptr %i.ic, align 1, !tbaa !12
  %.pre200 = load i64, ptr %i.gj, align 8, !tbaa !32
  br label %dbuf_putc.exit.i.i

dbuf_putc.exit.i.i:                               ; preds = %._crit_edge.i110, %bb.at, %bb.au
  %i.id = phi i64 [ %i.hz, %._crit_edge.i110 ], [ %.pre201, %bb.at ], [ %.pre200, %bb.au ] ; 4 uses
  %i.ie = trunc i32 %i.hn to i16                  ; 2 uses
  %i.if = load i64, ptr %i.gi, align 8, !tbaa !33 ; 2 uses
  %i.ig = sub i64 %i.if, %i.id
  %i.ih = icmp ult i64 %i.ig, 2
  br i1 %i.ih, label %bb.av, label %bb.ay, !prof !34

bb.av:                                            ; preds = %dbuf_putc.exit.i.i
  %i.ii = add i64 %i.id, 2
  %i.ij = icmp ugt i64 %i.ii, %i.if
  br i1 %i.ij, label %bb.aw, label %bb.ax, !prof !34

bb.aw:                                            ; preds = %bb.av
  %i.ik = call fastcc i32 @dbuf_claim(ptr noundef nonnull %0, i64 noundef 2)
  %.not.i.i105 = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i105, label %._crit_edge.i106, label %re_emit_char.exit

._crit_edge.i106:                                 ; preds = %bb.aw
  %.pre.i107 = load i64, ptr %i.gj, align 8, !tbaa !32
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i106, %bb.av
  %i.il = phi i64 [ %.pre.i107, %._crit_edge.i106 ], [ %i.id, %bb.av ]
  %i.im = load ptr, ptr %0, align 8, !tbaa !35
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.il
  store i16 %i.ie, ptr %i.in, align 1
  br label %re_emit_char.exit.sink.split

bb.ay:                                            ; preds = %dbuf_putc.exit.i.i
  %i.io = load ptr, ptr %0, align 8, !tbaa !35
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.id
  store i16 %i.ie, ptr %i.ip, align 1
  br label %re_emit_char.exit.sink.split

bb.az:                                            ; preds = %bb.aq
  %i.iq = add nuw nsw i8 %i.hp, 3                 ; 2 uses
  br i1 %i.hs, label %bb.ba, label %bb.bc, !prof !34

bb.ba:                                            ; preds = %bb.az
  %.not244 = icmp eq i64 %i.hq, -1
  br i1 %.not244, label %._crit_edge.i102, label %bb.bb, !prof !116

bb.bb:                                            ; preds = %bb.ba
  %i.ir = call fastcc i32 @dbuf_claim(ptr noundef nonnull %0, i64 noundef 1)
  %.not.i.i101 = icmp eq i32 %i.ir, 0
  %.pre199 = load i64, ptr %i.gj, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i.i101, label %._crit_edge.i102, label %dbuf_putc.exit.i6.i

._crit_edge.i102:                                 ; preds = %bb.bb, %bb.ba
  %i.is = phi i64 [ -1, %bb.ba ], [ %.pre199, %bb.bb ]
  %i.it = load ptr, ptr %0, align 8, !tbaa !35
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.is
  store i8 %i.iq, ptr %i.iu, align 1
  %i.iv = load i64, ptr %i.gj, align 8, !tbaa !32
  %i.iw = add i64 %i.iv, 1                        ; 2 uses
  store i64 %i.iw, ptr %i.gj, align 8, !tbaa !32
  br label %dbuf_putc.exit.i6.i

bb.bc:                                            ; preds = %bb.az
  %i.ix = load ptr, ptr %0, align 8, !tbaa !35
  %i.iy = add i64 %i.hr, 1
  store i64 %i.iy, ptr %i.gj, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.hr
  store i8 %i.iq, ptr %i.iz, align 1, !tbaa !12
  %.pre = load i64, ptr %i.gj, align 8, !tbaa !36
  br label %dbuf_putc.exit.i6.i

dbuf_putc.exit.i6.i:                              ; preds = %._crit_edge.i102, %bb.bb, %bb.bc
end_hunk_0
