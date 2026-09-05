Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_x11xinput2?download=true
inline.NumInlined: 30
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@X11_Xinput2UpdateDevices:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.193 = phi ptr [ %.092196, %bb.l ], [ %i.ck, %bb.n ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.193, i64 4 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cp = icmp eq i32 %i.co, %.091197
  %i.cq = getelementptr inbounds nuw i8, ptr %.193, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  br i1 %i.cp, label %bb.p, label %._crit_edge269

bb.p:                                             ; preds = %bb.o
  %i.cs = add nsw i32 %.091197, 2                 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 5
  %i.cv = call ptr @SDL_realloc_REAL(ptr noundef %i.cr, i64 noundef %i.cu) #11 ; 3 uses
  store ptr %i.cv, ptr %i.cq, align 8
  %.not104 = icmp eq ptr %i.cv, null
  br i1 %.not104, label %.thread, label %._crit_edge271

._crit_edge271:                                   ; preds = %bb.p
  %.pre272 = load i32, ptr %i.cn, align 4
  br label %._crit_edge269

._crit_edge269:                                   ; preds = %bb.o, %._crit_edge271
  %i.cw = phi i32 [ %.pre272, %._crit_edge271 ], [ %i.co, %bb.o ] ; 2 uses
  %i.cx = phi ptr [ %i.cv, %._crit_edge271 ], [ %i.cr, %bb.o ]
  %.1 = phi i32 [ %i.cs, %._crit_edge271 ], [ %.091197, %bb.o ]
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds [32 x i8], ptr %i.cx, i64 %i.cy ; 4 uses
  %i.da = add nsw i32 %i.cw, 1
  store i32 %i.da, ptr %i.cn, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 32, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.dc = load i32, ptr %i.db, align 8
  store i32 %i.dc, ptr %i.cz, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.de, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.dh = load double, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store double %i.dh, ptr %i.di, align 8
  %.pre273 = load i32, ptr %i.bt, align 4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge269, %bb.k
  %i.dj = phi i32 [ %i.bx, %bb.k ], [ %.pre273, %._crit_edge269 ] ; 2 uses
  %.294 = phi ptr [ %.092196, %bb.k ], [ %.193, %._crit_edge269 ]
  %.2 = phi i32 [ %.091197, %bb.k ], [ %.1, %._crit_edge269 ]
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv.next242, %i.dk
  br i1 %i.dl, label %bb.k, label %.thread, !llvm.loop !11

.thread:                                          ; preds = %bb.q, %bb.m, %bb.p
  %.pre274 = load i32, ptr %i.bt, align 4
  %i.dm = icmp sgt i32 %.pre274, 0
  br i1 %i.dm, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %bb.r

._crit_edge206:                                   ; preds = %HasDeviceID64.exit, %HasDeviceID.exit, %.thread
  %.1165.lcssa = phi i32 [ %.0164212, %.thread ], [ %.0164212, %HasDeviceID.exit ], [ %.2166, %HasDeviceID64.exit ] ; 4 uses
  %.1162.lcssa = phi ptr [ %.0161213, %.thread ], [ %.0161213, %HasDeviceID.exit ], [ %.2163, %HasDeviceID64.exit ] ; 4 uses
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.dp = load i32, ptr %i.a, align 4
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next248, %i.dq
  br i1 %i.dr, label %bb.c, label %._crit_edge217, !llvm.loop !12

bb.r:                                             ; preds = %.lr.ph205, %HasDeviceID64.exit
  %indvars.iv244 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next245, %HasDeviceID64.exit ] ; 2 uses
  %.1162203 = phi ptr [ %.0161213, %.lr.ph205 ], [ %.2163, %HasDeviceID64.exit ] ; 3 uses
  %.1165202 = phi i32 [ %.0164212, %.lr.ph205 ], [ %.2166, %HasDeviceID64.exit ] ; 4 uses
  %i.ds = load ptr, ptr %i.dn, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv244
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4
  %.not105 = icmp eq i32 %i.dv, 8
  br i1 %.not105, label %bb.s, label %HasDeviceID64.exit

bb.s:                                             ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = sext i32 %i.dx to i64                   ; 3 uses
  %i.dz = add nsw i32 %.1165202, 1                ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 3
  %i.ec = call ptr @SDL_realloc_REAL(ptr noundef %.1162203, i64 noundef %i.eb) #11 ; 3 uses
  %.not.i116 = icmp eq ptr %i.ec, null
  br i1 %.not.i116, label %AddDeviceID64.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = sext i32 %.1165202 to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ed
  store i64 %i.dy, ptr %i.ee, align 8
  br label %AddDeviceID64.exit

AddDeviceID64.exit:                               ; preds = %bb.s, %bb.t
  %.3167 = phi i32 [ %.1165202, %bb.s ], [ %i.dz, %bb.t ] ; 2 uses
  %.3 = phi ptr [ %.1162203, %bb.s ], [ %i.ec, %bb.t ] ; 2 uses
  %i.ef = load i32, ptr %i.d, align 4             ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.preheader.i118, label %.loopexit191

.lr.ph.preheader.i118:                            ; preds = %AddDeviceID64.exit
  %wide.trip.count.i119 = zext nneg i32 %i.ef to i64
  br label %.lr.ph.i120

bb.u:                                             ; preds = %.lr.ph.i120
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count.i119
  br i1 %exitcond.not.i123, label %.loopexit191, label %.lr.ph.i120, !llvm.loop !13

.lr.ph.i120:                                      ; preds = %bb.u, %.lr.ph.preheader.i118
  %indvars.iv.i121 = phi i64 [ 0, %.lr.ph.preheader.i118 ], [ %indvars.iv.next.i122, %bb.u ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i121
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = icmp eq i64 %i.ei, %i.dy
  br i1 %i.ej, label %HasDeviceID64.exit, label %bb.u

.loopexit191:                                     ; preds = %bb.u, %AddDeviceID64.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = icmp eq i32 %i.el, 2
  %. = select i1 %i.em, i32 2, i32 0
  %i.en = load ptr, ptr %i.do, align 8
  %i.eo = call i32 @SDL_AddTouch(i64 noundef %i.dy, i32 noundef %., ptr noundef %i.en) #9 ; 0 uses
  br label %HasDeviceID64.exit

HasDeviceID64.exit:                               ; preds = %.lr.ph.i120, %.loopexit191, %bb.r
  %.2166 = phi i32 [ %.1165202, %bb.r ], [ %.3167, %.loopexit191 ], [ %.3167, %.lr.ph.i120 ] ; 2 uses
  %.2163 = phi ptr [ %.1162203, %bb.r ], [ %.3, %.loopexit191 ], [ %.3, %.lr.ph.i120 ] ; 2 uses
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.ep = load i32, ptr %i.bt, align 4
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next245, %i.eq
  br i1 %i.er, label %bb.r, label %._crit_edge206, !llvm.loop !14

._crit_edge227:                                   ; preds = %HasDeviceID.exit131, %HasDeviceID.exit131.us, %._crit_edge217
  %.0161.lcssa308 = phi ptr [ %.1162.lcssa, %HasDeviceID.exit131.us ], [ %.1162.lcssa, %._crit_edge217 ], [ %.0161.lcssa307316, %HasDeviceID.exit131 ] ; 3 uses
  %.0164.lcssa306 = phi i32 [ %.1165.lcssa, %HasDeviceID.exit131.us ], [ %.1165.lcssa, %._crit_edge217 ], [ %.0164.lcssa305317, %HasDeviceID.exit131 ] ; 3 uses
  %.0168.lcssa304 = phi ptr [ %.1169, %HasDeviceID.exit131.us ], [ %.1169, %._crit_edge217 ], [ %.0168.lcssa303318, %HasDeviceID.exit131 ] ; 4 uses
  %.0171.lcssa302 = phi i32 [ %.1172, %HasDeviceID.exit131.us ], [ %.1172, %._crit_edge217 ], [ %.0171.lcssa301319, %HasDeviceID.exit131 ] ; 2 uses
  %.0174.lcssa300 = phi ptr [ %.1175, %HasDeviceID.exit131.us ], [ %.1175, %._crit_edge217 ], [ %.0174.lcssa299320, %HasDeviceID.exit131 ] ; 3 uses
  %i.es = load i32, ptr %i.c, align 4             ; 2 uses
  %.not99228 = icmp eq i32 %i.es, 0
  br i1 %.not99228, label %._crit_edge231, label %.lr.ph230

._crit_edge227.thread:                            ; preds = %._crit_edge217.thread
  %i.et = load i32, ptr %i.c, align 4             ; 2 uses
  %.not99228326 = icmp eq i32 %i.et, 0
  br i1 %.not99228326, label %._crit_edge231.thread, label %.lr.ph230.thread

.lr.ph230.thread:                                 ; preds = %._crit_edge227.thread
  %i.eu = add i32 %i.et, -1
  br label %HasDeviceID.exit139.preheader

.lr.ph230:                                        ; preds = %._crit_edge227
  %i.ev = add i32 %i.es, -1                       ; 2 uses
  %i.ew = icmp sgt i32 %.0171.lcssa302, 0
  %wide.trip.count.i134 = zext nneg i32 %.0171.lcssa302 to i64
  br i1 %i.ew, label %.lr.ph.preheader.i133.us.preheader, label %HasDeviceID.exit139.preheader

HasDeviceID.exit139.preheader:                    ; preds = %.lr.ph230.thread, %.lr.ph230
  %i.ex = phi i32 [ %i.eu, %.lr.ph230.thread ], [ %i.ev, %.lr.ph230 ]
  %.0161.lcssa308327345 = phi ptr [ null, %.lr.ph230.thread ], [ %.0161.lcssa308, %.lr.ph230 ]
  %.0164.lcssa306329344 = phi i32 [ 0, %.lr.ph230.thread ], [ %.0164.lcssa306, %.lr.ph230 ]
  %.0168.lcssa304331343 = phi ptr [ null, %.lr.ph230.thread ], [ %.0168.lcssa304, %.lr.ph230 ]
  %.0174.lcssa300334342 = phi ptr [ null, %.lr.ph230.thread ], [ %.0174.lcssa300, %.lr.ph230 ]
  %i.ey = sext i32 %i.ex to i64
  br label %HasDeviceID.exit139

.lr.ph.preheader.i133.us.preheader:               ; preds = %.lr.ph230
  %i.ez = sext i32 %i.ev to i64
  br label %.lr.ph.preheader.i133.us

.lr.ph.preheader.i133.us:                         ; preds = %.lr.ph.preheader.i133.us.preheader, %HasDeviceID.exit139.us
  %indvars.iv259 = phi i64 [ %i.ez, %.lr.ph.preheader.i133.us.preheader ], [ %indvars.iv.next260, %HasDeviceID.exit139.us ] ; 3 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv259
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  br label %.lr.ph.i135.us

.lr.ph.i135.us:                                   ; preds = %bb.v, %.lr.ph.preheader.i133.us
  %indvars.iv.i136.us = phi i64 [ 0, %.lr.ph.preheader.i133.us ], [ %indvars.iv.next.i137.us, %bb.v ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0168.lcssa304, i64 %indvars.iv.i136.us
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = icmp eq i32 %i.fb, %i.fd
  br i1 %i.fe, label %HasDeviceID.exit139.us, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i135.us
  %indvars.iv.next.i137.us = add nuw nsw i64 %indvars.iv.i136.us, 1 ; 2 uses
  %exitcond.not.i138.us = icmp eq i64 %indvars.iv.next.i137.us, %wide.trip.count.i134
  br i1 %exitcond.not.i138.us, label %.loopexit189.us, label %.lr.ph.i135.us, !llvm.loop !9

.loopexit189.us:                                  ; preds = %bb.v
  call void @SDL_RemoveMouse(i32 noundef %i.fb) #9
  br label %HasDeviceID.exit139.us

HasDeviceID.exit139.us:                           ; preds = %.lr.ph.i135.us, %.loopexit189.us
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, -1
  %i.ff = icmp eq i64 %indvars.iv259, 0
  br i1 %i.ff, label %._crit_edge231, label %.lr.ph.preheader.i133.us, !llvm.loop !15

HasDeviceID.exit131:                              ; preds = %HasDeviceID.exit131.preheader, %HasDeviceID.exit131
  %indvars.iv250 = phi i64 [ %i.af, %HasDeviceID.exit131.preheader ], [ %indvars.iv.next251, %HasDeviceID.exit131 ] ; 3 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv250
  %i.fh = load i32, ptr %i.fg, align 4
  call void @SDL_RemoveKeyboard(i32 noundef %i.fh) #9
  %indvars.iv.next251 = add nsw i64 %indvars.iv250, -1
  %i.fi = icmp eq i64 %indvars.iv250, 0
  br i1 %i.fi, label %._crit_edge227, label %HasDeviceID.exit131, !llvm.loop !10

._crit_edge231:                                   ; preds = %HasDeviceID.exit139, %HasDeviceID.exit139.us, %._crit_edge227
  %.0174.lcssa300335 = phi ptr [ %.0174.lcssa300, %HasDeviceID.exit139.us ], [ %.0174.lcssa300, %._crit_edge227 ], [ %.0174.lcssa300334342, %HasDeviceID.exit139 ] ; 3 uses
  %.0168.lcssa304332 = phi ptr [ %.0168.lcssa304, %HasDeviceID.exit139.us ], [ %.0168.lcssa304, %._crit_edge227 ], [ %.0168.lcssa304331343, %HasDeviceID.exit139 ] ; 3 uses
  %.0164.lcssa306330 = phi i32 [ %.0164.lcssa306, %HasDeviceID.exit139.us ], [ %.0164.lcssa306, %._crit_edge227 ], [ %.0164.lcssa306329344, %HasDeviceID.exit139 ] ; 2 uses
  %.0161.lcssa308328 = phi ptr [ %.0161.lcssa308, %HasDeviceID.exit139.us ], [ %.0161.lcssa308, %._crit_edge227 ], [ %.0161.lcssa308327345, %HasDeviceID.exit139 ] ; 4 uses
  %i.fj = load i32, ptr %i.d, align 4             ; 2 uses
  %.not100232 = icmp eq i32 %i.fj, 0
  br i1 %.not100232, label %._crit_edge235, label %.lr.ph234

._crit_edge231.thread:                            ; preds = %._crit_edge227.thread
  %i.fk = load i32, ptr %i.d, align 4             ; 2 uses
  %.not100232350 = icmp eq i32 %i.fk, 0
  br i1 %.not100232350, label %._crit_edge235, label %.lr.ph234.thread

.lr.ph234.thread:                                 ; preds = %._crit_edge231.thread
  %i.fl = add i32 %i.fk, -1
  br label %HasDeviceID64.exit147.preheader

.lr.ph234:                                        ; preds = %._crit_edge231
  %i.fm = add i32 %i.fj, -1                       ; 2 uses
  %i.fn = icmp sgt i32 %.0164.lcssa306330, 0
  %wide.trip.count.i142 = zext nneg i32 %.0164.lcssa306330 to i64
  br i1 %i.fn, label %.lr.ph.preheader.i141.us.preheader, label %HasDeviceID64.exit147.preheader

HasDeviceID64.exit147.preheader:                  ; preds = %.lr.ph234.thread, %.lr.ph234
  %i.fo = phi i32 [ %i.fl, %.lr.ph234.thread ], [ %i.fm, %.lr.ph234 ]
  %.0174.lcssa300335351365 = phi ptr [ null, %.lr.ph234.thread ], [ %.0174.lcssa300335, %.lr.ph234 ]
  %.0168.lcssa304332353364 = phi ptr [ null, %.lr.ph234.thread ], [ %.0168.lcssa304332, %.lr.ph234 ]
  %.0161.lcssa308328356363 = phi ptr [ null, %.lr.ph234.thread ], [ %.0161.lcssa308328, %.lr.ph234 ]
  %i.fp = sext i32 %i.fo to i64
  br label %HasDeviceID64.exit147

.lr.ph.preheader.i141.us.preheader:               ; preds = %.lr.ph234
  %i.fq = sext i32 %i.fm to i64
  br label %.lr.ph.preheader.i141.us

.lr.ph.preheader.i141.us:                         ; preds = %.lr.ph.preheader.i141.us.preheader, %HasDeviceID64.exit147.us
  %indvars.iv265 = phi i64 [ %i.fq, %.lr.ph.preheader.i141.us.preheader ], [ %indvars.iv.next266, %HasDeviceID64.exit147.us ] ; 3 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv265
  %i.fs = load i64, ptr %i.fr, align 8            ; 2 uses
  br label %.lr.ph.i143.us

.lr.ph.i143.us:                                   ; preds = %bb.w, %.lr.ph.preheader.i141.us
  %indvars.iv.i144.us = phi i64 [ 0, %.lr.ph.preheader.i141.us ], [ %indvars.iv.next.i145.us, %bb.w ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.0161.lcssa308328, i64 %indvars.iv.i144.us
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %HasDeviceID64.exit147.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i143.us
  %indvars.iv.next.i145.us = add nuw nsw i64 %indvars.iv.i144.us, 1 ; 2 uses
  %exitcond.not.i146.us = icmp eq i64 %indvars.iv.next.i145.us, %wide.trip.count.i142
  br i1 %exitcond.not.i146.us, label %.loopexit.us, label %.lr.ph.i143.us, !llvm.loop !13

.loopexit.us:                                     ; preds = %bb.w
  call void @SDL_DelTouch(i64 noundef %i.fs) #9
  br label %HasDeviceID64.exit147.us

HasDeviceID64.exit147.us:                         ; preds = %.lr.ph.i143.us, %.loopexit.us
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, -1
  %i.fw = icmp eq i64 %indvars.iv265, 0
  br i1 %i.fw, label %._crit_edge235, label %.lr.ph.preheader.i141.us, !llvm.loop !16

HasDeviceID.exit139:                              ; preds = %HasDeviceID.exit139.preheader, %HasDeviceID.exit139
  %indvars.iv256 = phi i64 [ %i.ey, %HasDeviceID.exit139.preheader ], [ %indvars.iv.next257, %HasDeviceID.exit139 ] ; 3 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv256
  %i.fy = load i32, ptr %i.fx, align 4
  call void @SDL_RemoveMouse(i32 noundef %i.fy) #9
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, -1
  %i.fz = icmp eq i64 %indvars.iv256, 0
  br i1 %i.fz, label %._crit_edge231, label %HasDeviceID.exit139, !llvm.loop !15

._crit_edge235:                                   ; preds = %HasDeviceID64.exit147, %HasDeviceID64.exit147.us, %._crit_edge231.thread, %._crit_edge231
  %.0161.lcssa308328357 = phi ptr [ null, %._crit_edge231.thread ], [ %.0161.lcssa308328, %HasDeviceID64.exit147.us ], [ %.0161.lcssa308328, %._crit_edge231 ], [ %.0161.lcssa308328356363, %HasDeviceID64.exit147 ]
  %.0168.lcssa304332354 = phi ptr [ null, %._crit_edge231.thread ], [ %.0168.lcssa304332, %HasDeviceID64.exit147.us ], [ %.0168.lcssa304332, %._crit_edge231 ], [ %.0168.lcssa304332353364, %HasDeviceID64.exit147 ]
  %.0174.lcssa300335352 = phi ptr [ null, %._crit_edge231.thread ], [ %.0174.lcssa300335, %HasDeviceID64.exit147.us ], [ %.0174.lcssa300335, %._crit_edge231 ], [ %.0174.lcssa300335351365, %HasDeviceID64.exit147 ]
  call void @SDL_free_REAL(ptr noundef %i.j) #9
  call void @SDL_free_REAL(ptr noundef %.0174.lcssa300335352) #9
  call void @SDL_free_REAL(ptr noundef %i.k) #9
  call void @SDL_free_REAL(ptr noundef %.0168.lcssa304332354) #9
  call void @SDL_free_REAL(ptr noundef %i.l) #9
  call void @SDL_free_REAL(ptr noundef %.0161.lcssa308328357) #9
  %i.ga = load ptr, ptr @X11_XIFreeDeviceInfo, align 8
  call void %i.ga(ptr noundef %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

HasDeviceID64.exit147:                            ; preds = %HasDeviceID64.exit147.preheader, %HasDeviceID64.exit147
  %indvars.iv262 = phi i64 [ %i.fp, %HasDeviceID64.exit147.preheader ], [ %indvars.iv.next263, %HasDeviceID64.exit147 ] ; 3 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv262
  %i.gc = load i64, ptr %i.gb, align 8
  call void @SDL_DelTouch(i64 noundef %i.gc) #9
  %indvars.iv.next263 = add nsw i64 %indvars.iv262, -1
  %i.gd = icmp eq i64 %indvars.iv262, 0
  br i1 %i.gd, label %._crit_edge235, label %HasDeviceID64.exit147, !llvm.loop !16
}

; Function Attrs: nounwind uwtable
define hidden void @X11_Xinput2UpdatePointerMapping(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %.b.i = load i1, ptr @xinput2_initialized, align 1
  br i1 %.b.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr @xinput2_pointer_button_map, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.c) #9
  store ptr null, ptr @xinput2_pointer_button_map, align 8
  store i32 0, ptr @xinput2_pointer_button_map_size, align 4
  %i.d = load ptr, ptr @X11_XGetPointerMapping, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = tail call i32 %i.d(ptr noundef %i.e, ptr noundef null, i32 noundef 0) #9 ; 3 uses
  store i32 %i.f, ptr @xinput2_pointer_button_map_size, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.g, i64 noundef 1) #10 ; 3 uses
  store ptr %i.h, ptr @xinput2_pointer_button_map, align 8
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @X11_XGetPointerMapping, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i32, ptr @xinput2_pointer_button_map_size, align 4
  %i.l = tail call i32 %i.i(ptr noundef %i.j, ptr noundef nonnull %i.h, i32 noundef %i.k) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ %i.l, %bb.d ], [ 0, %bb.c ]
  store i32 %.sink, ptr @xinput2_pointer_button_map_size, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @X11_QuitXinput2(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @xinput2_pointer_button_map, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.a) #9
  store ptr null, ptr @xinput2_pointer_button_map, align 8
  store i32 0, ptr @xinput2_pointer_button_map_size, align 4
  %i.b = load i32, ptr @scrollable_device_count, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = load ptr, ptr @scrollable_devices, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.d) #9
  store ptr null, ptr @scrollable_devices, align 8
  store i32 0, ptr @scrollable_device_count, align 4
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr @scrollable_devices, align 8
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.h) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr @scrollable_device_count, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !17
}

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @X11_Xinput2IsInitialized() local_unnamed_addr #4 {
bb.a:
  %.b = load i1, ptr @xinput2_initialized, align 1
  ret i1 %.b
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @X11_HandleXinput2Event(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union._XEvent, align 8             ; 14 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [7 x float], align 16             ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.e = load ptr, ptr %i.d, align 8              ; 20 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = load i32, ptr @xinput2_opcode, align 4
  %.not = icmp eq i32 %i.g, %i.h
  br i1 %.not, label %bb.b, label %xinput2_reset_scrollable_valuators.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %xinput2_reset_scrollable_valuators.exit [
    i32 11, label %bb.c
    i32 12, label %bb.m
    i32 17, label %bb.r
    i32 2, label %bb.u
    i32 3, label %bb.u
    i32 15, label %bb.x
    i32 16, label %bb.x
    i32 22, label %bb.x
    i32 23, label %bb.x
    i32 24, label %bb.x
    i32 4, label %bb.y
    i32 5, label %bb.y
    i32 7, label %bb.aq
    i32 6, label %bb.as
    i32 18, label %bb.bt
    i32 20, label %bb.bx
    i32 19, label %bb.ce
    i32 27, label %bb.ci
    i32 28, label %bb.ci
    i32 29, label %bb.ci
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph278, label %._crit_edge

.lr.ph278:                                        ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 656 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph278, %xinput2_remove_device_info.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph278 ], [ %indvars.iv.next, %xinput2_remove_device_info.exit ] ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = and i32 %i.u, 136
  %.not227 = icmp eq i32 %i.v, 0
  br i1 %.not227, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.s, align 4
  tail call void @X11_RemovePenByDeviceID(i32 noundef %i.w) #9
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = and i32 %i.u, 68
  %.not228 = icmp eq i32 %i.x, 0
  br i1 %.not228, label %bb.h, label %bb.g
end_hunk_0
