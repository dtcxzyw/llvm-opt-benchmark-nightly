Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/matcher-ac?download=true
inline.NumInlined: 24
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cli_ac_addsig:bb.a
  %i.gy = call i64 @cli_strlcat(ptr noundef nonnull %i.ct, ptr noundef nonnull %.1649.ph, i64 noundef %i.cs) #20 ; 0 uses
  call void @free(ptr noundef %.0507) #20
  %.not599 = icmp eq i32 %.4.ph, 0
  br i1 %.not599, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %.thread676, %.loopexit712
  %.4675679 = phi i32 [ 4, %.thread676 ], [ %.4.ph, %.loopexit712 ]
  call void @free(ptr noundef %i.ct) #20
  %i.gz = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !69
  %.not600 = icmp eq i16 %i.ha, 0
  br i1 %.not600, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hb = load ptr, ptr %i.i, align 8, !tbaa !37
  call fastcc void @ac_free_special(ptr noundef %i.hb, ptr noundef nonnull %i.k)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.hc = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.hc, ptr noundef nonnull %i.k) #20
  br label %.thread681

bb.cd:                                            ; preds = %.loopexit712, %.thread655, %bb.ag
  %.6514 = phi ptr [ null, %.thread655 ], [ %i.cl, %bb.ag ], [ %i.ct, %.loopexit712 ] ; 5 uses
  %i.hd = load ptr, ptr %i.i, align 8, !tbaa !37
  %.not601 = icmp eq ptr %.6514, null
  %i.he = select i1 %.not601, ptr %2, ptr %.6514  ; 2 uses
  %i.hf = call ptr @cli_mpool_hex2ui(ptr noundef %i.hd, ptr noundef nonnull %i.he) #20 ; 3 uses
  store ptr %i.hf, ptr %i.k, align 8, !tbaa !34
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.hh = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.hi = load i16, ptr %i.hh, align 4, !tbaa !69
  %.not629 = icmp eq i16 %i.hi, 0
  br i1 %.not629, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hj = load ptr, ptr %i.i, align 8, !tbaa !37
  call fastcc void @ac_free_special(ptr noundef %i.hj, ptr noundef nonnull %i.k)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.hk = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.hk, ptr noundef nonnull %i.k) #20
  call void @free(ptr noundef %.6514) #20
  br label %.thread681

bb.ch:                                            ; preds = %bb.cd
  %i.hl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.he) #26
  %i.hm = trunc i64 %i.hl to i16
  %i.hn = lshr i16 %i.hm, 1                       ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store i16 %i.hn, ptr %i.ho, align 8, !tbaa !30
  %i.hp = zext nneg i16 %i.hn to i32              ; 2 uses
  %i.hq = load i8, ptr %i.e, align 8, !tbaa !35
  %i.hr = zext i8 %i.hq to i32                    ; 2 uses
  %i.hs = icmp samesign ult i32 %i.hp, %i.hr
  br i1 %i.hs, label %bb.ci, label %.preheader710

.preheader710:                                    ; preds = %bb.ch
  %.not819 = icmp eq i16 %i.hn, 0
  br i1 %.not819, label %._crit_edge, label %.lr.ph754

.lr.ph754:                                        ; preds = %.preheader710
  %i.ht = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.hw = zext nneg i16 %i.hn to i64
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.59, i32 noundef %i.hp, i32 noundef %i.hr) #20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !69
  %.not628 = icmp eq i16 %i.hy, 0
  br i1 %.not628, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hz = load ptr, ptr %i.i, align 8, !tbaa !37
  call fastcc void @ac_free_special(ptr noundef %i.hz, ptr noundef nonnull %i.k)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ia = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.ib = load ptr, ptr %i.k, align 8, !tbaa !34
  call void @mpool_free(ptr noundef %i.ia, ptr noundef %i.ib) #20
  %i.ic = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.ic, ptr noundef nonnull %i.k) #20
  call void @free(ptr noundef %.6514) #20
  br label %.thread681

bb.cl:                                            ; preds = %.lr.ph754, %bb.co
  %indvars.iv = phi i64 [ 0, %.lr.ph754 ], [ %indvars.iv.next, %bb.co ] ; 2 uses
  %.0496753 = phi i16 [ 0, %.lr.ph754 ], [ %.1497, %bb.co ] ; 3 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !30
  %i.if = and i16 %i.ie, -256
  %i.ig = icmp eq i16 %i.if, 512
  br i1 %i.ig, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ih = load ptr, ptr %i.hv, align 8, !tbaa !73
  %i.ii = zext i16 %.0496753 to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !75 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i16, ptr %i.il, align 8, !tbaa !30
  %i.in = load i16, ptr %i.ht, align 2, !tbaa !30
  %i.io = add i16 %i.in, %i.im
  store i16 %i.io, ptr %i.ht, align 2, !tbaa !30
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 10
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !30
  %i.ir = load i16, ptr %i.hu, align 4, !tbaa !30
  %i.is = add i16 %i.ir, %i.iq
  store i16 %i.is, ptr %i.hu, align 4, !tbaa !30
  %i.it = add i16 %.0496753, 1
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.iu = load <2 x i16>, ptr %i.ht, align 2, !tbaa !30
  %i.iv = add <2 x i16> %i.iu, splat (i16 1)
  store <2 x i16> %i.iv, ptr %i.ht, align 2, !tbaa !30
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.1497 = phi i16 [ %i.it, %bb.cm ], [ %.0496753, %bb.cn ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iw = icmp samesign ult i64 %indvars.iv.next, %i.hw
  br i1 %i.iw, label %bb.cl, label %._crit_edge

._crit_edge:                                      ; preds = %bb.co, %.preheader710
  call void @free(ptr noundef %.6514) #20
  %i.ix = getelementptr inbounds nuw i8, ptr %i.k, i64 129
  store i8 %3, ptr %i.ix, align 1, !tbaa !56
  %i.iy = and i8 %3, 1
  %.not602 = icmp eq i8 %i.iy, 0
  br i1 %.not602, label %.loopexit, label %.preheader709

.preheader709:                                    ; preds = %._crit_edge
  %i.iz = load i16, ptr %i.ho, align 8, !tbaa !30 ; 2 uses
  %.not820 = icmp eq i16 %i.iz, 0
  br i1 %.not820, label %.loopexit, label %.lr.ph756

.lr.ph756:                                        ; preds = %.preheader709
  %i.ja = load ptr, ptr %i.k, align 8, !tbaa !34
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph756, %bb.cr
  %i.jb = phi i16 [ %i.iz, %.lr.ph756 ], [ %i.jl, %bb.cr ]
  %indvars.iv855 = phi i64 [ 0, %.lr.ph756 ], [ %indvars.iv.next856, %bb.cr ] ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %indvars.iv855 ; 2 uses
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !30 ; 2 uses
  %i.je = icmp ult i16 %i.jd, 256
  br i1 %i.je, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.jf = tail call ptr @__ctype_tolower_loc() #21
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !58
  %i.jh = zext nneg i16 %i.jd to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jh
  %.0466 = load i32, ptr %i.ji, align 4, !tbaa !59
  %i.jj = trunc i32 %.0466 to i16
  %i.jk = add i16 %i.jj, 4096
  store i16 %i.jk, ptr %i.jc, align 2, !tbaa !30
  %.pre881.a = load i16, ptr %i.ho, align 8, !tbaa !30
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.jl = phi i16 [ %i.jb, %bb.cp ], [ %.pre881.a, %bb.cq ] ; 2 uses
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %i.jm = zext i16 %i.jl to i64
  %i.jn = icmp samesign ult i64 %indvars.iv.next856, %i.jm
  br i1 %i.jn, label %bb.cp, label %.loopexit

.loopexit:                                        ; preds = %bb.cr, %.preheader709, %._crit_edge
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !61 ; 2 uses
  %.not603 = icmp eq ptr %i.jp, null
  br i1 %.not603, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.loopexit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %1, ptr %i.jq, align 8, !tbaa !68
  %i.jr = call i32 @filter_add_acpatt(ptr noundef nonnull %i.jp, ptr noundef nonnull %i.k) #20
  %i.js = icmp eq i32 %i.jr, -1
  br i1 %i.js, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.60) #20
  %i.jt = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !61
  call void @mpool_free(ptr noundef %i.jt, ptr noundef %i.ju) #20
  store ptr null, ptr %i.jo, align 8, !tbaa !61
  br label %.thread681

bb.cu:                                            ; preds = %bb.cs, %.loopexit
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 313
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !29  ; 6 uses
  %.not821 = icmp eq i8 %i.jw, 0
  br i1 %.not821, label %.critedge..critedge.thread_crit_edge, label %.lr.ph760

.lr.ph760:                                        ; preds = %bb.cu
  %i.jx = load i16, ptr %i.ho, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count = zext i16 %i.jx to i64
  %wide.trip.count860 = zext i8 %i.jw to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph760, %bb.cx
  %indvars.iv858 = phi i64 [ 0, %.lr.ph760 ], [ %indvars.iv.next859, %bb.cx ] ; 3 uses
  %.0483758 = phi i8 [ 1, %.lr.ph760 ], [ %.1484, %bb.cx ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv858, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jy = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %indvars.iv858
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !30 ; 2 uses
  %i.kb = and i16 %i.ka, 3840
  %.not604 = icmp eq i16 %i.kb, 0
  br i1 %.not604, label %bb.cx, label %.critedge.thread

bb.cx:                                            ; preds = %bb.cw
  %.not606 = icmp eq i16 %i.ka, 0
  %.1484 = select i1 %.not606, i8 %.0483758, i8 0 ; 2 uses
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next859, %wide.trip.count860
  br i1 %exitcond861.not, label %.critedge, label %bb.cv

.critedge:                                        ; preds = %bb.cv, %bb.cx
  %.0483.lcssa.ph = phi i8 [ %.0483758, %bb.cv ], [ %.1484, %bb.cx ]
  %i.kc = icmp eq i8 %.0483.lcssa.ph, 0
  br i1 %i.kc, label %.critedge._crit_edge, label %.critedge..critedge.thread_crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.phi.trans.insert887.a = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.pre888.a = load i16, ptr %.phi.trans.insert887.a, align 4, !tbaa !30
  %.phi.trans.insert889 = getelementptr inbounds nuw i8, ptr %i.k, i64 26
  %.pre890 = load i16, ptr %.phi.trans.insert889, align 2, !tbaa !30
  br label %bb.du

.critedge..critedge.thread_crit_edge:             ; preds = %bb.cu, %.critedge
  %.pre882.a = load i16, ptr %i.ho, align 8, !tbaa !30
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.cw, %.critedge..critedge.thread_crit_edge
  %i.kd = phi i16 [ %.pre882.a, %.critedge..critedge.thread_crit_edge ], [ %i.jx, %bb.cw ] ; 5 uses
  %i.ke = load i8, ptr %i.e, align 8, !tbaa !35   ; 5 uses
  %i.kf = zext i8 %i.ke to i16                    ; 2 uses
  %i.kg = add i16 %i.kd, 1                        ; 2 uses
  %.not822 = icmp eq i16 %i.kg, %i.kf
  br i1 %.not822, label %.thread972, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge.thread
  %i.kh = sub i16 %i.kg, %i.kf
  %i.ki = zext i8 %i.jw to i32
  %i.kj = zext i16 %i.kd to i32                   ; 2 uses
  %i.kk = zext i16 %i.kd to i64
  %wide.trip.count868 = zext i16 %i.kh to i64
  %14 = icmp ne i8 %i.jw, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.dh
  %indvars.iv866 = phi i32 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next867, %bb.dh ] ; 6 uses
  %indvars.iv862 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next863, %bb.dh ] ; 2 uses
  %.0474791 = phi i8 [ 0, %.preheader.lr.ph ], [ %.1475.lcssa, %bb.dh ] ; 2 uses
  %.0478790 = phi i8 [ 0, %.preheader.lr.ph ], [ %.3481, %bb.dh ] ; 2 uses
  %.0486789 = phi i16 [ 0, %.preheader.lr.ph ], [ %.1487.lcssa, %bb.dh ] ; 2 uses
  %.0490788 = phi i16 [ 0, %.preheader.lr.ph ], [ %.3493, %bb.dh ] ; 2 uses
  %i.kl = add nuw nsw i32 %indvars.iv866, %i.ki
  %i.km = icmp samesign ult i32 %indvars.iv866, %i.kj
  %or.cond686766 = and i1 %i.km, %14
  br i1 %or.cond686766, label %.lr.ph772, label %.critedge12

.lr.ph772:                                        ; preds = %.preheader
  %i.kn = load ptr, ptr %i.k, align 8, !tbaa !34  ; 3 uses
  %i.ko = trunc nuw i32 %indvars.iv866 to i16
  %invariant.op = sub i32 1, %indvars.iv866
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph772, %bb.de
  %indvars.iv864.a = phi i64 [ %indvars.iv862, %.lr.ph772 ], [ %indvars.iv.next865.a, %bb.de ] ; 2 uses
  %i.kp = phi i32 [ %indvars.iv866, %.lr.ph772 ], [ %i.le, %bb.de ]
  %.1475771 = phi i8 [ %.0474791, %.lr.ph772 ], [ %.2476, %bb.de ] ; 6 uses
  %.1479770 = phi i8 [ %.0478790, %.lr.ph772 ], [ %spec.select631, %bb.de ] ; 2 uses
  %.1487769 = phi i16 [ %.0486789, %.lr.ph772 ], [ %.2488, %bb.de ] ; 5 uses
  %.1491768 = phi i16 [ %.0490788, %.lr.ph772 ], [ %spec.select, %bb.de ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %indvars.iv864.a
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !30
  %i.ks = and i16 %i.kr, 3840
  %.not607 = icmp eq i16 %i.ks, 0
  br i1 %.not607, label %bb.cz, label %.critedge12

bb.cz:                                            ; preds = %bb.cy
  %.reass.reass.reass = add i32 %i.kp, %invariant.op ; 2 uses
  %i.kt = zext i8 %.1479770 to i32                ; 2 uses
  %.not608 = icmp samesign ult i32 %.reass.reass.reass, %i.kt
  %spec.select = select i1 %.not608, i16 %.1491768, i16 %i.ko ; 6 uses
  %spec.select631688 = call i32 @llvm.smax.i32(i32 %.reass.reass.reass, i32 %i.kt)
  %spec.select631 = trunc i32 %spec.select631688 to i8 ; 7 uses
  %i.ku = zext i16 %spec.select to i64
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !30
  %.not609 = icmp eq i16 %i.kw, 0
  br i1 %.not609, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.kx = zext i16 %spec.select to i32
  %i.ky = add nuw nsw i32 %i.kx, 1                ; 2 uses
  %i.kz = icmp samesign ult i32 %i.ky, %i.kj
  br i1 %i.kz, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.la = zext nneg i32 %i.ky to i64
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !30
  %.not610 = icmp eq i16 %i.lc, 0
  br i1 %.not610, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %.not611 = icmp ugt i8 %i.jw, %spec.select631
  br i1 %.not611, label %bb.dd, label %.critedge12

bb.dd:                                            ; preds = %bb.dc
  %.not612 = icmp ule i8 %i.ke, %spec.select631
  %i.ld = icmp ult i8 %.1475771, %spec.select631
  %or.cond632 = select i1 %.not612, i1 %i.ld, i1 false ; 2 uses
  %spec.select635 = select i1 %or.cond632, i16 %spec.select, i16 %.1487769
  %spec.select636 = select i1 %or.cond632, i8 %spec.select631, i8 %.1475771
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da, %bb.db
  %.2488 = phi i16 [ %.1487769, %bb.db ], [ %.1487769, %bb.da ], [ %spec.select635, %bb.dd ] ; 2 uses
  %.2476 = phi i8 [ %.1475771, %bb.db ], [ %.1475771, %bb.da ], [ %spec.select636, %bb.dd ] ; 2 uses
  %indvars.iv.next865.a = add nuw nsw i64 %indvars.iv864.a, 1 ; 3 uses
  %i.le = trunc nuw i64 %indvars.iv.next865.a to i32 ; 2 uses
  %i.lf = icmp samesign ugt i32 %i.kl, %i.le
  %i.lg = icmp samesign ult i64 %indvars.iv.next865.a, %i.kk
  %or.cond686 = and i1 %i.lg, %i.lf
  br i1 %or.cond686, label %bb.cy, label %.critedge12

.critedge12:                                      ; preds = %bb.cy, %bb.dc, %bb.de, %.preheader
  %.1487.lcssa = phi i16 [ %.0486789, %.preheader ], [ %.2488, %bb.de ], [ %.1487769, %bb.dc ], [ %.1487769, %bb.cy ] ; 2 uses
  %.1475.lcssa = phi i8 [ %.0474791, %.preheader ], [ %.2476, %bb.de ], [ %.1475771, %bb.dc ], [ %.1475771, %bb.cy ] ; 3 uses
  %.3493 = phi i16 [ %.0490788, %.preheader ], [ %spec.select, %bb.de ], [ %spec.select, %bb.dc ], [ %.1491768, %bb.cy ] ; 8 uses
  %.3481 = phi i8 [ %.0478790, %.preheader ], [ %spec.select631, %bb.de ], [ %spec.select631, %bb.dc ], [ %.1479770, %bb.cy ] ; 6 uses
  %.not613 = icmp ult i8 %.3481, %i.jw
  br i1 %.not613, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %.critedge12
  %i.lh = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.li = zext i16 %.3493 to i64
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.li ; 2 uses
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !30
  %.not614 = icmp eq i16 %i.lk, 0
  br i1 %.not614, label %bb.dg, label %._crit_edge792

bb.dg:                                            ; preds = %bb.df
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !30
  %.not615.a = icmp eq i16 %i.lm, 0
  br i1 %.not615.a, label %bb.dh, label %._crit_edge792

bb.dh:                                            ; preds = %.critedge12, %bb.dg
  %indvars.iv.next867 = add nuw nsw i32 %indvars.iv866, 1
  %indvars.iv.next863 = add nuw nsw i64 %indvars.iv862, 1 ; 2 uses
  %exitcond869.not = icmp eq i64 %indvars.iv.next863, %wide.trip.count868
  br i1 %exitcond869.not, label %._crit_edge792, label %.preheader

._crit_edge792:                                   ; preds = %bb.dh, %bb.dg, %bb.df
  %.not616 = icmp eq i8 %.1475.lcssa, 0
  br i1 %.not616, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %._crit_edge792
  %i.ln = zext i16 %i.kd to i32
  %i.lo = zext i16 %.3493 to i32
  %i.lp = add nuw nsw i32 %i.lo, 1                ; 2 uses
  %i.lq = icmp samesign ult i32 %i.lp, %i.ln
  br i1 %i.lq, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.lr = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.ls = zext i16 %.3493 to i64
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !30
  %i.lv = icmp eq i16 %i.lu, 0
  br i1 %i.lv, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.lw = zext nneg i32 %i.lp to i64
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !30
  %i.lz = icmp eq i16 %i.ly, 0                    ; 2 uses
  %spec.select633 = select i1 %i.lz, i16 %.1487.lcssa, i16 %.3493
  %spec.select634 = select i1 %i.lz, i8 %.1475.lcssa, i8 %.3481
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %._crit_edge792
  %i.ma = phi i16 [ %.3493, %._crit_edge792 ], [ %spec.select633, %bb.dk ], [ %.3493, %bb.dj ], [ %.3493, %bb.di ] ; 4 uses
  %.5 = phi i8 [ %.3481, %._crit_edge792 ], [ %spec.select634, %bb.dk ], [ %.3481, %bb.dj ], [ %.3481, %bb.di ]
  %i.mb = icmp ult i8 %.5, %i.ke
  br i1 %i.mb, label %bb.dm, label %bb.dn

.thread972:                                       ; preds = %.critedge.thread
  %.not1012 = icmp eq i8 %i.ke, 0
  br i1 %.not1012, label %.thread974, label %bb.dm

.thread974:                                       ; preds = %.thread972
  %i.mc = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !67
  %i.me = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  store i16 0, ptr %i.me, align 2, !tbaa !30
  br label %.._crit_edge811_crit_edge

bb.dm:                                            ; preds = %.thread972, %bb.dl
  %i.mf = zext i8 %i.ke to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.61, i32 noundef %i.mf) #20
  %i.mg = load ptr, ptr %i.i, align 8, !tbaa !37
  call fastcc void @ac_free_special(ptr noundef %i.mg, ptr noundef nonnull %i.k)
  %i.mh = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.mi = load ptr, ptr %i.k, align 8, !tbaa !34
  call void @mpool_free(ptr noundef %i.mh, ptr noundef %i.mi) #20
  %i.mj = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.mj, ptr noundef nonnull %i.k) #20
  br label %.thread681

bb.dn:                                            ; preds = %bb.dl
  %i.mk = load ptr, ptr %i.k, align 8, !tbaa !34  ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !67
  %i.mm = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  store i16 %i.ma, ptr %i.mm, align 2, !tbaa !30
  %.not823 = icmp eq i16 %i.ma, 0
  br i1 %.not823, label %.._crit_edge811_crit_edge, label %.lr.ph810

.._crit_edge811_crit_edge:                        ; preds = %.thread974, %bb.dn
  %i.mn = phi ptr [ %i.mc, %.thread974 ], [ %i.mk, %bb.dn ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.pre884.a = load i16, ptr %.phi.trans.insert, align 8, !tbaa !30
  %.phi.trans.insert885 = getelementptr inbounds nuw i8, ptr %i.k, i64 26
  %.pre886 = load i16, ptr %.phi.trans.insert885, align 2, !tbaa !30
  br label %._crit_edge811

.lr.ph810:                                        ; preds = %bb.dn
  %i.mo = getelementptr inbounds nuw i8, ptr %i.k, i64 86 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.k, i64 26 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.ms = zext i16 %i.ma to i64                   ; 2 uses
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph810, %bb.dt
  %indvars.iv870 = phi i64 [ 0, %.lr.ph810 ], [ %indvars.iv.next871, %bb.dt ] ; 2 uses
  %.3499808 = phi i16 [ 0, %.lr.ph810 ], [ %.4500, %bb.dt ] ; 3 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.mk, i64 %indvars.iv870 ; 2 uses
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !30 ; 2 uses
  %i.mv = and i16 %i.mu, 3840
  %i.mw = icmp eq i16 %i.mv, 512
  br i1 %i.mw, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.mx = load i16, ptr %i.mo, align 2, !tbaa !118
  %i.my = add i16 %i.mx, 1
  store i16 %i.my, ptr %i.mo, align 2, !tbaa !118
  %.pre883 = load i16, ptr %i.mt, align 2, !tbaa !30
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.mz = phi i16 [ %.pre883, %bb.dp ], [ %i.mu, %bb.do ]
  %i.na = and i16 %i.mz, -256
  %i.nb = icmp eq i16 %i.na, 512
  br i1 %i.nb, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.nc = load ptr, ptr %i.mr, align 8, !tbaa !73
  %i.nd = zext i16 %.3499808 to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nd
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !75 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load i16, ptr %i.ng, align 8, !tbaa !30
  %i.ni = load i16, ptr %i.mp, align 8, !tbaa !30
  %i.nj = add i16 %i.ni, %i.nh                    ; 2 uses
  store i16 %i.nj, ptr %i.mp, align 8, !tbaa !30
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 10
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !30
  %i.nm = load i16, ptr %i.mq, align 2, !tbaa !30
  %i.nn = add i16 %i.nm, %i.nl                    ; 2 uses
  store i16 %i.nn, ptr %i.mq, align 2, !tbaa !30
  %i.no = add i16 %.3499808, 1
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.np = load <2 x i16>, ptr %i.mp, align 8, !tbaa !30
  %i.nq = add <2 x i16> %i.np, splat (i16 1)      ; 3 uses
  store <2 x i16> %i.nq, ptr %i.mp, align 8, !tbaa !30
  %i.nr = extractelement <2 x i16> %i.nq, i64 0
  %i.ns = extractelement <2 x i16> %i.nq, i64 1
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %i.nt = phi i16 [ %i.nn, %bb.dr ], [ %i.ns, %bb.ds ]
  %i.nu = phi i16 [ %i.nj, %bb.dr ], [ %i.nr, %bb.ds ]
  %.4500 = phi i16 [ %i.no, %bb.dr ], [ %.3499808, %bb.ds ]
  %indvars.iv.next871 = add nuw nsw i64 %indvars.iv870, 1 ; 2 uses
  %i.nv = icmp samesign ult i64 %indvars.iv.next871, %i.ms
  br i1 %i.nv, label %bb.do, label %._crit_edge811

._crit_edge811:                                   ; preds = %bb.dt, %.._crit_edge811_crit_edge
  %i.nw = phi ptr [ %i.mn, %.._crit_edge811_crit_edge ], [ %i.mk, %bb.dt ]
  %.pre-phi = phi i64 [ 0, %.._crit_edge811_crit_edge ], [ %i.ms, %bb.dt ]
  %i.nx = phi i16 [ %.pre886, %.._crit_edge811_crit_edge ], [ %i.nt, %bb.dt ] ; 2 uses
  %i.ny = phi i16 [ %.pre884.a, %.._crit_edge811_crit_edge ], [ %i.nu, %bb.dt ]
  %.lcssa = phi i16 [ 0, %.._crit_edge811_crit_edge ], [ %i.ma, %bb.dt ]
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %.pre-phi
  store ptr %i.nz, ptr %i.k, align 8, !tbaa !34
  %i.oa = sub i16 %i.kd, %.lcssa
  store i16 %i.oa, ptr %i.ho, align 8, !tbaa !30
  %i.ob = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 2 uses
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !30
  %i.od = sub i16 %i.oc, %i.ny
  store i16 %i.od, ptr %i.ob, align 2, !tbaa !30
  %i.oe = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.of = load i16, ptr %i.oe, align 4, !tbaa !30
  %i.og = sub i16 %i.of, %i.nx                    ; 2 uses
  store i16 %i.og, ptr %i.oe, align 4, !tbaa !30
  br label %bb.du

bb.du:                                            ; preds = %.critedge._crit_edge, %._crit_edge811
  %i.oh = phi i16 [ %.pre890, %.critedge._crit_edge ], [ %i.nx, %._crit_edge811 ]
  %i.oi = phi i16 [ %.pre888.a, %.critedge._crit_edge ], [ %i.og, %._crit_edge811 ]
  %i.oj = zext i16 %i.oi to i32
  %i.ok = zext i16 %i.oh to i32
  %i.ol = add nuw nsw i32 %i.ok, %i.oj            ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.on = load i16, ptr %i.om, align 8, !tbaa !207
  %i.oo = zext i16 %i.on to i32
  %i.op = icmp samesign ugt i32 %i.ol, %i.oo
  br i1 %i.op, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.oq = trunc i32 %i.ol to i16
  store i16 %i.oq, ptr %i.om, align 8, !tbaa !207
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.or = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.os = load i32, ptr %i.or, align 8, !tbaa !59
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %bb.dx, label %bb.ec

bb.dx:                                            ; preds = %bb.dw
  %i.ou = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.ov = and i32 %13, 64
  %i.ow = call ptr @cli_mpool_virname(ptr noundef %i.ou, ptr noundef %1, i32 noundef %i.ov) #20 ; 3 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.oy = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.oz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !67 ; 2 uses
  %.not627 = icmp eq ptr %i.pa, null
  br i1 %.not627, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.pb = load ptr, ptr %i.k, align 8, !tbaa !34
  br label %bb.ea
end_hunk_0
