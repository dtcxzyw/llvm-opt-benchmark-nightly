Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6988
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 560
begin_hunk_0_@_ZN8tetgenio8load_stlEPc:bb.a
.lr.ph.i.2.prol.loopexit:                         ; preds = %.lr.ph.i.2.prol, %.lr.ph.i.2.preheader
  %indvars.iv.i117.2.unr = phi i64 [ %indvars.iv.i117.2.ph, %.lr.ph.i.2.preheader ], [ %indvars.iv.next.i118.2.prol, %.lr.ph.i.2.prol ]
  %i.qe = sub nsw i64 %indvars.iv.i117.2.ph, %wide.trip.count.i.2
  %i.qf = icmp ugt i64 %i.qe, -4
  br i1 %i.qf, label %.preheader.i116.2, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2.prol.loopexit, %.lr.ph.i.2
  %indvars.iv.i117.2 = phi i64 [ %indvars.iv.next.i118.2.3, %.lr.ph.i.2 ], [ %indvars.iv.i117.2.unr, %.lr.ph.i.2.prol.loopexit ] ; 6 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.i117.2
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !23
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.i117.2
  store ptr %i.qh, ptr %i.qi, align 8, !tbaa !23
  %indvars.iv.next.i118.2 = add nuw nsw i64 %indvars.iv.i117.2, 1 ; 2 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next.i118.2
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !23
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i118.2
  store ptr %i.qk, ptr %i.ql, align 8, !tbaa !23
  %indvars.iv.next.i118.2.1 = add nuw nsw i64 %indvars.iv.i117.2, 2 ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next.i118.2.1
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !23
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i118.2.1
  store ptr %i.qn, ptr %i.qo, align 8, !tbaa !23
  %indvars.iv.next.i118.2.2 = add nuw nsw i64 %indvars.iv.i117.2, 3 ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv.next.i118.2.2
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !23
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i118.2.2
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !23
  %indvars.iv.next.i118.2.3 = add nuw nsw i64 %indvars.iv.i117.2, 4 ; 2 uses
  %exitcond.not.i119.2.3 = icmp eq i64 %indvars.iv.next.i118.2.3, %wide.trip.count.i.2
  br i1 %exitcond.not.i119.2.3, label %.preheader.i116.2, label %.lr.ph.i.2, !llvm.loop !120

.preheader.i116.2:                                ; preds = %.lr.ph.i.2.prol.loopexit, %.lr.ph.i.2, %middle.block, %bb.as
  %i.qs = icmp slt i32 %i.ok, %spec.select.i.2
  br i1 %i.qs, label %.lr.ph42.preheader.i.2, label %._crit_edge.i.2

.lr.ph42.preheader.i.2:                           ; preds = %.preheader.i116.2
  %i.qt = sext i32 %i.ok to i64
  %i.qu = shl nsw i64 %i.qt, 3
  %scevgep.i.2 = getelementptr i8, ptr %i.ps, i64 %i.qu
  %i.qv = xor i32 %i.ok, -1
  %i.qw = add i32 %spec.select.i.2, %i.qv
  %i.qx = zext i32 %i.qw to i64
  %i.qy = shl nuw nsw i64 %i.qx, 3
  %i.qz = add nuw nsw i64 %i.qy, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.2, i8 0, i64 %i.qz, i1 false), !tbaa !23
  br label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %.lr.ph42.preheader.i.2, %.preheader.i116.2
  call void @free(ptr noundef nonnull %i.ol) #40
  %i.ra = load i32, ptr %i.ct, align 8, !tbaa !107
  %i.rb = sub nsw i32 %spec.select.i.2, %i.ra
  %i.rc = sext i32 %i.rb to i64
  %i.rd = shl nsw i64 %i.rc, 3
  %i.re = load i64, ptr %i.cu, align 8, !tbaa !108
  %i.rf = add i64 %i.rd, %i.re
  store i64 %i.rf, ptr %i.cu, align 8, !tbaa !108
  store ptr %i.ps, ptr %i.cr, align 8, !tbaa !106
  store i32 %spec.select.i.2, ptr %i.ct, align 8, !tbaa !107
  %.pre189.pre = load i32, ptr %i.cs, align 4, !tbaa !102
  %.pre190.pre = load i32, ptr %i.al, align 8, !tbaa !103
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.2, %bb.ar
  %.pre190 = phi i32 [ %.pre188, %bb.ar ], [ %.pre190.pre, %._crit_edge.i.2 ] ; 2 uses
  %.pre189 = phi i32 [ %.pre187, %bb.ar ], [ %.pre189.pre, %._crit_edge.i.2 ] ; 2 uses
  %i.rg = phi ptr [ %i.ol, %bb.ar ], [ %i.ps, %._crit_edge.i.2 ]
  %i.rh = sext i32 %i.pn to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.rh ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !23 ; 2 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.au, label %_ZN10tetgenmesh9arraypool8getblockEi.exit.2

bb.au:                                            ; preds = %bb.at
  %i.rl = mul nsw i32 %.pre190, %.pre189
  %i.rm = sext i32 %i.rl to i64                   ; 2 uses
  %i.rn = call noalias ptr @malloc(i64 noundef %i.rm) #45 ; 2 uses
  store ptr %i.rn, ptr %i.ri, align 8, !tbaa !23
  %i.ro = load i64, ptr %i.cu, align 8, !tbaa !108
  %i.rp = add i64 %i.ro, %i.rm
  store i64 %i.rp, ptr %i.cu, align 8, !tbaa !108
  br label %_ZN10tetgenmesh9arraypool8getblockEi.exit.2

_ZN10tetgenmesh9arraypool8getblockEi.exit.2:      ; preds = %bb.au, %bb.at
  %.033.i.2 = phi ptr [ %i.rn, %bb.au ], [ %i.rj, %bb.at ]
  %i.rq = load i64, ptr %i.cp, align 8, !tbaa !98 ; 2 uses
  %i.rr = add nsw i32 %.pre189, -1
  %i.rs = sext i32 %i.rr to i64
  %i.rt = and i64 %i.rq, %i.rs
  %i.ru = sext i32 %.pre190 to i64
  %i.rv = mul nsw i64 %i.rt, %i.ru
  %i.rw = getelementptr inbounds i8, ptr %.033.i.2, i64 %i.rv ; 2 uses
  %i.rx = add nsw i64 %i.rq, 1
  store i64 %i.rx, ptr %i.cp, align 8, !tbaa !98
  %i.ry = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.rz = load <2 x float>, ptr %i.ry, align 4, !tbaa !63
  %i.sa = fpext <2 x float> %i.rz to <2 x double>
  store <2 x double> %i.sa, ptr %i.rw, align 8, !tbaa !30
  %i.sb = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !63
  %i.sd = fpext float %i.sc to double
  %i.se = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store double %i.sd, ptr %i.se, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader134, !llvm.loop !121

.loopexit:                                        ; preds = %_ZN10tetgenmesh9arraypool8getblockEi.exit.2, %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.do) #42
  br label %bb.av

bb.av:                                            ; preds = %_ZL9SwapBytesPcii.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %i.sf = call i32 @feof(ptr noundef nonnull %i.n) #40
  %.not106 = icmp eq i32 %i.sf, 0
  br i1 %.not106, label %bb.af, label %.loopexit136

.loopexit136:                                     ; preds = %.loopexit137, %.backedge.i, %bb.av, %.preheader139, %bb.ae, %.thread
  %i.sg = call i32 @fclose(ptr noundef nonnull %i.n) ; 0 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !98 ; 3 uses
  %i.sj = trunc i64 %i.si to i32                  ; 7 uses
  %i.sk = icmp ne i32 %i.sj, 0
  %i.sl = srem i32 %i.sj, 3
  %i.sm = sdiv i32 %i.sj, 3                       ; 3 uses
  %.not108 = icmp eq i32 %i.sl, 0
  %or.cond109 = and i1 %i.sk, %.not108
  br i1 %or.cond109, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit136
  %i.sn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, ptr noundef nonnull %i.a) ; 0 uses
  call void @_ZN10tetgenmesh9arraypoolD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.al) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #42
  br label %bb.az

bb.ax:                                            ; preds = %.loopexit136
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.sj, ptr %i.so, align 8, !tbaa !8
  %sext = mul i64 %i.si, 12884901888
  %i.sp = call i64 @llvm.smax.i64(i64 %sext, i64 -1)
  %i.sq = ashr i64 %i.sp, 29
  %i.sr = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.sq) #41 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.sr, ptr %i.ss, align 8, !tbaa !15
  %i.st = icmp sgt i32 %i.sj, 0
  br i1 %i.st, label %.lr.ph153, label %._crit_edge

.lr.ph153:                                        ; preds = %bb.ax
  %i.su = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !106
  %i.sw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !105
  %i.sy = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !122
  %i.ta = load i32, ptr %i.al, align 8, !tbaa !103
  %wide.trip.count178 = and i64 %i.si, 2147483647
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph153, %bb.ay
  %indvars.iv175 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next176, %bb.ay ] ; 3 uses
  %i.tb = trunc nuw nsw i64 %indvars.iv175 to i32 ; 2 uses
  %i.tc = lshr i32 %i.tb, %i.sx
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.td
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !23
  %i.tg = and i32 %i.sz, %i.tb
  %i.th = mul nsw i32 %i.tg, %i.ta
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds i8, ptr %i.tf, i64 %i.ti ; 3 uses
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !30
  %.idx = mul nuw nsw i64 %indvars.iv175, 24
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.idx ; 3 uses
  store double %i.tk, ptr %i.tl, align 8, !tbaa !30
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !30
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store double %i.tn, ptr %i.to, align 8, !tbaa !30
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !30
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store double %i.tq, ptr %i.tr, align 8, !tbaa !30
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count178
  br i1 %exitcond179.not, label %._crit_edge, label %bb.ay, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.ay, %bb.ax
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.sm, ptr %i.ts, align 8, !tbaa !68
  %i.tt = sext i32 %i.sm to i64
  %i.tu = icmp slt i32 %i.sj, -2
  %i.tv = shl nsw i64 %i.tt, 5
  %i.tw = select i1 %i.tu, i64 -1, i64 %i.tv
  %i.tx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.tw) #41 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.tx, ptr %i.ty, align 8, !tbaa !69
  store i32 1, ptr %0, align 8, !tbaa !26
  %i.tz = icmp sgt i32 %i.sj, 2
  br i1 %i.tz, label %.lr.ph157.preheader, label %._crit_edge158

.lr.ph157.preheader:                              ; preds = %._crit_edge
  %smax = call i32 @llvm.smax.i32(i32 %i.sm, i32 1)
  %wide.trip.count183 = zext nneg i32 %smax to i64
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.lr.ph157
  %indvars.iv180 = phi i64 [ 0, %.lr.ph157.preheader ], [ %indvars.iv.next181, %.lr.ph157 ] ; 2 uses
  %.091154 = phi i32 [ 1, %.lr.ph157.preheader ], [ %i.ul, %.lr.ph157 ] ; 4 uses
  %i.ua = getelementptr inbounds nuw [32 x i8], ptr %i.tx, i64 %indvars.iv180 ; 5 uses
  store ptr null, ptr %i.ua, align 8, !tbaa !71
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store ptr null, ptr %i.uc, align 8, !tbaa !74
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  store i32 0, ptr %i.ud, align 8, !tbaa !75
  store i32 1, ptr %i.ub, align 8, !tbaa !73
  %i.ue = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #41 ; 4 uses
  store ptr %i.ue, ptr %i.ua, align 8, !tbaa !71
  store ptr null, ptr %i.ue, align 8, !tbaa !76
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store i32 3, ptr %i.uf, align 8, !tbaa !78
  %i.ug = call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #41 ; 4 uses
  store ptr %i.ug, ptr %i.ue, align 8, !tbaa !76
  store i32 %.091154, ptr %i.ug, align 4, !tbaa !33
  %i.uh = add nuw nsw i32 %.091154, 1
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  store i32 %i.uh, ptr %i.ui, align 4, !tbaa !33
  %i.uj = add nuw nsw i32 %.091154, 2
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !33
  %i.ul = add nuw nsw i32 %.091154, 3
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !124

._crit_edge158:                                   ; preds = %.lr.ph157, %._crit_edge
  call void @_ZN10tetgenmesh9arraypoolD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.al) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #42
  br label %bb.az

bb.az:                                            ; preds = %.loopexit138, %bb.aw, %._crit_edge158, %bb.h, %bb.f, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.aw ], [ true, %._crit_edge158 ], [ false, %.loopexit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i1 %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @_ZN10tetgenmesh9arraypool8newindexEPPv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = tail call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.c)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !102
  %i.h = add nsw i32 %i.g, -1
  %i.i = sext i32 %i.h to i64
  %i.j = and i64 %i.e, %i.i
  %i.k = load i32, ptr %0, align 8, !tbaa !103
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.j, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 %i.m
  store ptr %i.n, ptr %1, align 8, !tbaa !125
  %i.o = add nsw i64 %i.e, 1
  store i64 %i.o, ptr %i.a, align 8, !tbaa !98
  ret i32 %i.c
}

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8tetgenio10load_meditEPci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 19 uses
  %i.b = alloca [2048 x i8], align 16             ; 19 uses
  %i.c = alloca ptr, align 8                      ; 54 uses
  %i.d = alloca i32, align 4                      ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.e = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1023) #40 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %i.g = load i8, ptr %i.a, align 16, !tbaa !20
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.dz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %i.j = getelementptr i8, ptr %i.a, i64 %i.i     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -5
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(6) @.str.94) #44
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.j, ptr noundef nonnull align 1 dereferenceable(6) @.str.94, i64 6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4) ; 28 uses
  %.not211 = icmp eq ptr %i.m, null
  br i1 %.not211, label %bb.dz, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.a) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = icmp ne i32 %2, 0                        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.outer.outer

..loopexit399_crit_edge:                          ; preds = %_ZN8tetgenio14findnextnumberEPc.exit267.2
  br label %.loopexit399, !llvm.loop !126

.loopexit399:                                     ; preds = %bb.ae, %..loopexit399_crit_edge
  %.lcssa563567.lcssa = phi i32 [ %i.dc, %..loopexit399_crit_edge ], [ %.promoted566, %bb.ae ] ; 2 uses
  store i32 %.lcssa563567.lcssa, ptr %i.d, align 4
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.e, %.loopexit399
  %.promoted500.pre737 = phi i32 [ 0, %bb.e ], [ %.lcssa563567.lcssa, %.loopexit399 ]
  %.0178.ph.ph = phi i32 [ 0, %bb.e ], [ %.1179, %.loopexit399 ]
  %.0177.ph.ph = phi i32 [ 0, %bb.e ], [ %i.cp, %.loopexit399 ]
  %.0175.ph.ph = phi i32 [ 0, %bb.e ], [ %.0175.ph.ph1095, %.loopexit399 ]
  %.0172.ph.ph = phi i32 [ 0, %bb.e ], [ %.0172.ph, %.loopexit399 ]
  %.0.ph.ph = phi i32 [ 0, %bb.e ], [ %i.cq, %.loopexit399 ]
  %i.ad = icmp eq i32 %.0177.ph.ph, 0
  br label %.outer.outer1093

.outer.outer1093:                                 ; preds = %.outer.outer1093.backedge, %.outer.outer
  %.promoted500.ph = phi i32 [ %.promoted500.pre737, %.outer.outer ], [ %.promoted500.ph.be, %.outer.outer1093.backedge ]
  %.0178.ph.ph1094 = phi i32 [ %.0178.ph.ph, %.outer.outer ], [ %.1179, %.outer.outer1093.backedge ]
  %.0175.ph.ph1095 = phi i32 [ %.0175.ph.ph, %.outer.outer ], [ %.0175.ph.ph1095.be, %.outer.outer1093.backedge ] ; 2 uses
  %.0172.ph.ph1096 = phi i32 [ %.0172.ph.ph, %.outer.outer ], [ %.2174, %.outer.outer1093.backedge ]
  %.0.ph.ph1097 = phi i32 [ %.0.ph.ph, %.outer.outer ], [ %.0.ph.ph1097.be, %.outer.outer1093.backedge ]
  %i.ae = icmp eq i32 %.0175.ph.ph1095, 0
  br label %.outer

.outer:                                           ; preds = %.outer.outer1093, %bb.bv
  %.promoted500 = phi i32 [ %.promoted500741, %bb.bv ], [ %.promoted500.ph, %.outer.outer1093 ]
  %.0178.ph = phi i32 [ %.1179, %bb.bv ], [ %.0178.ph.ph1094, %.outer.outer1093 ] ; 2 uses
  %.0172.ph = phi i32 [ %.2174, %bb.bv ], [ %.0172.ph.ph1096, %.outer.outer1093 ] ; 3 uses
  %.0.ph = phi i32 [ %.4, %bb.bv ], [ %.0.ph.ph1097, %.outer.outer1093 ] ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.h
  %.lcssa498501 = phi i32 [ %.promoted500, %.outer ], [ %i.ak, %bb.h ]
  %i.af = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2047, ptr noundef nonnull %i.m) ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit403, label %.preheader.i

.backedge.i:                                      ; preds = %bb.g, %bb.g, %bb.g
  %i.ah = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2047, ptr noundef nonnull %i.m) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit403, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %.backedge.i
  %.in = phi i32 [ %i.ak, %.backedge.i ], [ %.lcssa498501, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %i.ah, %.backedge.i ], [ %i.af, %bb.f ]
  %i.ak = add nsw i32 %.in, 1                     ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %.preheader.i
  %.0.i = phi ptr [ %i.am, %.critedge.i ], [ %i.aj, %.preheader.i ] ; 7 uses
  %i.al = load i8, ptr %.0.i, align 1, !tbaa !20
  switch i8 %i.al, label %bb.h [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 0, label %.backedge.i
    i8 13, label %.backedge.i
    i8 10, label %.backedge.i
  ]
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh12randomsampleEPdPNS_7trifaceE:bb.a
  br i1 %i.cd, label %.lr.ph112, label %._crit_edge113.split

.lr.ph112:                                        ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !276
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %.not85100 = icmp slt i64 %i.ca, 0
  %i.ch = add nsw i64 %i.bz, -1
  %i.ci = zext i32 %i.bv to i64                   ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 68736 ; 5 uses
  %i.ck = icmp ugt i32 %i.bv, 714024
  %i.cl = udiv i32 %i.bv, 714025
  %.zext14.i93 = zext nneg i32 %i.cl to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not85100, label %._crit_edge113.split, label %.lr.ph112.split

.lr.ph112.split:                                  ; preds = %.lr.ph112
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !278
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %.promoted134 = load i64, ptr %i.cj, align 8
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph112.split, %._crit_edge105
  %.promoted133135 = phi i64 [ %.promoted134, %.lr.ph112.split ], [ %.promoted133136, %._crit_edge105 ] ; 2 uses
  %.079110 = phi ptr [ %.079107, %.lr.ph112.split ], [ %.079, %._crit_edge105 ] ; 2 uses
  %.1109 = phi double [ %.0, %.lr.ph112.split ], [ %.us-phi, %._crit_edge105 ] ; 2 uses
  %.077108 = phi i64 [ 0, %.lr.ph112.split ], [ %i.fs, %._crit_edge105 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.079110, i64 8
  %i.ct = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cu = add i64 %i.cg, %i.ct
  %i.cv = urem i64 %i.ct, %i.cg
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = inttoptr i64 %i.cw to ptr               ; 2 uses
  %i.cy = icmp ne i64 %.077108, %i.ch             ; 2 uses
  %i.cz = mul i64 %.077108, %i.ci
  %i.da = sub i64 %i.bs, %i.cz                    ; 2 uses
  %i.db = trunc i64 %i.da to i32                  ; 3 uses
  %i.dc = icmp ugt i32 %i.db, 714024
  %i.dd = and i64 %i.da, 4294967295               ; 2 uses
  %i.de = udiv i32 %i.db, 714025
  %.zext14.i = zext nneg i32 %i.de to i64
  %i.df = sext i1 %i.cy to i64                    ; 2 uses
  br i1 %i.cy, label %.lr.ph104.split.us, label %.lr.ph104.split

.lr.ph104.split.us:                               ; preds = %.lr.ph104, %bb.p
  %i.dg = phi i64 [ %i.dr, %bb.p ], [ %.promoted133135, %.lr.ph104 ]
  %.2102.us = phi double [ %.3.us, %bb.p ], [ %.1109, %.lr.ph104 ] ; 3 uses
  %.075101.us = phi i64 [ %i.el, %bb.p ], [ 0, %.lr.ph104 ] ; 3 uses
  %i.dh = mul i64 %i.dg, 1366
  %i.di = add i64 %i.dh, 150889
  %i.dj = urem i64 %i.di, 714025                  ; 5 uses
  br i1 %i.ck, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph104.split.us
  store i64 %i.dj, ptr %i.cj, align 8, !tbaa !552
  %.lhs.trunc15.i88.us = trunc nuw nsw i64 %i.dj to i32
  %i.dk = urem i32 %.lhs.trunc15.i88.us, %i.bv
  %.zext16.i89.us = zext nneg i32 %i.dk to i64
  br label %_ZN10tetgenmesh12randomnationEj.exit.us

bb.l:                                             ; preds = %.lr.ph104.split.us
  %i.dl = trunc nuw nsw i64 %i.dj to i32
  %i.dm = mul nuw nsw i32 %i.dl, 1366
  %.lhs.trunc.i91.us = add nuw nsw i32 %i.dm, 150889
  %i.dn = urem i32 %.lhs.trunc.i91.us, 714025
  %.zext.i92.us = zext nneg i32 %i.dn to i64      ; 3 uses
  store i64 %.zext.i92.us, ptr %i.cj, align 8, !tbaa !552
  %i.do = mul nuw nsw i64 %i.dj, %.zext14.i93
  %i.dp = add nuw nsw i64 %i.do, %.zext.i92.us    ; 2 uses
  %.not.i94.us = icmp samesign ult i64 %i.dp, %i.ci
  %i.dq = select i1 %.not.i94.us, i64 0, i64 %i.ci
  %spec.select.i95.us = sub nuw nsw i64 %i.dp, %i.dq
  br label %_ZN10tetgenmesh12randomnationEj.exit.us

_ZN10tetgenmesh12randomnationEj.exit.us:          ; preds = %bb.l, %bb.k
  %i.dr = phi i64 [ %i.dj, %bb.k ], [ %.zext.i92.us, %bb.l ] ; 2 uses
  %.078.us = phi i64 [ %.zext16.i89.us, %bb.k ], [ %spec.select.i95.us, %bb.l ]
  %i.ds = mul nsw i64 %.078.us, %i.cr
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !306 ; 4 uses
  %.not86.us = icmp eq ptr %i.dv, null
  br i1 %.not86.us, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN10tetgenmesh12randomnationEj.exit.us
  %i.dw = load double, ptr %1, align 8, !tbaa !30
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !30
  %i.dy = fsub double %i.dw, %i.dx                ; 2 uses
  %i.dz = load double, ptr %i.cm, align 8, !tbaa !30
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = fsub double %i.dz, %i.eb                ; 2 uses
  %i.ed = fmul double %i.ec, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.ed)
  %i.ef = load double, ptr %i.cn, align 8, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !30
  %i.ei = fsub double %i.ef, %i.eh                ; 2 uses
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.ee) ; 2 uses
  %i.ek = fcmp olt double %i.ej, %.2102.us
  br i1 %i.ek, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr %i.dt, ptr %2, align 8, !tbaa !330
  store i32 11, ptr %i.co, align 8, !tbaa !335
  br label %bb.p

bb.o:                                             ; preds = %_ZN10tetgenmesh12randomnationEj.exit.us
  %spec.select.us = add nsw i64 %.075101.us, %i.df
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.176.us = phi i64 [ %.075101.us, %bb.n ], [ %.075101.us, %bb.m ], [ %spec.select.us, %bb.o ] ; 2 uses
  %.3.us = phi double [ %i.ej, %bb.n ], [ %.2102.us, %bb.m ], [ %.2102.us, %bb.o ] ; 2 uses
  %i.el = add nsw i64 %.176.us, 1
  %.not85.us.not = icmp slt i64 %.176.us, %i.ca
  br i1 %.not85.us.not, label %.lr.ph104.split.us, label %._crit_edge105, !llvm.loop !574

.lr.ph104.split:                                  ; preds = %.lr.ph104, %bb.v
  %i.em = phi i64 [ %i.ex, %bb.v ], [ %.promoted133135, %.lr.ph104 ]
  %.2102 = phi double [ %.3, %bb.v ], [ %.1109, %.lr.ph104 ] ; 3 uses
  %.075101 = phi i64 [ %i.fr, %bb.v ], [ 0, %.lr.ph104 ] ; 3 uses
  %i.en = mul i64 %i.em, 1366
  %i.eo = add i64 %i.en, 150889
  %i.ep = urem i64 %i.eo, 714025                  ; 5 uses
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph104.split
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = mul nuw nsw i32 %i.eq, 1366
  %.lhs.trunc.i = add nuw nsw i32 %i.er, 150889
  %i.es = urem i32 %.lhs.trunc.i, 714025
  %.zext.i = zext nneg i32 %i.es to i64           ; 3 uses
  store i64 %.zext.i, ptr %i.cj, align 8, !tbaa !552
  %i.et = mul nuw nsw i64 %i.ep, %.zext14.i
  %i.eu = add nuw nsw i64 %i.et, %.zext.i         ; 2 uses
  %.not.i = icmp samesign ult i64 %i.eu, %i.dd
  %i.ev = select i1 %.not.i, i64 0, i64 %i.dd
  %spec.select.i = sub nuw nsw i64 %i.eu, %i.ev
  br label %_ZN10tetgenmesh12randomnationEj.exit

bb.r:                                             ; preds = %.lr.ph104.split
  store i64 %i.ep, ptr %i.cj, align 8, !tbaa !552
  %.lhs.trunc15.i = trunc nuw nsw i64 %i.ep to i32
  %i.ew = urem i32 %.lhs.trunc15.i, %i.db
  %.zext16.i = zext nneg i32 %i.ew to i64
  br label %_ZN10tetgenmesh12randomnationEj.exit

_ZN10tetgenmesh12randomnationEj.exit:             ; preds = %bb.r, %bb.q
  %i.ex = phi i64 [ %i.ep, %bb.r ], [ %.zext.i, %bb.q ] ; 2 uses
  %.078 = phi i64 [ %.zext16.i, %bb.r ], [ %spec.select.i, %bb.q ]
  %i.ey = mul nsw i64 %.078, %i.cr
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !306 ; 4 uses
  %.not86 = icmp eq ptr %i.fb, null
  br i1 %.not86, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN10tetgenmesh12randomnationEj.exit
  %i.fc = load double, ptr %1, align 8, !tbaa !30
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !30
  %i.fe = fsub double %i.fc, %i.fd                ; 2 uses
  %i.ff = load double, ptr %i.cm, align 8, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !30
  %i.fi = fsub double %i.ff, %i.fh                ; 2 uses
  %i.fj = fmul double %i.fi, %i.fi
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fe, double %i.fj)
  %i.fl = load double, ptr %i.cn, align 8, !tbaa !30
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !30
  %i.fo = fsub double %i.fl, %i.fn                ; 2 uses
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double %i.fk) ; 2 uses
  %i.fq = fcmp olt double %i.fp, %.2102
  br i1 %i.fq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  store ptr %i.ez, ptr %2, align 8, !tbaa !330
  store i32 11, ptr %i.co, align 8, !tbaa !335
  br label %bb.v

bb.u:                                             ; preds = %_ZN10tetgenmesh12randomnationEj.exit
  %spec.select = add nsw i64 %.075101, %i.df
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.176 = phi i64 [ %.075101, %bb.t ], [ %.075101, %bb.s ], [ %spec.select, %bb.u ] ; 2 uses
  %.3 = phi double [ %i.fp, %bb.t ], [ %.2102, %bb.s ], [ %.2102, %bb.u ] ; 2 uses
  %i.fr = add nsw i64 %.176, 1
  %.not85.not = icmp slt i64 %.176, %i.ca
  br i1 %.not85.not, label %.lr.ph104.split, label %._crit_edge105, !llvm.loop !574

._crit_edge105:                                   ; preds = %bb.v, %bb.p
  %.promoted133136 = phi i64 [ %i.dr, %bb.p ], [ %i.ex, %bb.v ]
  %.us-phi = phi double [ %.3.us, %bb.p ], [ %.3, %bb.v ]
  %i.fs = add nuw nsw i64 %.077108, 1             ; 2 uses
  %.079 = load ptr, ptr %.079110, align 8, !tbaa !125
  %3 = icmp slt i64 %i.fs, %spec.store.select
  br i1 %3, label %.lr.ph104, label %._crit_edge113.split, !llvm.loop !575

._crit_edge113.split:                             ; preds = %._crit_edge105, %.lr.ph112, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, 9) i32 @_ZN10tetgenmesh6locateEPdPNS_7trifaceEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((8, 12)) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !330    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !576  ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !330
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !306
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !349
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !306
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -16
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %2, align 8, !tbaa !330
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 17 uses
  store i32 0, ptr %i.p, align 8, !tbaa !335
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %storemerge125 = phi i32 [ 0, %bb.e ], [ %i.aj, %bb.g ]
  %i.q = load ptr, ptr %2, align 8, !tbaa !330    ; 3 uses
  %i.r = sext i32 %storemerge125 to i64           ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !306  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.r
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !306 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.r
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !306 ; 2 uses
  %i.ah = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.w, ptr noundef %i.ab, ptr noundef %i.ag, ptr noundef %1)
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  %.pr = load i32, ptr %i.p, align 8, !tbaa !335  ; 3 uses
  br i1 %i.ai, label %.loopexit109, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %.pr, 1                     ; 3 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !335
  %i.ak = icmp slt i32 %.pr, 3
  br i1 %i.ak, label %bb.f, label %.loopexit109, !llvm.loop !577

.loopexit109:                                     ; preds = %bb.g, %bb.f
  %i.al = phi i32 [ %.pr, %bb.f ], [ %i.aj, %bb.g ] ; 2 uses
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.h, label %.preheader

.preheader:                                       ; preds = %.loopexit109
  %i.an = load ptr, ptr %2, align 8, !tbaa !330
  %i.ao = sext i32 %i.al to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !33
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !306 ; 2 uses
  %i.au = icmp eq ptr %i.at, %1
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 68736 ; 6 uses
  %.not90 = icmp eq i32 %3, 0
  br label %bb.i

bb.h:                                             ; preds = %.loopexit109
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.aw, align 16, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

._crit_edge:                                      ; preds = %bb.ae, %.preheader
  %.lcssa = phi i64 [ %i.ao, %.preheader ], [ %i.el, %bb.ae ]
  %i.ax = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %.lcssa
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33 ; 2 uses
  store i32 %i.ay, ptr %i.p, align 8, !tbaa !335
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !33
  store i32 %i.bb, ptr %i.p, align 8, !tbaa !335
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph, %bb.ae
  %i.bc = phi ptr [ %i.at, %.lr.ph ], [ %i.eq, %bb.ae ] ; 3 uses
  %.2128 = phi ptr [ %i.ag, %.lr.ph ], [ %i.ek, %bb.ae ] ; 2 uses
  %.277127 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ef, %bb.ae ] ; 2 uses
  %.280126 = phi ptr [ %i.w, %.lr.ph ], [ %i.ea, %bb.ae ] ; 2 uses
  %i.bd = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.277127, ptr noundef %.2128, ptr noundef %i.bc, ptr noundef %1) ; 2 uses
  %i.be = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.2128, ptr noundef %.280126, ptr noundef %i.bc, ptr noundef %1) ; 3 uses
  %i.bf = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.280126, ptr noundef %.277127, ptr noundef %i.bc, ptr noundef %1) ; 5 uses
  %i.bg = fcmp olt double %i.bd, 0.000000e+00
  %i.bh = fcmp olt double %i.be, 0.000000e+00     ; 2 uses
  %i.bi = fcmp olt double %i.bf, 0.000000e+00     ; 4 uses
  br i1 %i.bg, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %i.bh, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !552
  %i.bk = mul i64 %i.bj, 1366
  %i.bl = add i64 %i.bk, 150889
  %i.bm = urem i64 %i.bl, 714025                  ; 3 uses
  store i64 %i.bm, ptr %i.av, align 8, !tbaa !552
  br i1 %i.bi, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  %.lhs.trunc15.i = trunc nuw nsw i64 %i.bm to i32
  %i.bn = urem i32 %.lhs.trunc15.i, 3             ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.bn, 1
  %switch.select = select i1 %switch.selectcmp, ptr @_ZN10tetgenmesh12eprevesymtblE, ptr @_ZN10tetgenmesh7esymtblE
  %switch.selectcmp174 = icmp eq i32 %i.bn, 0
  %switch.select175 = select i1 %switch.selectcmp174, ptr @_ZN10tetgenmesh12enextesymtblE, ptr %switch.select
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  br i1 %i.bi, label %.split, label %.critedge

.split:                                           ; preds = %bb.m
  %i.bo = load i64, ptr %i.av, align 8, !tbaa !552
  %i.bp = mul i64 %i.bo, 1366
  %i.bq = add i64 %i.bp, 150889
  %i.br = urem i64 %i.bq, 714025                  ; 2 uses
  store i64 %i.br, ptr %i.av, align 8, !tbaa !552
  %.not88 = trunc i64 %i.br to i1
  br i1 %.not88, label %.critedge, label %.thread104

bb.n:                                             ; preds = %bb.i
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.bi, label %.thread, label %.thread.thread

bb.p:                                             ; preds = %bb.n
  br i1 %i.bi, label %.thread104, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = fcmp oeq double %i.bd, 0.000000e+00
  br i1 %i.bs, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !335
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh12enextesymtblE, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !33 ; 3 uses
  store i32 %i.bw, ptr %i.p, align 8, !tbaa !335
  %i.bx = fcmp oeq double %i.be, 0.000000e+00
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33
  store i32 %i.ca, ptr %i.p, align 8, !tbaa !335
  %i.cb = fcmp oeq double %i.bf, 0.000000e+00
  %.96 = select i1 %i.cb, i32 5, i32 4
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.cc = fcmp oeq double %i.bf, 0.000000e+00
  br i1 %i.cc, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cd = sext i32 %i.bw to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !33
  store i32 %i.cf, ptr %i.p, align 8, !tbaa !335
  br label %.loopexit

bb.v:                                             ; preds = %bb.q
  %i.cg = fcmp oeq double %i.be, 0.000000e+00
  br i1 %i.cg, label %bb.w, label %bb.y

end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh8outedgesEP8tetgenio:bb.a
  store i32 %i.vc, ptr %i.vd, align 4, !tbaa !33
  %i.ve = load i32, ptr %i.qv, align 4, !tbaa !33
  %i.vf = sext i32 %i.ve to i64                   ; 2 uses
  %i.vg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.vf
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !33
  %i.vi = add nsw i32 %i.vh, %i.uv
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %.0131, i64 %i.vj
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !33
  %i.vm = getelementptr [4 x i8], ptr %i.oj, i64 %i.ux
  %i.vn = getelementptr i8, ptr %i.vm, i64 4
  store i32 %i.vl, ptr %i.vn, align 4, !tbaa !33
  %i.vo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.vf
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !33
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !33
  %i.vt = add nsw i32 %i.vs, %i.uv
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %.0131, i64 %i.vu
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !33
  %i.vx = getelementptr [4 x i8], ptr %i.oj, i64 %i.ux
  %i.vy = getelementptr i8, ptr %i.vx, i64 8
  store i32 %i.vw, ptr %i.vy, align 4, !tbaa !33
  %i.vz = add nsw i32 %.2.1, 1
  %.pre372.pre = load i32, ptr %i.rb, align 8, !tbaa !33
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pre372 = phi i32 [ %.pre372.pre, %bb.bu ], [ %.pre371.a, %bb.bt ] ; 2 uses
  %.2.2 = phi i32 [ %i.vz, %bb.bu ], [ %.2.1, %bb.bt ] ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %storemerge175335, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !306
  %i.wc = ptrtoint ptr %i.wb to i64
  %i.wd = and i64 %i.wc, -16
  %i.we = inttoptr i64 %i.wd to ptr               ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 56
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !306
  %i.wh = icmp eq ptr %i.wg, %i.qi
  br i1 %i.wh, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wi = getelementptr inbounds nuw i8, ptr %i.we, i64 80
  %i.wj = load i32, ptr %i.wi, align 16, !tbaa !33
  %i.wk = icmp slt i32 %.pre372, %i.wj
  br i1 %i.wk, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.wl = sub nsw i32 %.pre372, %spec.select473
  %i.wm = mul nsw i32 %i.wl, 6                    ; 3 uses
  %i.wn = mul nsw i32 %.2.2, 3
  %i.wo = sext i32 %i.wn to i64                   ; 3 uses
  %i.wp = load i32, ptr %i.qy, align 4, !tbaa !33
  %i.wq = add nsw i32 %i.wp, %i.wm
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %.0131, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !33
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.wo
  store i32 %i.wt, ptr %i.wu, align 4, !tbaa !33
  %i.wv = load i32, ptr %i.qz, align 4, !tbaa !33
  %i.ww = sext i32 %i.wv to i64                   ; 2 uses
  %i.wx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.ww
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !33
  %i.wz = add nsw i32 %i.wy, %i.wm
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %.0131, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !33
  %i.xd = getelementptr [4 x i8], ptr %i.oj, i64 %i.wo
  %i.xe = getelementptr i8, ptr %i.xd, i64 4
  store i32 %i.xc, ptr %i.xe, align 4, !tbaa !33
  %i.xf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.ww
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !33
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.xh
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !33
  %i.xk = add nsw i32 %i.xj, %i.wm
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [4 x i8], ptr %.0131, i64 %i.xl
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !33
  %i.xo = getelementptr [4 x i8], ptr %i.oj, i64 %i.wo
  %i.xp = getelementptr i8, ptr %i.xo, i64 8
  store i32 %i.xn, ptr %i.xp, align 4, !tbaa !33
  %i.xq = add nsw i32 %.2.2, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.2.3 = phi i32 [ %i.xq, %bb.bx ], [ %.2.2, %bb.bw ]
  %i.xr = icmp eq ptr %.promoted.i210, %i.pa
  br i1 %i.xr, label %._crit_edge337, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %bb.by
  %i.xs = load i32, ptr %i.qj, align 4, !tbaa !279
  %i.xt = sext i32 %i.xs to i64
  %i.xu = load ptr, ptr %i.qh, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %.critedge.backedge.i217, %.lr.ph.i211
  %i.xv = phi ptr [ %i.ra, %.lr.ph.i211 ], [ %i.yg, %.critedge.backedge.i217 ] ; 2 uses
  %i.xw = phi i32 [ %.promoted10.i212, %.lr.ph.i211 ], [ %i.ym, %.critedge.backedge.i217 ] ; 2 uses
  %i.xx = phi ptr [ %.promoted.i210, %.lr.ph.i211 ], [ %i.yl, %.critedge.backedge.i217 ]
  %i.xy = icmp eq i32 %i.xw, 0
  br i1 %i.xy, label %bb.ca, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i213

bb.ca:                                            ; preds = %bb.bz
  %i.xz = load ptr, ptr %i.xv, align 8, !tbaa !125 ; 3 uses
  store ptr %i.xz, ptr %i.ol, align 8, !tbaa !289
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = ptrtoint ptr %i.ya to i64               ; 2 uses
  %i.yc = add i64 %i.oq, %i.yb
  %i.yd = urem i64 %i.yb, %i.oq
  %i.ye = sub i64 %i.yc, %i.yd
  %i.yf = inttoptr i64 %i.ye to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i213

_ZN10tetgenmesh10memorypool8traverseEv.exit.i213: ; preds = %bb.ca, %bb.bz
  %i.yg = phi ptr [ %i.xz, %bb.ca ], [ %i.xv, %bb.bz ] ; 2 uses
  %i.yh = phi i32 [ %i.ox, %bb.ca ], [ %i.xw, %bb.bz ]
  %i.yi = phi ptr [ %i.yf, %bb.ca ], [ %i.xx, %bb.bz ] ; 5 uses
  %i.yj = ptrtoint ptr %i.yi to i64
  %i.yk = add i64 %i.yj, %i.xt
  %i.yl = inttoptr i64 %i.yk to ptr               ; 4 uses
  store ptr %i.yl, ptr %i.ov, align 8, !tbaa !290
  %i.ym = add nsw i32 %i.yh, -1                   ; 5 uses
  %i.yn = icmp eq ptr %i.yi, null
  br i1 %i.yn, label %._crit_edge337.sink.split, label %bb.cb

bb.cb:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i213
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yi, i64 32
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !306
  %i.yq = icmp eq ptr %i.yp, null
  br i1 %i.yq, label %.critedge.backedge.i217, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yi, i64 56
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !306
  %i.yt = icmp eq ptr %i.ys, %i.xu
  br i1 %i.yt, label %.critedge.backedge.i217, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit218

.critedge.backedge.i217:                          ; preds = %bb.cc, %bb.cb
  %i.yu = icmp eq ptr %i.pa, %i.yl
  br i1 %i.yu, label %._crit_edge337.sink.split, label %bb.bz, !llvm.loop !328

_ZN10tetgenmesh19tetrahedrontraverseEv.exit218:   ; preds = %bb.cc
  store i32 %i.ym, ptr %i.oy, align 4, !tbaa !291
  br label %.preheader, !llvm.loop !1437

._crit_edge337.sink.split:                        ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i204, %.critedge.backedge.i208, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i213, %.critedge.backedge.i217
  %.lcssa.sink = phi i32 [ %i.ym, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i213 ], [ %i.ym, %.critedge.backedge.i217 ], [ %i.py, %.critedge.backedge.i208 ], [ %i.py, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i204 ]
  store i32 %.lcssa.sink, ptr %i.oy, align 4, !tbaa !291
  br label %._crit_edge337

._crit_edge337:                                   ; preds = %bb.by, %._crit_edge337.sink.split, %bb.bi
  br i1 %i.b, label %bb.cd, label %.thread288

bb.cd:                                            ; preds = %._crit_edge337
  %i.yv = getelementptr inbounds nuw i8, ptr %i.nq, i64 2440
  %i.yw = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.yv) #40 ; 0 uses
  %strlen177 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr178 = getelementptr inbounds i8, ptr %i.a, i64 %strlen177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr178, ptr noundef nonnull align 1 dereferenceable(5) @.str.721, i64 5, i1 false)
  %i.yx = getelementptr inbounds nuw i8, ptr %i.nq, i64 148
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !256
  %.not179 = icmp eq i32 %i.yy, 0
  br i1 %.not179, label %.thread292, label %bb.ce

.thread288:                                       ; preds = %._crit_edge337
  %i.yz = getelementptr inbounds nuw i8, ptr %i.nq, i64 148
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !256
  %.not179289 = icmp eq i32 %i.za, 0
  br i1 %.not179289, label %.thread290, label %.thread293

.thread292:                                       ; preds = %bb.cd
  %i.zb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.685, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.ce

.thread290:                                       ; preds = %.thread288
  %puts180 = call i32 @puts(ptr nonnull dereferenceable(1) @str.208) ; 0 uses
  %.pre379.pre.a = load ptr, ptr %i.c, align 8, !tbaa !292
  br label %.thread293

bb.ce:                                            ; preds = %bb.cd, %.thread292
  %i.zc = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.132) ; 2 uses
  %i.zd = icmp sgt i64 %i.od, 1
  br i1 %i.zd, label %.lr.ph, label %.thread444

.lr.ph:                                           ; preds = %bb.ce, %.lr.ph
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %.lr.ph ], [ 0, %bb.ce ] ; 3 uses
  %i.ze = load ptr, ptr %0, align 8, !tbaa !308
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !26
  %i.zg = trunc nuw nsw i64 %indvars.iv356 to i32
  %i.zh = add nsw i32 %i.zf, %i.zg
  %.idx = mul nuw nsw i64 %indvars.iv356, 12
  %i.zi = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.idx ; 3 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !33
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 4
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !33
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zi, i64 8
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !33
  %i.zo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zc, ptr noundef nonnull @.str.723, i32 noundef %i.zh, i32 noundef %i.zj, i32 noundef %i.zl, i32 noundef %i.zn) #40 ; 0 uses
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %2 = icmp sgt i64 %i.oe, %indvars.iv.next357
  br i1 %2, label %.lr.ph, label %.thread444, !llvm.loop !1438

.thread444:                                       ; preds = %.lr.ph, %bb.ce
  %i.zp = call i32 @fclose(ptr noundef %i.zc)     ; 0 uses
  call void @_ZdaPv(ptr noundef nonnull %i.oj) #42
  %.pre380.pre = load ptr, ptr %i.c, align 8, !tbaa !292
  br label %.thread294

.thread293:                                       ; preds = %.thread288, %.thread290
  %.pre379 = phi ptr [ %i.nq, %.thread288 ], [ %.pre379.pre.a, %.thread290 ]
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.oj, ptr %i.zq, align 8, !tbaa !1439
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bh
  br i1 %i.b, label %.thread294, label %bb.cg

bb.cg:                                            ; preds = %.thread293, %bb.cf
  %i.zr = phi ptr [ %.pre379, %.thread293 ], [ %i.nq, %bb.cf ]
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 148
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !256
  %.not183 = icmp eq i32 %i.zt, 0
  br i1 %.not183, label %.thread299, label %bb.ci

.thread294:                                       ; preds = %.thread444, %bb.cf
  %.pre380446 = phi ptr [ %.pre380.pre, %.thread444 ], [ %i.nq, %bb.cf ] ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.pre380446, i64 2440
  %i.zv = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.zu) #40 ; 0 uses
  %strlen181 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr182 = getelementptr inbounds i8, ptr %i.a, i64 %strlen181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr182, ptr noundef nonnull align 1 dereferenceable(5) @.str.724, i64 5, i1 false)
  %i.zw = getelementptr inbounds nuw i8, ptr %.pre380446, i64 148
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !256
  %.not183295 = icmp eq i32 %i.zx, 0
  br i1 %.not183295, label %.thread296, label %.thread298

.thread296:                                       ; preds = %.thread294
  %i.zy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.685, ptr noundef nonnull %i.a) ; 0 uses
  br label %.thread298

.thread299:                                       ; preds = %bb.cg
  %puts184 = call i32 @puts(ptr nonnull dereferenceable(1) @str.209) ; 0 uses
  br label %bb.ci

.thread298:                                       ; preds = %.thread296, %.thread294
  %i.zz = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.132) ; 3 uses
  %i.aaa = icmp sgt i64 %i.nz, 0
  br i1 %i.aaa, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %.thread298, %.lr.ph342
  %indvars.iv360 = phi i64 [ %indvars.iv.next361, %.lr.ph342 ], [ 0, %.thread298 ] ; 3 uses
  %i.aab = load ptr, ptr %0, align 8, !tbaa !308
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !26
  %i.aad = trunc nuw nsw i64 %indvars.iv360 to i32
  %i.aae = add nsw i32 %i.aac, %i.aad
  %.idx415 = mul nuw nsw i64 %indvars.iv360, 24
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0131, i64 %.idx415 ; 6 uses
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !33
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !33
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !33
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !33
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !33
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aaf, i64 20
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !33
  %i.aar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zz, ptr noundef nonnull @.str.726, i32 noundef %i.aae, i32 noundef %i.aag, i32 noundef %i.aai, i32 noundef %i.aak, i32 noundef %i.aam, i32 noundef %i.aao, i32 noundef %i.aaq) #40 ; 0 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next361, %i.nz
  br i1 %exitcond363.not, label %._crit_edge343.thread, label %.lr.ph342, !llvm.loop !1440

._crit_edge343.thread:                            ; preds = %.lr.ph342
  %i.aas = call i32 @fclose(ptr noundef %i.zz)    ; 0 uses
  br label %bb.ch

._crit_edge343:                                   ; preds = %.thread298
  %i.aat = call i32 @fclose(ptr noundef %i.zz)    ; 0 uses
  %i.aau = icmp eq ptr %.0131, null
  br i1 %i.aau, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge343.thread, %._crit_edge343
  call void @_ZdaPv(ptr noundef nonnull %.0131) #42
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg, %.thread299
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %.0131, ptr %i.aav, align 8, !tbaa !1441
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %._crit_edge343, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh14outsubsegmentsEP8tetgenio(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = icmp eq ptr %1, null                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !292  ; 4 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2440
  %i.f = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.e) #40 ; 0 uses
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr = getelementptr inbounds i8, ptr %i.a, i64 %strlen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.h = load i32, ptr %i.g, align 4, !tbaa !256
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread107, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.j = load i32, ptr %i.i, align 4, !tbaa !256
  %.not104 = icmp eq i32 %i.j, 0
  br i1 %.not104, label %.thread105, label %.thread106

.thread107:                                       ; preds = %bb.b
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.685, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

.thread105:                                       ; preds = %.thread
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.210) ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !292
  br label %.thread106

bb.c:                                             ; preds = %bb.b, %.thread107
  %i.l = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.132) ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.687, ptr noundef nonnull %i.a) ; 0 uses
  %i.o = call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 3, ptr %i.o, align 16, !tbaa !33
  call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !352
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !288
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.727, i64 noundef %i.s) #40 ; 0 uses
  %.pre128 = load ptr, ptr %i.c, align 8, !tbaa !292
  br label %bb.j

.thread106:                                       ; preds = %.thread105, %.thread
  %i.u = phi ptr [ %.pre, %.thread105 ], [ %i.d, %.thread ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !352
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !288
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !237
  %i.ab = icmp eq i32 %i.aa, 1
  %i.ac = select i1 %i.ab, i64 2, i64 3
  %i.ad = mul nsw i64 %i.ac, %i.y                 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 4611686018427387903
  %i.af = shl i64 %i.ad, 2
  %i.ag = select i1 %i.ae, i64 -1, i64 %i.af
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #41 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !36
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !237
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread106
  %i.al = load i64, ptr %i.x, align 8, !tbaa !288 ; 2 uses
  %i.am = icmp ugt i64 %i.al, 4611686018427387903
  %i.an = shl i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #41
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !1431
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread106
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !288 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 4611686018427387903
  %i.at = shl i64 %i.ar, 2
  %i.au = select i1 %i.as, i64 -1, i64 %i.at
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #41
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !225
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = load i64, ptr %i.x, align 8, !tbaa !288 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 4611686018427387903
  %i.bc = shl i64 %i.ba, 2
end_hunk_2
