inline.NumInlined: 75
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@NormalizeSubWord:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.kc = load i8, ptr %i.je, align 1
  %i.kd = icmp eq i8 %i.kc, 0
  br i1 %i.kd, label %.loopexit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ke = lshr i32 %i.jr, 13
  %i.kf = load ptr, ptr %i.dq, align 8
  %i.kg = zext nneg i32 %i.ke to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = load ptr, ptr %i.kh, align 8
  store ptr %i.ki, ptr %i.a, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  %i.kj = load ptr, ptr %i.a, align 8
  %i.kk = load i8, ptr %i.kj, align 1
  %.not.not.i.i196 = icmp eq i8 %i.kk, 0
  br i1 %.not.not.i.i196, label %IsAffixFlagInUse.exit.i198, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call fastcc void @getNextFlagFromString(ptr noundef nonnull readonly %0, ptr noundef %i.a, ptr noundef %i.b)
  %i.kl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull readonly dereferenceable(1) %i.je) #16
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %.loopexit, label %bb.bw, !llvm.loop !35

IsAffixFlagInUse.exit.i198:                       ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bz

bb.by:                                            ; preds = %bb.bp
  %i.kn = icmp samesign ult i32 %i.js, %i.jl      ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %.136.i191 = select i1 %i.kn, ptr %i.ko, ptr %.03555.i190 ; 2 uses
  %.134.i192 = select i1 %i.kn, ptr %.03356.i189, ptr %i.jq ; 2 uses
  %i.kp = icmp ult ptr %.136.i191, %.134.i192
  br i1 %i.kp, label %bb.bp, label %FindWord.exit201.thread, !llvm.loop !54

bb.bz:                                            ; preds = %IsAffixFlagInUse.exit.i198, %bb.bq
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8            ; 2 uses
  %.not51.i199 = icmp eq ptr %i.kr, null
  br i1 %.not51.i199, label %FindWord.exit201.thread, label %.preheader.i182, !llvm.loop !55

.loopexit:                                        ; preds = %bb.bu, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ks = ptrtoint ptr %.8301 to i64
  %i.kt = sub i64 %i.ks, %i.dr
  %i.ku = icmp sgt i64 %i.kt, 8176
  br i1 %i.ku, label %addToResult.exit204, label %bb.ca

bb.ca:                                            ; preds = %.loopexit
  %i.kv = icmp eq ptr %i.o, %.8301
  br i1 %i.kv, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kw = getelementptr inbounds i8, ptr %.8301, i64 -8
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.kx) #16
  %.not.i202 = icmp eq i32 %i.ky, 0
  br i1 %.not.i202, label %addToResult.exit204, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.kz = call ptr @pstrdup(ptr noundef nonnull %i.h) #13
  store ptr %i.kz, ptr %.8301, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %.8301, i64 8
  store ptr null, ptr %i.la, align 8
  br label %addToResult.exit204

addToResult.exit204:                              ; preds = %.loopexit, %bb.cb, %bb.cc
  %.0.i203 = phi i64 [ 0, %.loopexit ], [ 1, %bb.cc ], [ 0, %bb.cb ]
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.8301, i64 %.0.i203
  br label %FindWord.exit201.thread

FindWord.exit201.thread:                          ; preds = %.preheader.i182, %bb.bz, %bb.bt, %bb.bs, %bb.bo, %bb.by, %bb.bn, %addToResult.exit204, %bb.bk
  %.10 = phi ptr [ %.8301, %bb.bk ], [ %i.lb, %addToResult.exit204 ], [ %.8301, %bb.bn ], [ %.8301, %bb.by ], [ %.8301, %bb.bo ], [ %.8301, %bb.bs ], [ %.8301, %bb.bt ], [ %.8301, %bb.bz ], [ %.8301, %.preheader.i182 ] ; 3 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %i.lc = load i32, ptr %.035.i159, align 8
  %i.ld = lshr i32 %i.lc, 8
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = icmp samesign ult i64 %indvars.iv.next375, %i.le
  br i1 %i.lf, label %bb.bk, label %._crit_edge304, !llvm.loop !58

._crit_edge304:                                   ; preds = %FindWord.exit201.thread
  %i.lg = getelementptr inbounds nuw i8, ptr %.035.i159, i64 16
  %.187 = load ptr, ptr %i.lg, align 8            ; 2 uses
  %.not105 = icmp eq ptr %.187, null
  br i1 %.not105, label %FindAffixes.exit180.thread, label %bb.bc, !llvm.loop !59

.FindAffixes.exit180.thread.loopexit469_crit_edge: ; preds = %bb.bj
  br label %FindAffixes.exit180.thread, !llvm.loop !52

FindAffixes.exit180.thread:                       ; preds = %._crit_edge304, %bb.be, %.preheader.i161, %bb.bf, %.preheader.split.us.i166, %bb.bh, %.FindAffixes.exit180.thread.loopexit469_crit_edge, %FindWord.exit153.thread, %bb.al
  %.11 = phi ptr [ %.5316, %bb.al ], [ %.7309, %.FindAffixes.exit180.thread.loopexit469_crit_edge ], [ %.6, %FindWord.exit153.thread ], [ %.7309, %bb.bf ], [ %.7309, %bb.bh ], [ %.7309, %.preheader.split.us.i166 ], [ %.7309, %.preheader.i161 ], [ %.10, %._crit_edge304 ], [ %.7309, %bb.be ] ; 3 uses
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %i.lh = load i32, ptr %.035.i121, align 8
  %i.li = lshr i32 %i.lh, 8
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = icmp samesign ult i64 %indvars.iv.next378, %i.lj
  br i1 %i.lk, label %bb.al, label %._crit_edge319, !llvm.loop !60

._crit_edge319:                                   ; preds = %FindAffixes.exit180.thread
  %i.ll = getelementptr inbounds nuw i8, ptr %.035.i121, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  %.not101 = icmp eq ptr %i.lm, null
  br i1 %.not101, label %.loopexit245, label %bb.ad

.loopexit245:                                     ; preds = %._crit_edge319, %FindAffixes.exit.thread, %.thread
  %.4274 = phi ptr [ %.4323, %.thread ], [ %.191287, %FindAffixes.exit.thread ], [ %.11, %._crit_edge319 ]
  %i.ln = icmp eq ptr %.4274, %i.o
  br i1 %i.ln, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.loopexit245
  call void @pfree(ptr noundef nonnull %i.o) #13
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit245, %bb.a, %bb.cd
  %.092 = phi ptr [ null, %bb.a ], [ null, %bb.cd ], [ %i.o, %.loopexit245 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  ret ptr %.092
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @SplitToVariants(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %5, %bb.b ], [ %6, %bb.a ]     ; 2 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]
  tail call void @check_stack_depth() #13
  %i.f = sext i32 %4 to i64                       ; 2 uses
  %i.g = tail call ptr @palloc(i64 noundef %i.f) #13 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 1, i64 %i.f, i1 false)
  %i.h = tail call ptr @palloc(i64 noundef 24) #13 ; 28 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.i, align 8
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.k, ptr %i.l, align 4
  %i.m = sext i32 %i.k to i64
  %i.n = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.m) #13
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load i32, ptr %2, align 8                ; 2 uses
  store i32 %i.p, ptr %i.h, align 8
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %CopyVar.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.split.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @pstrdup(ptr noundef %i.u) #13
  %i.w = load ptr, ptr %i.o, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  store ptr %i.v, ptr %i.x, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = load i32, ptr %2, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next.i, %i.z
  br i1 %i.aa, label %.lr.ph.split.i, label %CopyVar.exit, !llvm.loop !61

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 16, ptr %i.ab, align 4
  %i.ac = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef 16) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  store i32 0, ptr %i.h, align 8
  br label %CopyVar.exit

CopyVar.exit:                                     ; preds = %.lr.ph.split.i, %bb.d, %bb.e
  %i.ae = icmp slt i32 %i.d, %4
  br i1 %i.ae, label %.lr.ph241.lr.ph, label %.critedge.thread

.lr.ph241.lr.ph:                                  ; preds = %CopyVar.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = add nsw i32 %4, -1                      ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph241

.lr.ph241:                                        ; preds = %.lr.ph241.lr.ph, %AddStem.exit185
  %.0134.ph246 = phi i32 [ %i.d, %.lr.ph241.lr.ph ], [ %i.fb, %AddStem.exit185 ]
  %.0135.ph245 = phi ptr [ %i.e, %.lr.ph241.lr.ph ], [ %i.gh, %AddStem.exit185 ]
  %.0144.ph244 = phi i32 [ %5, %.lr.ph241.lr.ph ], [ %i.fb, %AddStem.exit185 ] ; 10 uses
  %i.ak = sext i32 %.0144.ph244 to i64
  %i.al = getelementptr inbounds i8, ptr %3, i64 %i.ak ; 3 uses
  %i.am = icmp eq i32 %.0144.ph244, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph241, %.loopexit
  %.0134239 = phi i32 [ %.0134.ph246, %.lr.ph241 ], [ %9, %.loopexit ] ; 14 uses
  %.0135238 = phi ptr [ %.0135.ph245, %.lr.ph241 ], [ %.1136, %.loopexit ] ; 5 uses
  %i.an = icmp sgt i32 %.0134239, %.0144.ph244
  br i1 %i.an, label %.lr.ph233, label %.critedge

.lr.ph233:                                        ; preds = %bb.f
  %i.ao = load ptr, ptr %i.af, align 8            ; 2 uses
  %7 = sext i32 %.0134239 to i64
  %i.ap = getelementptr inbounds i8, ptr %3, i64 %7 ; 3 uses
  %i.aq = sub i32 %4, %.0134239                   ; 2 uses
  %.not207 = icmp eq ptr %.0135238, null
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i32 %.0134239, %.0144.ph244
  %i.at = add nsw i32 %.0134239, -1
  %i.au = icmp eq i32 %.0134239, 0
  %i.av = icmp eq i32 %.0134239, %i.ag
  %. = select i1 %i.av, i32 8, i32 4
  %.0133 = select i1 %i.au, i32 2, i32 %.
  %i.aw = icmp eq ptr %i.ao, null
  br i1 %i.aw, label %.critedge, label %.lr.ph367

.lr.ph367:                                        ; preds = %.lr.ph233, %bb.u
  %.0192231366 = phi ptr [ %i.bx, %bb.u ], [ %i.ao, %.lr.ph233 ] ; 3 uses
  %i.ax = load ptr, ptr %.0192231366, align 8     ; 3 uses
  %.not3546.i = icmp eq ptr %i.ax, null           ; 2 uses
  br i1 %.not207, label %.preheader37.i, label %.preheader.i

.preheader37.i:                                   ; preds = %.lr.ph367
  br i1 %.not3546.i, label %.critedge.thread, label %.lr.ph.i168

.preheader.i:                                     ; preds = %.lr.ph367
  br i1 %.not3546.i, label %.critedge.thread205, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.preheader.i, %bb.h
  %i.ay = phi ptr [ %i.bh, %bb.h ], [ %i.ax, %.preheader.i ]
  %i.az = phi ptr [ %i.bg, %bb.h ], [ %.0192231366, %.preheader.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8            ; 3 uses
  %i.bc = icmp sgt i32 %i.aq, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph47.i
  %i.bd = sext i32 %i.bb to i64
  %i.be = call i32 @strncmp(ptr noundef nonnull %i.ay, ptr noundef %i.ap, i64 noundef %i.bd) #16
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.thread.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph47.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not35.i = icmp eq ptr %i.bh, null
  br i1 %.not35.i, label %.critedge, label %.lr.ph47.i, !llvm.loop !62

.lr.ph.i168:                                      ; preds = %.preheader37.i, %bb.j
  %i.bi = phi ptr [ %i.bp, %bb.j ], [ %i.ax, %.preheader37.i ]
  %i.bj = phi ptr [ %i.bo, %bb.j ], [ %.0192231366, %.preheader37.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp sgt i32 %i.aq, %i.bl
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i168
  %i.bn = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) %i.bi) #16 ; 2 uses
  %.not34.i = icmp eq ptr %i.bn, null
  br i1 %.not34.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph.i168
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i169 = icmp eq ptr %i.bp, null
  br i1 %.not.i169, label %.critedge, label %.lr.ph.i168, !llvm.loop !63

bb.k:                                             ; preds = %bb.i
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bq, %i.ar
  %i.bs = trunc i64 %i.br to i32
  %i.bt = add i32 %i.bl, %i.bs
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.g, %bb.k
  %.lcssa71.sink76.i = phi ptr [ %i.bj, %bb.k ], [ %i.az, %bb.g ] ; 2 uses
  %.sink73.i = phi i32 [ %i.bt, %bb.k ], [ %i.bb, %bb.g ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.lcssa71.sink76.i, i64 12
  %i.bv = load i8, ptr %i.bu, align 4, !range !24, !noundef !25
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %.lcssa71.sink76.i, i64 16
  br i1 %i.bw, label %CheckCompoundAffixes.exit, label %CheckCompoundAffixes.exit.thread196

CheckCompoundAffixes.exit:                        ; preds = %.thread.sink.split.i
  %i.by = icmp sgt i32 %.sink73.i, -1
  br i1 %i.by, label %CheckCompoundAffixes.exit.thread196, label %.critedge

CheckCompoundAffixes.exit.thread196:              ; preds = %.thread.sink.split.i, %CheckCompoundAffixes.exit
  %.1.i200 = phi i32 [ %.sink73.i, %CheckCompoundAffixes.exit ], [ 0, %.thread.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bz = add i32 %.1.i200, %i.as                 ; 5 uses
  %i.ca = add i32 %.1.i200, %.0134239             ; 3 uses
  %i.cb = add i32 %i.ca, -1
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.g, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1
  %.not161 = icmp eq i8 %i.ce, 0
  br i1 %.not161, label %bb.u, label %bb.l, !llvm.loop !64

bb.l:                                             ; preds = %CheckCompoundAffixes.exit.thread196
  %i.cf = add i32 %i.at, %i.bz
  %.not162 = icmp sle i32 %i.cf, %6
  %i.cg = icmp sgt i32 %i.bz, 255
  %or.cond167 = or i1 %i.cg, %.not162
  br i1 %or.cond167, label %bb.u, label %bb.m, !llvm.loop !64

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp sgt i32 %i.bz, 0
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = zext nneg i32 %i.bz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.al, i64 %i.ci, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cj = sext i32 %i.bz to i64
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cj
  store i8 0, ptr %i.ck, align 1
  %i.cl = call fastcc ptr @NormalizeSubWord(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.0133) ; 4 uses
  %.not163 = icmp eq ptr %i.cl, null
  br i1 %.not163, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = call ptr @palloc(i64 noundef 24) #13    ; 13 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr null, ptr %i.cn, align 8
  %i.co = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = sext i32 %i.co to i64
  %i.cr = call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.cq) #13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = load i32, ptr %i.h, align 8             ; 2 uses
  store i32 %i.ct, ptr %i.cm, align 8
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.split.us.i, label %CopyVar.exit172

.lr.ph.split.us.i:                                ; preds = %bb.p, %.lr.ph.split.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph.split.us.i ], [ 0, %bb.p ] ; 3 uses
  %i.cv = load ptr, ptr %i.ai, align 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv27.i
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.cs, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv27.i
  store ptr %i.cx, ptr %i.cz, align 8
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %i.da = load i32, ptr %i.h, align 8
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next28.i, %i.db
  br i1 %i.dc, label %.lr.ph.split.us.i, label %CopyVar.exit172, !llvm.loop !61

CopyVar.exit172:                                  ; preds = %.lr.ph.split.us.i, %bb.p
  store i8 0, ptr %i.cd, align 1
  %i.dd = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not164229 = icmp eq ptr %i.dd, null
  br i1 %.not164229, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %CopyVar.exit172
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %.pre = load i32, ptr %i.cm, align 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %AddStem.exit
  %i.dg = phi i32 [ %.pre, %.lr.ph ], [ %i.dt, %AddStem.exit ] ; 2 uses
  %i.dh = phi ptr [ %i.dd, %.lr.ph ], [ %i.dv, %AddStem.exit ]
  %.0131230 = phi ptr [ %i.cl, %.lr.ph ], [ %i.du, %AddStem.exit ]
  %i.di = load i32, ptr %i.de, align 4            ; 2 uses
  %.not.i173 = icmp slt i32 %i.dg, %i.di
  br i1 %.not.i173, label %._crit_edge.i, label %bb.r

._crit_edge.i:                                    ; preds = %bb.q
  %.pre.i = load ptr, ptr %i.df, align 8
  br label %AddStem.exit

bb.r:                                             ; preds = %bb.q
  %i.dj = shl i32 %i.di, 1                        ; 2 uses
  store i32 %i.dj, ptr %i.de, align 4
  %i.dk = load ptr, ptr %i.df, align 8
  %i.dl = sext i32 %i.dj to i64
  %i.dm = shl nsw i64 %i.dl, 3
  %i.dn = call ptr @repalloc(ptr noundef %i.dk, i64 noundef %i.dm) #13 ; 2 uses
  store ptr %i.dn, ptr %i.df, align 8
  %.pre10.i = load i32, ptr %i.cm, align 8
  br label %AddStem.exit

AddStem.exit:                                     ; preds = %._crit_edge.i, %bb.r
  %i.do = phi i32 [ %i.dg, %._crit_edge.i ], [ %.pre10.i, %bb.r ]
  %i.dp = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dn, %bb.r ]
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  store ptr %i.dh, ptr %i.dr, align 8
  %i.ds = load i32, ptr %i.cm, align 8
  %i.dt = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.dt, ptr %i.cm, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %.0131230, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %.not164 = icmp eq ptr %i.dv, null
  br i1 %.not164, label %._crit_edge, label %bb.q, !llvm.loop !65

._crit_edge:                                      ; preds = %AddStem.exit, %CopyVar.exit172
  call void @pfree(ptr noundef nonnull %i.cl) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %._crit_edge
  %.0132 = phi ptr [ %i.h, %._crit_edge ], [ %i.dx, %bb.s ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0132, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not165 = icmp eq ptr %i.dx, null
  br i1 %.not165, label %bb.t, label %bb.s, !llvm.loop !66

bb.t:                                             ; preds = %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %.0132, i64 16
  %i.dz = call fastcc ptr @SplitToVariants(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.cm, ptr noundef %3, i32 noundef %4, i32 noundef %i.ca, i32 noundef %i.ca)
  store ptr %i.dz, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void @pfree(ptr noundef %i.eb) #13
  call void @pfree(ptr noundef nonnull %i.cm) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.t, %bb.l, %CheckCompoundAffixes.exit.thread196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.lr.ph367

.critedge:                                        ; preds = %CheckCompoundAffixes.exit, %bb.h, %bb.j, %.lr.ph233, %bb.f
  %.not156 = icmp eq ptr %.0135238, null
  br i1 %.not156, label %.critedge.thread, label %.critedge.thread205

.critedge.thread205:                              ; preds = %.preheader.i, %.critedge
  %i.ec = load i32, ptr %.0135238, align 8        ; 2 uses
  %.not248 = icmp eq i32 %i.ec, 0
  br i1 %.not248, label %.loopexit, label %.lr.ph237

.lr.ph237:                                        ; preds = %.critedge.thread205
  %i.ed = zext i32 %i.ec to i64
  %.idx = shl nuw nsw i64 %i.ed, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.0135238, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx
  %8 = sext i32 %.0134239 to i64                  ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %3, i64 %8
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = zext i8 %i.eh to i32                    ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph237, %bb.w
  %.0139236 = phi ptr [ %i.ef, %.lr.ph237 ], [ %.1140, %bb.w ] ; 2 uses
  %.0141235 = phi ptr [ %i.ee, %.lr.ph237 ], [ %.1142, %bb.w ] ; 3 uses
  %i.ej = ptrtoint ptr %.0139236 to i64
  %i.ek = ptrtoint ptr %.0141235 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr i64 %i.el, 5
  %i.en = getelementptr inbounds [16 x i8], ptr %.0141235, i64 %i.em ; 4 uses
  %i.eo = load i32, ptr %i.en, align 8            ; 3 uses
  %i.ep = and i32 %i.eo, 255                      ; 2 uses
  %i.eq = icmp eq i32 %i.ep, %i.ei
  br i1 %i.eq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = icmp samesign ult i32 %i.ep, %i.ei      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.1142 = select i1 %i.er, ptr %i.es, ptr %.0141235 ; 2 uses
  %.1140 = select i1 %i.er, ptr %.0139236, ptr %i.en ; 2 uses
  %i.et = icmp ult ptr %.1142, %.1140
  br i1 %i.et, label %bb.v, label %.loopexit, !llvm.loop !67

bb.x:                                             ; preds = %bb.v
  %i.eu = and i32 %i.eo, 256
  %.not157 = icmp eq i32 %i.eu, 0
  br i1 %.not157, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = icmp eq i32 %.0134239, %i.ag
  %.166 = select i1 %i.ev, i32 8, i32 4
  %.1 = select i1 %i.am, i32 2, i32 %.166
  %i.ew = lshr i32 %i.eo, 9
  %i.ex = and i32 %i.ew, %.1
  %.not158 = icmp eq i32 %i.ex, 0
  br i1 %.not158, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ey = getelementptr inbounds i8, ptr %i.g, i64 %8
  %i.ez = load i8, ptr %i.ey, align 1
  %.not159 = icmp ne i8 %i.ez, 0
  %i.fa = icmp sgt i32 %.0134239, %6
  %or.cond = and i1 %i.fa, %.not159
  br i1 %or.cond, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.fb = add i32 %.0134239, 1                    ; 6 uses
  %i.fc = icmp eq i32 %4, %i.fb
  br i1 %i.fc, label %bb.ab, label %.preheader

bb.ab:                                            ; preds = %bb.aa
  %i.fd = sub i32 %4, %.0144.ph244
  %i.fe = sext i32 %i.fd to i64
  %i.ff = call ptr @pnstrdup(ptr noundef %i.al, i64 noundef %i.fe) #13 ; 2 uses
  %i.fg = load i32, ptr %i.h, align 8             ; 2 uses
  %i.fh = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not.i174 = icmp slt i32 %i.fg, %i.fh
  br i1 %.not.i174, label %._crit_edge.i176, label %bb.ac

._crit_edge.i176:                                 ; preds = %bb.ab
  %.pre.i178 = load ptr, ptr %i.ai, align 8
  br label %AddStem.exit179

bb.ac:                                            ; preds = %bb.ab
  %i.fi = shl i32 %i.fh, 1                        ; 2 uses
  store i32 %i.fi, ptr %i.ah, align 4
  %i.fj = load ptr, ptr %i.ai, align 8
  %i.fk = sext i32 %i.fi to i64
  %i.fl = shl nsw i64 %i.fk, 3
  %i.fm = call ptr @repalloc(ptr noundef %i.fj, i64 noundef %i.fl) #13 ; 2 uses
  store ptr %i.fm, ptr %i.ai, align 8
  %.pre10.i175 = load i32, ptr %i.h, align 8
  br label %AddStem.exit179

.preheader:                                       ; preds = %bb.aa, %.preheader
  %.0 = phi ptr [ %i.fo, %.preheader ], [ %i.h, %bb.aa ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not160 = icmp eq ptr %i.fo, null
  br i1 %.not160, label %bb.ad, label %.preheader, !llvm.loop !68

bb.ad:                                            ; preds = %.preheader
  %i.fp = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.fq = call fastcc ptr @SplitToVariants(ptr noundef %0, ptr noundef nonnull %.0135238, ptr noundef %i.h, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %.0144.ph244, i32 noundef %.0134239)
  store ptr %i.fq, ptr %i.fp, align 8
  %i.fr = sub i32 %i.fb, %.0144.ph244
  %i.fs = sext i32 %i.fr to i64
  %i.ft = call ptr @pnstrdup(ptr noundef nonnull %i.al, i64 noundef %i.fs) #13
  %i.fu = load i32, ptr %i.h, align 8             ; 2 uses
  %i.fv = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not.i180 = icmp slt i32 %i.fu, %i.fv
  br i1 %.not.i180, label %._crit_edge.i182, label %bb.ae

._crit_edge.i182:                                 ; preds = %bb.ad
  %.pre.i184 = load ptr, ptr %i.ai, align 8
  br label %AddStem.exit185

bb.ae:                                            ; preds = %bb.ad
  %i.fw = shl i32 %i.fv, 1                        ; 2 uses
  store i32 %i.fw, ptr %i.ah, align 4
  %i.fx = load ptr, ptr %i.ai, align 8
  %i.fy = sext i32 %i.fw to i64
  %i.fz = shl nsw i64 %i.fy, 3
  %i.ga = call ptr @repalloc(ptr noundef %i.fx, i64 noundef %i.fz) #13 ; 2 uses
  store ptr %i.ga, ptr %i.ai, align 8
  %.pre10.i181 = load i32, ptr %i.h, align 8
  br label %AddStem.exit185

AddStem.exit185:                                  ; preds = %._crit_edge.i182, %bb.ae
  %i.gb = phi i32 [ %i.fu, %._crit_edge.i182 ], [ %.pre10.i181, %bb.ae ]
  %i.gc = phi ptr [ %.pre.i184, %._crit_edge.i182 ], [ %i.ga, %bb.ae ]
  %i.gd = sext i32 %i.gb to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  store ptr %i.ft, ptr %i.ge, align 8
  %i.gf = load i32, ptr %i.h, align 8
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr %i.h, align 8
  %i.gh = load ptr, ptr %i.aj, align 8
  %i.gi = icmp slt i32 %i.fb, %4
  br i1 %i.gi, label %.lr.ph241, label %.critedge.thread

bb.af:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.critedge.thread205, %bb.af
  %.1136 = phi ptr [ %i.gk, %bb.af ], [ null, %.critedge.thread205 ], [ null, %bb.w ]
  %9 = add i32 %.0134239, 1                       ; 2 uses
  %10 = icmp slt i32 %9, %4
  br i1 %10, label %bb.f, label %.critedge.thread, !llvm.loop !69

.critedge.thread:                                 ; preds = %AddStem.exit185, %.loopexit, %.critedge, %.preheader37.i, %CopyVar.exit
  %.0144.ph228 = phi i32 [ %5, %CopyVar.exit ], [ %.0144.ph244, %.preheader37.i ], [ %.0144.ph244, %.loopexit ], [ %.0144.ph244, %.critedge ], [ %i.fb, %AddStem.exit185 ] ; 2 uses
  %i.gl = sext i32 %.0144.ph228 to i64
  %i.gm = getelementptr inbounds i8, ptr %3, i64 %i.gl
  %i.gn = sub i32 %4, %.0144.ph228
  %i.go = sext i32 %i.gn to i64
  %i.gp = call ptr @pnstrdup(ptr noundef %i.gm, i64 noundef %i.go) #13 ; 2 uses
  %i.gq = load i32, ptr %i.h, align 8             ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4            ; 2 uses
  %.not.i186 = icmp slt i32 %i.gq, %i.gs
  br i1 %.not.i186, label %._crit_edge.i188, label %bb.ag

._crit_edge.i188:                                 ; preds = %.critedge.thread
  %.phi.trans.insert.i189 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i190 = load ptr, ptr %.phi.trans.insert.i189, align 8
  br label %AddStem.exit179

bb.ag:                                            ; preds = %.critedge.thread
  %i.gt = shl i32 %i.gs, 1                        ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = sext i32 %i.gt to i64
  %i.gx = shl nsw i64 %i.gw, 3
  %i.gy = call ptr @repalloc(ptr noundef %i.gv, i64 noundef %i.gx) #13 ; 2 uses
  store ptr %i.gy, ptr %i.gu, align 8
  %.pre10.i187 = load i32, ptr %i.h, align 8
  br label %AddStem.exit179

AddStem.exit179:                                  ; preds = %bb.ag, %._crit_edge.i188, %bb.ac, %._crit_edge.i176
  %.sink336 = phi i32 [ %.pre10.i175, %bb.ac ], [ %i.fg, %._crit_edge.i176 ], [ %i.gq, %._crit_edge.i188 ], [ %.pre10.i187, %bb.ag ]
  %.sink334 = phi ptr [ %i.fm, %bb.ac ], [ %.pre.i178, %._crit_edge.i176 ], [ %.pre.i190, %._crit_edge.i188 ], [ %i.gy, %bb.ag ]
  %.sink = phi ptr [ %i.ff, %bb.ac ], [ %i.ff, %._crit_edge.i176 ], [ %i.gp, %._crit_edge.i188 ], [ %i.gp, %bb.ag ]
  %i.gz = sext i32 %.sink336 to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %.sink334, i64 %i.gz
  store ptr %.sink, ptr %i.ha, align 8
  %i.hb = load i32, ptr %i.h, align 8
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.h, align 8
  call void @pfree(ptr noundef %i.g) #13
  ret ptr %i.h
}

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #1

declare ptr @MemoryContextAlloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @setCompoundAffixFlagValue(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 33) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = tail call ptr @__errno_location() #15    ; 2 uses
  store i32 0, ptr %i.e, align 4
  %i.f = call i64 @__isoc23_strtol(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 10) #13
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = icmp eq ptr %2, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.e, align 4
  %i.k = icmp eq i32 %i.j, 34
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.m = call i32 @errcode(i32 noundef 22) #13    ; 0 uses
  %i.n = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, ptr noundef nonnull %2) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1053, ptr noundef nonnull @__func__.setCompoundAffixFlagValue) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %or.cond = icmp ugt i32 %i.g, 65536
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.p = call i32 @errcode(i32 noundef 22) #13    ; 0 uses
  %i.q = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, ptr noundef nonnull %2) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1057, ptr noundef nonnull @__func__.setCompoundAffixFlagValue) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  store i32 %i.g, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #16 ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = icmp ugt i64 %i.s, 1024
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @palloc0(i64 noundef %i.s) #13
  br label %cpstrdup.exit

bb.j:                                             ; preds = %bb.h
  %i.v = add nsw i64 %i.r, 8
  %i.w = and i64 %i.v, 4088                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.j
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call ptr @palloc0(i64 noundef 8192) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %i.ab = phi i64 [ %i.y, %._crit_edge.i.i ], [ 8192, %bb.k ]
  %i.ac = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.aa, %bb.k ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.w
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = sub i64 %i.ab, %i.w
  store i64 %i.af, ptr %i.x, align 8
  br label %cpstrdup.exit

cpstrdup.exit:                                    ; preds = %bb.i, %bb.l
  %.0.i.i = phi ptr [ %i.u, %bb.i ], [ %i.ac, %bb.l ] ; 2 uses
  %i.ag = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0.i.i, ptr noundef nonnull readonly dereferenceable(1) %2) #13 ; 0 uses
  store ptr %.0.i.i, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %cpstrdup.exit, %bb.g
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %3, ptr %i.aj, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @t_isalpha_cstr(ptr noundef) local_unnamed_addr #1

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @RS_isRegis(ptr noundef) local_unnamed_addr #1

declare void @RS_compile(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare i32 @pg_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @pg_mb2wchar_with_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #1

declare i32 @pg_regcomp(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @pg_regerror(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @cmpcmdflag(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8                ; 2 uses
  %i.e = load i32, ptr %1, align 8                ; 2 uses
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %i.d, %i.e
  %i.h = select i1 %i.g, i32 1, i32 -1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8
  %i.j = load ptr, ptr %1, align 8
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.j) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
end_hunk_0
