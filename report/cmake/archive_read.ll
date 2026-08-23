Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read?download=true
inline.NumInlined: 36
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@__archive_read_filter_seek:bb.a
  br i1 %i.y, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !133 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge224, label %.lr.ph348

.lr.ph348:                                        ; preds = %.lr.ph223, %bb.h
  %i.ad = phi i64 [ %i.an, %bb.h ], [ %i.ab, %.lr.ph223 ]
  %i.ae = phi i64 [ %i.af, %bb.h ], [ %i.x, %.lr.ph223 ]
  %indvars.iv253347 = phi i64 [ %indvars.iv.next254, %bb.h ], [ 0, %.lr.ph223 ] ; 3 uses
  %i.af = add nuw nsw i64 %i.ad, %i.ae            ; 3 uses
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = icmp sgt i64 %i.ag, %.0128
  br i1 %i.ah, label %._crit_edge224.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph348
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253347, 1 ; 5 uses
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !134
  %i.aj = zext i32 %i.ai to i64
  %.not158 = icmp samesign ult i64 %indvars.iv.next254, %i.aj
  br i1 %.not158, label %bb.h, label %._crit_edge224.loopexit.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv.next254
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv.next254
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !133 ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %._crit_edge224.loopexit.loopexit, label %.lr.ph348

._crit_edge224.loopexit.loopexit:                 ; preds = %bb.h, %.lr.ph348, %bb.g
  %indvars.iv253.lcssa.ph = phi i64 [ %indvars.iv253347, %bb.g ], [ %indvars.iv253347, %.lr.ph348 ], [ %indvars.iv.next254, %bb.h ]
  %i.ap = trunc nuw i64 %indvars.iv253.lcssa.ph to i32
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %.lr.ph223, %._crit_edge224.loopexit.loopexit, %bb.f
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph223 ], [ %i.ap, %._crit_edge224.loopexit.loopexit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  br label %bb.i

bb.i:                                             ; preds = %bb.s, %._crit_edge224
  %i.as = phi ptr [ %i.i, %._crit_edge224 ], [ %.pre258, %bb.s ] ; 8 uses
  %.1 = phi i32 [ %.0.lcssa, %._crit_edge224 ], [ %i.cf, %bb.s ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 228 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !84
  %i.av = icmp eq i32 %i.au, %.1
  br i1 %i.av, label %client_switch_proxy.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.1, ptr %i.at, align 4, !tbaa !84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !39
  %i.ay = zext i32 %.1 to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 216
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.bf = tail call i32 %i.bd(ptr noundef nonnull %i.as, ptr noundef %i.be, ptr noundef %i.bb) #14, !inline_history !86
  store ptr %i.bb, ptr %i.aq, align 8, !tbaa !50
  br label %client_switch_proxy.exit

bb.l:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 208
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37 ; 2 uses
  %.not29.i = icmp eq ptr %i.bh, null
  br i1 %.not29.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.bj = tail call i32 %i.bh(ptr noundef nonnull %i.as, ptr noundef %i.bi) #14, !inline_history !86
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bk = phi ptr [ %.pre.i, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  %.024.i = phi i32 [ %i.bj, %bb.m ], [ 0, %bb.l ]
  store ptr %i.bb, ptr %i.aq, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 176
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %client_open_proxy.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = tail call i32 %i.bm(ptr noundef nonnull %i.bk, ptr noundef %i.bb) #14, !inline_history !87
  br label %client_open_proxy.exit.i

client_open_proxy.exit.i:                         ; preds = %bb.o, %bb.n
  %.0.i.i = phi i32 [ %i.bn, %bb.o ], [ 0, %bb.n ]
  %i.bo = tail call i32 @llvm.smin.i32(i32 %.024.i, i32 %.0.i.i)
  br label %client_switch_proxy.exit

client_switch_proxy.exit:                         ; preds = %bb.k, %client_open_proxy.exit.i
  %.025.i = phi i32 [ %i.bo, %client_open_proxy.exit.i ], [ %i.bf, %bb.k ] ; 2 uses
  %.not159 = icmp eq i32 %.025.i, 0
  br i1 %.not159, label %client_switch_proxy.exit.client_switch_proxy.exit.thread_crit_edge, label %bb.p

client_switch_proxy.exit.client_switch_proxy.exit.thread_crit_edge: ; preds = %client_switch_proxy.exit
  %.pre259 = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %client_switch_proxy.exit.thread

bb.p:                                             ; preds = %client_switch_proxy.exit
  %i.bp = sext i32 %.025.i to i64
  br label %.loopexit

client_switch_proxy.exit.thread:                  ; preds = %client_switch_proxy.exit.client_switch_proxy.exit.thread_crit_edge, %bb.i
  %i.bq = phi ptr [ %.pre259, %client_switch_proxy.exit.client_switch_proxy.exit.thread_crit_edge ], [ %i.as, %bb.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 200
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !89 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %client_seek_proxy.exit.thread, label %client_seek_proxy.exit

client_seek_proxy.exit.thread:                    ; preds = %client_switch_proxy.exit.thread
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.bq, i32 noundef -1, ptr noundef nonnull @.str.36) #14
  br label %.loopexit

client_seek_proxy.exit:                           ; preds = %client_switch_proxy.exit.thread
  %i.bu = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.bv = tail call i64 %i.bs(ptr noundef nonnull %i.bq, ptr noundef %i.bu, i64 noundef 0, i32 noundef 2) #14, !inline_history !135 ; 5 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %client_seek_proxy.exit
  %i.bx = load ptr, ptr %i.v, align 8, !tbaa !132 ; 2 uses
  %i.by = zext i32 %.1 to i64                     ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.bv, ptr %i.ca, align 8, !tbaa !133
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !56 ; 2 uses
  %i.cc = add nsw i64 %i.cb, %i.bv                ; 2 uses
  %i.cd = add nsw i64 %i.cc, -1
  %i.ce = icmp sgt i64 %i.cd, %.0128
  br i1 %i.ce, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = add i32 %.1, 1                          ; 3 uses
  %i.cg = load i32, ptr %i.ar, align 8, !tbaa !134
  %.not160 = icmp ult i32 %i.cf, %i.cg
  br i1 %.not160, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.ch
  store i64 %i.cc, ptr %i.ci, align 8, !tbaa !56
  %.pre258 = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %bb.i

bb.t:                                             ; preds = %bb.q, %bb.r
  %i.cj = sub nsw i64 %.0128, %i.cb               ; 3 uses
  %i.ck = icmp slt i64 %i.cj, 0
  %i.cl = icmp samesign ugt i64 %i.cj, %i.bv
  %or.cond = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = tail call fastcc i64 @client_seek_proxy(ptr noundef %0, i64 noundef %i.cj, i32 noundef 0) ; 3 uses
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %.loopexit, label %bb.ai

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %bb.v
  %i.co = phi i64 [ %i.cu, %bb.v ], [ %i.p, %.lr.ph334.preheader ]
  %i.cp = phi i64 [ %i.cq, %bb.v ], [ %i.l, %.lr.ph334.preheader ]
  %indvars.iv333 = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %.lr.ph334.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv333, 1 ; 5 uses
  %.not153 = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %.not153, label %bb.v, label %._crit_edge.loopexit.loopexit

bb.v:                                             ; preds = %.lr.ph334
  %i.cq = add nuw nsw i64 %i.co, %i.cp            ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !56
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !133 ; 2 uses
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %._crit_edge.loopexit.loopexit, label %.lr.ph334

._crit_edge.loopexit.loopexit:                    ; preds = %bb.v, %.lr.ph334
  %indvars.iv.lcssa.ph = phi i64 [ %indvars.iv333, %.lr.ph334 ], [ %indvars.iv.next, %bb.v ]
  %i.cw = trunc nuw i64 %indvars.iv.lcssa.ph to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit.loopexit, %.preheader179
  %.2.lcssa = phi i32 [ 0, %.preheader179 ], [ 0, %.lr.ph ], [ %i.cw, %._crit_edge.loopexit.loopexit ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  br label %bb.w

bb.w:                                             ; preds = %bb.af, %._crit_edge
  %i.cz = phi ptr [ %i.i, %._crit_edge ], [ %.pre, %bb.af ] ; 8 uses
  %.3 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %i.ek, %bb.af ] ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 228 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !84
  %i.dc = icmp eq i32 %i.db, %.3
  br i1 %i.dc, label %client_switch_proxy.exit169.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.3, ptr %i.da, align 4, !tbaa !84
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 240
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.df = zext i32 %.3 to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !40 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 216
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !85 ; 2 uses
  %.not.i161 = icmp eq ptr %i.dk, null
  br i1 %.not.i161, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = load ptr, ptr %i.cx, align 8, !tbaa !50
  %i.dm = tail call i32 %i.dk(ptr noundef nonnull %i.cz, ptr noundef %i.dl, ptr noundef %i.di) #14, !inline_history !86
  store ptr %i.di, ptr %i.cx, align 8, !tbaa !50
  br label %client_switch_proxy.exit169

bb.z:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 208
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !37 ; 2 uses
  %.not29.i163 = icmp eq ptr %i.do, null
  br i1 %.not29.i163, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !50
  %i.dq = tail call i32 %i.do(ptr noundef nonnull %i.cz, ptr noundef %i.dp) #14, !inline_history !86
  %.pre.i164 = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dr = phi ptr [ %.pre.i164, %bb.aa ], [ %i.cz, %bb.z ] ; 2 uses
  %.024.i165 = phi i32 [ %i.dq, %bb.aa ], [ 0, %bb.z ]
  store ptr %i.di, ptr %i.cx, align 8, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 176
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !35 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i166, label %client_open_proxy.exit.i167, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = tail call i32 %i.dt(ptr noundef nonnull %i.dr, ptr noundef %i.di) #14, !inline_history !87
  br label %client_open_proxy.exit.i167

client_open_proxy.exit.i167:                      ; preds = %bb.ac, %bb.ab
  %.0.i.i168 = phi i32 [ %i.du, %bb.ac ], [ 0, %bb.ab ]
  %i.dv = tail call i32 @llvm.smin.i32(i32 %.024.i165, i32 %.0.i.i168)
  br label %client_switch_proxy.exit169

client_switch_proxy.exit169:                      ; preds = %bb.y, %client_open_proxy.exit.i167
  %.025.i162 = phi i32 [ %i.dv, %client_open_proxy.exit.i167 ], [ %i.dm, %bb.y ] ; 2 uses
  %.not154 = icmp eq i32 %.025.i162, 0
  br i1 %.not154, label %client_switch_proxy.exit169.client_switch_proxy.exit169.thread_crit_edge, label %bb.ad

client_switch_proxy.exit169.client_switch_proxy.exit169.thread_crit_edge: ; preds = %client_switch_proxy.exit169
  %.pre257 = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %client_switch_proxy.exit169.thread

bb.ad:                                            ; preds = %client_switch_proxy.exit169
  %i.dw = sext i32 %.025.i162 to i64
  br label %.loopexit

client_switch_proxy.exit169.thread:               ; preds = %client_switch_proxy.exit169.client_switch_proxy.exit169.thread_crit_edge, %bb.w
  %i.dx = phi ptr [ %.pre257, %client_switch_proxy.exit169.client_switch_proxy.exit169.thread_crit_edge ], [ %i.cz, %bb.w ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 200
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !89 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %client_seek_proxy.exit171.thread, label %client_seek_proxy.exit171

client_seek_proxy.exit171.thread:                 ; preds = %client_switch_proxy.exit169.thread
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.dx, i32 noundef -1, ptr noundef nonnull @.str.36) #14
  br label %.loopexit

client_seek_proxy.exit171:                        ; preds = %client_switch_proxy.exit169.thread
  %i.eb = load ptr, ptr %i.cx, align 8, !tbaa !50
  %i.ec = tail call i64 %i.dz(ptr noundef nonnull %i.dx, ptr noundef %i.eb, i64 noundef 0, i32 noundef 2) #14, !inline_history !135 ; 5 uses
  %i.ed = icmp slt i64 %i.ec, 0
  br i1 %i.ed, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %client_seek_proxy.exit171
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !132 ; 3 uses
  %i.ef = zext i32 %.3 to i64
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %i.ec, ptr %i.eh, align 8, !tbaa !133
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !56 ; 4 uses
  %i.ej = add nsw i64 %i.ei, %i.ec                ; 4 uses
  %i.ek = add nuw i32 %.3, 1                      ; 3 uses
  %i.el = load i32, ptr %i.cy, align 8, !tbaa !134
  %.not155 = icmp ult i32 %i.ek, %i.el
  br i1 %.not155, label %bb.af, label %.preheader

.preheader:                                       ; preds = %bb.ae
  %i.em = add nsw i64 %i.ej, %1
  %.not156206 = icmp slt i64 %i.em, %i.ei
  br i1 %.not156206, label %.lr.ph210.preheader, label %._crit_edge211

.lr.ph210.preheader:                              ; preds = %.preheader
  %i.en = add nsw i64 %i.ec, %1                   ; 2 uses
  %i.eo = icmp eq i32 %.3, 0
  br i1 %i.eo, label %._crit_edge211, label %.lr.ph338

bb.af:                                            ; preds = %bb.ae
  %i.ep = zext i32 %i.ek to i64
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ep
  store i64 %i.ej, ptr %i.eq, align 8, !tbaa !56
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !45
  br label %bb.w

.lr.ph210:                                        ; preds = %.lr.ph338
  %i.er = add nsw i64 %i.ex, %i.et                ; 2 uses
  %i.es = icmp eq i32 %3, 0
  br i1 %i.es, label %._crit_edge211, label %.lr.ph338

.lr.ph338:                                        ; preds = %.lr.ph210.preheader, %.lr.ph210
  %i.et = phi i64 [ %i.er, %.lr.ph210 ], [ %i.en, %.lr.ph210.preheader ] ; 3 uses
  %.4209337 = phi i32 [ %3, %.lr.ph210 ], [ %.3, %.lr.ph210.preheader ]
  %3 = add i32 %.4209337, -1                      ; 4 uses
  %4 = zext i32 %3 to i64
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %4 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !56 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !133 ; 2 uses
  %i.ey = add nsw i64 %i.ex, %i.ev                ; 3 uses
  %i.ez = add nsw i64 %i.ey, %i.et
  %.not156 = icmp slt i64 %i.ez, %i.ev
  br i1 %.not156, label %.lr.ph210, label %._crit_edge211

._crit_edge211:                                   ; preds = %.lr.ph210, %.lr.ph338, %.lr.ph210.preheader, %.preheader
  %.0125.lcssa = phi i64 [ %i.ej, %.preheader ], [ %i.ej, %.lr.ph210.preheader ], [ %i.ey, %.lr.ph338 ], [ %i.ey, %.lr.ph210 ]
  %.4.lcssa = phi i32 [ %.3, %.preheader ], [ 0, %.lr.ph210.preheader ], [ %3, %.lr.ph338 ], [ 0, %.lr.ph210 ] ; 2 uses
  %.lcssa189 = phi i64 [ %i.ei, %.preheader ], [ %i.ei, %.lr.ph210.preheader ], [ %i.ev, %.lr.ph338 ], [ %i.ev, %.lr.ph210 ]
  %.2130 = phi i64 [ %1, %.preheader ], [ %i.en, %.lr.ph210.preheader ], [ %i.et, %.lr.ph338 ], [ %i.er, %.lr.ph210 ]
  %i.fa = tail call fastcc i32 @client_switch_proxy(ptr noundef %0, i32 noundef %.4.lcssa) ; 2 uses
  %.not157 = icmp eq i32 %i.fa, 0
  br i1 %.not157, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge211
  %i.fb = sext i32 %i.fa to i64
  br label %.loopexit

bb.ah:                                            ; preds = %._crit_edge211
  %i.fc = sub i64 %.0125.lcssa, %.lcssa189
  %i.fd = add i64 %i.fc, %.2130
  %i.fe = tail call fastcc i64 @client_seek_proxy(ptr noundef %0, i64 noundef %i.fd, i32 noundef 0) ; 3 uses
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %.loopexit, label %._crit_edge260

._crit_edge260:                                   ; preds = %bb.ah
  %.pre261 = zext i32 %.4.lcssa to i64
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge260, %bb.u
  %.pre-phi = phi i64 [ %.pre261, %._crit_edge260 ], [ %i.by, %bb.u ]
  %.1126 = phi i64 [ %i.fe, %._crit_edge260 ], [ %i.cm, %bb.u ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !132
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %.pre-phi
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !56
  %i.fk = add nsw i64 %i.fj, %.1126               ; 4 uses
  %i.fl = icmp sgt i64 %i.fk, -1
  br i1 %i.fl, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.fm, align 8, !tbaa !121
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.fn, align 8, !tbaa !118
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !72
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !119
  store i64 %i.fk, ptr %0, align 8, !tbaa !82
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.fr, align 8, !tbaa !124
  br label %.loopexit

.loopexit:                                        ; preds = %client_seek_proxy.exit171, %client_seek_proxy.exit, %client_seek_proxy.exit171.thread, %client_seek_proxy.exit.thread, %bb.ai, %bb.aj, %bb.d, %bb.ah, %bb.u, %bb.t, %bb.c, %bb.a, %bb.b, %bb.ag, %bb.ad, %bb.p
  %.0127 = phi i64 [ %i.bv, %client_seek_proxy.exit ], [ -30, %bb.a ], [ %i.fe, %bb.ah ], [ %i.bp, %bb.p ], [ -25, %bb.c ], [ -25, %client_seek_proxy.exit.thread ], [ -30, %bb.t ], [ -30, %bb.d ], [ %i.dw, %bb.ad ], [ %i.cm, %bb.u ], [ %i.fb, %bb.ag ], [ -30, %bb.b ], [ -25, %client_seek_proxy.exit171.thread ], [ %i.fk, %bb.aj ], [ %i.fk, %bb.ai ], [ %i.ec, %client_seek_proxy.exit171 ]
  ret i64 %.0127
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @client_seek_proxy(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.b, i32 noundef -1, ptr noundef nonnull @.str.36) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = tail call i64 %i.d(ptr noundef nonnull %i.b, ptr noundef %i.g, i64 noundef %1, i32 noundef %2) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ -25, %bb.b ], [ %i.h, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @_archive_read_close(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @__archive_check_magic(ptr noundef %0, i32 noundef 14594245, i32 noundef 65535, ptr noundef nonnull @.str.26) #14
  %.not = icmp eq i32 %i.a, -30
  br i1 %.not, label %close_filters.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28
  %i.d = icmp eq i32 %i.c, 32
  br i1 %i.d, label %close_filters.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @archive_clear_error(ptr noundef nonnull %0) #14
  store i32 32, ptr %i.b, align 4, !tbaa !28
  %i.e = getelementptr i8, ptr %0, i64 632
  %.val = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %.not1.i = icmp eq ptr %.val, null
  br i1 %.not1.i, label %close_filters.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.03.i = phi i32 [ %.2.i, %bb.f ], [ 0, %bb.c ] ; 3 uses
  %.0142.i = phi ptr [ %i.g, %bb.f ], [ %.val, %bb.c ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0142.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0142.i, i64 137 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !68
  %.not17.i = icmp eq i8 %i.i, 0
  br i1 %.not17.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0142.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not18.i = icmp eq ptr %i.k, null
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = tail call i32 %i.m(ptr noundef nonnull %.0142.i) #14, !inline_history !108
  store i8 1, ptr %i.h, align 1, !tbaa !68
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.03.i)
  %i.o = freeze i32 %spec.select.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  %.2.i = phi i32 [ %.03.i, %.lr.ph.i ], [ %i.o, %bb.e ], [ %.03.i, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0142.i, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.q) #14
  store ptr null, ptr %i.p, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %close_filters.exit, label %.lr.ph.i, !llvm.loop !73

close_filters.exit:                               ; preds = %bb.f
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.2.i, i32 0)
  br label %close_filters.exit.thread

close_filters.exit.thread:                        ; preds = %close_filters.exit, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -30, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select, %close_filters.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @_archive_read_free(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.cm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @__archive_check_magic(ptr noundef nonnull %0, i32 noundef 14594245, i32 noundef 65535, ptr noundef nonnull @.str.27) #14
  %.not = icmp eq i32 %i.b, -30
  br i1 %.not, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28
  switch i32 %i.d, label %bb.d [
    i32 32, label %bb.e
    i32 32768, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @archive_read_close(ptr noundef nonnull %0) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.d
  %.050 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 2 uses
  %.not62 = icmp eq ptr %i.g, null
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.151 = phi i32 [ %i.h, %bb.f ], [ %.050, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 16 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 2 uses
  %.not64 = icmp eq ptr %i.l, null
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 %i.l(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %i.n, ptr %i.j, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112  ; 2 uses
  %.not64.1 = icmp eq ptr %i.p, null
  br i1 %.not64.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 840
end_hunk_0
