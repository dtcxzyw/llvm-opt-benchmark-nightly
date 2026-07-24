inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_db_status64:bb.a
  %i.dc = add i32 %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 84
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !108
  %i.df = add i32 %i.dc, %i.de
  %i.dg = mul i32 %i.df, %i.cu
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !5
  %i.di = add i32 %i.dg, %i.dh                    ; 2 uses
  store i32 %i.di, ptr %i.a, align 4, !tbaa !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !109 ; 2 uses
  %.not.i160 = icmp eq ptr %i.dk, null
  br i1 %.not.i160, label %sqlite3_msize.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.dm = call i32 %i.dl(ptr noundef nonnull %i.dk) #59, !inline_history !110
  %.pre223 = load i32, ptr %i.a, align 4, !tbaa !5
  br label %sqlite3_msize.exit

sqlite3_msize.exit:                               ; preds = %bb.u, %bb.v
  %i.dn = phi i32 [ %.pre223, %bb.v ], [ %i.di, %bb.u ]
  %i.do = phi i32 [ %i.dm, %bb.v ], [ 0, %bb.u ]
  %i.dp = add i32 %i.dn, %i.do                    ; 2 uses
  store i32 %i.dp, ptr %i.a, align 4, !tbaa !5
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !111 ; 2 uses
  %.not.i161 = icmp eq ptr %i.dr, null
  br i1 %.not.i161, label %sqlite3_msize.exit162, label %bb.w

bb.w:                                             ; preds = %sqlite3_msize.exit
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.dt = call i32 %i.ds(ptr noundef nonnull %i.dr) #59, !inline_history !110
  %.pre224 = load i32, ptr %i.a, align 4, !tbaa !5
  br label %sqlite3_msize.exit162

sqlite3_msize.exit162:                            ; preds = %sqlite3_msize.exit, %bb.w
  %i.du = phi i32 [ %.pre224, %bb.w ], [ %i.dp, %sqlite3_msize.exit ]
  %i.dv = phi i32 [ %i.dt, %bb.w ], [ 0, %sqlite3_msize.exit ]
  %i.dw = add i32 %i.du, %i.dv                    ; 2 uses
  store i32 %i.dw, ptr %i.a, align 4, !tbaa !5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !112 ; 2 uses
  %.not.i163 = icmp eq ptr %i.dy, null
  br i1 %.not.i163, label %sqlite3_msize.exit164, label %bb.x

bb.x:                                             ; preds = %sqlite3_msize.exit162
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ea = call i32 %i.dz(ptr noundef nonnull %i.dy) #59, !inline_history !110
  %.pre225 = load i32, ptr %i.a, align 4, !tbaa !5
  br label %sqlite3_msize.exit164

sqlite3_msize.exit164:                            ; preds = %sqlite3_msize.exit162, %bb.x
  %i.eb = phi i32 [ %.pre225, %bb.x ], [ %i.dw, %sqlite3_msize.exit162 ]
  %i.ec = phi i32 [ %i.ea, %bb.x ], [ 0, %sqlite3_msize.exit162 ]
  %i.ed = add i32 %i.eb, %i.ec                    ; 2 uses
  store i32 %i.ed, ptr %i.a, align 4, !tbaa !5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !113 ; 2 uses
  %.not.i165 = icmp eq ptr %i.ef, null
  br i1 %.not.i165, label %sqlite3_msize.exit166, label %bb.y

bb.y:                                             ; preds = %sqlite3_msize.exit164
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.eh = call i32 %i.eg(ptr noundef nonnull %i.ef) #59, !inline_history !110
  %.pre226 = load i32, ptr %i.a, align 4, !tbaa !5
  br label %sqlite3_msize.exit166

sqlite3_msize.exit166:                            ; preds = %sqlite3_msize.exit164, %bb.y
  %i.ei = phi i32 [ %.pre226, %bb.y ], [ %i.ed, %sqlite3_msize.exit164 ]
  %i.ej = phi i32 [ %i.eh, %bb.y ], [ 0, %sqlite3_msize.exit164 ]
  %i.ek = add i32 %i.ei, %i.ej
  store i32 %i.ek, ptr %i.a, align 4, !tbaa !5
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %.0125196 = load ptr, ptr %i.el, align 8, !tbaa !114 ; 2 uses
  %.not145197 = icmp eq ptr %.0125196, null
  br i1 %.not145197, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %sqlite3_msize.exit166, %.lr.ph199
  %.0125198 = phi ptr [ %.0125, %.lr.ph199 ], [ %.0125196, %sqlite3_msize.exit166 ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0125198, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !115
  call fastcc void @sqlite3DeleteTrigger(ptr noundef %0, ptr noundef %i.en)
  %.0125 = load ptr, ptr %.0125198, align 8, !tbaa !114 ; 2 uses
  %.not145 = icmp eq ptr %.0125, null
  br i1 %.not145, label %._crit_edge200, label %.lr.ph199, !llvm.loop !117

._crit_edge200:                                   ; preds = %.lr.ph199, %sqlite3_msize.exit166
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.1201 = load ptr, ptr %i.eo, align 8, !tbaa !114 ; 2 uses
  %.not146202 = icmp eq ptr %.1201, null
  br i1 %.not146202, label %.loopexit, label %.lr.ph205

.lr.ph205:                                        ; preds = %._crit_edge200, %sqlite3DeleteTable.exit
  %.1203 = phi ptr [ %.1, %sqlite3DeleteTable.exit ], [ %.1201, %._crit_edge200 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1203, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !115 ; 3 uses
  %.not.i167 = icmp eq ptr %i.eq, null
  br i1 %.not.i167, label %sqlite3DeleteTable.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph205
  %i.er = load ptr, ptr %i.ch, align 8, !tbaa !98
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 44 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !118
  %i.ev = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !118
  %.not5.i = icmp eq i32 %i.ev, 0
  br i1 %.not5.i, label %bb.ab, label %sqlite3DeleteTable.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call fastcc void @deleteTable(ptr noundef nonnull %0, ptr noundef %i.eq), !inline_history !124
  br label %sqlite3DeleteTable.exit

sqlite3DeleteTable.exit:                          ; preds = %.lr.ph205, %bb.aa, %bb.ab
  %.1 = load ptr, ptr %.1203, align 8, !tbaa !114 ; 2 uses
  %.not146 = icmp eq ptr %.1, null
  br i1 %.not146, label %.loopexit, label %.lr.ph205, !llvm.loop !125

.loopexit:                                        ; preds = %sqlite3DeleteTable.exit, %._crit_edge200, %bb.t
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %i.ew = load i32, ptr %i.cl, align 8, !tbaa !60
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i64 %indvars.iv.next217, %i.ex
  br i1 %i.ey, label %bb.t, label %._crit_edge208, !llvm.loop !126

._crit_edge208:                                   ; preds = %.loopexit, %sqlite3BtreeEnterAll.exit159
  store ptr null, ptr %i.ch, align 8, !tbaa !98
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !127
  store ptr %i.fa, ptr %i.ck, align 8, !tbaa !100
  %i.fb = load i8, ptr %i.ce, align 1, !tbaa !59
  %i.fc = icmp eq i8 %i.fb, 0
  br i1 %i.fc, label %bb.ac, label %sqlite3BtreeLeaveAll.exit168

bb.ac:                                            ; preds = %._crit_edge208
  call fastcc void @btreeLeaveAll(ptr noundef nonnull readonly %0)
  br label %sqlite3BtreeLeaveAll.exit168

sqlite3BtreeLeaveAll.exit168:                     ; preds = %._crit_edge208, %bb.ac
  store i64 0, ptr %3, align 8, !tbaa !18
  %i.fd = load i32, ptr %i.a, align 4, !tbaa !5
  %i.fe = sext i32 %i.fd to i64
  store i64 %i.fe, ptr %2, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.as

bb.ad:                                            ; preds = %sqlite3_mutex_enter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  store ptr %i.b, ptr %i.ff, align 8, !tbaa !98
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !99
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !100
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0124190 = load ptr, ptr %i.fj, align 8, !tbaa !128 ; 2 uses
  %.not143191 = icmp eq ptr %.0124190, null
  br i1 %.not143191, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.ad, %.lr.ph194
  %.0124192 = phi ptr [ %.0124, %.lr.ph194 ], [ %.0124190, %bb.ad ] ; 2 uses
  call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %.0124192)
  %i.fk = getelementptr inbounds nuw i8, ptr %.0124192, i64 16
  %.0124 = load ptr, ptr %i.fk, align 8, !tbaa !128 ; 2 uses
  %.not143 = icmp eq ptr %.0124, null
  br i1 %.not143, label %._crit_edge195.loopexit, label %.lr.ph194, !llvm.loop !129

._crit_edge195.loopexit:                          ; preds = %.lr.ph194
  %.pre222 = load i32, ptr %i.b, align 4, !tbaa !5
  %i.fl = sext i32 %.pre222 to i64
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %bb.ad
  %i.fm = phi i64 [ %i.fl, %._crit_edge195.loopexit ], [ 0, %bb.ad ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !127
  store ptr %i.fo, ptr %i.fi, align 8, !tbaa !100
  store ptr null, ptr %i.ff, align 8, !tbaa !98
  store i64 0, ptr %3, align 8, !tbaa !18
  store i64 %i.fm, ptr %2, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %bb.as

bb.ae:                                            ; preds = %sqlite3_mutex_enter.exit
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %sqlite3_mutex_enter.exit, %sqlite3_mutex_enter.exit, %sqlite3_mutex_enter.exit
  %.0 = phi i32 [ 10, %bb.ae ], [ %1, %sqlite3_mutex_enter.exit ], [ %1, %sqlite3_mutex_enter.exit ], [ %1, %sqlite3_mutex_enter.exit ]
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !60 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !61
  %5 = sext i32 %.0 to i64
  %.not.i169 = icmp eq i32 %4, 0
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %sqlite3PagerCacheStat.exit
  %i.fu = phi i32 [ %i.fq, %.lr.ph ], [ %i.ge, %sqlite3PagerCacheStat.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3PagerCacheStat.exit ] ; 2 uses
  %.0180188 = phi i64 [ 0, %.lr.ph ], [ %.1181, %sqlite3PagerCacheStat.exit ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %indvars.iv
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !62 ; 2 uses
  %.not142 = icmp eq ptr %i.fx, null
  br i1 %.not142, label %sqlite3PagerCacheStat.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %.val154 = load ptr, ptr %i.fy, align 8, !tbaa !67
  %.val154.val = load ptr, ptr %.val154, align 8, !tbaa !73
  %i.fz = getelementptr [4 x i8], ptr %.val154.val, i64 %5
  %i.ga = getelementptr i8, ptr %i.fz, i64 220    ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !5
  %i.gc = zext i32 %i.gb to i64
  %i.gd = add i64 %.0180188, %i.gc                ; 2 uses
  br i1 %.not.i169, label %sqlite3PagerCacheStat.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ga, align 4, !tbaa !5
  %.pre = load i32, ptr %i.fp, align 8, !tbaa !60
  br label %sqlite3PagerCacheStat.exit

sqlite3PagerCacheStat.exit:                       ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ge = phi i32 [ %i.fu, %bb.ag ], [ %i.fu, %bb.ah ], [ %.pre, %bb.ai ] ; 2 uses
  %.1181 = phi i64 [ %.0180188, %bb.ag ], [ %i.gd, %bb.ah ], [ %i.gd, %bb.ai ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next, %i.gf
  br i1 %i.gg, label %bb.ag, label %._crit_edge, !llvm.loop !130

._crit_edge:                                      ; preds = %sqlite3PagerCacheStat.exit, %bb.af
  %.0180.lcssa = phi i64 [ 0, %bb.af ], [ %.1181, %sqlite3PagerCacheStat.exit ]
  store i64 0, ptr %3, align 8, !tbaa !18
  store i64 %.0180.lcssa, ptr %2, align 8, !tbaa !18
  br label %bb.as

bb.aj:                                            ; preds = %sqlite3_mutex_enter.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !61
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %i.gk, null
  br i1 %.not, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr i8, ptr %i.gk, i64 8
  %.val = load ptr, ptr %i.gl, align 8, !tbaa !67 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !73
  %i.gm = getelementptr i8, ptr %.val.val, i64 256 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !5
  %i.go = zext i32 %i.gn to i64
  %.not.i170 = icmp eq i32 %4, 0
  br i1 %.not.i170, label %sqlite3PagerCacheStat.exit171, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.gm, align 4, !tbaa !5
  br label %sqlite3PagerCacheStat.exit171

sqlite3PagerCacheStat.exit171:                    ; preds = %bb.ak, %bb.al
  %i.gp = getelementptr i8, ptr %.val, i64 52
  %.val157.val = load i32, ptr %i.gp, align 4, !tbaa !131
  %i.gq = sext i32 %.val157.val to i64
  %i.gr = mul nsw i64 %i.gq, %i.go
  br label %bb.am

bb.am:                                            ; preds = %sqlite3PagerCacheStat.exit171, %bb.aj
  %.0179 = phi i64 [ 0, %bb.aj ], [ %i.gr, %sqlite3PagerCacheStat.exit171 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !132
  %i.gu = add i64 %i.gt, %.0179
  %.not141 = icmp eq i32 %4, 0
  br i1 %.not141, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 0, ptr %i.gs, align 8, !tbaa !132
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i64 0, ptr %3, align 8, !tbaa !18
  store i64 %i.gu, ptr %2, align 8, !tbaa !18
  br label %bb.as

bb.ap:                                            ; preds = %sqlite3_mutex_enter.exit
  store i64 0, ptr %3, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !133
  %i.gx = icmp sgt i64 %i.gw, 0
  br i1 %i.gx, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !134
  %i.ha = icmp sgt i64 %i.gz, 0
  %i.hb = zext i1 %i.ha to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hc = phi i64 [ 1, %bb.ap ], [ %i.hb, %bb.aq ]
  store i64 %i.hc, ptr %2, align 8, !tbaa !18
  br label %bb.as

bb.as:                                            ; preds = %sqlite3LookasideUsed.exit, %bb.g, %bb.f, %sqlite3_mutex_enter.exit, %bb.h, %bb.i, %bb.ar, %bb.ao, %._crit_edge, %._crit_edge195, %sqlite3BtreeLeaveAll.exit168, %sqlite3BtreeLeaveAll.exit
  %.0122 = phi i32 [ 0, %bb.ar ], [ 1, %sqlite3_mutex_enter.exit ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %sqlite3BtreeLeaveAll.exit ], [ 0, %sqlite3BtreeLeaveAll.exit168 ], [ 0, %._crit_edge195 ], [ 0, %._crit_edge ], [ 0, %bb.ao ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %sqlite3LookasideUsed.exit ]
  %i.hd = load ptr, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %.not.i172 = icmp eq ptr %i.hd, null
  br i1 %.not.i172, label %sqlite3_mutex_leave.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.he(ptr noundef nonnull %i.hd) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.as, %bb.at
  ret i32 %.0122
}

; Function Attrs: nounwind uwtable
define hidden range(i64 -2147483648, 2147483648) i64 @sqlite3_msize(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.b = tail call i32 %i.a(ptr noundef nonnull %0) #59
  %i.c = sext i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3DeleteTrigger(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.c = load i8, ptr %i.b, align 2, !tbaa !135
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !140
  tail call fastcc void @sqlite3DeleteTriggerStep(ptr noundef %0, ptr noundef %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !141    ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3DbFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %i.f)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142  ; 2 uses
  %.not.i14 = icmp eq ptr %i.h, null
  br i1 %.not.i14, label %sqlite3DbFree.exit15, label %bb.e

bb.e:                                             ; preds = %sqlite3DbFree.exit
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %i.h)
  br label %sqlite3DbFree.exit15

sqlite3DbFree.exit15:                             ; preds = %sqlite3DbFree.exit, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143  ; 2 uses
  %.not.i16 = icmp eq ptr %i.j, null
  br i1 %.not.i16, label %sqlite3DbFree.exit18, label %bb.f

bb.f:                                             ; preds = %sqlite3DbFree.exit15
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %0, ptr noundef %i.j), !inline_history !144
  br label %sqlite3DbFree.exit18

sqlite3DbFree.exit18:                             ; preds = %sqlite3DbFree.exit15, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !145
  tail call fastcc void @sqlite3IdListDelete(ptr noundef %0, ptr noundef %i.l)
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %sqlite3DbFree.exit18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeDelete(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !146    ; 32 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
end_hunk_0
begin_hunk_1_@pagerWalFrames:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  store i8 %i.fo, ptr %i.fp, align 2, !tbaa !227
  %i.fq = trunc i32 %i.ev to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 31
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !227
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store i32 %i.bl, ptr %i.fs, align 8, !tbaa !2223
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bi, i64 85
  store i8 0, ptr %i.ft, align 1, !tbaa !2242
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store i32 %i.er, ptr %i.fu, align 8, !tbaa !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bi, i64 100
  store i32 %i.ev, ptr %i.fv, align 4, !tbaa !5
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bi, i64 67
  store i8 1, ptr %i.fw, align 1, !tbaa !2038
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !2194 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !473
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !681
  %i.gc = call i32 %i.gb(ptr noundef nonnull %i.fy, ptr noundef nonnull %i.e, i32 noundef 32, i64 noundef 0) #59, !inline_history !2311 ; 2 uses
  %.not208.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not208.i.i, label %bb.o, label %.thread.i.i

bb.o:                                             ; preds = %.preheader96.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bi, i64 68
  %i.ge = load i8, ptr %i.gd, align 4, !tbaa !2266
  %.not209.i.i = icmp eq i8 %i.ge, 0
  br i1 %.not209.i.i, label %sqlite3OsSync.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gf = lshr i32 %i.bo, 2
  %i.gg = and i32 %i.gf, 3                        ; 2 uses
  %.not.i233.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i233.i.i, label %sqlite3OsSync.exit.thread.i.i, label %sqlite3OsSync.exit.i.i

sqlite3OsSync.exit.i.i:                           ; preds = %bb.p
  %i.gh = load ptr, ptr %i.fx, align 8, !tbaa !2194 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !473
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !733
  %i.gl = call i32 %i.gk(ptr noundef nonnull %i.gh, i32 noundef range(i32 0, 256) %i.gg) #59, !inline_history !2312 ; 2 uses
  %.not210.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not210.i.i, label %sqlite3OsSync.exit.thread.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %sqlite3OsSync.exit.i.i, %.preheader96.i.i.i
  %.0151.ph.i.i = phi i32 [ %i.gl, %sqlite3OsSync.exit.i.i ], [ %i.gc, %.preheader96.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  br label %sqlite3WalFrames.exit.thread

sqlite3OsSync.exit.thread.i.i:                    ; preds = %sqlite3OsSync.exit.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  br label %bb.q

bb.q:                                             ; preds = %sqlite3OsSync.exit.thread.i.i, %bb.l
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !2223
  %.not211.i.i = icmp eq i32 %i.gn, %i.bl
  br i1 %.not211.i.i, label %.lr.ph.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 71018, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !2304
  br label %sqlite3WalFrames.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.q
  store ptr %i.bi, ptr %4, align 8, !tbaa !2313
  %i.go = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 6 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !2194 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !2315
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 0, ptr %i.gr, align 8, !tbaa !2316
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.bo, ptr %i.gs, align 8, !tbaa !2317
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.bl, ptr %i.gt, align 4, !tbaa !2318
  %i.gu = zext i32 %i.da to i64
  %i.gv = shl i64 %i.bk, 32
  %sext = add i64 %i.gv, 103079215104
  %i.gw = ashr exact i64 %sext, 32                ; 5 uses
  %i.gx = mul nsw i64 %i.gw, %i.gu
  %i.gy = add nsw i64 %i.gx, 32
  %.not223.i.i = icmp eq i32 %.0179.i.i, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bi, i64 124 ; 7 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.ab, %.lr.ph.i.i
  %.0164338.i.i = phi i32 [ %i.da, %.lr.ph.i.i ], [ %.1165273.i.i, %bb.ab ] ; 2 uses
  %.0169337.i.i = phi ptr [ %.0..12355, %.lr.ph.i.i ], [ %i.ij, %bb.ab ] ; 10 uses
  %.0177336.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.1178272.i.i, %bb.ab ]
  %.0180333.i.i = phi i64 [ %i.gy, %.lr.ph.i.i ], [ %.1181271.i.i, %bb.ab ] ; 3 uses
  br i1 %.not223.i.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ha = getelementptr inbounds nuw i8, ptr %.0169337.i.i, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !523
  %i.hc = icmp ne ptr %i.hb, null
  %or.cond.i.i = or i1 %.not, %i.hc
  br i1 %or.cond.i.i, label %bb.u, label %.thread252.i.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  store i32 0, ptr %i.f, align 4, !tbaa !5
  %i.hd = getelementptr inbounds nuw i8, ptr %.0169337.i.i, i64 48
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !525
  %i.hf = call fastcc i32 @walFindFrame(ptr noundef %i.bi, i32 noundef %i.he, ptr noundef %i.f), !inline_history !2304 ; 0 uses
  %i.hg = load i32, ptr %i.f, align 4, !tbaa !5   ; 4 uses
  %.not224.i.i = icmp ult i32 %i.hg, %.0179.i.i
  br i1 %.not224.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hh = add i32 %i.hg, -1
  %i.hi = zext i32 %i.hh to i64
  %i.hj = mul nsw i64 %i.gw, %i.hi
  %i.hk = add nsw i64 %i.hj, 56
  %i.hl = load i32, ptr %i.gz, align 4, !tbaa !2037
  %i.hm = add i32 %i.hl, -1
  %or.cond228.not.i.i = icmp ult i32 %i.hm, %i.hg
  br i1 %or.cond228.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.hg, ptr %i.gz, align 4, !tbaa !2037
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hn = getelementptr inbounds nuw i8, ptr %.0169337.i.i, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !516
  %i.hp = load ptr, ptr %i.go, align 8, !tbaa !2194 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !473
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !681
  %i.ht = call i32 %i.hs(ptr noundef nonnull %i.hp, ptr noundef %i.ho, i32 noundef %i.bl, i64 noundef %i.hk) #59, !inline_history !2311 ; 2 uses
  %.not225.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not225.i.i, label %bb.aa, label %.thread276.i.i

.thread276.i.i:                                   ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br label %sqlite3WalFrames.exit.thread

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s
  br i1 %.not, label %.thread252.i.i, label %._crit_edge371.i.i

._crit_edge371.i.i:                               ; preds = %bb.z
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0169337.i.i, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !523
  %i.hu = icmp eq ptr %.pre.i.i, null
  %i.hv = select i1 %i.hu, i32 %2, i32 0
  br label %.thread252.i.i

.thread252.i.i:                                   ; preds = %._crit_edge371.i.i, %bb.z, %bb.t
  %i.hw = phi i32 [ 0, %bb.z ], [ %i.hv, %._crit_edge371.i.i ], [ %2, %bb.t ]
  %i.hx = getelementptr i8, ptr %.0169337.i.i, i64 8
  %.0169.val.i.i = load ptr, ptr %i.hx, align 8, !tbaa !516
  %i.hy = getelementptr i8, ptr %.0169337.i.i, i64 48
  %.0169.val231.i.i = load i32, ptr %i.hy, align 8, !tbaa !525
  %i.hz = call fastcc i32 @walWriteOneFrame(ptr noundef %4, ptr %.0169.val.i.i, i32 %.0169.val231.i.i, i32 noundef %i.hw, i64 noundef %.0180333.i.i), !inline_history !2304 ; 2 uses
  %.not227.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not227.i.i, label %.thread264.i.i, label %sqlite3WalFrames.exit.thread

.thread264.i.i:                                   ; preds = %.thread252.i.i
  %i.ia = add i32 %.0164338.i.i, 1
  %i.ib = add nsw i64 %.0180333.i.i, %i.gw
  %i.ic = getelementptr inbounds nuw i8, ptr %.0169337.i.i, i64 52 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !519
  %i.ie = or i16 %i.id, 64
  store i16 %i.ie, ptr %i.ic, align 4, !tbaa !519
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.if = getelementptr inbounds nuw i8, ptr %.0169337.i.i, i64 52 ; 2 uses
  %i.ig = load i16, ptr %i.if, align 4, !tbaa !519
  %i.ih = and i16 %i.ig, -65
  store i16 %i.ih, ptr %i.if, align 4, !tbaa !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #59
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread264.i.i
  %.1165273.i.i = phi i32 [ %i.ia, %.thread264.i.i ], [ %.0164338.i.i, %bb.aa ] ; 4 uses
  %.1178272.i.i = phi ptr [ %.0169337.i.i, %.thread264.i.i ], [ %.0177336.i.i, %bb.aa ] ; 4 uses
  %.1181271.i.i = phi i64 [ %i.ib, %.thread264.i.i ], [ %.0180333.i.i, %bb.aa ] ; 5 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0169337.i.i, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !523 ; 2 uses
  %.not212.i.i = icmp eq ptr %i.ij, null
  br i1 %.not212.i.i, label %._crit_edge.i.i, label %bb.s, !llvm.loop !2319

._crit_edge.i.i:                                  ; preds = %bb.ab
  br i1 %.not, label %.thread303.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.ik = load i32, ptr %i.gz, align 4, !tbaa !2037
  %.not214.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not214.i.i, label %.thread283.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.il = load i32, ptr %i.gm, align 8, !tbaa !2223 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.im = add nsw i32 %i.il, 24                   ; 3 uses
  %i.in = call i32 @sqlite3_initialize(), !inline_history !2320
  %.not.i.i234.i.i = icmp ne i32 %i.in, 0
  %i.io = icmp slt i32 %i.il, -23
  %or.cond.i.i.i.i = or i1 %i.io, %.not.i.i234.i.i
  br i1 %or.cond.i.i.i.i, label %walRewriteChecksums.exit.thread.i.i, label %sqlite3_malloc.exit.i.i.i

sqlite3_malloc.exit.i.i.i:                        ; preds = %bb.ad
  %i.ip = zext nneg i32 %i.im to i64              ; 2 uses
  %i.iq = call fastcc ptr @sqlite3Malloc(i64 noundef %i.ip), !inline_history !2320 ; 16 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %walRewriteChecksums.exit.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %sqlite3_malloc.exit.i.i.i
  %i.is = load i32, ptr %i.gz, align 4, !tbaa !2037 ; 2 uses
  %i.it = icmp eq i32 %i.is, 1
  %i.iu = add i32 %i.is, -2
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul nuw nsw i64 %i.iv, %i.ip
  %i.ix = add nuw nsw i64 %i.iw, 48
  %.038.i.i.i = select i1 %i.it, i64 24, i64 %i.ix
  %i.iy = load ptr, ptr %i.go, align 8, !tbaa !2194 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !473
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1433
  %i.jc = call i32 %i.jb(ptr noundef nonnull %i.iy, ptr noundef nonnull %i.iq, i32 noundef 8, i64 noundef %.038.i.i.i) #59, !inline_history !2321 ; 2 uses
  %i.jd = load i8, ptr %i.iq, align 1, !tbaa !227
  %i.je = zext i8 %i.jd to i32
  %i.jf = shl nuw i32 %i.je, 24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !227
  %i.ji = zext i8 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 16
  %i.jk = or disjoint i32 %i.jj, %i.jf
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !227
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 8
  %i.jp = or disjoint i32 %i.jk, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !227
  %i.js = zext i8 %i.jr to i32
  %i.jt = or disjoint i32 %i.jp, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bi, i64 96 ; 6 uses
  store i32 %i.jt, ptr %i.ju, align 8, !tbaa !5
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !227
  %i.jx = zext i8 %i.jw to i32
  %i.jy = shl nuw i32 %i.jx, 24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iq, i64 5
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !227
  %i.kb = zext i8 %i.ka to i32
  %i.kc = shl nuw nsw i32 %i.kb, 16
  %i.kd = or disjoint i32 %i.kc, %i.jy
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iq, i64 6
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !227
  %i.kg = zext i8 %i.kf to i32
  %i.kh = shl nuw nsw i32 %i.kg, 8
  %i.ki = or disjoint i32 %i.kd, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iq, i64 7
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !227
  %i.kl = zext i8 %i.kk to i32
  %i.km = or disjoint i32 %i.ki, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bi, i64 100 ; 4 uses
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !5
  %i.ko = load i32, ptr %i.gz, align 4, !tbaa !2037 ; 2 uses
  store i32 0, ptr %i.gz, align 4, !tbaa !2037
  %i.kp = icmp eq i32 %i.jc, 0
  %i.kq = icmp ule i32 %i.ko, %.1165273.i.i
  %i.kr = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %i.kr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %5 = sext i32 %i.im to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bi, i64 85
  %i.kx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph.i.i.i
  %.03744.i.i.i = phi i32 [ %i.ko, %.lr.ph.i.i.i ], [ %i.nb, %bb.ai ] ; 2 uses
  %i.lf = add i32 %.03744.i.i.i, -1
  %i.lg = zext i32 %i.lf to i64
  %i.lh = mul nsw i64 %i.lg, %5
  %i.li = add nsw i64 %i.lh, 32                   ; 2 uses
  %i.lj = load ptr, ptr %i.go, align 8, !tbaa !2194 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !473
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !1433
  %i.ln = call i32 %i.lm(ptr noundef nonnull %i.lj, ptr noundef nonnull %i.iq, i32 noundef %i.im, i64 noundef %i.li) #59, !inline_history !2321 ; 2 uses
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.ag, label %._crit_edge.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.lp = load <8 x i8>, ptr %i.iq, align 1, !tbaa !227
  store <8 x i8> %i.lp, ptr %i.a, align 16, !tbaa !227
  %i.lq = load i32, ptr %i.gz, align 4, !tbaa !2037
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %walChecksumBytes.exit.i.i.i.i, label %bb.ah

walChecksumBytes.exit.i.i.i.i:                    ; preds = %bb.ag
  %i.ls = load i64, ptr %i.kv, align 8
  store i64 %i.ls, ptr %i.kt, align 8
  %i.lt = load i8, ptr %i.kw, align 1, !tbaa !2242
  %i.lu = icmp eq i8 %i.lt, 0                     ; 3 uses
  %i.lv = zext i1 %i.lu to i32
  %i.lw = load i32, ptr %i.ju, align 8, !tbaa !5
  %i.lx = load i32, ptr %i.kn, align 4, !tbaa !5  ; 2 uses
  %i.ly = add i32 %i.lx, %i.lw
  %i.lz = load i32, ptr %i.a, align 16, !tbaa !5  ; 2 uses
  %i.ma = call i32 @llvm.bswap.i32(i32 %i.lz)
  %i.mb = load i32, ptr %i.ks, align 4            ; 2 uses
  %i.mc = call i32 @llvm.bswap.i32(i32 %i.mb)
  %.sink31.i.i.i.i = select i1 %i.lu, i32 %i.mb, i32 %i.mc
  %.pn.i.i.i.i = select i1 %i.lu, i32 %i.lz, i32 %i.ma
  %.sink30.i.i.i.i = add i32 %i.ly, %.pn.i.i.i.i  ; 2 uses
  %i.md = add i32 %.sink31.i.i.i.i, %i.lx
  %i.me = add i32 %i.md, %.sink30.i.i.i.i
  store i32 %.sink30.i.i.i.i, ptr %i.ju, align 8, !tbaa !5
  store i32 %i.me, ptr %i.kn, align 4, !tbaa !5
  %i.mf = load i32, ptr %i.gm, align 8, !tbaa !2223
  call fastcc void @walChecksumBytes(i32 noundef %i.lv, ptr noundef nonnull readonly %i.ku, i32 noundef %i.mf, ptr noundef nonnull %i.ju, ptr noundef nonnull %i.ju), !inline_history !2322
  %i.mg = load i32, ptr %i.ju, align 8, !tbaa !5  ; 4 uses
  %i.mh = lshr i32 %i.mg, 24
  %i.mi = trunc nuw i32 %i.mh to i8
  store i8 %i.mi, ptr %i.kx, align 16, !tbaa !227
  %i.mj = lshr i32 %i.mg, 16
  %i.mk = trunc i32 %i.mj to i8
  store i8 %i.mk, ptr %i.ky, align 1, !tbaa !227
  %i.ml = lshr i32 %i.mg, 8
  %i.mm = trunc i32 %i.ml to i8
  store i8 %i.mm, ptr %i.kz, align 2, !tbaa !227
  %i.mn = trunc i32 %i.mg to i8
  store i8 %i.mn, ptr %i.la, align 1, !tbaa !227
  %i.mo = load i32, ptr %i.kn, align 4, !tbaa !5  ; 4 uses
  %i.mp = lshr i32 %i.mo, 24
  %i.mq = trunc nuw i32 %i.mp to i8
  store i8 %i.mq, ptr %i.lb, align 4, !tbaa !227
  %i.mr = lshr i32 %i.mo, 16
  %i.ms = trunc i32 %i.mr to i8
  store i8 %i.ms, ptr %i.lc, align 1, !tbaa !227
  %i.mt = lshr i32 %i.mo, 8
  %i.mu = trunc i32 %i.mt to i8
  store i8 %i.mu, ptr %i.ld, align 2, !tbaa !227
  %i.mv = trunc i32 %i.mo to i8
  store i8 %i.mv, ptr %i.le, align 1, !tbaa !227
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i8 0, i64 16, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %walChecksumBytes.exit.i.i.i.i
  %i.mw = load ptr, ptr %i.go, align 8, !tbaa !2194 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !473
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !681
  %i.na = call i32 %i.mz(ptr noundef nonnull %i.mw, ptr noundef nonnull %i.a, i32 noundef 24, i64 noundef %i.li) #59, !inline_history !2323 ; 2 uses
  %i.nb = add i32 %.03744.i.i.i, 1                ; 2 uses
  %i.nc = icmp eq i32 %i.na, 0
  %i.nd = icmp ule i32 %i.nb, %.1165273.i.i
  %i.ne = and i1 %i.nd, %i.nc
  br i1 %i.ne, label %bb.af, label %._crit_edge.i.i.i, !llvm.loop !2324

._crit_edge.i.i.i:                                ; preds = %bb.ai, %bb.af, %bb.ae
  %.036.lcssa.i.i.i = phi i32 [ %i.jc, %bb.ae ], [ %i.na, %bb.ai ], [ %i.ln, %bb.af ] ; 2 uses
  %i.nf = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i42.i.i.i = icmp eq i32 %i.nf, 0
  br i1 %.not.i42.i.i.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.ng = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.nh(ptr noundef nonnull %i.ng) #59, !inline_history !2325
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.ak, %bb.aj
  %i.ni = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.nj = call i32 %i.ni(ptr noundef nonnull %i.iq) #59, !inline_history !2326
  %i.nk = sext i32 %i.nj to i64
  %i.nl = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.nm = sub nsw i64 %i.nl, %i.nk
  store i64 %i.nm, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.nn = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.no = add nsw i64 %i.nn, -1
  store i64 %i.no, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.np(ptr noundef nonnull %i.iq) #59, !inline_history !2327
  %i.nq = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i4.i.i.i.i, label %walRewriteChecksums.exit.i.i, label %bb.al

bb.al:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  %i.nr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.nr(ptr noundef nonnull %i.nq) #59, !inline_history !2328
  br label %walRewriteChecksums.exit.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i
  %i.ns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ns(ptr noundef nonnull %i.iq) #59, !inline_history !2327
  br label %walRewriteChecksums.exit.i.i

walRewriteChecksums.exit.thread.i.i:              ; preds = %sqlite3_malloc.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sqlite3WalFrames.exit.thread

walRewriteChecksums.exit.i.i:                     ; preds = %bb.am, %bb.al, %sqlite3_mutex_enter.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.not215.i.i = icmp eq i32 %.036.lcssa.i.i.i, 0
  br i1 %.not215.i.i, label %.thread283.i.i, label %sqlite3WalFrames.exit.thread

.thread283.i.i:                                   ; preds = %walRewriteChecksums.exit.i.i, %bb.ac
  %i.nt = and i32 %i.bo, 3                        ; 2 uses
  %.not216.i.i = icmp eq i32 %i.nt, 0
  br i1 %.not216.i.i, label %.thread308.i.i, label %bb.an

bb.an:                                            ; preds = %.thread283.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bi, i64 69
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !2267
  %.not217.i.i = icmp eq i8 %i.nv, 0
  br i1 %.not217.i.i, label %sqlite3OsSync.exit237.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nw = load ptr, ptr %i.go, align 8, !tbaa !2194 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !473
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 88
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !2079 ; 2 uses
  %.not.i.i235.i.i = icmp eq ptr %i.nz, null
  br i1 %.not.i.i235.i.i, label %sqlite3SectorSize.exit.i.i, label %sqlite3OsSectorSize.exit.i.i.i

sqlite3OsSectorSize.exit.i.i.i:                   ; preds = %bb.ao
  %i.oa = call i32 %i.nz(ptr noundef nonnull %i.nw) #59, !inline_history !2329
  %.fr.i.i.i = freeze i32 %i.oa                   ; 2 uses
  %i.ob = icmp slt i32 %.fr.i.i.i, 32
  %i.oc = call i32 @llvm.umin.i32(i32 %.fr.i.i.i, i32 65536)
  %spec.select.i.i.i = select i1 %i.ob, i32 512, i32 %i.oc
  %i.od = zext nneg i32 %spec.select.i.i.i to i64
  br label %sqlite3SectorSize.exit.i.i

sqlite3SectorSize.exit.i.i:                       ; preds = %sqlite3OsSectorSize.exit.i.i.i, %bb.ao
  %i.oe = phi i64 [ 4096, %bb.ao ], [ %i.od, %sqlite3OsSectorSize.exit.i.i.i ] ; 2 uses
  %i.of = add nsw i64 %i.oe, %.1181271.i.i
  %.fr218.i.i = freeze i64 %i.of
  %i.og = add i64 %.fr218.i.i, -1                 ; 2 uses
  %i.oh = srem i64 %i.og, %i.oe
  %i.oi = sub nsw i64 %i.og, %i.oh                ; 4 uses
  store i64 %i.oi, ptr %i.gr, align 8, !tbaa !2316
  %.not313.i.i = icmp eq i64 %i.oi, %.1181271.i.i
  %.not220341.i.i = icmp slt i64 %.1181271.i.i, %i.oi
  br i1 %.not220341.i.i, label %.lr.ph344.i.i, label %._crit_edge345.i.i

.lr.ph344.i.i:                                    ; preds = %sqlite3SectorSize.exit.i.i
  %i.oj = getelementptr i8, ptr %.1178272.i.i, i64 8
  %i.ok = getelementptr i8, ptr %.1178272.i.i, i64 48
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph344.i.i
  %.2182343.i.i = phi i64 [ %.1181271.i.i, %.lr.ph344.i.i ], [ %i.om, %bb.aq ] ; 2 uses
  %.0183342.i.i = phi i32 [ 0, %.lr.ph344.i.i ], [ %i.on, %bb.aq ]
  %.0177.val.i.i = load ptr, ptr %i.oj, align 8, !tbaa !516
  %.0177.val230.i.i = load i32, ptr %i.ok, align 8, !tbaa !525
  %i.ol = call fastcc i32 @walWriteOneFrame(ptr noundef %4, ptr %.0177.val.i.i, i32 %.0177.val230.i.i, i32 noundef %2, i64 noundef %.2182343.i.i), !inline_history !2304 ; 2 uses
  %.not219.i.i = icmp eq i32 %i.ol, 0
  br i1 %.not219.i.i, label %bb.aq, label %sqlite3WalFrames.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.om = add nsw i64 %.2182343.i.i, %i.gw        ; 2 uses
  %i.on = add nuw nsw i32 %.0183342.i.i, 1        ; 2 uses
  %.not220.i.i = icmp slt i64 %i.om, %i.oi
  br i1 %.not220.i.i, label %bb.ap, label %._crit_edge345.i.i, !llvm.loop !2330

._crit_edge345.i.i:                               ; preds = %bb.aq, %sqlite3SectorSize.exit.i.i
  %.0183.lcssa.i.i = phi i32 [ 0, %sqlite3SectorSize.exit.i.i ], [ %i.on, %bb.aq ] ; 2 uses
  br i1 %.not313.i.i, label %sqlite3OsSync.exit237.i.i, label %.thread308.i.i

sqlite3OsSync.exit237.i.i:                        ; preds = %._crit_edge345.i.i, %bb.an
  %.1184294.i.i = phi i32 [ %.0183.lcssa.i.i, %._crit_edge345.i.i ], [ 0, %bb.an ]
  %i.oo = load ptr, ptr %i.gp, align 8, !tbaa !473
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !733
  %i.or = call i32 %i.oq(ptr noundef nonnull %i.gp, i32 noundef range(i32 0, 256) %i.nt) #59, !inline_history !2312
end_hunk_1
begin_hunk_2_@wherePathSolver:bb.a
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !3016
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = or i64 %.176107.i, %.079134.i
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %.070108.i, 1
  %i.bj = or i64 %i.ay, %.065109.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  %.277.i = phi i64 [ %i.bh, %bb.o ], [ %.176107.i, %bb.p ], [ %.176107.i, %bb.l ], [ %.176107.i, %bb.m ] ; 2 uses
  %.171.i = phi i32 [ %.070108.i, %bb.o ], [ %i.bi, %bb.p ], [ %.070108.i, %bb.l ], [ %.070108.i, %bb.m ] ; 2 uses
  %.166.i = phi i64 [ %.065109.i, %bb.o ], [ %i.bj, %bb.p ], [ %.065109.i, %bb.l ], [ %.065109.i, %bb.m ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.064110.i, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4457 ; 2 uses
  %.not86.i = icmp eq ptr %i.bl, null
  br i1 %.not86.i, label %._crit_edge.i, label %bb.k, !llvm.loop !4460

._crit_edge.i:                                    ; preds = %bb.q, %bb.k
  %.176.lcssa.ph.i = phi i64 [ %.277.i, %bb.q ], [ %.176107.i, %bb.k ] ; 2 uses
  %.070.lcssa.ph.i = phi i32 [ %.171.i, %bb.q ], [ %.070108.i, %bb.k ]
  %.065.lcssa.ph.i = phi i64 [ %.166.i, %bb.q ], [ %.065109.i, %bb.k ]
  %i.bm = icmp slt i32 %.070.lcssa.ph.i, 3
  br i1 %i.bm, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.bn = load i8, ptr %i.n, align 4
  %i.bo = or i8 %i.bn, 32
  store i8 %i.bo, ptr %i.n, align 4
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.u, %bb.r
  %.1121.i = phi ptr [ %i.bx, %bb.u ], [ %.274149.i, %bb.r ] ; 3 uses
  %.067120.i = phi i16 [ %.168.i, %bb.u ], [ -32768, %bb.r ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1121.i, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !4309
  %i.br = zext i8 %i.bq to i64                    ; 2 uses
  %i.bs = icmp samesign ugt i64 %indvars.iv.i, %i.br
  br i1 %i.bs, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph123.i
  %i.bt = icmp samesign ult i64 %indvars.iv.i, %i.br
  br i1 %i.bt, label %._crit_edge124.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %.1121.i, i64 20
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !4303
  %spec.select.i = tail call i16 @llvm.smax.i16(i16 %i.bv, i16 %.067120.i)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph123.i
  %.168.i = phi i16 [ %.067120.i, %.lr.ph123.i ], [ %spec.select.i, %bb.t ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1121.i, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !4457 ; 2 uses
  %.not89.i = icmp eq ptr %i.bx, null
  br i1 %.not89.i, label %._crit_edge124.i, label %.lr.ph123.i, !llvm.loop !4461

._crit_edge124.i:                                 ; preds = %bb.u, %bb.s
  %.067.lcssa.ph.i = phi i16 [ %.168.i, %bb.u ], [ %.067120.i, %bb.s ]
  %i.by = tail call i16 @llvm.sadd.sat.i16(i16 %.067.lcssa.ph.i, i16 1) ; 2 uses
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.y, %._crit_edge124.i
  %.2129.i = phi ptr [ %i.cj, %bb.y ], [ %.274149.i, %._crit_edge124.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.2129.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !4306
  %i.cb = and i64 %i.ca, %.065.lcssa.ph.i
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.lr.ph131.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.2129.i, i64 52
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !4270
  %.not92.i = icmp eq i16 %i.ce, 0
  br i1 %.not92.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %.2129.i, i64 20 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !4303
  %i.ch = icmp slt i16 %i.cg, %i.by
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i16 %i.by, ptr %i.cf, align 4, !tbaa !4303
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %.lr.ph131.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.2129.i, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !4457 ; 2 uses
  %.not91.i = icmp eq ptr %i.cj, null
  br i1 %.not91.i, label %.loopexit.i, label %.lr.ph131.i, !llvm.loop !4462

.loopexit.i:                                      ; preds = %bb.j, %bb.y, %._crit_edge.i, %.critedge.i, %.preheader.i
  %.176.lcssa157.i = phi i64 [ %.075135.i, %.preheader.i ], [ %.075135.i, %.critedge.i ], [ %.176.lcssa.ph.i, %bb.y ], [ %.176.lcssa.ph.i, %._crit_edge.i ], [ %.075135.i, %bb.j ]
  %.274144156.i = phi ptr [ null, %.preheader.i ], [ null, %.critedge.i ], [ %.274149.i, %bb.y ], [ %.274149.i, %._crit_edge.i ], [ null, %bb.j ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ck = shl i64 %.079134.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ab
  br i1 %exitcond.not.i, label %computeMxChoice.exit, label %bb.h, !llvm.loop !4463

computeMxChoice.exit:                             ; preds = %bb.i, %.loopexit.i, %bb.d, %bb.e, %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cm = load i8, ptr %i.cl, align 4
  %i.cn = and i8 %i.cm, 32
  %.not93.i = icmp eq i8 %i.cn, 0
  %i.co = select i1 %.not93.i, i32 12, i32 18
  br label %bb.z

bb.z:                                             ; preds = %bb.c, %bb.b, %bb.a, %computeMxChoice.exit
  %.0270 = phi i32 [ %i.co, %computeMxChoice.exit ], [ 1, %bb.a ], [ 5, %bb.b ], [ 1, %bb.c ] ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !3625 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  %i.cs = icmp eq i16 %1, 0
  %or.cond = or i1 %i.cs, %i.cr
  br i1 %or.cond, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = load i32, ptr %i.cq, align 8, !tbaa !5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.0283 = phi i32 [ %i.ct, %bb.aa ], [ 0, %bb.z ] ; 6 uses
  %i.cu = zext i8 %i.g to i64
  %i.cv = shl nuw nsw i32 %i.h, 4
  %i.cw = add nuw nsw i32 %i.cv, 64
  %i.cx = mul nuw nsw i32 %i.cw, %.0270
  %i.cy = sext i32 %.0283 to i64
  %i.cz = shl nsw i64 %i.cy, 1                    ; 2 uses
  %i.da = trunc i64 %i.cz to i32
  %i.db = add i32 %i.cx, %i.da
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !651
  %i.dd = sext i32 %i.db to i64
  %i.de = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.dc, i64 noundef %i.dd) ; 5 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.dv, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = zext nneg i32 %.0270 to i64             ; 2 uses
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.dg ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i8 0, i64 32, i1 false)
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = shl nuw nsw i32 %.0270, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ad
  %.0272401 = phi i32 [ %i.dj, %bb.ac ], [ %i.dl, %bb.ad ] ; 2 uses
  %.0299400 = phi ptr [ %i.di, %bb.ac ], [ %i.dn, %bb.ad ] ; 2 uses
  %.0304399 = phi ptr [ %i.de, %bb.ac ], [ %i.dm, %bb.ad ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0304399, i64 24
  store ptr %.0299400, ptr %i.dk, align 8, !tbaa !4464
  %i.dl = add nsw i32 %.0272401, -1
  %i.dm = getelementptr inbounds nuw i8, ptr %.0304399, i64 32
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0299400, i64 %i.cu ; 3 uses
  %i.do = icmp samesign ugt i32 %.0272401, 1
  br i1 %i.do, label %bb.ad, label %bb.ae, !llvm.loop !4467

bb.ae:                                            ; preds = %bb.ad
  %.not330 = icmp eq i32 %.0283, 0
  br i1 %.not330, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.dq = load i16, ptr %i.dp, align 4, !tbaa !1092
  %spec.select370 = tail call i16 @llvm.smin.i16(i16 %i.dq, i16 48)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.dn, i8 0, i64 %i.cz, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !1092
  %spec.select = tail call i16 @llvm.smin.i16(i16 %i.ds, i16 48)
  %.not331 = icmp eq i8 %i.g, 0
  %i.dt = trunc i32 %.0283 to i8
  %i.du = select i1 %.not331, i8 %i.dt, i8 -1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 22
  store i8 %i.du, ptr %i.dv, align 2, !tbaa !4468
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %bb.af
  %spec.select.sink = phi i16 [ %spec.select370, %.thread ], [ %spec.select, %bb.af ]
  %.0298371 = phi ptr [ null, %.thread ], [ %i.dn, %bb.af ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i16 %spec.select.sink, ptr %i.dw, align 8, !tbaa !4469
  %.not457 = icmp eq i8 %i.g, 0                   ; 3 uses
  br i1 %.not457, label %._crit_edge456, label %.preheader380.lr.ph

.preheader380.lr.ph:                              ; preds = %bb.ag
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.eb = icmp sgt i16 %1, 10
  %i.ec = add nsw i16 %1, -10
  %i.ed = add nsw i32 %i.h, -1
  %i.ee = icmp samesign ugt i32 %.0270, 1
  %i.ef = zext i32 %i.ed to i64
  %wide.trip.count = zext i8 %i.g to i64          ; 3 uses
  %i.eg = add nsw i32 %.0270, -1                  ; 3 uses
  %xtraiter = and i32 %i.eg, 1
  %unroll_iter = and i32 %i.eg, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod46 = trunc i32 %i.eg to i1
  br label %.preheader380

.preheader380:                                    ; preds = %.preheader380.lr.ph, %._crit_edge436
  %indvars.iv = phi i64 [ 0, %.preheader380.lr.ph ], [ %indvars.iv.next, %._crit_edge436 ] ; 6 uses
  %.0276449 = phi i32 [ 0, %.preheader380.lr.ph ], [ %.1277.lcssa, %._crit_edge436 ] ; 3 uses
  %.0284448 = phi i16 [ 0, %.preheader380.lr.ph ], [ %.1285.lcssa, %._crit_edge436 ] ; 3 uses
  %.0291447 = phi i16 [ 0, %.preheader380.lr.ph ], [ %.1292.lcssa, %._crit_edge436 ] ; 3 uses
  %.0306446 = phi ptr [ %i.de, %.preheader380.lr.ph ], [ %.0307445, %._crit_edge436 ] ; 9 uses
  %.0307445 = phi ptr [ %i.dh, %.preheader380.lr.ph ], [ %.0306446, %._crit_edge436 ] ; 2 uses
  %.0308444 = phi i32 [ 1, %.preheader380.lr.ph ], [ %.0309.lcssa, %._crit_edge436 ] ; 2 uses
  %i.eh = icmp sgt i32 %.0308444, 0
  br i1 %i.eh, label %.lr.ph435, label %._crit_edge436

.lr.ph435:                                        ; preds = %.preheader380
  %i.ei = trunc i64 %indvars.iv to i16
  %i.ej = icmp eq i64 %indvars.iv, %i.ef
  %i.ek = shl nuw nsw i64 %indvars.iv, 3
  %i.el = getelementptr inbounds nuw i8, ptr %.0306446, i64 18
  %i.em = getelementptr inbounds nuw i8, ptr %.0306446, i64 16
  %i.en = load ptr, ptr %i.dx, align 8, !tbaa !4456 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %._crit_edge436, label %.lr.ph435.split

.lr.ph435.splitthread-pre-split:                  ; preds = %._crit_edge424
  %i.ep = getelementptr inbounds nuw i8, ptr %.1305430, i64 32
  %.0300415.pr = load ptr, ptr %i.dx, align 8, !tbaa !4456
  br label %.lr.ph435.split

.lr.ph435.split:                                  ; preds = %.lr.ph435, %.lr.ph435.splitthread-pre-split
  %.0300415 = phi ptr [ %.0300415.pr, %.lr.ph435.splitthread-pre-split ], [ %i.en, %.lr.ph435 ] ; 2 uses
  %.1273434 = phi i32 [ %i.op, %.lr.ph435.splitthread-pre-split ], [ 0, %.lr.ph435 ]
  %.1277433 = phi i32 [ %.2278.lcssa, %.lr.ph435.splitthread-pre-split ], [ %.0276449, %.lr.ph435 ] ; 2 uses
  %.1285432 = phi i16 [ %.2286.lcssa, %.lr.ph435.splitthread-pre-split ], [ %.0284448, %.lr.ph435 ] ; 2 uses
  %.1292431 = phi i16 [ %.2293.lcssa, %.lr.ph435.splitthread-pre-split ], [ %.0291447, %.lr.ph435 ] ; 2 uses
  %.1305430 = phi ptr [ %i.ep, %.lr.ph435.splitthread-pre-split ], [ %.0307445, %.lr.ph435 ] ; 9 uses
  %.0309429 = phi i32 [ %.1310.lcssa, %.lr.ph435.splitthread-pre-split ], [ 0, %.lr.ph435 ] ; 2 uses
  %.not340416 = icmp eq ptr %.0300415, null
  br i1 %.not340416, label %._crit_edge424, label %.lr.ph423

.lr.ph423:                                        ; preds = %.lr.ph435.split
  %i.eq = getelementptr inbounds nuw i8, ptr %.1305430, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %.1305430, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %.1305430, i64 22
  %i.et = getelementptr inbounds nuw i8, ptr %.1305430, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.1305430, i64 24
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph423, %.loopexit
  %.0300421 = phi ptr [ %.0300415, %.lr.ph423 ], [ %.0300, %.loopexit ] ; 10 uses
  %.2278420 = phi i32 [ %.1277433, %.lr.ph423 ], [ %.6, %.loopexit ] ; 11 uses
  %.2286419 = phi i16 [ %.1285432, %.lr.ph423 ], [ %.6290, %.loopexit ] ; 12 uses
  %.2293418 = phi i16 [ %.1292431, %.lr.ph423 ], [ %.6297, %.loopexit ] ; 11 uses
  %.1310417 = phi i32 [ %.0309429, %.lr.ph423 ], [ %.4313, %.loopexit ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.ev = load i64, ptr %.0300421, align 8, !tbaa !4459
  %i.ew = load i64, ptr %.1305430, align 8, !tbaa !4470 ; 3 uses
  %i.ex = xor i64 %i.ew, -1
  %i.ey = and i64 %i.ev, %i.ex
  %.not341 = icmp eq i64 %i.ey, 0
  br i1 %.not341, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.ez = getelementptr inbounds nuw i8, ptr %.0300421, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !4306 ; 2 uses
  %i.fb = and i64 %i.fa, %i.ew
  %.not342 = icmp eq i64 %i.fb, 0
  br i1 %.not342, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %.0300421, i64 48
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !4272
  %i.fe = and i32 %i.fd, 16384
  %.not343 = icmp ne i32 %i.fe, 0
  %.pre = load i16, ptr %i.eq, align 8, !tbaa !4469 ; 3 uses
  %i.ff = icmp slt i16 %.pre, 3
  %or.cond553 = select i1 %.not343, i1 %i.ff, i1 false
  br i1 %or.cond553, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds nuw i8, ptr %.0300421, i64 20
  %i.fh = load i16, ptr %i.fg, align 4, !tbaa !4303
  %i.fi = add i16 %.pre, %i.fh                    ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0300421, i64 18
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !4471 ; 6 uses
  %.not344 = icmp eq i16 %i.fk, 0
  br i1 %.not344, label %sqlite3LogEstAdd.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fl = sext i16 %i.fk to i32                   ; 6 uses
  %i.fm = sext i16 %i.fi to i32                   ; 6 uses
  %.not.i358 = icmp slt i16 %i.fk, %i.fi
  br i1 %.not.i358, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fn = add nsw i32 %i.fm, 49
  %i.fo = icmp slt i32 %i.fn, %i.fl
  br i1 %i.fo, label %sqlite3LogEstAdd.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = add nsw i32 %i.fm, 31
  %i.fq = icmp slt i32 %i.fp, %i.fl
  br i1 %i.fq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fr = add i16 %i.fk, 1
  br label %sqlite3LogEstAdd.exit

bb.ap:                                            ; preds = %bb.an
  %i.fs = sub nsw i32 %i.fl, %i.fm
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !227
  %i.fw = zext i8 %i.fv to i16
  %i.fx = add i16 %i.fk, %i.fw
  br label %sqlite3LogEstAdd.exit

bb.aq:                                            ; preds = %bb.al
  %i.fy = add nsw i32 %i.fl, 49
  %i.fz = icmp slt i32 %i.fy, %i.fm
  br i1 %i.fz, label %sqlite3LogEstAdd.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ga = add nsw i32 %i.fl, 31
  %i.gb = icmp slt i32 %i.ga, %i.fm
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gc = add i16 %i.fi, 1
  br label %sqlite3LogEstAdd.exit

bb.at:                                            ; preds = %bb.ar
  %i.gd = sub nsw i32 %i.fm, %i.fl
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !227
  %i.gh = zext i8 %i.gg to i16
  %i.gi = add i16 %i.fi, %i.gh
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.0280 = phi i16 [ %i.fi, %bb.ak ], [ %i.gi, %bb.at ], [ %i.fr, %bb.ao ], [ %i.fx, %bb.ap ], [ %i.fk, %bb.am ], [ %i.gc, %bb.as ], [ %i.fi, %bb.aq ] ; 5 uses
  %i.gj = load i16, ptr %i.er, align 4, !tbaa !4472 ; 5 uses
  %i.gk = sext i16 %.0280 to i32                  ; 6 uses
  %i.gl = sext i16 %i.gj to i32                   ; 6 uses
  %.not.i359 = icmp slt i16 %.0280, %i.gj
  br i1 %.not.i359, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gm = add nsw i32 %i.gl, 49
  %i.gn = icmp slt i32 %i.gm, %i.gk
  br i1 %i.gn, label %sqlite3LogEstAdd.exit361, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = add nsw i32 %i.gl, 31
  %i.gp = icmp slt i32 %i.go, %i.gk
  br i1 %i.gp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gq = add i16 %.0280, 1
  br label %sqlite3LogEstAdd.exit361

bb.ax:                                            ; preds = %bb.av
  %i.gr = sub nsw i32 %i.gk, %i.gl
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !227
  %i.gv = zext i8 %i.gu to i16
  %i.gw = add i16 %.0280, %i.gv
  br label %sqlite3LogEstAdd.exit361

bb.ay:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gx = add nsw i32 %i.gk, 49
  %i.gy = icmp slt i32 %i.gx, %i.gl
  br i1 %i.gy, label %sqlite3LogEstAdd.exit361, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = add nsw i32 %i.gk, 31
  %i.ha = icmp slt i32 %i.gz, %i.gl
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hb = add i16 %i.gj, 1
  br label %sqlite3LogEstAdd.exit361

bb.bb:                                            ; preds = %bb.az
  %i.hc = sub nsw i32 %i.gl, %i.gk
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !227
  %i.hg = zext i8 %i.hf to i16
  %i.hh = add i16 %i.gj, %i.hg
  br label %sqlite3LogEstAdd.exit361

sqlite3LogEstAdd.exit361:                         ; preds = %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bb
end_hunk_2
begin_hunk_3_@geopolyWithinFunc:bb.a

bb.k:                                             ; preds = %bb.b
  %i.an = icmp eq i32 %i.h, 2
  %i.ao = icmp eq i32 %i.h, 4
  %i.ap = select i1 %i.ao, i64 2, i64 0
  %i.aq = select i1 %i.an, i64 1, i64 %i.ap       ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !288   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20 ; 2 uses
  %i.at = load i16, ptr %i.as, align 4, !tbaa !162
  %i.au = and i16 %i.at, -28672
  %.not.i.i17 = icmp eq i16 %i.au, 0
  br i1 %.not.i.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ar, i64 noundef %i.aq)
  br label %sqlite3_result_error_nomem.exit.thread

bb.m:                                             ; preds = %bb.k
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !227
  store i16 4, ptr %i.as, align 4, !tbaa !162
  br label %sqlite3_result_error_nomem.exit.thread

sqlite3_result_error_nomem.exit:                  ; preds = %bb.a
  %i.av = icmp eq ptr %i.b, null
  br i1 %i.av, label %sqlite3_free.exit, label %sqlite3_result_error_nomem.exit.thread

sqlite3_result_error_nomem.exit.thread:           ; preds = %.lr.ph.i.i, %sqlite3VdbeMemSetNull.exit.i, %bb.f, %bb.i, %bb.j, %bb.l, %bb.m, %sqlite3_result_error_nomem.exit
  %i.aw = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %sqlite3_result_error_nomem.exit.thread
  %i.ax = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i18, label %sqlite3_mutex_enter.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ay(ptr noundef nonnull %i.ax) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.o, %bb.n
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %i.b) #59, !inline_history !269
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bd = sub nsw i64 %i.bc, %i.bb
  store i64 %i.bd, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bf = add nsw i64 %i.be, -1
  store i64 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bg(ptr noundef nonnull %i.b) #59, !inline_history !270
  %i.bh = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bh, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bi(ptr noundef nonnull %i.bh) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.q:                                             ; preds = %sqlite3_result_error_nomem.exit.thread
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bj(ptr noundef nonnull %i.b) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_result_error_nomem.exit, %sqlite3_mutex_enter.exit.i, %bb.p, %bb.q
  %i.bk = icmp eq ptr %i.e, null
  br i1 %i.bk, label %sqlite3_free.exit23, label %bb.r

bb.r:                                             ; preds = %sqlite3_free.exit
  %i.bl = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i19 = icmp eq i32 %i.bl, 0
  br i1 %.not.i19, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i20, label %sqlite3_mutex_enter.exit.i21, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.bn(ptr noundef nonnull %i.bm) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i21

sqlite3_mutex_enter.exit.i21:                     ; preds = %bb.t, %bb.s
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.bp = tail call i32 %i.bo(ptr noundef nonnull %i.e) #59, !inline_history !269
  %i.bq = sext i32 %i.bp to i64
  %i.br = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bs = sub nsw i64 %i.br, %i.bq
  store i64 %i.bs, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bu = add nsw i64 %i.bt, -1
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bv(ptr noundef nonnull %i.e) #59, !inline_history !270
  %i.bw = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i22 = icmp eq ptr %i.bw, null
  br i1 %.not.i4.i22, label %sqlite3_free.exit23, label %bb.u

bb.u:                                             ; preds = %sqlite3_mutex_enter.exit.i21
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bx(ptr noundef nonnull %i.bw) #59, !inline_history !271
  br label %sqlite3_free.exit23

bb.v:                                             ; preds = %bb.r
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.by(ptr noundef nonnull %i.e) #59, !inline_history !270
  br label %sqlite3_free.exit23

sqlite3_free.exit23:                              ; preds = %sqlite3_free.exit, %sqlite3_mutex_enter.exit.i21, %bb.u, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @geopolyContainsPointFunc(ptr nofree noundef captures(address_is_null) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !288
  %i.b = tail call fastcc ptr @geopolyFuncParam(ptr noundef %0, ptr noundef %i.a, ptr noundef null) ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !162
  %i.g = zext i16 %i.f to i32                     ; 3 uses
  %i.h = and i32 %i.g, 8
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load double, ptr %i.d, align 8, !tbaa !227
  br label %sqlite3_value_double.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.g, 36
  %.not7.i.i = icmp eq i32 %i.j, 0
  br i1 %.not7.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.d, align 8, !tbaa !227
  %i.l = sitofp i64 %i.k to double
  br label %sqlite3_value_double.exit

bb.e:                                             ; preds = %bb.c
  %i.m = and i32 %i.g, 18
  %.not8.i.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i.i, label %sqlite3_value_double.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.d, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit

sqlite3_value_double.exit:                        ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi double [ %i.i, %bb.b ], [ %i.l, %bb.d ], [ %i.n, %bb.f ], [ 0.000000e+00, %bb.e ] ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !288  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i16, ptr %i.q, align 4, !tbaa !162
  %i.s = zext i16 %i.r to i32                     ; 3 uses
  %i.t = and i32 %i.s, 8
  %.not.i.i41 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3_value_double.exit
  %i.u = load double, ptr %i.p, align 8, !tbaa !227
  br label %sqlite3_value_double.exit45

bb.h:                                             ; preds = %sqlite3_value_double.exit
  %i.v = and i32 %i.s, 36
  %.not7.i.i43 = icmp eq i32 %i.v, 0
  br i1 %.not7.i.i43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.p, align 8, !tbaa !227
  %i.x = sitofp i64 %i.w to double
  br label %sqlite3_value_double.exit45

bb.j:                                             ; preds = %bb.h
  %i.y = and i32 %i.s, 18
  %.not8.i.i44 = icmp eq i32 %i.y, 0
  br i1 %.not8.i.i44, label %sqlite3_value_double.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.p, ptr noundef null), !inline_history !854
  br label %sqlite3_value_double.exit45

sqlite3_value_double.exit45:                      ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i.i42 = phi double [ %i.u, %bb.g ], [ %i.x, %bb.i ], [ %i.z, %bb.k ], [ 0.000000e+00, %bb.j ] ; 14 uses
  %i.aa = icmp eq ptr %i.b, null
  br i1 %i.aa, label %sqlite3_free.exit, label %.preheader

.preheader:                                       ; preds = %sqlite3_value_double.exit45
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !8105 ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.ad = add nsw i32 %i.ab, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.ad to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %.03669 = phi i32 [ 0, %.lr.ph ], [ %i.bo, %select.unfold ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.idx84 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx84
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !8107 ; 2 uses
  %i.ai = fpext <2 x float> %i.ah to <2 x double> ; 3 uses
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !8107 ; 2 uses
  %i.ak = fpext <2 x float> %i.aj to <2 x double> ; 4 uses
  %i.al = extractelement <2 x double> %i.ai, i64 0 ; 5 uses
  %i.am = fcmp oeq double %.0.i.i, %i.al
  %i.an = extractelement <2 x double> %i.ai, i64 1 ; 4 uses
  %i.ao = fcmp oeq double %.0.i.i42, %i.an
  %or.cond.i = and i1 %i.am, %i.ao
  br i1 %or.cond.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.aq = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.ar = fcmp olt float %i.aq, %i.ap
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = fcmp ole double %.0.i.i, %i.al
  %i.at = extractelement <2 x double> %i.ak, i64 0
  %i.au = fcmp ogt double %.0.i.i, %i.at
  %or.cond45.i = or i1 %i.as, %i.au
  br i1 %or.cond45.i, label %select.unfold, label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.av = fcmp ogt float %i.aq, %i.ap
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = extractelement <2 x double> %i.ak, i64 0
  %i.ax = fcmp ole double %.0.i.i, %i.aw
  %i.ay = fcmp ogt double %.0.i.i, %i.al
  %or.cond46.i = or i1 %i.ay, %i.ax
  br i1 %or.cond46.i, label %select.unfold, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.az = fcmp une double %.0.i.i, %i.al
  br i1 %i.az, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = fcmp olt double %.0.i.i42, %i.an
  %i.bb = extractelement <2 x double> %i.ak, i64 1 ; 2 uses
  %i.bc = fcmp olt double %.0.i.i42, %i.bb
  %or.cond47.i = and i1 %i.ba, %i.bc
  br i1 %or.cond47.i, label %select.unfold, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = fcmp ogt double %.0.i.i42, %i.an
  %i.be = fcmp ogt double %.0.i.i42, %i.bb
  %or.cond48.i = and i1 %i.bd, %i.be
  br i1 %or.cond48.i, label %select.unfold, label %.loopexit

bb.t:                                             ; preds = %bb.p, %bb.n
  %i.bf = fsub <2 x double> %i.ak, %i.ai          ; 2 uses
  %i.bg = fsub double %.0.i.i, %i.al
  %i.bh = extractelement <2 x double> %i.bf, i64 1
  %i.bi = fmul double %i.bg, %i.bh
  %i.bj = extractelement <2 x double> %i.bf, i64 0
  %i.bk = fdiv double %i.bi, %i.bj
  %i.bl = fadd double %i.bk, %i.an                ; 2 uses
  %i.bm = fcmp oeq double %.0.i.i42, %i.bl
  br i1 %i.bm, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = fcmp olt double %.0.i.i42, %i.bl
  %..i = zext i1 %i.bn to i32
  br label %select.unfold

select.unfold:                                    ; preds = %bb.s, %bb.r, %bb.u, %bb.n, %bb.p, %bb.q
  %.0.i.ph = phi i32 [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.n ], [ %..i, %bb.u ], [ 0, %bb.s ]
  %i.bo = add nuw nsw i32 %.0.i.ph, %.03669       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.l, !llvm.loop !8112

.critedge.loopexit:                               ; preds = %select.unfold
  %i.bp = shl nuw i32 %i.ab, 1
  %i.bq = add i32 %i.bp, -2
  %i.br = zext nneg i32 %i.bq to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.036.lcssa = phi i32 [ 0, %.preheader ], [ %i.bo, %.critedge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.br, %.critedge.loopexit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0.lcssa ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !8107 ; 3 uses
  %i.bv = fpext float %i.bu to double             ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !8107
  %i.by = fpext float %i.bx to double             ; 5 uses
  %i.bz = load float, ptr %i.bs, align 4, !tbaa !8107 ; 3 uses
  %i.ca = fpext float %i.bz to double             ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !8107
  %i.cd = fpext float %i.cc to double             ; 3 uses
  %i.ce = fcmp oeq double %.0.i.i, %i.bv
  %i.cf = fcmp oeq double %.0.i.i42, %i.by
  %or.cond.i46 = and i1 %i.ce, %i.cf
  br i1 %or.cond.i46, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.cg = fcmp olt float %i.bu, %i.bz
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ch = fcmp ole double %.0.i.i, %i.bv
  %i.ci = fcmp ogt double %.0.i.i, %i.ca
  %or.cond45.i53 = or i1 %i.ch, %i.ci
  br i1 %or.cond45.i53, label %pointBeneathLine.exit, label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.cj = fcmp ogt float %i.bu, %i.bz
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = fcmp ole double %.0.i.i, %i.ca
  %i.cl = fcmp ogt double %.0.i.i, %i.bv
  %or.cond46.i51 = or i1 %i.cl, %i.ck
  br i1 %or.cond46.i51, label %pointBeneathLine.exit, label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.cm = fcmp une double %.0.i.i, %i.bv
  br i1 %i.cm, label %pointBeneathLine.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = fcmp olt double %.0.i.i42, %i.by
  %i.co = fcmp olt double %.0.i.i42, %i.cd
  %or.cond47.i47 = and i1 %i.cn, %i.co
  br i1 %or.cond47.i47, label %pointBeneathLine.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = fcmp ogt double %.0.i.i42, %i.by
  %i.cq = fcmp ogt double %.0.i.i42, %i.cd
  %or.cond48.i48 = and i1 %i.cp, %i.cq
  br i1 %or.cond48.i48, label %pointBeneathLine.exit, label %.loopexit

bb.ac:                                            ; preds = %bb.y, %bb.w
  %i.cr = fsub double %i.cd, %i.by
  %i.cs = fsub double %.0.i.i, %i.bv
  %i.ct = fmul double %i.cs, %i.cr
  %i.cu = fsub double %i.ca, %i.bv
  %i.cv = fdiv double %i.ct, %i.cu
  %i.cw = fadd double %i.cv, %i.by                ; 2 uses
  %i.cx = fcmp oeq double %.0.i.i42, %i.cw
  br i1 %i.cx, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = fcmp olt double %.0.i.i42, %i.cw
  %..i52 = zext i1 %i.cy to i32
  br label %pointBeneathLine.exit

.loopexit:                                        ; preds = %bb.s, %bb.t, %bb.l, %.critedge, %bb.ab, %bb.ac
  %i.cz = load ptr, ptr %0, align 8, !tbaa !288   ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20 ; 2 uses
  %i.db = load i16, ptr %i.da, align 4, !tbaa !162
  %i.dc = and i16 %i.db, -28672
  %.not.i.i55 = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i55, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cz, i64 noundef 1)
  br label %sqlite3_result_int.exit

bb.af:                                            ; preds = %.loopexit
  store i64 1, ptr %i.cz, align 8, !tbaa !227
  store i16 4, ptr %i.da, align 4, !tbaa !162
  br label %sqlite3_result_int.exit

pointBeneathLine.exit:                            ; preds = %bb.ab, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.ad
  %.2 = phi i32 [ %..i52, %bb.ad ], [ 0, %bb.z ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.ab ]
  %i.dd = add nuw nsw i32 %.2, %.036.lcssa
  %i.de = and i32 %i.dd, 1
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = load ptr, ptr %0, align 8, !tbaa !288   ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 20 ; 3 uses
  %i.di = load i16, ptr %i.dh, align 4, !tbaa !162
  %i.dj = and i16 %i.di, -28672
  %.not.i.i56 = icmp eq i16 %i.dj, 0              ; 2 uses
  br i1 %i.df, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %pointBeneathLine.exit
  br i1 %.not.i.i56, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.dg, i64 noundef 0)
  br label %sqlite3_result_int.exit

bb.ai:                                            ; preds = %bb.ag
  store i64 0, ptr %i.dg, align 8, !tbaa !227
  store i16 4, ptr %i.dh, align 4, !tbaa !162
end_hunk_3
