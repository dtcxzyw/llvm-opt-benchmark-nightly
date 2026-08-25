Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/plog_base_stubs?download=true
inline.NumInlined: 43
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pmix_plog_base_log:bb.a
  %.1 = phi i1 [ %.0203, %bb.l ], [ %i.ay, %bb.n ], [ %.0203, %bb.p ], [ %.0203, %bb.r ], [ %.0203, %bb.q ] ; 2 uses
  %i.bf = add nuw i64 %.0135199, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %4
  br i1 %exitcond.not, label %._crit_edge205, label %.lr.ph204, !llvm.loop !51

._crit_edge205:                                   ; preds = %bb.s
  %i.bg = icmp ne ptr %.1127, null
  %or.cond3 = select i1 %.1, i1 %i.bg, i1 false
  %i.bh = icmp ne ptr %.1125, null
  %or.cond5 = select i1 %or.cond3, i1 %i.bh, i1 false
  br i1 %or.cond5, label %bb.t, label %.loopexit195

bb.t:                                             ; preds = %._crit_edge205
  %i.bi = call i32 @pmix_help_check_dups(ptr noundef nonnull %.1127, ptr noundef nonnull %.1125) #12
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = icmp ne i64 %2, 0
  %or.cond239 = and i1 %i.bj, %i.bk
  br i1 %or.cond239, label %.lr.ph210.preheader, label %.loopexit195

.lr.ph210.preheader:                              ; preds = %bb.t
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.bl = icmp ult i64 %2, 4
  br i1 %i.bl, label %.lr.ph210.epil.preheader, label %.lr.ph210.preheader.new

.lr.ph210.preheader.new:                          ; preds = %.lr.ph210.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210, %.lr.ph210.preheader.new
  %.0133209 = phi i64 [ 0, %.lr.ph210.preheader.new ], [ %i.cc, %.lr.ph210 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph210.preheader.new ], [ %niter.next.3, %.lr.ph210 ]
  %i.bm = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 512 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !52
  %i.bp = or i32 %i.bo, -2147483648
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !52
  %i.bq = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1064 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !52
  %i.bt = or i32 %i.bs, -2147483648
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1616 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !52
  %i.bx = or i32 %i.bw, -2147483648
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !52
  %i.by = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2168 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !52
  %i.cb = or i32 %i.ca, -2147483648
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !52
  %i.cc = add nuw i64 %.0133209, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph218.loopexit.unr-lcssa, label %.lr.ph210, !llvm.loop !56

.loopexit195:                                     ; preds = %._crit_edge205, %bb.t, %pmix_obj_run_constructors.exit
  %.2 = phi i8 [ 0, %pmix_obj_run_constructors.exit ], [ %.1131, %bb.t ], [ %.1131, %._crit_edge205 ] ; 2 uses
  %.not242 = icmp eq i64 %2, 0
  br i1 %.not242, label %._crit_edge219, label %.lr.ph218

.lr.ph218.loopexit.unr-lcssa:                     ; preds = %.lr.ph210
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph218, label %.lr.ph210.epil.preheader

.lr.ph210.epil.preheader:                         ; preds = %.lr.ph218.loopexit.unr-lcssa, %.lr.ph210.preheader
  %.0133209.epil.init = phi i64 [ 0, %.lr.ph210.preheader ], [ %i.cc, %.lr.ph218.loopexit.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod287)
  br label %.lr.ph210.epil

.lr.ph210.epil:                                   ; preds = %.lr.ph210.epil, %.lr.ph210.epil.preheader
  %.0133209.epil = phi i64 [ %i.ch, %.lr.ph210.epil ], [ %.0133209.epil.init, %.lr.ph210.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph210.epil ], [ 0, %.lr.ph210.epil.preheader ]
  %i.cd = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.0133209.epil
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 512 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !52
  %i.cg = or i32 %i.cf, -2147483648
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !52
  %i.ch = add nuw i64 %.0133209.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph218, label %.lr.ph210.epil, !llvm.loop !57

.lr.ph218:                                        ; preds = %.lr.ph218.loopexit.unr-lcssa, %.lr.ph210.epil, %.loopexit195
  %.2284 = phi i8 [ %.2, %.loopexit195 ], [ %.1131, %.lr.ph210.epil ], [ %.1131, %.lr.ph218.loopexit.unr-lcssa ]
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 352), align 8 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 376), align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 248 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.ci to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph218, %.loopexit193
  %.0128216 = phi i1 [ true, %.lr.ph218 ], [ %.1129, %.loopexit193 ]
  %.1136215 = phi i64 [ 0, %.lr.ph218 ], [ %i.dx, %.loopexit193 ] ; 2 uses
  %i.co = getelementptr inbounds nuw [552 x i8], ptr %1, i64 %.1136215 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !52
  %.not158 = icmp slt i32 %i.cq, 0                ; 2 uses
  %brmerge = select i1 %.not158, i1 true, i1 %i.cj
  %.0128216.mux = select i1 %.not158, i1 %.0128216, i1 false
  br i1 %brmerge, label %.loopexit193, label %pmix_pointer_array_get_item.exit

pmix_pointer_array_get_item.exit:                 ; preds = %bb.u, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %bb.u ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !43 ; 12 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %pmix_pointer_array_get_item.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 152
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !59
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.w, label %.preheader191

.preheader191:                                    ; preds = %bb.v
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !64 ; 2 uses
  %.not159211 = icmp eq ptr %i.cz, null
  br i1 %.not159211, label %.loopexit, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader191
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 145 ; 2 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 145 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !65, !range !21, !noundef !22
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = load ptr, ptr %i.cm, align 8, !tbaa !66 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  store ptr %i.de, ptr %i.df, align 8, !tbaa !66
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  store volatile ptr %i.cs, ptr %i.dg, align 8, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store ptr %i.cl, ptr %i.dh, align 8, !tbaa !67
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !66
  %i.di = load volatile i64, ptr %i.cn, align 8, !tbaa !68
  %i.dj = add i64 %i.di, 1
  store volatile i64 %i.dj, ptr %i.cn, align 8, !tbaa !68
  store i8 1, ptr %i.db, align 1, !tbaa !65
  br label %.loopexit

bb.y:                                             ; preds = %.lr.ph213, %bb.ab
  %i.dk = phi ptr [ %i.cz, %.lr.ph213 ], [ %i.dw, %bb.ab ]
  %.1134212 = phi i64 [ 0, %.lr.ph213 ], [ %i.du, %bb.ab ]
  %i.dl = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.dk) #14
  %.not160 = icmp eq ptr %i.dl, null
  br i1 %.not160, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = load i8, ptr %i.da, align 1, !tbaa !65, !range !21, !noundef !22
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.cm, align 8, !tbaa !66 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !66
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 120
  store volatile ptr %i.cs, ptr %i.dq, align 8, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  store ptr %i.cl, ptr %i.dr, align 8, !tbaa !67
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !66
  %i.ds = load volatile i64, ptr %i.cn, align 8, !tbaa !68
  %i.dt = add i64 %i.ds, 1
  store volatile i64 %i.dt, ptr %i.cn, align 8, !tbaa !68
  store i8 1, ptr %i.da, align 1, !tbaa !65
  br label %.loopexit

bb.ab:                                            ; preds = %bb.y, %bb.z
  %i.du = add i64 %.1134212, 1                    ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !64 ; 2 uses
  %.not159 = icmp eq ptr %i.dw, null
  br i1 %.not159, label %.loopexit, label %bb.y, !llvm.loop !69

.loopexit:                                        ; preds = %bb.ab, %.preheader191, %bb.x, %bb.w, %bb.aa, %pmix_pointer_array_get_item.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond245.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond245.not.a, label %.loopexit193, label %pmix_pointer_array_get_item.exit, !llvm.loop !70

.loopexit193:                                     ; preds = %.loopexit, %bb.u
  %.1129 = phi i1 [ %.0128216.mux, %bb.u ], [ false, %.loopexit ] ; 2 uses
  %i.dx = add nuw i64 %.1136215, 1                ; 2 uses
  %exitcond246.not = icmp eq i64 %i.dx, %2
  br i1 %exitcond246.not, label %._crit_edge219, label %bb.u, !llvm.loop !71

._crit_edge219:                                   ; preds = %.loopexit193, %.loopexit195
  %.2285 = phi i8 [ %.2, %.loopexit195 ], [ %.2284, %.loopexit193 ]
  %.0128.lcssa = phi i1 [ true, %.loopexit195 ], [ %.1129, %.loopexit193 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 6 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !72 ; 2 uses
  %.not151221 = icmp eq ptr %i.ea, %i.dy
  br i1 %.not151221, label %._crit_edge225, label %.lr.ph224

.lr.ph224:                                        ; preds = %._crit_edge219, %.lr.ph224
  %.0137222 = phi ptr [ %i.ed, %.lr.ph224 ], [ %i.ea, %._crit_edge219 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0137222, i64 145
  store i8 0, ptr %i.eb, align 1, !tbaa !65
  %i.ec = getelementptr inbounds nuw i8, ptr %.0137222, i64 120
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !67 ; 2 uses
  %.not151 = icmp eq ptr %i.ed, %i.dy
  br i1 %.not151, label %._crit_edge225, label %.lr.ph224, !llvm.loop !73

._crit_edge225:                                   ; preds = %.lr.ph224, %._crit_edge219
  br i1 %.0128.lcssa, label %.preheader, label %bb.ah

.preheader:                                       ; preds = %._crit_edge225
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 4 uses
  %.promoted237 = load ptr, ptr %i.dz, align 8
  %i.ef = load volatile i64, ptr %i.ee, align 8, !tbaa !68
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %._crit_edge238, label %pmix_list_remove_first.exit

pmix_list_remove_first.exit:                      ; preds = %.preheader, %pmix_list_remove_first.exit
  %i.eh = phi ptr [ %i.ep, %pmix_list_remove_first.exit ], [ %.promoted237, %.preheader ] ; 2 uses
  %i.ei = load volatile i64, ptr %i.ee, align 8, !tbaa !68
  %i.ej = add i64 %i.ei, -1
  store volatile i64 %i.ej, ptr %i.ee, align 8, !tbaa !68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.el = load volatile ptr, ptr %i.ek, align 8, !tbaa !66
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 120 ; 2 uses
  %i.en = load volatile ptr, ptr %i.em, align 8, !tbaa !67
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 128
  store volatile ptr %i.el, ptr %i.eo, align 8, !tbaa !66
  %i.ep = load volatile ptr, ptr %i.em, align 8, !tbaa !67 ; 2 uses
  store ptr %i.ep, ptr %i.dz, align 8, !tbaa !72
  %i.eq = load volatile i64, ptr %i.ee, align 8, !tbaa !68
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %._crit_edge238, label %pmix_list_remove_first.exit, !llvm.loop !74

._crit_edge238:                                   ; preds = %pmix_list_remove_first.exit, %.preheader
  %i.es = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !75 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !43 ; 2 uses
  %.not6.i164 = icmp eq ptr %i.ev, null
  br i1 %.not6.i164, label %pmix_obj_run_destructors.exit, label %.lr.ph.i165

.lr.ph.i165:                                      ; preds = %._crit_edge238, %.lr.ph.i165
  %i.ew = phi ptr [ %i.ey, %.lr.ph.i165 ], [ %i.ev, %._crit_edge238 ]
  %.07.i166 = phi ptr [ %i.ex, %.lr.ph.i165 ], [ %i.eu, %._crit_edge238 ]
  call void %i.ew(ptr noundef nonnull %7) #12, !inline_history !76
  %i.ex = getelementptr inbounds nuw i8, ptr %.07.i166, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !43 ; 2 uses
  %.not.i167 = icmp eq ptr %i.ey, null
  br i1 %.not.i167, label %pmix_obj_run_destructors.exit, label %.lr.ph.i165, !llvm.loop !77

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i165, %._crit_edge238
  %i.ez = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.q) #12
  %i.fa = icmp eq i32 %i.ez, 35
  br i1 %i.fa, label %bb.ac, label %pmix_obj_update.exit161

bb.ac:                                            ; preds = %pmix_obj_run_destructors.exit
  %i.fb = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.fb, align 4, !tbaa !38
  call void @perror(ptr noundef nonnull @.str.6) #16
  call void @abort() #17
  unreachable

pmix_obj_update.exit161:                          ; preds = %pmix_obj_run_destructors.exit
  %i.fc = load i32, ptr %i.v, align 8, !tbaa !41
  %i.fd = add nsw i32 %i.fc, -1                   ; 2 uses
  store i32 %i.fd, ptr %i.v, align 8, !tbaa !41
  %i.fe = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.q) #12 ; 0 uses
  %i.ff = icmp eq i32 %i.fd, 0
  br i1 %i.ff, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %pmix_obj_update.exit161
  %i.fg = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !75 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43 ; 2 uses
  %.not6.i168 = icmp eq ptr %i.fj, null
  br i1 %.not6.i168, label %pmix_obj_run_destructors.exit172, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %bb.ad, %.lr.ph.i169
  %i.fk = phi ptr [ %i.fm, %.lr.ph.i169 ], [ %i.fj, %bb.ad ]
  %.07.i170 = phi ptr [ %i.fl, %.lr.ph.i169 ], [ %i.fi, %bb.ad ]
  call void %i.fk(ptr noundef nonnull %i.q) #12, !inline_history !76
  %i.fl = getelementptr inbounds nuw i8, ptr %.07.i170, i64 8 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !43 ; 2 uses
  %.not.i171 = icmp eq ptr %i.fm, null
  br i1 %.not.i171, label %pmix_obj_run_destructors.exit172, label %.lr.ph.i169, !llvm.loop !77

pmix_obj_run_destructors.exit172:                 ; preds = %.lr.ph.i169, %bb.ad
  %i.fn = load ptr, ptr %i.x, align 8, !tbaa !78  ; 2 uses
  %.not157 = icmp eq ptr %i.fn, null
  br i1 %.not157, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %pmix_obj_run_destructors.exit172
  call void %i.fn(ptr noundef nonnull %i.w, ptr noundef nonnull %i.q) #12, !inline_history !79
  br label %bb.ag

bb.af:                                            ; preds = %pmix_obj_run_destructors.exit172
  call void @free(ptr noundef nonnull %i.q) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %pmix_obj_update.exit161
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !23
  fence release
  %i.fo = call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 168)) #12 ; 0 uses
  %i.fp = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  br label %bb.ax

bb.ah:                                            ; preds = %._crit_edge225
  %i.fq = getelementptr inbounds nuw i8, ptr %i.q, i64 248 ; 4 uses
  %i.fr = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fq) #12 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.q, i64 336 ; 5 uses
  %i.ft = load volatile i8, ptr %i.fs, align 8, !tbaa !80, !range !21, !noundef !22
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %bb.ah
  %i.fv = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph227, %bb.ai
  %i.fw = call i32 @pthread_cond_wait(ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fq) #12 ; 0 uses
  %i.fx = load volatile i8, ptr %i.fs, align 8, !tbaa !80, !range !21, !noundef !22
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ai, label %._crit_edge228, !llvm.loop !81

._crit_edge228:                                   ; preds = %bb.ai, %bb.ah
  fence acquire
  store volatile i8 1, ptr %i.fs, align 8, !tbaa !80
  %i.fz = load ptr, ptr %i.dz, align 8, !tbaa !72 ; 3 uses
  %.not152229 = icmp eq ptr %i.fz, %i.dy
  br i1 %.not152229, label %._crit_edge233, label %.lr.ph232

.lr.ph232:                                        ; preds = %._crit_edge228
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 344 ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.q, i64 352 ; 3 uses
  %i.gc = trunc nuw i8 %.2285 to i1               ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph232, %bb.ap
  %.1138230 = phi ptr [ %i.fz, %.lr.ph232 ], [ %i.gr, %bb.ap ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1138230, i64 152
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !59
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !82 ; 2 uses
  %.not153 = icmp eq ptr %i.gg, null
  br i1 %.not153, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = load i64, ptr %i.ga, align 8, !tbaa !83
  %i.gi = add i64 %i.gh, 1
  store i64 %i.gi, ptr %i.ga, align 8, !tbaa !83
  %i.gj = call i32 %i.gg(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull @localcbfunc, ptr noundef nonnull %i.q) #12 ; 2 uses
  switch i32 %i.gj, label %bb.ao [
    i32 0, label %bb.al
    i32 -64, label %bb.am
    i32 -1366, label %bb.am
    i32 -156, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gk = load i64, ptr %i.ga, align 8, !tbaa !83
  %i.gl = add i64 %i.gk, -1
  store i64 %i.gl, ptr %i.ga, align 8, !tbaa !83
  store i32 0, ptr %i.gb, align 8, !tbaa !84
  br i1 %i.gc, label %._crit_edge233.loopexit, label %bb.ap

bb.am:                                            ; preds = %bb.ak, %bb.ak
  %i.gm = load i64, ptr %i.ga, align 8, !tbaa !83
  %i.gn = add i64 %i.gm, -1
  store i64 %i.gn, ptr %i.ga, align 8, !tbaa !83
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  store i32 0, ptr %i.gb, align 8, !tbaa !84
  br i1 %i.gc, label %._crit_edge233.loopexit, label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.go = load i64, ptr %i.ga, align 8, !tbaa !83
  %i.gp = add i64 %i.go, -1
  store i64 %i.gp, ptr %i.ga, align 8, !tbaa !83
  store i32 %i.gj, ptr %i.gb, align 8, !tbaa !84
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aj, %bb.am, %bb.an, %bb.ao, %bb.al
  %i.gq = getelementptr inbounds nuw i8, ptr %.1138230, i64 120
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !67 ; 2 uses
  %.not152 = icmp eq ptr %i.gr, %i.dy
  br i1 %.not152, label %._crit_edge233.loopexit, label %bb.aj, !llvm.loop !85

._crit_edge233.loopexit:                          ; preds = %bb.an, %bb.al, %bb.ap
  %.promoted.pre = load ptr, ptr %i.dz, align 8
  br label %._crit_edge233

._crit_edge233:                                   ; preds = %._crit_edge233.loopexit, %._crit_edge228
  %.promoted = phi ptr [ %.promoted.pre, %._crit_edge233.loopexit ], [ %i.fz, %._crit_edge228 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 4 uses
  %i.gt = load volatile i64, ptr %i.gs, align 8, !tbaa !68
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %._crit_edge236, label %pmix_list_remove_first.exit175

pmix_list_remove_first.exit175:                   ; preds = %._crit_edge233, %pmix_list_remove_first.exit175
  %i.gv = phi ptr [ %i.hd, %pmix_list_remove_first.exit175 ], [ %.promoted, %._crit_edge233 ] ; 2 uses
  %i.gw = load volatile i64, ptr %i.gs, align 8, !tbaa !68
  %i.gx = add i64 %i.gw, -1
  store volatile i64 %i.gx, ptr %i.gs, align 8, !tbaa !68
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 128
  %i.gz = load volatile ptr, ptr %i.gy, align 8, !tbaa !66
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 120 ; 2 uses
  %i.hb = load volatile ptr, ptr %i.ha, align 8, !tbaa !67
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  store volatile ptr %i.gz, ptr %i.hc, align 8, !tbaa !66
  %i.hd = load volatile ptr, ptr %i.ha, align 8, !tbaa !67 ; 2 uses
  store ptr %i.hd, ptr %i.dz, align 8, !tbaa !72
  %i.he = load volatile i64, ptr %i.gs, align 8, !tbaa !68
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %._crit_edge236, label %pmix_list_remove_first.exit175, !llvm.loop !86

._crit_edge236:                                   ; preds = %pmix_list_remove_first.exit175, %._crit_edge233
  %i.hg = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !75 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !43 ; 2 uses
  %.not6.i176 = icmp eq ptr %i.hj, null
  br i1 %.not6.i176, label %pmix_obj_run_destructors.exit180, label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %._crit_edge236, %.lr.ph.i177
  %i.hk = phi ptr [ %i.hm, %.lr.ph.i177 ], [ %i.hj, %._crit_edge236 ]
  %.07.i178 = phi ptr [ %i.hl, %.lr.ph.i177 ], [ %i.hi, %._crit_edge236 ]
  call void %i.hk(ptr noundef nonnull %7) #12, !inline_history !76
  %i.hl = getelementptr inbounds nuw i8, ptr %.07.i178, i64 8 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !43 ; 2 uses
  %.not.i179 = icmp eq ptr %i.hm, null
  br i1 %.not.i179, label %pmix_obj_run_destructors.exit180, label %.lr.ph.i177, !llvm.loop !77

pmix_obj_run_destructors.exit180:                 ; preds = %.lr.ph.i177, %._crit_edge236
  %i.hn = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !83
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %pmix_obj_run_destructors.exit180
  store volatile i8 0, ptr %i.fs, align 8, !tbaa !80
  fence release
  %i.hq = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.hr = call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.hq) #12 ; 0 uses
  %i.hs = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fq) #12 ; 0 uses
  %i.ht = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.q) #12
  %i.hu = icmp eq i32 %i.ht, 35
  br i1 %i.hu, label %bb.ar, label %pmix_obj_update.exit

bb.ar:                                            ; preds = %bb.aq
  %i.hv = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.hv, align 4, !tbaa !38
  call void @perror(ptr noundef nonnull @.str.6) #16
  call void @abort() #17
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.aq
  %i.hw = load i32, ptr %i.v, align 8, !tbaa !41
  %i.hx = add nsw i32 %i.hw, -1                   ; 2 uses
  store i32 %i.hx, ptr %i.v, align 8, !tbaa !41
  %i.hy = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.q) #12 ; 0 uses
  %i.hz = icmp eq i32 %i.hx, 0
  br i1 %i.hz, label %bb.as, label %bb.av

bb.as:                                            ; preds = %pmix_obj_update.exit
  %i.ia = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !75 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !43 ; 2 uses
  %.not6.i181 = icmp eq ptr %i.id, null
  br i1 %.not6.i181, label %pmix_obj_run_destructors.exit185, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %bb.as, %.lr.ph.i182
  %i.ie = phi ptr [ %i.ig, %.lr.ph.i182 ], [ %i.id, %bb.as ]
  %.07.i183 = phi ptr [ %i.if, %.lr.ph.i182 ], [ %i.ic, %bb.as ]
  call void %i.ie(ptr noundef nonnull %i.q) #12, !inline_history !76
  %i.if = getelementptr inbounds nuw i8, ptr %.07.i183, i64 8 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !43 ; 2 uses
  %.not.i184 = icmp eq ptr %i.ig, null
  br i1 %.not.i184, label %pmix_obj_run_destructors.exit185, label %.lr.ph.i182, !llvm.loop !77

pmix_obj_run_destructors.exit185:                 ; preds = %.lr.ph.i182, %bb.as
  %i.ih = load ptr, ptr %i.x, align 8, !tbaa !78  ; 2 uses
  %.not155 = icmp eq ptr %i.ih, null
  br i1 %.not155, label %bb.au, label %bb.at

bb.at:                                            ; preds = %pmix_obj_run_destructors.exit185
  call void %i.ih(ptr noundef nonnull %i.w, ptr noundef nonnull %i.q) #12, !inline_history !79
  br label %bb.av

bb.au:                                            ; preds = %pmix_obj_run_destructors.exit185
  call void @free(ptr noundef nonnull %i.q) #12
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %pmix_obj_update.exit
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !23
  fence release
  %i.ii = call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 168)) #12 ; 0 uses
  %i.ij = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  br label %bb.ax

bb.aw:                                            ; preds = %pmix_obj_run_destructors.exit180
  %i.ik = getelementptr inbounds nuw i8, ptr %i.q, i64 352
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !84
  store volatile i8 0, ptr %i.fs, align 8, !tbaa !80
  fence release
  %i.im = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.in = call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.im) #12 ; 0 uses
  %i.io = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fq) #12 ; 0 uses
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 216), align 8, !tbaa !23
  fence release
  %i.ip = call i32 @pthread_cond_broadcast(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 168)) #12 ; 0 uses
  %i.iq = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_plog_globals, i64 128)) #12 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.b, %bb.a, %bb.aw, %bb.av, %bb.ag, %pmix_obj_new_tma.exit
  %.0139 = phi i32 [ -31, %bb.a ], [ -32, %pmix_obj_new_tma.exit ], [ -157, %bb.ag ], [ -157, %bb.av ], [ %i.il, %bb.aw ], [ -157, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i32 %.0139
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @PMIx_Check_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMIx_Info_true(ptr noundef) local_unnamed_addr #2

declare i32 @pmix_help_check_dups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @localcbfunc(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  %i.d = load volatile i8, ptr %i.c, align 8, !tbaa !80, !range !21, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.g = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.h = load volatile i8, ptr %i.c, align 8, !tbaa !80, !range !21, !noundef !22
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.b, %bb.a
  fence acquire
  store volatile i8 1, ptr %i.c, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !83
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !83
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !84
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %0, ptr %i.m, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not29 = icmp eq ptr %i.r, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.t = load i32, ptr %i.s, align 8, !tbaa !84
end_hunk_0
