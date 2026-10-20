Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/x509_vfy?download=true
inline.NumInlined: 149
inline.NumDeleted: 40
begin_hunk_0_@X509_verify_cert:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.v

._crit_edge514:                                   ; preds = %._crit_edge, %.thread
  %.0195.lcssa = phi ptr [ null, %.thread ], [ %.1196, %._crit_edge ]
  %.4185.lcssa = phi i32 [ %.3184, %.thread ], [ %.0.i283326385, %._crit_edge ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 41, ptr %i.ch, align 4, !tbaa !44
  br label %.thread304

bb.v:                                             ; preds = %.lr.ph513, %._crit_edge
  %i.ci = phi ptr [ %i.ca, %.lr.ph513 ], [ %i.fm, %._crit_edge ] ; 9 uses
  %i.cj = phi i64 [ %i.bz, %.lr.ph513 ], [ %i.fl, %._crit_edge ]
  %i.ck = phi i32 [ %i.by, %.lr.ph513 ], [ %i.fk, %._crit_edge ] ; 2 uses
  %.3163511 = phi i32 [ %.0160465, %.lr.ph513 ], [ %.6.lcssa, %._crit_edge ] ; 5 uses
  %.0176509 = phi i32 [ %.0160465, %.lr.ph513 ], [ %indvars618, %._crit_edge ] ; 4 uses
  %.4185508 = phi i32 [ %.3184, %.lr.ph513 ], [ %.0.i283326385, %._crit_edge ] ; 2 uses
  %.0191507 = phi i32 [ 0, %.lr.ph513 ], [ %.1192, %._crit_edge ] ; 3 uses
  %.0195506 = phi ptr [ null, %.lr.ph513 ], [ %.1196, %._crit_edge ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !41
  %i.cn = and i32 %i.cm, 8192
  %.not238 = icmp eq i32 %i.cn, 0
  br i1 %.not238, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.cp = call i64 @OPENSSL_sk_num(ptr noundef %i.co) #12
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !42 ; 2 uses
  %.not.i269 = icmp eq ptr %i.cr, null
  br i1 %.not.i269, label %get_issuer.exit272, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = call fastcc ptr @find_issuer(ptr noundef nonnull %0, ptr noundef %i.cr, ptr noundef nonnull %i.ci) ; 3 uses
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !43
  %.not12.i270 = icmp eq ptr %i.cs, null
  br i1 %.not12.i270, label %.thread318, label %get_issuer.exit272.thread314

get_issuer.exit272.thread314:                     ; preds = %bb.y
  %i.ct = call i32 @X509_up_ref(ptr noundef nonnull %i.cs) #12 ; 0 uses
  br label %bb.z

get_issuer.exit272:                               ; preds = %bb.x
  %i.cu = call i32 @X509_STORE_CTX_get1_issuer(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.ci) #12 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %.thread318, label %bb.z

bb.z:                                             ; preds = %get_issuer.exit272.thread314, %get_issuer.exit272
  %.0.i271316 = phi i32 [ 1, %get_issuer.exit272.thread314 ], [ %i.cu, %get_issuer.exit272 ] ; 2 uses
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.cx = call i32 @X509_cmp(ptr noundef nonnull %i.ci, ptr noundef %i.cw) #12
  %.not239 = icmp eq i32 %i.cx, 0
  br i1 %.not239, label %bb.ae, label %bb.aa

.thread318:                                       ; preds = %get_issuer.exit272, %bb.y
  store i32 18, ptr %i.cd, align 4, !tbaa !44
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !45
  store i32 %i.ck, ptr %i.cf, align 8, !tbaa !46
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  store i32 18, ptr %i.cd, align 4, !tbaa !44
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !45
  store i32 %i.ck, ptr %i.cf, align 8, !tbaa !46
  %i.cy = icmp eq i32 %.0.i271316, 1
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @X509_free(ptr noundef %i.cz) #12
  br label %bb.ac

bb.ac:                                            ; preds = %.thread318, %bb.ab, %bb.aa
  %i.da = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.db = call i32 %i.da(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i = icmp ult i32 %i.db, 2
  br i1 %or.cond.i, label %call_verify_cb.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @abort() #13
  unreachable

call_verify_cb.exit:                              ; preds = %bb.ac
  %.not240 = icmp eq i32 %i.db, 0
  br i1 %.not240, label %.thread304, label %bb.ag

bb.ae:                                            ; preds = %bb.z
  call void @X509_free(ptr noundef nonnull %i.ci) #12
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.de = call ptr @OPENSSL_sk_set(ptr noundef %i.dd, i64 noundef range(i64 -2147483648, 2147483647) %i.cj, ptr noundef %i.dc) #12 ; 0 uses
  store i32 0, ptr %i.r, align 8, !tbaa !29
  br label %bb.ag

bb.af:                                            ; preds = %bb.w
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.dg = call ptr @OPENSSL_sk_pop(ptr noundef %i.df) #12
  %i.dh = load i32, ptr %i.r, align 8, !tbaa !29
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.r, align 8, !tbaa !29
  %i.dj = add nsw i32 %.3163511, -1
  %i.dk = add nsw i32 %.0176509, -1
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.dm = add nsw i32 %.3163511, -2
  %i.dn = sext i32 %i.dm to i64
  %i.do = call ptr @OPENSSL_sk_value(ptr noundef %i.dl, i64 noundef %i.dn) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %call_verify_cb.exit, %bb.ae, %bb.v
  %.1196 = phi ptr [ %.0195506, %call_verify_cb.exit ], [ %.0195506, %bb.ae ], [ %i.dg, %bb.af ], [ %.0195506, %bb.v ] ; 15 uses
  %.1192 = phi i32 [ 1, %call_verify_cb.exit ], [ %.0191507, %bb.ae ], [ %.0191507, %bb.af ], [ %.0191507, %bb.v ] ; 4 uses
  %.5186 = phi i32 [ 1, %call_verify_cb.exit ], [ %.0.i271316, %bb.ae ], [ %.4185508, %bb.af ], [ %.4185508, %bb.v ]
  %.1177 = phi i32 [ %.0176509, %call_verify_cb.exit ], [ %.0176509, %bb.ae ], [ %i.dk, %bb.af ], [ %.0176509, %bb.v ] ; 3 uses
  %.4164 = phi i32 [ %.3163511, %call_verify_cb.exit ], [ %.3163511, %bb.ae ], [ %i.dj, %bb.af ], [ %.3163511, %bb.v ] ; 3 uses
  %.2 = phi ptr [ %i.ci, %call_verify_cb.exit ], [ %i.dc, %bb.ae ], [ %i.do, %bb.af ], [ %i.ci, %bb.v ] ; 3 uses
  %.not241483 = icmp slt i32 %.4164, %spec.select
  br i1 %.not241483, label %.lr.ph487.preheader, label %get_issuer.exit280.thread.thread

.lr.ph487.preheader:                              ; preds = %bb.ag
  %i.dp = call i32 @x509v3_cache_extensions(ptr noundef %.2) #12
  %.not.i273716 = icmp eq i32 %i.dp, 0
  br i1 %.not.i273716, label %.lr.ph487.preheader._crit_edge, label %.lr.ph719

.lr.ph487:                                        ; preds = %bb.an
  %i.dq = call i32 @x509v3_cache_extensions(ptr noundef %i.ea) #12
  %.not.i273 = icmp eq i32 %i.dq, 0
  br i1 %.not.i273, label %.lr.ph487.preheader._crit_edge, label %.lr.ph719

.lr.ph487.preheader._crit_edge:                   ; preds = %.lr.ph487.preheader, %.lr.ph487
  %.6187484.lcssa = phi i32 [ %.0.i279324382, %.lr.ph487 ], [ %.5186, %.lr.ph487.preheader ]
  store i32 41, ptr %i.cd, align 4, !tbaa !44
  br label %.thread304

.lr.ph719:                                        ; preds = %.lr.ph487.preheader, %.lr.ph487
  %.5165485718 = phi i32 [ %i.ef, %.lr.ph487 ], [ %.4164, %.lr.ph487.preheader ] ; 5 uses
  %.3486717 = phi ptr [ %i.ea, %.lr.ph487 ], [ %.2, %.lr.ph487.preheader ] ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.3486717, i64 64
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !41
  %i.dt = and i32 %i.ds, 8192
  %.not243 = icmp eq i32 %i.dt, 0
  br i1 %.not243, label %bb.ah, label %get_issuer.exit280.thread.thread

bb.ah:                                            ; preds = %.lr.ph719
  %i.du = load ptr, ptr %i.cc, align 8, !tbaa !42 ; 2 uses
  %.not.i277 = icmp eq ptr %i.du, null
  br i1 %.not.i277, label %get_issuer.exit280, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = call fastcc ptr @find_issuer(ptr noundef nonnull %0, ptr noundef %i.du, ptr noundef nonnull %.3486717) ; 3 uses
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !43
  %.not12.i278 = icmp eq ptr %i.dv, null
  br i1 %.not12.i278, label %get_issuer.exit280.thread.thread, label %get_issuer.exit280.thread.thread380

get_issuer.exit280.thread.thread380:              ; preds = %bb.ai
  %i.dw = call i32 @X509_up_ref(ptr noundef nonnull %i.dv) #12 ; 0 uses
  br label %bb.ak

get_issuer.exit280:                               ; preds = %bb.ah
  %i.dx = call i32 @X509_STORE_CTX_get1_issuer(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %.3486717) #12 ; 4 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.aj, label %get_issuer.exit280.thread

bb.aj:                                            ; preds = %get_issuer.exit280
  store i32 66, ptr %i.cd, align 4, !tbaa !44
  br label %.thread304

get_issuer.exit280.thread:                        ; preds = %get_issuer.exit280
  %i.dz = icmp eq i32 %i.dx, 0
  br i1 %i.dz, label %get_issuer.exit280.thread.thread, label %bb.ak

bb.ak:                                            ; preds = %get_issuer.exit280.thread.thread380, %get_issuer.exit280.thread
  %.0.i279324382 = phi i32 [ 1, %get_issuer.exit280.thread.thread380 ], [ %i.dx, %get_issuer.exit280.thread ]
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !43  ; 5 uses
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.ec = call i64 @OPENSSL_sk_push(ptr noundef %i.eb, ptr noundef %i.ea) #12
  %.not244 = icmp eq i64 %i.ec, 0
  br i1 %.not244, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @X509_free(ptr noundef %i.ed) #12
  store i32 17, ptr %i.cd, align 4, !tbaa !44
  br label %.thread304

bb.am:                                            ; preds = %bb.ak
  %i.ee = call fastcc i32 @check_trust(ptr noundef nonnull %0)
  %or.cond.not = icmp eq i32 %i.ee, 3
  br i1 %or.cond.not, label %bb.an, label %get_issuer.exit280.thread.thread

bb.an:                                            ; preds = %bb.am
  %i.ef = add nsw i32 %.5165485718, 1             ; 2 uses
  %exitcond572.not = icmp eq i32 %i.ef, %spec.select
  br i1 %exitcond572.not, label %get_issuer.exit280.thread.thread, label %.lr.ph487

get_issuer.exit280.thread.thread:                 ; preds = %bb.an, %.lr.ph719, %get_issuer.exit280.thread, %bb.am, %bb.ai, %bb.ag
  %.5165.lcssa = phi i32 [ %.4164, %bb.ag ], [ %.5165485718, %bb.ai ], [ %.5165485718, %bb.am ], [ %.5165485718, %get_issuer.exit280.thread ], [ %.5165485718, %.lr.ph719 ], [ %spec.select, %bb.an ] ; 7 uses
  %.4 = phi ptr [ %.2, %bb.ag ], [ %.3486717, %bb.ai ], [ %i.ea, %bb.am ], [ %.3486717, %get_issuer.exit280.thread ], [ %.3486717, %.lr.ph719 ], [ %i.ea, %bb.an ] ; 2 uses
  %i.eg = call fastcc i32 @check_trust(ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.eg, label %bb.ao [
    i32 2, label %.thread304
    i32 1, label %.thread355
  ]

bb.ao:                                            ; preds = %get_issuer.exit280.thread.thread
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !28
  %i.ek = and i64 %i.ej, 1081344
  %or.cond262 = icmp eq i64 %i.ek, 0
  %i.el = icmp sgt i32 %.1177, 1
  %or.cond = select i1 %or.cond262, i1 %i.el, i1 false
  br i1 %or.cond, label %.lr.ph726, label %.loopexit

.lr.ph726:                                        ; preds = %bb.ao
  %i.em = zext nneg i32 %.1177 to i64
  br label %bb.ap

.preheader:                                       ; preds = %get_issuer.exit284.thread
  %i.en = trunc nuw i64 %indvars.iv.next725 to i32 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.ap, label %.loopexit, !llvm.loop !68

bb.ap:                                            ; preds = %.lr.ph726, %.preheader
  %i.ep = phi i32 [ %.1177, %.lr.ph726 ], [ %i.en, %.preheader ] ; 3 uses
  %indvars.iv724 = phi i64 [ %i.em, %.lr.ph726 ], [ %indvars.iv.next725, %.preheader ] ; 2 uses
  %indvars.iv.next725 = add nsw i64 %indvars.iv724, -1 ; 3 uses
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.er = add nsw i64 %indvars.iv724, -2
  %i.es = call ptr @OPENSSL_sk_value(ptr noundef %i.eq, i64 noundef %i.er) #12 ; 2 uses
  %i.et = load ptr, ptr %i.cc, align 8, !tbaa !42 ; 2 uses
  %.not.i281 = icmp eq ptr %i.et, null
  br i1 %.not.i281, label %get_issuer.exit284, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = call fastcc ptr @find_issuer(ptr noundef nonnull %0, ptr noundef %i.et, ptr noundef %i.es) ; 3 uses
  store ptr %i.eu, ptr %i.a, align 8, !tbaa !43
  %.not12.i282 = icmp eq ptr %i.eu, null
  br i1 %.not12.i282, label %get_issuer.exit284.thread, label %get_issuer.exit284.thread.thread

get_issuer.exit284.thread.thread:                 ; preds = %bb.aq
  %i.ev = call i32 @X509_up_ref(ptr noundef nonnull %i.eu) #12 ; 0 uses
  br label %.loopexit393

get_issuer.exit284:                               ; preds = %bb.ap
  %i.ew = call i32 @X509_STORE_CTX_get1_issuer(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef %i.es) #12 ; 3 uses
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %.thread304, label %get_issuer.exit284.thread

get_issuer.exit284.thread:                        ; preds = %bb.aq, %get_issuer.exit284
  %.0.i283326 = phi i32 [ %i.ew, %get_issuer.exit284 ], [ 0, %bb.aq ] ; 2 uses
  %.not248 = icmp eq i32 %.0.i283326, 0
  br i1 %.not248, label %.preheader, label %.loopexit393, !llvm.loop !68

.loopexit393:                                     ; preds = %get_issuer.exit284.thread, %get_issuer.exit284.thread.thread
  %.0.i283326385 = phi i32 [ 1, %get_issuer.exit284.thread.thread ], [ %.0.i283326, %get_issuer.exit284.thread ] ; 2 uses
  %indvars618 = trunc i64 %indvars.iv.next725 to i32
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @X509_free(ptr noundef %i.ey) #12
  %.not249501 = icmp slt i32 %.5165.lcssa, %i.ep
  br i1 %.not249501, label %._crit_edge, label %.lr.ph503

.lr.ph503:                                        ; preds = %.loopexit393, %.lr.ph503
  %.6502 = phi i32 [ %i.fb, %.lr.ph503 ], [ %.5165.lcssa, %.loopexit393 ] ; 2 uses
  %i.ez = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.fa = call ptr @OPENSSL_sk_pop(ptr noundef %i.ez) #12 ; 2 uses
  store ptr %i.fa, ptr %i.a, align 8, !tbaa !43
  call void @X509_free(ptr noundef %i.fa) #12
  %i.fb = add nsw i32 %.6502, -1
  %.not249.not = icmp samesign ugt i32 %.6502, %i.ep
  br i1 %.not249.not, label %.lr.ph503, label %._crit_edge.loopexit, !llvm.loop !69

._crit_edge.loopexit:                             ; preds = %.lr.ph503
  %i.fc = add nsw i32 %i.ep, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit393
  %.6.lcssa = phi i32 [ %.5165.lcssa, %.loopexit393 ], [ %i.fc, %._crit_edge.loopexit ]
  %i.fd = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.fe = call i64 @OPENSSL_sk_num(ptr noundef %i.fd) #12
  %i.ff = trunc i64 %i.fe to i32
  store i32 %i.ff, ptr %i.r, align 8, !tbaa !29
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.fh = call i64 @OPENSSL_sk_num(ptr noundef %i.fg) #12
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.fk = add nsw i32 %i.fi, -1                   ; 2 uses
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = call ptr @OPENSSL_sk_value(ptr noundef %i.fj, i64 noundef %i.fl) #12 ; 2 uses
  %i.fn = call i32 @x509v3_cache_extensions(ptr noundef %i.fm) #12
  %.not.i265 = icmp eq i32 %i.fn, 0
  br i1 %.not.i265, label %._crit_edge514, label %bb.v, !llvm.loop !70

.loopexit:                                        ; preds = %bb.ao, %.preheader
  %i.fo = icmp eq i32 %i.eg, 1
  %i.fp = icmp ne i32 %.1192, 0
  %or.cond3 = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %or.cond3, label %.thread355, label %bb.ar

bb.ar:                                            ; preds = %.loopexit
  %i.fq = icmp eq ptr %.1196, null
  br i1 %i.fq, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fr = call i32 @x509_check_issued_with_callback(ptr noundef %0, ptr noundef %.4, ptr noundef nonnull %.1196)
  %.not251.a = icmp eq i32 %i.fr, 0
  br i1 %.not251.a, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fs = load i32, ptr %i.r, align 8, !tbaa !29
  %.not253.a = icmp slt i32 %i.fs, %.5165.lcssa
  %spec.select660 = select i1 %.not253.a, i32 2, i32 20
  store i32 %spec.select660, ptr %i.cd, align 4, !tbaa !44
  store ptr %.4, ptr %i.ce, align 8, !tbaa !45
  %i.ft = add nsw i32 %.5165.lcssa, -1
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.fu = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.fv = call i64 @OPENSSL_sk_push(ptr noundef %i.fu, ptr noundef nonnull %.1196) #12
  %.not252 = icmp eq i64 %i.fv, 0
  br i1 %.not252, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 17, ptr %i.cd, align 4, !tbaa !44
  br label %.thread304

bb.aw:                                            ; preds = %bb.au
  %i.fw = add nsw i32 %.5165.lcssa, 1
  store i32 %i.fw, ptr %i.r, align 8, !tbaa !29
  store ptr %.1196, ptr %i.ce, align 8, !tbaa !45
  store i32 19, ptr %i.cd, align 4, !tbaa !44
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.3198 = phi ptr [ %.1196, %bb.at ], [ null, %bb.aw ] ; 2 uses
  %.9 = phi i32 [ %i.ft, %bb.at ], [ %.5165.lcssa, %bb.aw ]
  store i32 %.9, ptr %i.cf, align 8, !tbaa !46
  %i.fx = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.fy = call i32 %i.fx(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i285 = icmp ult i32 %i.fy, 2
  br i1 %or.cond.i285, label %call_verify_cb.exit286, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @abort() #13
  unreachable

call_verify_cb.exit286:                           ; preds = %bb.ax
  %.not254.a = icmp eq i32 %i.fy, 0
  br i1 %.not254.a, label %.thread304, label %.thread355

.thread355:                                       ; preds = %get_issuer.exit280.thread.thread, %call_verify_cb.exit286, %.loopexit
  %.4199 = phi ptr [ %.1196, %.loopexit ], [ %.3198, %call_verify_cb.exit286 ], [ %.1196, %get_issuer.exit280.thread.thread ] ; 7 uses
  %.3194 = phi i32 [ %.1192, %.loopexit ], [ 1, %call_verify_cb.exit286 ], [ %.1192, %get_issuer.exit280.thread.thread ]
  %i.fz = call fastcc i32 @check_chain_extensions(ptr noundef %0)
  %.not255.a = icmp eq i32 %i.fz, 0
  br i1 %.not255.a, label %.thread304, label %bb.az

bb.az:                                            ; preds = %.thread355
  %i.ga = call fastcc i32 @check_id(ptr noundef %0)
  %.not256.a = icmp eq i32 %i.ga, 0
  br i1 %.not256.a, label %.thread304, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gb = call fastcc i32 @check_revocation(ptr noundef %0)
  %.not257.a = icmp eq i32 %i.gb, 0
  br i1 %.not257.a, label %.thread304, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gc = call fastcc i32 @internal_verify(ptr noundef %0)
  %.not258.a = icmp eq i32 %i.gc, 0
  br i1 %.not258.a, label %.thread304, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gd = call fastcc i32 @check_name_constraints(ptr noundef %0) ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  %i.gf = icmp ne i32 %.3194, 0
  %or.cond5 = select i1 %i.ge, i1 true, i1 %i.gf
  br i1 %or.cond5, label %.thread304, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !28
  %i.gj = and i64 %i.gi, 128
  %.not259.a = icmp eq i64 %i.gj, 0
  br i1 %.not259.a, label %.thread304, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gk = call fastcc i32 @check_policy(ptr noundef nonnull %0)
  br label %.thread304

.thread304:                                       ; preds = %get_issuer.exit280.thread.thread, %call_verify_cb.exit, %get_issuer.exit284, %._crit_edge514, %.lr.ph487.preheader._crit_edge, %bb.al, %bb.aj, %.split478.us, %.split.us, %bb.bd, %bb.be, %bb.bc, %bb.bb, %bb.ba, %bb.az, %.thread355, %call_verify_cb.exit286, %bb.av
  %.5200 = phi ptr [ %.1196, %get_issuer.exit284 ], [ %.1196, %bb.av ], [ %.4199, %bb.bc ], [ %.4199, %bb.be ], [ %.4199, %bb.bd ], [ %.4199, %bb.bb ], [ %.4199, %bb.ba ], [ %.4199, %bb.az ], [ %.4199, %.thread355 ], [ %.3198, %call_verify_cb.exit286 ], [ null, %.split.us ], [ null, %.split478.us ], [ %.0195.lcssa, %._crit_edge514 ], [ %.1196, %.lr.ph487.preheader._crit_edge ], [ %.1196, %bb.al ], [ %.1196, %bb.aj ], [ %.1196, %get_issuer.exit280.thread.thread ], [ %.0195506, %call_verify_cb.exit ] ; 2 uses
  %.11 = phi i32 [ %i.ew, %get_issuer.exit284 ], [ 0, %bb.av ], [ %i.gd, %bb.bc ], [ %i.gk, %bb.be ], [ 1, %bb.bd ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ 0, %bb.az ], [ 0, %.thread355 ], [ 0, %call_verify_cb.exit286 ], [ 0, %.split.us ], [ %.us-phi479, %.split478.us ], [ %.4185.lcssa, %._crit_edge514 ], [ %.6187484.lcssa, %.lr.ph487.preheader._crit_edge ], [ 0, %bb.al ], [ %i.dx, %bb.aj ], [ 0, %call_verify_cb.exit ], [ 0, %get_issuer.exit280.thread.thread ] ; 2 uses
  %.not260.a = icmp eq ptr %.0168.fr, null
  br i1 %.not260.a, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.thread304.thread, %.thread304
  %.11391 = phi i32 [ 0, %.thread304.thread ], [ %.11, %.thread304 ]
  %.5200390 = phi ptr [ null, %.thread304.thread ], [ %.5200, %.thread304 ]
  call void @OPENSSL_sk_free(ptr noundef nonnull %.0168.fr) #12
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread304
  %.11364 = phi i32 [ %.11, %.thread304 ], [ %.11391, %bb.bf ] ; 4 uses
  %.5200363 = phi ptr [ %.5200, %.thread304 ], [ %.5200390, %bb.bf ] ; 2 uses
  %.not261 = icmp eq ptr %.5200363, null
  br i1 %.not261, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @X509_free(ptr noundef nonnull %.5200363) #12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.gl = icmp slt i32 %.11364, 1
  br i1 %i.gl, label %.thread370, label %.thread370.thread

.thread370:                                       ; preds = %bb.bi
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !44
  %i.gm = icmp eq i32 %.pre, 0
  br i1 %i.gm, label %.thread370.thread.sink.split, label %.thread370.thread

.thread370.thread.sink.split:                     ; preds = %.thread370, %bb.j, %bb.g, %bb.h, %bb.b, %bb.d, %bb.f
  %.sink = phi i32 [ 17, %bb.g ], [ 65, %bb.b ], [ 17, %bb.j ], [ 65, %bb.f ], [ 65, %bb.d ], [ 17, %bb.h ], [ 1, %.thread370 ]
  %.0.ph = phi i32 [ 0, %bb.g ], [ -1, %bb.b ], [ 0, %bb.j ], [ -1, %bb.f ], [ -1, %bb.d ], [ 0, %bb.h ], [ %.11364, %.thread370 ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %.sink, ptr %i.gn, align 4, !tbaa !44
  br label %.thread370.thread

.thread370.thread:                                ; preds = %.thread370.thread.sink.split, %bb.bi, %.thread370
  %.0 = phi i32 [ %.11364, %.thread370 ], [ %.11364, %bb.bi ], [ %.0.ph, %.thread370.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_up_ref(ptr noundef) local_unnamed_addr #2

declare void @X509_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_issuer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %1) #12
  %.not27 = icmp eq i64 %i.c, 0
  br i1 %.not27, label %x509_check_cert_time.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %x509_check_issued_with_callback.exit.thread
  %.024 = phi ptr [ null, %.lr.ph ], [ %.1, %x509_check_issued_with_callback.exit.thread ] ; 2 uses
  %.01123 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %x509_check_issued_with_callback.exit.thread ] ; 2 uses
  %i.i = call ptr @OPENSSL_sk_value(ptr noundef nonnull %1, i64 noundef %.01123) #12 ; 8 uses
  %i.j = call i32 @X509_check_issued(ptr noundef %i.i, ptr noundef %2) #12 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %x509_check_issued_with_callback.exit.thread17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
end_hunk_0
begin_hunk_1_@check_chain_extensions:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !78

.loopexit.sink.split:                             ; preds = %check_curve_decoded_by_name.exit, %bb.q, %bb.o
  %.sink195 = phi i32 [ 1, %bb.q ], [ 1, %bb.o ], [ 72, %check_curve_decoded_by_name.exit ]
  %i.cn = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %.sink195, ptr %i.l, align 4, !tbaa !44
  store i32 %i.cn, ptr %i.m, align 8, !tbaa !46
  store ptr %i.q, ptr %i.n, align 8, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %call_verify_cb.exit, %call_verify_cb.exit113, %call_verify_cb.exit111, %call_verify_cb.exit109, %bb.ae, %.loopexit.sink.split, %bb.a
  %i.co = phi i32 [ 1, %bb.a ], [ 0, %.loopexit.sink.split ], [ 0, %call_verify_cb.exit ], [ 1, %bb.ae ], [ 0, %call_verify_cb.exit109 ], [ 0, %call_verify_cb.exit111 ], [ 0, %call_verify_cb.exit113 ]
  ret i32 %i.co
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_id(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !86
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 65, ptr %i.g, align 4, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.d, ptr %i.h, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = tail call i32 %i.k(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !84 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.l, 2
  br i1 %or.cond.i.i, label %check_id_error.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #13
  unreachable

check_id_error.exit:                              ; preds = %bb.b
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.r, label %bb.d

bb.d:                                             ; preds = %check_id_error.exit, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %.not21 = icmp eq ptr %i.n, null
  br i1 %.not21, label %check_hosts.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.n) #12 ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %check_hosts.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.q = add nuw i64 %.013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.o
  br i1 %exitcond.not.i, label %bb.h, label %bb.g, !llvm.loop !85

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.013.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.s = tail call ptr @OPENSSL_sk_value(ptr noundef %i.r, i64 noundef %.013.i) #12 ; 2 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #14
  %i.u = load i32, ptr %i.p, align 8, !tbaa !55
  %i.v = tail call i32 @X509_check_host(ptr noundef %i.d, ptr noundef nonnull %i.s, i64 noundef %i.t, i32 noundef %i.u, ptr noundef null) #12
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %check_hosts.exit.thread, label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 62, ptr %i.x, align 4, !tbaa !44
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.y, ptr %i.z, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.aa, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = tail call i32 %i.ac(i32 noundef 0, ptr noundef %0) #12, !inline_history !84 ; 2 uses
  %or.cond.i.i28 = icmp ult i32 %i.ad, 2
  br i1 %or.cond.i.i28, label %check_id_error.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @abort() #13
  unreachable

check_id_error.exit29:                            ; preds = %bb.h
  %.not23 = icmp eq i32 %i.ad, 0
  br i1 %.not23, label %bb.r, label %check_hosts.exit.thread

check_hosts.exit.thread:                          ; preds = %bb.g, %bb.e, %check_id_error.exit29, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %.not24 = icmp eq ptr %i.af, null
  br i1 %.not24, label %bb.m, label %bb.j

bb.j:                                             ; preds = %check_hosts.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.ai = tail call i32 @X509_check_email(ptr noundef %i.d, ptr noundef nonnull %i.af, i64 noundef %i.ah, i32 noundef 0) #12
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 63, ptr %i.ak, align 4, !tbaa !44
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.al, ptr %i.am, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.an, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47
  %i.aq = tail call i32 %i.ap(i32 noundef 0, ptr noundef %0) #12, !inline_history !84 ; 2 uses
  %or.cond.i.i30 = icmp ult i32 %i.aq, 2
  br i1 %or.cond.i.i30, label %check_id_error.exit31, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @abort() #13
  unreachable

check_id_error.exit31:                            ; preds = %bb.k
  %.not25 = icmp eq i32 %i.aq, 0
  br i1 %.not25, label %bb.r, label %bb.m

bb.m:                                             ; preds = %check_id_error.exit31, %bb.j, %check_hosts.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !90 ; 2 uses
  %.not26 = icmp eq ptr %i.as, null
  br i1 %.not26, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.au = load i64, ptr %i.at, align 8, !tbaa !91
  %i.av = tail call i32 @X509_check_ip(ptr noundef %i.d, ptr noundef nonnull %i.as, i64 noundef %i.au, i32 noundef 0) #12
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 64, ptr %i.ax, align 4, !tbaa !44
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.ba, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bd = tail call i32 %i.bc(i32 noundef 0, ptr noundef %0) #12, !inline_history !84 ; 2 uses
  %or.cond.i.i32 = icmp ult i32 %i.bd, 2
  br i1 %or.cond.i.i32, label %check_id_error.exit33, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @abort() #13
  unreachable

check_id_error.exit33:                            ; preds = %bb.o
  %.not27 = icmp eq i32 %i.bd, 0
  br i1 %.not27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %check_id_error.exit33, %bb.n, %bb.m
  br label %bb.r

bb.r:                                             ; preds = %check_id_error.exit33, %check_id_error.exit31, %check_id_error.exit29, %check_id_error.exit, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %check_id_error.exit31 ], [ 0, %check_id_error.exit29 ], [ 0, %check_id_error.exit ], [ 0, %check_id_error.exit33 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_revocation(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = and i64 %i.f, 4
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.f, 8
  %.not19 = icmp eq i64 %i.h, 0
  br i1 %.not19, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = tail call i64 @OPENSSL_sk_num(ptr noundef %i.j) #12 ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %.not2025 = icmp slt i32 %i.l, 1
  br i1 %.not2025, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.01534 = phi i64 [ %i.k, %bb.c ], [ 1, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count = and i64 %.01534, 4294967295
  br label %bb.e

bb.d:                                             ; preds = %check_cert.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !92

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.w, ptr %i.m, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !56
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.y = call ptr @OPENSSL_sk_value(ptr noundef %i.x, i64 noundef %indvars.iv) #12 ; 3 uses
  store ptr %i.y, ptr %i.o, align 8, !tbaa !45
  store ptr null, ptr %i.p, align 8, !tbaa !49
  store i32 0, ptr %i.q, align 8, !tbaa !57
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.aa = call i32 %i.z(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.y) #12, !inline_history !93
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %i.u, align 4, !tbaa !44
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.ac = call i32 %i.ab(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !94 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.ac, 2
  br i1 %or.cond.i.i, label %check_cert.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @abort() #13
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !58
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.af = call i32 %i.ae(ptr noundef nonnull %0, ptr noundef %i.ad) #12, !inline_history !93
  %.not21.i = icmp eq i32 %i.af, 0
  br i1 %.not21.i, label %check_cert.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !28
  %i.ak = and i64 %i.aj, 16
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !61
  %i.an = and i32 %i.am, 512
  %.not10.i.i = icmp eq i32 %i.an, 0
  br i1 %.not10.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 36, ptr %i.u, align 4, !tbaa !44
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.ap = call i32 %i.ao(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !95 ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.ap, 2
  br i1 %or.cond.i.i.i, label %call_verify_cb.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @abort() #13
  unreachable

call_verify_cb.exit.i.i:                          ; preds = %bb.k
  %.not11.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not11.i.i, label %cert_crl.exit.i, label %bb.m

bb.m:                                             ; preds = %call_verify_cb.exit.i.i, %bb.j, %bb.i
  %i.aq = call i32 @X509_CRL_get0_by_cert(ptr noundef %i.ag, ptr noundef nonnull %i.a, ptr noundef %i.y) #12
  %.not12.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not12.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 23, ptr %i.u, align 4, !tbaa !44
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.as = call i32 %i.ar(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !95 ; 2 uses
  %or.cond.i14.i.i = icmp ult i32 %i.as, 2
  br i1 %or.cond.i14.i.i, label %call_verify_cb.exit15.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @abort() #13
  unreachable

call_verify_cb.exit15.i.i:                        ; preds = %bb.n
  %.not13.i.i = icmp eq i32 %i.as, 0
  br i1 %.not13.i.i, label %cert_crl.exit.i, label %bb.p

bb.p:                                             ; preds = %call_verify_cb.exit15.i.i, %bb.m
  br label %cert_crl.exit.i

cert_crl.exit.i:                                  ; preds = %bb.p, %call_verify_cb.exit15.i.i, %call_verify_cb.exit.i.i
  %.0.i.i = phi i32 [ 1, %bb.p ], [ 0, %call_verify_cb.exit.i.i ], [ 0, %call_verify_cb.exit15.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %check_cert.exit

check_cert.exit:                                  ; preds = %bb.f, %bb.h, %cert_crl.exit.i
  %.0.i = phi i32 [ %.0.i.i, %cert_crl.exit.i ], [ 0, %bb.h ], [ %i.ac, %bb.f ]
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @X509_CRL_free(ptr noundef %i.at) #12
  store ptr null, ptr %i.s, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.not21.not = icmp eq i32 %.0.i, 0
  br i1 %.not21.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %check_cert.exit, %bb.c, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %check_cert.exit ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @internal_verify(ptr noundef initializes((104, 108)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call i64 @OPENSSL_sk_num(ptr noundef %i.b) #12
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = add nsw i32 %i.d, -1                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 %i.e, ptr %i.f, align 8, !tbaa !46
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.h = sext i32 %i.e to i64
  %i.i = tail call ptr @OPENSSL_sk_value(ptr noundef %i.g, i64 noundef %i.h) #12 ; 12 uses
  %i.j = tail call i32 @X509_check_issued(ptr noundef %i.i, ptr noundef %i.i) #12 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %x509_check_issued_with_callback.exit.thread100, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %x509_check_issued_with_callback.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.j, ptr %i.q, align 4, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.i, ptr %i.r, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.i, ptr %i.s, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = tail call i32 %i.u(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !1 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.v, 2
  br i1 %or.cond.i.i, label %x509_check_issued_with_callback.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #13
  unreachable

x509_check_issued_with_callback.exit:             ; preds = %bb.c
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %x509_check_issued_with_callback.exit.x509_check_issued_with_callback.exit.thread_crit_edge, label %x509_check_issued_with_callback.exit.thread100

x509_check_issued_with_callback.exit.x509_check_issued_with_callback.exit.thread_crit_edge: ; preds = %x509_check_issued_with_callback.exit
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre105 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !28
  br label %x509_check_issued_with_callback.exit.thread

x509_check_issued_with_callback.exit.thread:      ; preds = %x509_check_issued_with_callback.exit.x509_check_issued_with_callback.exit.thread_crit_edge, %bb.b
  %i.w = phi i64 [ %.pre105, %x509_check_issued_with_callback.exit.x509_check_issued_with_callback.exit.thread_crit_edge ], [ %i.o, %bb.b ]
  %i.x = and i64 %i.w, 524288
  %.not85 = icmp eq i64 %i.x, 0
  br i1 %.not85, label %bb.e, label %bb.q

bb.e:                                             ; preds = %x509_check_issued_with_callback.exit.thread
  %i.y = icmp slt i32 %i.d, 2
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 21, ptr %i.z, align 4, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.i, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = tail call i32 %i.ac(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i = icmp ult i32 %i.ad, 2
  br i1 %or.cond.i, label %call_verify_cb.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #13
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.d, -2                    ; 2 uses
  store i32 %i.ae, ptr %i.f, align 8, !tbaa !46
  br label %x509_check_issued_with_callback.exit.thread100.sink.split

x509_check_issued_with_callback.exit.thread100.sink.split: ; preds = %bb.h, %bb.u
  %.sink114 = phi i32 [ %i.bi, %bb.u ], [ %i.ae, %bb.h ] ; 2 uses
  %.065.ph = phi ptr [ %.270, %bb.u ], [ %i.i, %bb.h ]
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ag = zext nneg i32 %.sink114 to i64
  %i.ah = tail call ptr @OPENSSL_sk_value(ptr noundef %i.af, i64 noundef %i.ag) #12
  br label %x509_check_issued_with_callback.exit.thread100
end_hunk_1
begin_hunk_2_@X509_NAME_cmp

declare ptr @X509_CRL_get_issuer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_crl_time(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = and i64 %i.f, 2097152
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i32 %2, 0                     ; 6 uses
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.h, align 8, !tbaa !58
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = and i64 %i.f, 2
  %.not31 = icmp eq i64 %i.i, 0
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.d, align 8, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = tail call i64 @time(ptr noundef null) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.k, %bb.f ]  ; 2 uses
  %i.l = tail call ptr @X509_CRL_get0_lastUpdate(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.m = call i32 @ASN1_TIME_to_posix(ptr noundef %i.l, ptr noundef nonnull %i.b) #12
  %.not.i = icmp eq i32 %i.m, 0
  %i.n = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %.not30, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 15, ptr %i.o, align 4, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = call i32 %i.q(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i = icmp ult i32 %i.r, 2
  br i1 %or.cond.i, label %call_verify_cb.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @abort() #13
  unreachable

call_verify_cb.exit:                              ; preds = %bb.i
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %bb.v, label %.thread

bb.k:                                             ; preds = %bb.g
  %.not2.i = icmp sgt i64 %i.n, %.0
  br i1 %.not2.i, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  br i1 %.not30, label %bb.v, label %.thread46

.thread46:                                        ; preds = %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 11, ptr %i.s, align 4, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = call i32 %i.u(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i37 = icmp ult i32 %i.v, 2
  br i1 %or.cond.i37, label %call_verify_cb.exit38, label %bb.m

bb.m:                                             ; preds = %.thread46
  call void @abort() #13
  unreachable

call_verify_cb.exit38:                            ; preds = %.thread46
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.v, label %.thread

.thread:                                          ; preds = %call_verify_cb.exit, %call_verify_cb.exit38, %bb.k
  %i.w = call ptr @X509_CRL_get0_nextUpdate(ptr noundef %1) #12
  %.not34 = icmp eq ptr %i.w, null
  br i1 %.not34, label %bb.u, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.x = call ptr @X509_CRL_get0_nextUpdate(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.y = call i32 @ASN1_TIME_to_posix(ptr noundef %i.x, ptr noundef nonnull %i.a) #12
  %.not.i39 = icmp eq i32 %i.y, 0
  %i.z = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not.i39, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %.not30, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 16, ptr %i.aa, align 4, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = call i32 %i.ac(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i42 = icmp ult i32 %i.ad, 2
  br i1 %or.cond.i42, label %call_verify_cb.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @abort() #13
  unreachable

call_verify_cb.exit43:                            ; preds = %bb.p
  %.not35 = icmp eq i32 %i.ad, 0
  br i1 %.not35, label %bb.v, label %.thread49

bb.r:                                             ; preds = %bb.n
  %.not2.i40.not = icmp sgt i64 %i.z, %.0
  br i1 %.not2.i40.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not30, label %bb.v, label %.thread48

.thread48:                                        ; preds = %bb.s
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 12, ptr %i.ae, align 4, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ah = call i32 %i.ag(i32 noundef 0, ptr noundef nonnull %0) #12, !inline_history !0 ; 2 uses
  %or.cond.i44 = icmp ult i32 %i.ah, 2
  br i1 %or.cond.i44, label %call_verify_cb.exit45, label %bb.t

bb.t:                                             ; preds = %.thread48
  call void @abort() #13
  unreachable

call_verify_cb.exit45:                            ; preds = %.thread48
  %.not36 = icmp eq i32 %i.ah, 0
  br i1 %.not36, label %bb.v, label %.thread49

bb.u:                                             ; preds = %bb.r, %.thread
  br i1 %.not30, label %bb.v, label %.thread49

.thread49:                                        ; preds = %call_verify_cb.exit43, %call_verify_cb.exit45, %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.ai, align 8, !tbaa !58
  br label %bb.v

bb.v:                                             ; preds = %call_verify_cb.exit45, %bb.h, %call_verify_cb.exit, %bb.l, %call_verify_cb.exit38, %bb.o, %call_verify_cb.exit43, %bb.s, %.thread49, %bb.u, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 0, %call_verify_cb.exit45 ], [ 0, %bb.s ], [ 0, %call_verify_cb.exit43 ], [ 0, %bb.o ], [ 0, %call_verify_cb.exit38 ], [ 0, %bb.l ], [ 0, %call_verify_cb.exit ], [ 0, %bb.h ], [ 1, %.thread49 ], [ 1, %bb.u ]
  ret i32 %.1
}

declare ptr @X509_CRL_get0_nextUpdate(ptr noundef) local_unnamed_addr #2

declare i32 @X509_check_akid(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GENERAL_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_X509_CRL_call_free_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #9 {
bb.a:
  tail call void %0(ptr noundef %1) #12
  ret void
}

declare i32 @X509_CRL_verify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_X509_call_free_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #9 {
bb.a:
  tail call void %0(ptr noundef %1) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sk_ASN1_OBJECT_call_free_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #9 {
bb.a:
  tail call void %0(ptr noundef %1) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{ptr @x509_check_issued_with_callback, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS13x509_store_st", !10, i64 0}
!12 = !{!"p1 _ZTS7x509_st", !10, i64 0}
!13 = !{!"p1 _ZTS13stack_st_X509", !10, i64 0}
!14 = !{!"p1 _ZTS17stack_st_X509_CRL", !10, i64 0}
!15 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !10, i64 0}
!16 = !{!"p1 _ZTS11X509_crl_st", !10, i64 0}
!17 = !{!"p1 _ZTS20stack_st_ASN1_OBJECT", !10, i64 0}
!18 = !{!"p1 _ZTS13stack_st_void", !10, i64 0}
!19 = !{!"crypto_ex_data_st", !18, i64 0}
!20 = !{!"x509_store_ctx_st", !11, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !13, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !7, i64 88, !13, i64 96, !7, i64 104, !7, i64 108, !12, i64 112, !12, i64 120, !16, i64 128, !7, i64 136, !17, i64 144, !19, i64 152}
!21 = !{!20, !15, i64 32}
!22 = !{!20, !12, i64 8}
!23 = !{!20, !13, i64 96}
!24 = !{!"long", !6, i64 0}
!25 = !{!"p1 _ZTS23stack_st_OPENSSL_STRING", !10, i64 0}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = !{!"X509_VERIFY_PARAM_st", !24, i64 0, !24, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !17, i64 32, !25, i64 40, !7, i64 48, !26, i64 56, !24, i64 64, !26, i64 72, !24, i64 80, !6, i64 88, !24, i64 96}
!28 = !{!27, !24, i64 8}
!29 = !{!20, !7, i64 88}
!30 = !{!20, !13, i64 16}
!31 = !{!"p1 _ZTS13X509_algor_st", !10, i64 0}
!32 = !{!"p1 _ZTS14asn1_string_st", !10, i64 0}
!33 = !{!"x509_sig_info_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!34 = !{!"p1 _ZTS18AUTHORITY_KEYID_st", !10, i64 0}
!35 = !{!"p1 _ZTS19stack_st_DIST_POINT", !10, i64 0}
!36 = !{!"p1 _ZTS21stack_st_GENERAL_NAME", !10, i64 0}
!37 = !{!"p1 _ZTS19NAME_CONSTRAINTS_st", !10, i64 0}
!38 = !{!"p1 _ZTS16x509_cert_aux_st", !10, i64 0}
!39 = !{!"p1 _ZTS16crypto_buffer_st", !10, i64 0}
!40 = !{!"x509_st", !10, i64 0, !31, i64 8, !32, i64 16, !33, i64 24, !7, i64 40, !19, i64 48, !24, i64 56, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !32, i64 80, !34, i64 88, !35, i64 96, !36, i64 104, !37, i64 112, !6, i64 120, !38, i64 152, !39, i64 160, !6, i64 168}
!41 = !{!40, !7, i64 64}
!42 = !{!20, !13, i64 40}
!43 = !{!12, !12, i64 0}
!44 = !{!20, !7, i64 108}
!45 = !{!20, !12, i64 112}
!46 = !{!20, !7, i64 104}
!47 = !{!20, !10, i64 48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!20, !12, i64 120}
!50 = !{!27, !24, i64 0}
!51 = !{!27, !7, i64 20}
!52 = !{!27, !7, i64 16}
!53 = !{!20, !17, i64 144}
!54 = !{!20, !10, i64 80}
!55 = !{!27, !7, i64 48}
!56 = !{!16, !16, i64 0}
!57 = !{!20, !7, i64 136}
!58 = !{!20, !16, i64 128}
!59 = !{!"p1 _ZTS21ISSUING_DIST_POINT_st", !10, i64 0}
!60 = !{!"X509_crl_st", !10, i64 0, !31, i64 8, !32, i64 16, !7, i64 24, !7, i64 28, !34, i64 32, !59, i64 40, !7, i64 48, !6, i64 52}
!61 = !{!60, !7, i64 28}
!62 = !{!"GENERAL_NAME_st", !7, i64 0, !6, i64 8}
!63 = !{!62, !7, i64 0}
!64 = !{!24, !24, i64 0}
!65 = !{!20, !14, i64 24}
!66 = !{!7, !7, i64 0}
!67 = !{!60, !7, i64 48}
!68 = distinct !{!68, !48}
!69 = distinct !{!69, !48}
!70 = distinct !{!70, !48}
!71 = !{!27, !7, i64 24}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !48}
!77 = distinct !{null}
!78 = distinct !{!78, !48}
!79 = !{!"p1 _ZTS14asn1_object_st", !10, i64 0}
!80 = !{!"X509_extension_st", !79, i64 0, !7, i64 8, !32, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!27, !24, i64 96}
!83 = !{!40, !24, i64 56}
!84 = distinct !{null, null}
!85 = distinct !{!85, !48}
!86 = !{!27, !6, i64 88}
!87 = !{!27, !25, i64 40}
!88 = !{!27, !26, i64 56}
!89 = !{!27, !24, i64 64}
!90 = !{!27, !26, i64 72}
!91 = !{!27, !24, i64 80}
!92 = distinct !{!92, !48}
!93 = distinct !{null}
!94 = distinct !{null, null}
!95 = distinct !{null, null, null}
!96 = !{!20, !10, i64 64}
!97 = !{!20, !10, i64 72}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = !{!40, !37, i64 112}
!103 = !{!27, !17, i64 32}
!104 = !{!20, !11, i64 0}
!105 = !{!"p1 _ZTS20stack_st_X509_OBJECT", !10, i64 0}
!106 = !{!"p1 _ZTS20stack_st_X509_LOOKUP", !10, i64 0}
!107 = !{!"x509_store_st", !105, i64 0, !6, i64 8, !106, i64 64, !15, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !7, i64 112, !19, i64 120}
!108 = !{!107, !10, i64 80}
!109 = !{!107, !15, i64 72}
!110 = !{!10, !10, i64 0}
!111 = !{!20, !10, i64 56}
!112 = !{!40, !7, i64 68}
!113 = distinct !{!113, !48}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = distinct !{!116, !48}
!117 = distinct !{!117, !48}
!118 = distinct !{!118, !48}
!119 = !{!60, !34, i64 32}
!120 = !{!40, !35, i64 96}
!121 = !{!"p1 _ZTS18DIST_POINT_NAME_st", !10, i64 0}
!122 = !{!"DIST_POINT_st", !121, i64 0, !32, i64 8, !36, i64 16}
!123 = !{!122, !32, i64 8}
!124 = !{!122, !36, i64 16}
!125 = !{!60, !59, i64 40}
!126 = !{!"ISSUING_DIST_POINT_st", !121, i64 0, !7, i64 8, !7, i64 12, !32, i64 16, !7, i64 24, !7, i64 28}
!127 = !{!126, !121, i64 0}
!128 = !{!122, !121, i64 0}
!129 = !{!"p1 _ZTS12X509_name_st", !10, i64 0}
!130 = !{!"DIST_POINT_NAME_st", !7, i64 0, !6, i64 8, !129, i64 16}
!131 = !{!130, !7, i64 0}
!132 = !{!130, !129, i64 16}
!133 = !{!6, !6, i64 0}
end_hunk_2
