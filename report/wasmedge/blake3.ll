Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/blake3?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@blake3_hasher_update:bb.a
  br i1 %.not.i74, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sub nsw i64 64, %i.t
  %spec.select.i86 = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %spec.select) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %spec.select.i86, i1 false)
  %i.z = trunc i64 %spec.select.i86 to i8
  %i.aa = load i8, ptr %i.r, align 8, !tbaa !15
  %i.ab = add i8 %i.aa, %i.z                      ; 2 uses
  store i8 %i.ab, ptr %i.r, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.i86 ; 2 uses
  %i.ad = sub nuw i64 %spec.select, %spec.select.i86 ; 2 uses
  %.not34.i75 = icmp eq i64 %i.ad, 0
  br i1 %.not34.i75, label %chunk_state_update.exit80, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !13
  %i.ai = load i8, ptr %i.n, align 1, !tbaa !14
  %i.aj = icmp eq i8 %i.ai, 0
  %..i93 = zext i1 %i.aj to i8
  %i.ak = or i8 %i.ah, %..i93
  tail call void @blake3_compress_in_place(ptr noundef nonnull %i.m, ptr noundef nonnull %i.x, i8 noundef zeroext 64, i64 noundef %i.af, i8 noundef zeroext %i.ak) #9
  %i.al = load i8, ptr %i.n, align 1, !tbaa !14
  %i.am = add i8 %i.al, 1
  store i8 %i.am, ptr %i.n, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.x, i8 0, i64 65, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.032.i76 = phi i64 [ %spec.select, %bb.c ], [ %i.ad, %bb.e ] ; 3 uses
  %.0.i77 = phi ptr [ %1, %bb.c ], [ %i.ac, %bb.e ] ; 2 uses
  %i.an = icmp ugt i64 %.032.i76, 64
  br i1 %i.an, label %.lr.ph, label %chunk_state_update.exit80

.lr.ph:                                           ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 138
  %.pre = load i8, ptr %i.n, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %i.aq = phi i8 [ %.pre, %.lr.ph ], [ %i.aw, %bb.g ]
  %.1.i79139 = phi ptr [ %.0.i77, %.lr.ph ], [ %i.ax, %bb.g ] ; 2 uses
  %.133.i78138 = phi i64 [ %.032.i76, %.lr.ph ], [ %i.ay, %bb.g ]
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.as = load i8, ptr %i.ap, align 2, !tbaa !13
  %i.at = icmp eq i8 %i.aq, 0
  %..i92 = zext i1 %i.at to i8
  %i.au = or i8 %i.as, %..i92
  tail call void @blake3_compress_in_place(ptr noundef nonnull %i.m, ptr noundef %.1.i79139, i8 noundef zeroext 64, i64 noundef %i.ar, i8 noundef zeroext %i.au) #9
  %i.av = load i8, ptr %i.n, align 1, !tbaa !14
  %i.aw = add i8 %i.av, 1                         ; 2 uses
  store i8 %i.aw, ptr %i.n, align 1, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i79139, i64 64 ; 2 uses
  %i.ay = add i64 %.133.i78138, -64               ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 64
  br i1 %i.az, label %bb.g, label %chunk_state_update.exit80.loopexit, !llvm.loop !0

chunk_state_update.exit80.loopexit:               ; preds = %bb.g
  %.pre194 = load i8, ptr %i.r, align 8, !tbaa !15
  br label %chunk_state_update.exit80

chunk_state_update.exit80:                        ; preds = %bb.d, %chunk_state_update.exit80.loopexit, %bb.f
  %i.ba = phi i8 [ 0, %bb.f ], [ %.pre194, %chunk_state_update.exit80.loopexit ], [ %i.ab, %bb.d ]
  %.133.i78.lcssa = phi i64 [ %.032.i76, %bb.f ], [ %i.ay, %chunk_state_update.exit80.loopexit ], [ 0, %bb.d ]
  %.1.i79.lcssa = phi ptr [ %.0.i77, %bb.f ], [ %i.ax, %chunk_state_update.exit80.loopexit ], [ %i.ac, %bb.d ]
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %i.bc = sub nsw i64 64, %i.bb
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %.133.i78.lcssa) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %.1.i79.lcssa, i64 %spec.select.i, i1 false)
  %i.bf = trunc nuw nsw i64 %spec.select.i to i8
  %i.bg = load i8, ptr %i.r, align 8, !tbaa !15
  %i.bh = add i8 %i.bg, %i.bf                     ; 3 uses
  store i8 %i.bh, ptr %i.r, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.bj = sub i64 %2, %spec.select                ; 2 uses
  %.not64.not = icmp eq i64 %i.bj, 0
  br i1 %.not64.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %chunk_state_update.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !13, !noalias !53
  %i.bm = load i8, ptr %i.n, align 1, !tbaa !14, !noalias !53
  %i.bn = icmp eq i8 %i.bm, 0
  %..i = zext i1 %i.bn to i8
  %i.bo = or i8 %i.bl, %..i
  %i.bp = or i8 %i.bo, 2                          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !16, !noalias !53 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i8 %i.bh, ptr %i.bt, align 8, !tbaa !19, !alias.scope !54
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.br, ptr %i.bu, align 8, !tbaa !20, !alias.scope !54
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 105
  store i8 %i.bp, ptr %i.bv, align 1, !tbaa !21, !alias.scope !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.i, ptr noundef nonnull %i.bs, i8 noundef zeroext %i.bh, i64 noundef %i.br, i8 noundef zeroext %i.bp) #9
  %i.bw = load <4 x i32>, ptr %i.i, align 16, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.by = load <4 x i32>, ptr %i.bx, align 16, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  %i.bz = load i64, ptr %i.bq, align 8, !tbaa !55 ; 2 uses
  %i.ca = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bz) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !12  ; 3 uses
  %i.cd = zext i8 %i.cc to i64                    ; 2 uses
  %i.ce = icmp samesign ult i64 %i.ca, %i.cd
  br i1 %i.ce, label %.lr.ph141, label %hasher_merge_cv_stack.exit

.lr.ph141:                                        ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 105
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ck = trunc nuw nsw i64 %i.ca to i8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph141, %bb.i
  %i.cl = phi i8 [ %i.cc, %.lr.ph141 ], [ %i.cw, %bb.i ]
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 5
  %i.co = getelementptr i8, ptr %0, i64 %i.cn     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.cq = load i8, ptr %i.bk, align 2, !tbaa !23
  %i.cr = or i8 %i.cq, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 1 dereferenceable(64) %i.cp, i64 64, i1 false)
  store i8 64, ptr %i.cg, align 8, !tbaa !19, !alias.scope !56
  store i64 0, ptr %i.ch, align 8, !tbaa !20, !alias.scope !56
  store i8 %i.cr, ptr %i.ci, align 1, !tbaa !21, !alias.scope !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.f, ptr noundef nonnull %i.cf, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.cr) #9
  %i.cs = load <4 x i32>, ptr %i.f, align 16, !tbaa !22
  store <4 x i32> %i.cs, ptr %i.cp, align 1
  %i.ct = getelementptr i8, ptr %i.co, i64 97
  %i.cu = load <4 x i32>, ptr %i.cj, align 16, !tbaa !22
  store <4 x i32> %i.cu, ptr %i.ct, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %i.cv = load i8, ptr %i.cb, align 8, !tbaa !12
  %i.cw = add i8 %i.cv, -1                        ; 5 uses
  store i8 %i.cw, ptr %i.cb, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.cx = icmp ugt i8 %i.cw, %i.ck
  br i1 %i.cx, label %bb.i, label %hasher_merge_cv_stack.exit.loopexit, !llvm.loop !35

hasher_merge_cv_stack.exit.loopexit:              ; preds = %bb.i
  %.pre195 = load i64, ptr %i.bq, align 8, !tbaa !55
  %.pre207 = zext nneg i8 %i.cw to i64
  br label %hasher_merge_cv_stack.exit

hasher_merge_cv_stack.exit:                       ; preds = %hasher_merge_cv_stack.exit.loopexit, %bb.h
  %.pre-phi208 = phi i64 [ %.pre207, %hasher_merge_cv_stack.exit.loopexit ], [ %i.cd, %bb.h ]
  %i.cy = phi i64 [ %.pre195, %hasher_merge_cv_stack.exit.loopexit ], [ %i.bz, %bb.h ]
  %.lcssa136 = phi i8 [ %i.cw, %hasher_merge_cv_stack.exit.loopexit ], [ %i.cc, %bb.h ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.da = shl nuw nsw i64 %.pre-phi208, 5
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da ; 2 uses
  store <4 x i32> %i.bw, ptr %i.db, align 1
  %.sroa.19115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <4 x i32> %i.by, ptr %.sroa.19115.0..sroa_idx, align 1
  %i.dc = add i8 %.lcssa136, 1
  store i8 %i.dc, ptr %i.cb, align 8, !tbaa !12
  %i.dd = add i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 %i.dd, ptr %i.bq, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.bd, i8 0, i64 66, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.j

bb.j:                                             ; preds = %hasher_merge_cv_stack.exit, %bb.b
  %.060 = phi i64 [ %i.bj, %hasher_merge_cv_stack.exit ], [ %2, %bb.b ] ; 3 uses
  %.059 = phi ptr [ %i.bi, %hasher_merge_cv_stack.exit ], [ %1, %bb.b ] ; 2 uses
  %i.de = icmp ugt i64 %.060, 1024
  br i1 %i.de, label %.lr.ph169, label %._crit_edge170.thread

.lr.ph169:                                        ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 11 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 105
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 105 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 106 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 105
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 105
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre196 = load i64, ptr %i.df, align 8, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph169, %bb.q
  %i.ek = phi i64 [ %.pre196, %.lr.ph169 ], [ %i.jn, %bb.q ] ; 4 uses
  %.1166 = phi ptr [ %.059, %.lr.ph169 ], [ %i.jo, %bb.q ] ; 4 uses
  %.161165 = phi i64 [ %.060, %.lr.ph169 ], [ %i.jp, %bb.q ] ; 2 uses
  %i.el = or i64 %.161165, 1
  %i.em = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.el, i1 true)
  %i.en = lshr exact i64 -9223372036854775808, %i.em
  %i.eo = shl i64 %i.ek, 10
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i64 [ %i.en, %bb.k ], [ %i.er, %bb.l ] ; 11 uses
  %i.ep = add i64 %.0, -1
  %i.eq = and i64 %i.ep, %i.eo
  %.not66 = icmp eq i64 %i.eq, 0
  %i.er = lshr i64 %.0, 1
  br i1 %.not66, label %bb.m, label %bb.l, !llvm.loop !36

bb.m:                                             ; preds = %bb.l
  %i.es = lshr i64 %.0, 10
  %i.et = icmp ult i64 %.0, 1025
  br i1 %i.et, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.eu = load i8, ptr %i.dg, align 2, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.ej, i8 0, i64 66, i1 false)
  store i8 %i.eu, ptr %i.dy, align 2, !tbaa !13
  store i64 %i.ek, ptr %i.du, align 8, !tbaa !16
  %i.ev = icmp samesign ugt i64 %.0, 64
  br i1 %i.ev, label %.lr.ph159, label %chunk_state_update.exit73

.lr.ph159:                                        ; preds = %bb.n, %.lr.ph159
  %i.ew = phi i8 [ %i.fc, %.lr.ph159 ], [ 0, %bb.n ]
  %.1.i72157 = phi ptr [ %i.fd, %.lr.ph159 ], [ %.1166, %bb.n ] ; 2 uses
  %.133.i71156 = phi i64 [ %i.fe, %.lr.ph159 ], [ %.0, %bb.n ]
  %i.ex = load i64, ptr %i.du, align 8, !tbaa !16
  %i.ey = load i8, ptr %i.dy, align 2, !tbaa !13
  %i.ez = icmp eq i8 %i.ew, 0
  %..i94 = zext i1 %i.ez to i8
  %i.fa = or i8 %i.ey, %..i94
  call void @blake3_compress_in_place(ptr noundef nonnull %9, ptr noundef %.1.i72157, i8 noundef zeroext 64, i64 noundef %i.ex, i8 noundef zeroext %i.fa) #9
  %i.fb = load i8, ptr %i.dx, align 1, !tbaa !14
  %i.fc = add i8 %i.fb, 1                         ; 2 uses
  store i8 %i.fc, ptr %i.dx, align 1, !tbaa !14
  %i.fd = getelementptr inbounds nuw i8, ptr %.1.i72157, i64 64 ; 2 uses
  %i.fe = add i64 %.133.i71156, -64               ; 3 uses
  %i.ff = icmp ugt i64 %i.fe, 64
  br i1 %i.ff, label %.lr.ph159, label %chunk_state_update.exit73.loopexit, !llvm.loop !0

chunk_state_update.exit73.loopexit:               ; preds = %.lr.ph159
  %.pre198 = load i8, ptr %i.dw, align 8, !tbaa !15
  %.pre199 = load i64, ptr %i.du, align 8, !tbaa !16, !noalias !57
  %i.fg = zext i8 %.pre198 to i64
  br label %chunk_state_update.exit73

chunk_state_update.exit73:                        ; preds = %chunk_state_update.exit73.loopexit, %bb.n
  %i.fh = phi i64 [ %i.ek, %bb.n ], [ %.pre199, %chunk_state_update.exit73.loopexit ] ; 2 uses
  %i.fi = phi i64 [ 0, %bb.n ], [ %i.fg, %chunk_state_update.exit73.loopexit ] ; 2 uses
  %.133.i71.lcssa = phi i64 [ %.0, %bb.n ], [ %i.fe, %chunk_state_update.exit73.loopexit ]
  %.1.i72.lcssa = phi ptr [ %.1166, %bb.n ], [ %i.fd, %chunk_state_update.exit73.loopexit ]
  %i.fj = sub nsw i64 64, %i.fi
  %spec.select.i87 = call i64 @llvm.umin.i64(i64 %i.fj, i64 %.133.i71.lcssa) ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr align 1 %.1.i72.lcssa, i64 %spec.select.i87, i1 false)
  %i.fl = trunc nuw nsw i64 %spec.select.i87 to i8
  %i.fm = load i8, ptr %i.dw, align 8, !tbaa !15
  %i.fn = add i8 %i.fm, %i.fl                     ; 3 uses
  store i8 %i.fn, ptr %i.dw, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.fo = load i8, ptr %i.dy, align 2, !tbaa !13, !noalias !57
  %i.fp = load i8, ptr %i.dx, align 1, !tbaa !14, !noalias !57
  %i.fq = icmp eq i8 %i.fp, 0
  %..i91 = zext i1 %i.fq to i8
  %i.fr = or i8 %i.fo, %..i91
  %i.fs = or i8 %i.fr, 2                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dz, ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i64 64, i1 false)
  store i8 %i.fn, ptr %i.ea, align 8, !tbaa !19, !alias.scope !58
  store i64 %i.fh, ptr %i.eb, align 8, !tbaa !20, !alias.scope !58
  store i8 %i.fs, ptr %i.ec, align 1, !tbaa !21, !alias.scope !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.j, ptr noundef nonnull %i.dz, i8 noundef zeroext %i.fn, i64 noundef %i.fh, i8 noundef zeroext %i.fs) #9
  %i.ft = load <4 x i32>, ptr %i.j, align 16, !tbaa !22
  %i.fu = load <4 x i32>, ptr %i.ed, align 16, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  %i.fv = load i64, ptr %i.du, align 8, !tbaa !16
  %i.fw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fv) ; 2 uses
  %i.fx = load i8, ptr %i.dh, align 8, !tbaa !12  ; 3 uses
  %i.fy = zext i8 %i.fx to i64                    ; 2 uses
  %i.fz = icmp samesign ult i64 %i.fw, %i.fy
  br i1 %i.fz, label %.lr.ph162.preheader, label %hasher_merge_cv_stack.exit82

.lr.ph162.preheader:                              ; preds = %chunk_state_update.exit73
  %i.ga = trunc nuw nsw i64 %i.fw to i8
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.lr.ph162
  %i.gb = phi i8 [ %i.gm, %.lr.ph162 ], [ %i.fx, %.lr.ph162.preheader ]
  %i.gc = zext i8 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 5
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd     ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.gg = load i8, ptr %i.dg, align 2, !tbaa !23
  %i.gh = or i8 %i.gg, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 1 dereferenceable(64) %i.gf, i64 64, i1 false)
  store i8 64, ptr %i.ef, align 8, !tbaa !19, !alias.scope !59
  store i64 0, ptr %i.eg, align 8, !tbaa !20, !alias.scope !59
  store i8 %i.gh, ptr %i.eh, align 1, !tbaa !21, !alias.scope !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.e, ptr noundef nonnull %i.ee, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.gh) #9
  %i.gi = load <4 x i32>, ptr %i.e, align 16, !tbaa !22
  store <4 x i32> %i.gi, ptr %i.gf, align 1
  %i.gj = getelementptr i8, ptr %i.ge, i64 97
  %i.gk = load <4 x i32>, ptr %i.ei, align 16, !tbaa !22
  store <4 x i32> %i.gk, ptr %i.gj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.gl = load i8, ptr %i.dh, align 8, !tbaa !12
  %i.gm = add i8 %i.gl, -1                        ; 5 uses
  store i8 %i.gm, ptr %i.dh, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.gn = icmp ugt i8 %i.gm, %i.ga
  br i1 %i.gn, label %.lr.ph162, label %hasher_merge_cv_stack.exit82.loopexit, !llvm.loop !35

hasher_merge_cv_stack.exit82.loopexit:            ; preds = %.lr.ph162
  %.pre202 = zext nneg i8 %i.gm to i64
  br label %hasher_merge_cv_stack.exit82

hasher_merge_cv_stack.exit82:                     ; preds = %hasher_merge_cv_stack.exit82.loopexit, %chunk_state_update.exit73
  %.pre-phi = phi i64 [ %.pre202, %hasher_merge_cv_stack.exit82.loopexit ], [ %i.fy, %chunk_state_update.exit73 ]
  %.lcssa134 = phi i8 [ %i.gm, %hasher_merge_cv_stack.exit82.loopexit ], [ %i.fx, %chunk_state_update.exit73 ]
  %i.go = shl nuw nsw i64 %.pre-phi, 5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.go ; 2 uses
  store <4 x i32> %i.ft, ptr %i.gp, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <4 x i32> %i.fu, ptr %.sroa.19.0..sroa_idx, align 1
  %i.gq = add i8 %.lcssa134, 1
  store i8 %i.gq, ptr %i.dh, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.gr = load i8, ptr %i.dg, align 2, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.gs = call fastcc i64 @blake3_compress_subtree_wide(ptr noundef %.1166, i64 noundef range(i64 1025, 0) %.0, ptr noundef nonnull %0, i64 noundef %i.ek, i8 noundef zeroext %i.gr, ptr noundef %i.g) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.gt = add i64 %i.gs, -3
  %i.gu = icmp ult i64 %i.gt, 14
  br i1 %i.gu, label %.lr.ph150, label %compress_subtree_to_parent_node.exit

.lr.ph150:                                        ; preds = %bb.o
  %i.gv = or i8 %i.gr, 4
  br label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %compress_parents_parallel.exit, %.lr.ph150
  %.0.i81148 = phi i64 [ %i.gs, %.lr.ph150 ], [ %.018.i, %compress_parents_parallel.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.gw = add nsw i64 %.0.i81148, -2              ; 3 uses
  %i.gx = lshr i64 %i.gw, 1                       ; 3 uses
  %i.gy = add nuw i64 %i.gx, 1                    ; 6 uses
  %min.iters.check = icmp ult i64 %i.gw, 6
  br i1 %min.iters.check, label %.lr.ph145.preheader267, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph145.preheader
  %n.vec = and i64 %i.gy, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.gz = shl nuw nsw <2 x i64> %vec.ind, splat (i64 6)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 6)
  %i.ha = add <2 x i64> %step.add, splat (i64 128)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.g, <2 x i64> %i.gz
  %wide.gep265 = getelementptr inbounds nuw i8, ptr %i.g, <2 x i64> %i.ha
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <2 x ptr> %wide.gep, ptr %i.hb, align 16, !tbaa !26
  store <2 x ptr> %wide.gep265, ptr %i.hc, align 16, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.hd = icmp eq i64 %index.next, %n.vec
  br i1 %i.hd, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph145.preheader267

.lr.ph145.preheader267:                           ; preds = %.lr.ph145.preheader, %middle.block
  %.0.i98144.ph = phi i64 [ 0, %.lr.ph145.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader267, %.lr.ph145
  %.0.i98144 = phi i64 [ %i.hh, %.lr.ph145 ], [ %.0.i98144.ph, %.lr.ph145.preheader267 ] ; 4 uses
  %i.he = shl nuw nsw i64 %.0.i98144, 6
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.i98144
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !26
  %i.hh = add nuw nsw i64 %.0.i98144, 1
  %exitcond.not = icmp eq i64 %.0.i98144, %i.gx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph145, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph145, %middle.block
  %i.hi = and i64 %i.gw, -2
  %i.hj = add nuw nsw i64 %i.hi, 2
  call void @blake3_hash_many(ptr noundef nonnull %i.a, i64 noundef %i.gy, i64 noundef 1, ptr noundef %0, i64 noundef 0, i1 noundef zeroext false, i8 noundef zeroext %i.gv, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.h) #9
  %i.hk = icmp samesign ugt i64 %.0.i81148, %i.hj
  br i1 %i.hk, label %bb.p, label %compress_parents_parallel.exit

bb.p:                                             ; preds = %._crit_edge
  %i.hl = shl nuw nsw i64 %i.gy, 5
  %i.hm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.hl
  %i.hn = shl nuw nsw i64 %i.gy, 6
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.hm, ptr noundef nonnull align 16 dereferenceable(32) %i.ho, i64 32, i1 false)
  %i.hp = add nuw nsw i64 %i.gx, 2
  br label %compress_parents_parallel.exit

compress_parents_parallel.exit:                   ; preds = %._crit_edge, %bb.p
  %.018.i = phi i64 [ %i.hp, %bb.p ], [ %i.gy, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.hq = shl nuw nsw i64 %.018.i, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.g, ptr noundef nonnull align 16 dereferenceable(1) %i.h, i64 %i.hq, i1 false)
  %i.hr = add nsw i64 %.018.i, -3
  %i.hs = icmp ult i64 %i.hr, 14
  br i1 %i.hs, label %.lr.ph145.preheader, label %compress_subtree_to_parent_node.exit, !llvm.loop !45

compress_subtree_to_parent_node.exit:             ; preds = %compress_parents_parallel.exit, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.ht = load i64, ptr %i.df, align 8, !tbaa !55 ; 2 uses
  %i.hu = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ht) ; 2 uses
  %i.hv = load i8, ptr %i.dh, align 8, !tbaa !12  ; 3 uses
  %i.hw = zext i8 %i.hv to i64                    ; 2 uses
  %i.hx = icmp samesign ult i64 %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph151.preheader, label %hasher_merge_cv_stack.exit83

.lr.ph151.preheader:                              ; preds = %compress_subtree_to_parent_node.exit
  %i.hy = trunc nuw nsw i64 %i.hu to i8
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %i.hz = phi i8 [ %i.ik, %.lr.ph151 ], [ %i.hv, %.lr.ph151.preheader ]
  %i.ia = zext i8 %i.hz to i64
  %i.ib = shl nuw nsw i64 %i.ia, 5
  %i.ic = getelementptr i8, ptr %0, i64 %i.ib     ; 2 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.ie = load i8, ptr %i.dg, align 2, !tbaa !23
  %i.if = or i8 %i.ie, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, ptr noundef nonnull align 1 dereferenceable(64) %i.id, i64 64, i1 false)
  store i8 64, ptr %i.dj, align 8, !tbaa !19, !alias.scope !60
  store i64 0, ptr %i.dk, align 8, !tbaa !20, !alias.scope !60
  store i8 %i.if, ptr %i.dl, align 1, !tbaa !21, !alias.scope !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.d, ptr noundef nonnull %i.di, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.if) #9
  %i.ig = load <4 x i32>, ptr %i.d, align 16, !tbaa !22
  store <4 x i32> %i.ig, ptr %i.id, align 1
  %i.ih = getelementptr i8, ptr %i.ic, i64 97
  %i.ii = load <4 x i32>, ptr %i.dm, align 16, !tbaa !22
  store <4 x i32> %i.ii, ptr %i.ih, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.ij = load i8, ptr %i.dh, align 8, !tbaa !12
  %i.ik = add i8 %i.ij, -1                        ; 5 uses
  store i8 %i.ik, ptr %i.dh, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.il = icmp ugt i8 %i.ik, %i.hy
  br i1 %i.il, label %.lr.ph151, label %hasher_merge_cv_stack.exit83.loopexit, !llvm.loop !35

hasher_merge_cv_stack.exit83.loopexit:            ; preds = %.lr.ph151
  %.pre197 = load i64, ptr %i.df, align 8, !tbaa !55
  %.pre203 = zext nneg i8 %i.ik to i64
  br label %hasher_merge_cv_stack.exit83

hasher_merge_cv_stack.exit83:                     ; preds = %hasher_merge_cv_stack.exit83.loopexit, %compress_subtree_to_parent_node.exit
  %.pre-phi204 = phi i64 [ %.pre203, %hasher_merge_cv_stack.exit83.loopexit ], [ %i.hw, %compress_subtree_to_parent_node.exit ]
  %i.im = phi i64 [ %.pre197, %hasher_merge_cv_stack.exit83.loopexit ], [ %i.ht, %compress_subtree_to_parent_node.exit ]
  %.lcssa131 = phi i8 [ %i.ik, %hasher_merge_cv_stack.exit83.loopexit ], [ %i.hv, %compress_subtree_to_parent_node.exit ]
  %i.in = shl nuw nsw i64 %.pre-phi204, 5
  %i.io = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.io, ptr noundef nonnull align 16 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.ip = add i8 %.lcssa131, 1                    ; 4 uses
  store i8 %i.ip, ptr %i.dh, align 8, !tbaa !12
  %i.iq = lshr i64 %.0, 11
  %i.ir = add i64 %i.im, %i.iq
  %i.is = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ir) ; 2 uses
  %i.it = zext i8 %i.ip to i64                    ; 2 uses
  %i.iu = icmp samesign ult i64 %i.is, %i.it
  br i1 %i.iu, label %.lr.ph154.preheader, label %hasher_merge_cv_stack.exit84

.lr.ph154.preheader:                              ; preds = %hasher_merge_cv_stack.exit83
  %i.iv = trunc nuw nsw i64 %i.is to i8
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %.lr.ph154
  %i.iw = phi i8 [ %i.jh, %.lr.ph154 ], [ %i.ip, %.lr.ph154.preheader ]
  %i.ix = zext i8 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 5
  %i.iz = getelementptr i8, ptr %0, i64 %i.iy     ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.jb = load i8, ptr %i.dg, align 2, !tbaa !23
  %i.jc = or i8 %i.jb, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dp, ptr noundef nonnull align 1 dereferenceable(64) %i.ja, i64 64, i1 false)
  store i8 64, ptr %i.dq, align 8, !tbaa !19, !alias.scope !61
  store i64 0, ptr %i.dr, align 8, !tbaa !20, !alias.scope !61
  store i8 %i.jc, ptr %i.ds, align 1, !tbaa !21, !alias.scope !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.c, ptr noundef nonnull %i.dp, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.jc) #9
  %i.jd = load <4 x i32>, ptr %i.c, align 16, !tbaa !22
  store <4 x i32> %i.jd, ptr %i.ja, align 1
  %i.je = getelementptr i8, ptr %i.iz, i64 97
  %i.jf = load <4 x i32>, ptr %i.dt, align 16, !tbaa !22
  store <4 x i32> %i.jf, ptr %i.je, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.jg = load i8, ptr %i.dh, align 8, !tbaa !12
  %i.jh = add i8 %i.jg, -1                        ; 5 uses
  store i8 %i.jh, ptr %i.dh, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.ji = icmp ugt i8 %i.jh, %i.iv
  br i1 %i.ji, label %.lr.ph154, label %hasher_merge_cv_stack.exit84.loopexit, !llvm.loop !35

hasher_merge_cv_stack.exit84.loopexit:            ; preds = %.lr.ph154
  %.pre205 = zext nneg i8 %i.jh to i64
  br label %hasher_merge_cv_stack.exit84

hasher_merge_cv_stack.exit84:                     ; preds = %hasher_merge_cv_stack.exit84.loopexit, %hasher_merge_cv_stack.exit83
  %.pre-phi206 = phi i64 [ %.pre205, %hasher_merge_cv_stack.exit84.loopexit ], [ %i.it, %hasher_merge_cv_stack.exit83 ]
  %.lcssa133 = phi i8 [ %i.jh, %hasher_merge_cv_stack.exit84.loopexit ], [ %i.ip, %hasher_merge_cv_stack.exit83 ]
  %i.jj = shl nuw nsw i64 %.pre-phi206, 5
  %i.jk = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.jj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jk, ptr noundef nonnull align 16 dereferenceable(32) %i.do, i64 32, i1 false)
  %i.jl = add i8 %.lcssa133, 1
  store i8 %i.jl, ptr %i.dh, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.q

bb.q:                                             ; preds = %hasher_merge_cv_stack.exit84, %hasher_merge_cv_stack.exit82
  %i.jm = load i64, ptr %i.df, align 8, !tbaa !55
  %i.jn = add i64 %i.jm, %i.es                    ; 2 uses
  store i64 %i.jn, ptr %i.df, align 8, !tbaa !55
  %i.jo = getelementptr inbounds nuw i8, ptr %.1166, i64 %.0 ; 2 uses
  %i.jp = sub i64 %.161165, %.0                   ; 4 uses
  %i.jq = icmp ugt i64 %i.jp, 1024
  br i1 %i.jq, label %bb.k, label %._crit_edge170, !llvm.loop !50

._crit_edge170:                                   ; preds = %bb.q
  %.not65 = icmp eq i64 %i.jp, 0
  br i1 %.not65, label %.critedge, label %._crit_edge170.thread

._crit_edge170.thread:                            ; preds = %bb.j, %._crit_edge170
  %.1.lcssa239 = phi ptr [ %i.jo, %._crit_edge170 ], [ %.059, %bb.j ] ; 3 uses
  %.161.lcssa238 = phi i64 [ %i.jp, %._crit_edge170 ], [ %.060, %bb.j ] ; 3 uses
  %i.jr = load i8, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq i8 %i.jr, 0
  br i1 %.not.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge170.thread
  %i.js = zext i8 %i.jr to i64                    ; 2 uses
  %i.jt = sub nsw i64 64, %i.js
  %spec.select.i90 = call i64 @llvm.umin.i64(i64 %i.jt, i64 %.161.lcssa238) ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.js
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jv, ptr align 1 %.1.lcssa239, i64 %spec.select.i90, i1 false)
  %i.jw = trunc i64 %spec.select.i90 to i8
  %i.jx = load i8, ptr %i.r, align 8, !tbaa !15
  %i.jy = add i8 %i.jx, %i.jw                     ; 2 uses
  store i8 %i.jy, ptr %i.r, align 8, !tbaa !15
  %i.jz = getelementptr inbounds nuw i8, ptr %.1.lcssa239, i64 %spec.select.i90 ; 2 uses
  %i.ka = sub nuw nsw i64 %.161.lcssa238, %spec.select.i90 ; 2 uses
  %.not34.i = icmp eq i64 %i.ka, 0
  br i1 %.not34.i, label %chunk_state_update.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !16
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.ke = load i8, ptr %i.kd, align 2, !tbaa !13
  %i.kf = load i8, ptr %i.n, align 1, !tbaa !14
  %i.kg = icmp eq i8 %i.kf, 0
  %..i97 = zext i1 %i.kg to i8
  %i.kh = or i8 %i.ke, %..i97
  call void @blake3_compress_in_place(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ju, i8 noundef zeroext 64, i64 noundef %i.kc, i8 noundef zeroext %i.kh) #9
  %i.ki = load i8, ptr %i.n, align 1, !tbaa !14
  %i.kj = add i8 %i.ki, 1
  store i8 %i.kj, ptr %i.n, align 1, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ju, i8 0, i64 65, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge170.thread
  %.032.i = phi i64 [ %.161.lcssa238, %._crit_edge170.thread ], [ %i.ka, %bb.s ] ; 3 uses
  %.0.i = phi ptr [ %.1.lcssa239, %._crit_edge170.thread ], [ %i.jz, %bb.s ] ; 2 uses
  %i.kk = icmp samesign ugt i64 %.032.i, 64
  br i1 %i.kk, label %.lr.ph176, label %chunk_state_update.exit

.lr.ph176:                                        ; preds = %bb.t
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 138
  %.pre200 = load i8, ptr %i.n, align 1, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph176, %bb.u
  %i.kn = phi i8 [ %.pre200, %.lr.ph176 ], [ %i.kt, %bb.u ]
  %.1.i174 = phi ptr [ %.0.i, %.lr.ph176 ], [ %i.ku, %bb.u ] ; 2 uses
  %.133.i173 = phi i64 [ %.032.i, %.lr.ph176 ], [ %i.kv, %bb.u ]
  %i.ko = load i64, ptr %i.kl, align 8, !tbaa !16
  %i.kp = load i8, ptr %i.km, align 2, !tbaa !13
  %i.kq = icmp eq i8 %i.kn, 0
  %..i96 = zext i1 %i.kq to i8
  %i.kr = or i8 %i.kp, %..i96
  call void @blake3_compress_in_place(ptr noundef nonnull %i.m, ptr noundef %.1.i174, i8 noundef zeroext 64, i64 noundef %i.ko, i8 noundef zeroext %i.kr) #9
  %i.ks = load i8, ptr %i.n, align 1, !tbaa !14
  %i.kt = add i8 %i.ks, 1                         ; 2 uses
  store i8 %i.kt, ptr %i.n, align 1, !tbaa !14
  %i.ku = getelementptr inbounds nuw i8, ptr %.1.i174, i64 64 ; 2 uses
  %i.kv = add i64 %.133.i173, -64                 ; 3 uses
  %i.kw = icmp ugt i64 %i.kv, 64
  br i1 %i.kw, label %bb.u, label %chunk_state_update.exit.loopexit, !llvm.loop !0

chunk_state_update.exit.loopexit:                 ; preds = %bb.u
  %.pre201 = load i8, ptr %i.r, align 8, !tbaa !15
  br label %chunk_state_update.exit

chunk_state_update.exit:                          ; preds = %bb.r, %chunk_state_update.exit.loopexit, %bb.t
  %i.kx = phi i8 [ 0, %bb.t ], [ %.pre201, %chunk_state_update.exit.loopexit ], [ %i.jy, %bb.r ]
  %.133.i.lcssa = phi i64 [ %.032.i, %bb.t ], [ %i.kv, %chunk_state_update.exit.loopexit ], [ 0, %bb.r ]
  %.1.i.lcssa = phi ptr [ %.0.i, %bb.t ], [ %i.ku, %chunk_state_update.exit.loopexit ], [ %i.jz, %bb.r ]
  %i.ky = zext i8 %i.kx to i64                    ; 2 uses
  %i.kz = sub nsw i64 64, %i.ky
  %spec.select.i89 = call i64 @llvm.umin.i64(i64 %i.kz, i64 %.133.i.lcssa) ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ky
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lb, ptr align 1 %.1.i.lcssa, i64 %spec.select.i89, i1 false)
  %i.lc = trunc nuw nsw i64 %spec.select.i89 to i8
  %i.ld = load i8, ptr %i.r, align 8, !tbaa !15
  %i.le = add i8 %i.ld, %i.lc
  store i8 %i.le, ptr %i.r, align 8, !tbaa !15
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !55
  %i.lh = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.lg) ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.lj = load i8, ptr %i.li, align 8, !tbaa !12  ; 2 uses
  %i.lk = zext i8 %i.lj to i64
  %i.ll = icmp samesign ult i64 %i.lh, %i.lk
  br i1 %i.ll, label %.lr.ph179, label %.critedge

.lr.ph179:                                        ; preds = %chunk_state_update.exit
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 105
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ls = trunc nuw nsw i64 %i.lh to i8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph179, %bb.v
  %i.lt = phi i8 [ %i.lj, %.lr.ph179 ], [ %i.me, %bb.v ]
  %i.lu = zext i8 %i.lt to i64
  %i.lv = shl nuw nsw i64 %i.lu, 5
  %i.lw = getelementptr i8, ptr %0, i64 %i.lv     ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 81     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ly = load i8, ptr %i.lm, align 2, !tbaa !23
  %i.lz = or i8 %i.ly, 4                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ln, ptr noundef nonnull align 1 dereferenceable(64) %i.lx, i64 64, i1 false)
  store i8 64, ptr %i.lo, align 8, !tbaa !19, !alias.scope !62
  store i64 0, ptr %i.lp, align 8, !tbaa !20, !alias.scope !62
  store i8 %i.lz, ptr %i.lq, align 1, !tbaa !21, !alias.scope !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ln, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.lz) #9
  %i.ma = load <4 x i32>, ptr %i.b, align 16, !tbaa !22
  store <4 x i32> %i.ma, ptr %i.lx, align 1
  %i.mb = getelementptr i8, ptr %i.lw, i64 97
  %i.mc = load <4 x i32>, ptr %i.lr, align 16, !tbaa !22
  store <4 x i32> %i.mc, ptr %i.mb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.md = load i8, ptr %i.li, align 8, !tbaa !12
  %i.me = add i8 %i.md, -1                        ; 3 uses
  store i8 %i.me, ptr %i.li, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.mf = icmp ugt i8 %i.me, %i.ls
  br i1 %i.mf, label %bb.v, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %bb.v, %chunk_state_update.exit, %._crit_edge170, %chunk_state_update.exit80, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @blake3_hasher_finalize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  tail call void @blake3_hasher_finalize_seek(ptr noundef %0, i64 noundef 0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @blake3_hasher_init_derive_key(ptr nofree noundef writeonly captures(none) initializes((0, 139), (144, 145)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.blake3_hasher, align 8      ; 9 uses
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) @IV, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @IV, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 138
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.d, i8 0, i64 74, i1 false)
  store i8 32, ptr %i.e, align 2, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i8 0, ptr %i.f, align 8, !tbaa !12
  call void @blake3_hasher_update(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @blake3_hasher_finalize_seek(ptr noundef nonnull readonly %2, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 32)
  %i.g = load i32, ptr %i.a, align 16             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i32, ptr %i.n, align 16             ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  store i32 %i.g, ptr %0, align 8
end_hunk_0
begin_hunk_1_@blake3_hasher_finalize_seek:bb.a
.thread:                                          ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = zext i8 %i.f to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.at = load i8, ptr %i.as, align 2, !tbaa !13, !noalias !75
  %i.au = icmp eq i8 %i.al, 0
  %..i31 = zext i1 %i.au to i8
  %i.av = or i8 %i.at, %..i31
  %i.aw = or i8 %i.av, 2                          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16, !noalias !75 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false)
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.546.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i64 64, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store i8 %i.an, ptr %i.bb, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 105 ; 2 uses
  store i8 %i.aw, ptr %i.bc, align 1, !tbaa !77
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.bd = zext i8 %i.f to i64
  %i.be = add nsw i64 %i.bd, -2                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.bg = shl nsw i64 %i.be, 5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !23
  %i.bk = or i8 %i.bj, 4                          ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx40, ptr noundef nonnull align 1 dereferenceable(64) %i.bh, i64 64, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 0, ptr %i.bl, align 8, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  store i8 64, ptr %i.bm, align 8, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 105 ; 3 uses
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !77
  %.not2350 = icmp eq i64 %i.be, 0
  br i1 %.not2350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.e
  %i.bo = phi ptr [ %i.bc, %.thread ], [ %i.bn, %bb.e ] ; 4 uses
  %i.bp = phi ptr [ %i.bb, %.thread ], [ %i.bm, %bb.e ] ; 4 uses
  %i.bq = phi ptr [ %i.ba, %.thread ], [ %i.bl, %bb.e ] ; 2 uses
  %.078 = phi i64 [ %i.ar, %.thread ], [ %i.be, %bb.e ]
  %.sink77 = phi i8 [ %i.aw, %.thread ], [ %i.bk, %bb.e ]
  %.sink6476 = phi i8 [ %i.an, %.thread ], [ 64, %bb.e ]
  %.sink6575 = phi i64 [ %i.az, %.thread ], [ 0, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.bv = add nsw i64 %.078, -1                   ; 3 uses
  %i.bw = shl nsw i64 %i.bv, 5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.sroa.0, ptr noundef nonnull align 1 dereferenceable(32) %i.bx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bs, i8 noundef zeroext %.sink6476, i64 noundef %.sink6575, i8 noundef zeroext %.sink77) #9
  %i.by = load <4 x i32>, ptr %i.c, align 16, !tbaa !22
  %i.bz = load <4 x i32>, ptr %i.bt, align 16, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.ca = load i8, ptr %i.bu, align 2, !tbaa !23
  %i.cb = or i8 %i.ca, 4                          ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 0, ptr %i.bq, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.sroa.0, i64 32, i1 false), !tbaa.struct !78
  store <4 x i32> %i.by, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store <4 x i32> %i.bz, ptr %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i8 64, ptr %i.bp, align 8, !tbaa !77
  store i8 %i.cb, ptr %i.bo, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  %.not23.peel = icmp eq i64 %i.bv, 0
  br i1 %.not23.peel, label %._crit_edge, label %.lr.ph.peel.newph

.lr.ph.peel.newph:                                ; preds = %.lr.ph, %.lr.ph.peel.newph
  %i.cc = phi i8 [ %i.cj, %.lr.ph.peel.newph ], [ %i.cb, %.lr.ph ]
  %.151 = phi i64 [ %i.cd, %.lr.ph.peel.newph ], [ %i.bv, %.lr.ph ]
  %i.cd = add i64 %.151, -1                       ; 3 uses
  %i.ce = shl i64 %i.cd, 5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.sroa.0, ptr noundef nonnull align 1 dereferenceable(32) %i.cf, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bs, i8 noundef zeroext 64, i64 noundef 0, i8 noundef zeroext %i.cc) #9
  %i.cg = load <4 x i32>, ptr %i.c, align 16, !tbaa !22
  %i.ch = load <4 x i32>, ptr %i.bt, align 16, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.ci = load i8, ptr %i.bu, align 2, !tbaa !23
  %i.cj = or i8 %i.ci, 4                          ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 0, ptr %i.bq, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.sroa.0, i64 32, i1 false), !tbaa.struct !78
  store <4 x i32> %i.cg, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store <4 x i32> %i.ch, ptr %.sroa.5.sroa.20.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i8 64, ptr %i.bp, align 8, !tbaa !77
  store i8 %i.cj, ptr %i.bo, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  %.not23 = icmp eq i64 %i.cd, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph.peel.newph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.peel.newph, %bb.e
  %i.ck = phi ptr [ %i.bn, %bb.e ], [ %i.bo, %.lr.ph.peel.newph ], [ %i.bo, %.lr.ph ]
  %i.cl = phi ptr [ %i.bm, %bb.e ], [ %i.bp, %.lr.ph.peel.newph ], [ %i.bp, %.lr.ph ]
  %i.cm = phi i8 [ %i.bk, %bb.e ], [ %i.cb, %.lr.ph ], [ %i.cj, %.lr.ph.peel.newph ]
  %i.cn = lshr i64 %1, 6                          ; 2 uses
  %i.co = and i64 %1, 63                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.cq = or i8 %i.cm, 8
  call void @blake3_compress_xof(ptr noundef nonnull %5, ptr noundef nonnull %i.cp, i8 noundef zeroext 64, i64 noundef %i.cn, i8 noundef zeroext %i.cq, ptr noundef nonnull %i.b) #9
  %i.cr = sub nuw nsw i64 64, %i.co
  %..022.i.peel = call i64 @llvm.umin.i64(i64 %3, i64 %i.cr) ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.cs, i64 %..022.i.peel, i1 false)
  %i.ct = sub i64 %3, %..022.i.peel               ; 2 uses
  %.not.i.peel = icmp eq i64 %i.ct, 0
  br i1 %.not.i.peel, label %output_root_bytes.exit, label %.peel.next

.peel.next:                                       ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %..022.i.peel
  br label %bb.f

bb.f:                                             ; preds = %.peel.next, %bb.f
  %.021.i54.in = phi i64 [ %i.cn, %.peel.next ], [ %.021.i54, %bb.f ]
  %.022.i53 = phi i64 [ %i.ct, %.peel.next ], [ %i.cz, %bb.f ] ; 2 uses
  %.023.i52 = phi ptr [ %i.cu, %.peel.next ], [ %i.cy, %bb.f ] ; 2 uses
  %.021.i54 = add i64 %.021.i54.in, 1             ; 2 uses
  %i.cv = load i8, ptr %i.cl, align 8, !tbaa !19
  %i.cw = load i8, ptr %i.ck, align 1, !tbaa !21
  %i.cx = or i8 %i.cw, 8
  call void @blake3_compress_xof(ptr noundef nonnull %5, ptr noundef nonnull %i.cp, i8 noundef zeroext %i.cv, i64 noundef %.021.i54, i8 noundef zeroext %i.cx, ptr noundef nonnull %i.b) #9
  %..022.i = call i64 @llvm.umin.i64(i64 %.022.i53, i64 64) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.023.i52, ptr nonnull align 16 %i.b, i64 %..022.i, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %.023.i52, i64 %..022.i
  %i.cz = sub i64 %.022.i53, %..022.i             ; 2 uses
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %output_root_bytes.exit, label %bb.f, !llvm.loop !71

output_root_bytes.exit:                           ; preds = %bb.f, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %output_root_bytes.exit, %output_root_bytes.exit30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @blake3_hasher_reset(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.c, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.b, i8 0, i64 74, i1 false)
  ret void
}

declare void @blake3_compress_in_place(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, -9223372036854775807) i64 @blake3_compress_subtree_wide(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef nonnull %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 6 uses
  %i.b = alloca [16 x ptr], align 16              ; 5 uses
  %6 = alloca %struct.blake3_chunk_state, align 8 ; 12 uses
  %7 = alloca %struct.output_t, align 8           ; 7 uses
  %i.c = alloca [16 x ptr], align 16              ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 9 uses
  %i.e = tail call i64 @blake3_simd_degree() #9
  %i.f = shl i64 %i.e, 10
  %.not = icmp ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.g = icmp ugt i64 %1, 1023
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = add i64 %1, -1024                        ; 2 uses
  %i.i = lshr i64 %i.h, 10                        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 3072
  br i1 %min.iters.check, label %.lr.ph.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.j, 36028797018963964        ; 4 uses
  %8 = shl i64 %n.vec, 10                         ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1024>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind, splat (i64 2048)
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <2 x i64> %vec.ind
  %wide.gep82 = getelementptr inbounds nuw i8, ptr %0, <2 x i64> %step.add
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x ptr> %wide.gep, ptr %i.k, align 16, !tbaa !26
  store <2 x ptr> %wide.gep82, ptr %i.l, align 16, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4096)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader103

.lr.ph.preheader103:                              ; preds = %.lr.ph.preheader, %middle.block
  %.027.i43.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.028.i42.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %8, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader103, %.lr.ph
  %.027.i43 = phi i64 [ %i.q, %.lr.ph ], [ %.027.i43.ph, %.lr.ph.preheader103 ] ; 3 uses
  %.028.i42 = phi i64 [ %i.p, %.lr.ph ], [ %.028.i42.ph, %.lr.ph.preheader103 ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i42
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.027.i43
  store ptr %i.n, ptr %i.o, align 8, !tbaa !26
  %i.p = add i64 %.028.i42, 1024                  ; 2 uses
  %i.q = add nuw nsw i64 %.027.i43, 1
  %exitcond.not = icmp eq i64 %.027.i43, %i.i
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !80

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa81 = phi i64 [ %8, %middle.block ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.r = sub i64 %1, %.lcssa81
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.028.i.lcssa = phi i64 [ 0, %bb.b ], [ %.lcssa81, %._crit_edge.loopexit ] ; 2 uses
  %.027.i.lcssa = phi i64 [ 0, %bb.b ], [ %i.j, %._crit_edge.loopexit ] ; 5 uses
  %.lcssa41 = phi i64 [ %1, %bb.b ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  call void @blake3_hash_many(ptr noundef nonnull %i.b, i64 noundef %.027.i.lcssa, i64 noundef 16, ptr noundef %2, i64 noundef %3, i1 noundef zeroext true, i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext 2, ptr noundef nonnull %5) #9
  %i.s = icmp ugt i64 %1, %.028.i.lcssa
  br i1 %i.s, label %bb.c, label %compress_chunks_parallel.exit

bb.c:                                             ; preds = %._crit_edge
  %i.t = add i64 %.027.i.lcssa, %3                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 105 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 106 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.z, i8 0, i64 66, i1 false)
  store i8 %4, ptr %i.y, align 2, !tbaa !13
  store i64 %i.t, ptr %i.u, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i.lcssa ; 2 uses
  %i.ab = icmp samesign ugt i64 %.lcssa41, 64
  br i1 %i.ab, label %.lr.ph49, label %chunk_state_update.exit.i

.lr.ph49:                                         ; preds = %bb.c, %.lr.ph49
  %i.ac = phi i8 [ %i.ai, %.lr.ph49 ], [ 0, %bb.c ]
  %.1.i.i47 = phi ptr [ %i.aj, %.lr.ph49 ], [ %i.aa, %bb.c ] ; 2 uses
  %.133.i.i46 = phi i64 [ %i.ak, %.lr.ph49 ], [ %.lcssa41, %bb.c ]
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !16
  %i.ae = load i8, ptr %i.y, align 2, !tbaa !13
  %i.af = icmp eq i8 %i.ac, 0
  %..i31.i = zext i1 %i.af to i8
  %i.ag = or i8 %i.ae, %..i31.i
  call void @blake3_compress_in_place(ptr noundef nonnull %6, ptr noundef %.1.i.i47, i8 noundef zeroext 64, i64 noundef %i.ad, i8 noundef zeroext %i.ag) #9
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !14
  %i.ai = add i8 %i.ah, 1                         ; 2 uses
  store i8 %i.ai, ptr %i.x, align 1, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i.i47, i64 64 ; 2 uses
  %i.ak = add i64 %.133.i.i46, -64                ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 64
  br i1 %i.al, label %.lr.ph49, label %chunk_state_update.exit.i.loopexit, !llvm.loop !0

chunk_state_update.exit.i.loopexit:               ; preds = %.lr.ph49
  %.pre = load i8, ptr %i.w, align 8, !tbaa !15
  %.pre66 = load i64, ptr %i.u, align 8, !tbaa !16, !noalias !87
  %i.am = zext i8 %.pre to i64
  br label %chunk_state_update.exit.i

chunk_state_update.exit.i:                        ; preds = %chunk_state_update.exit.i.loopexit, %bb.c
  %i.an = phi i64 [ %i.t, %bb.c ], [ %.pre66, %chunk_state_update.exit.i.loopexit ] ; 2 uses
  %i.ao = phi i64 [ 0, %bb.c ], [ %i.am, %chunk_state_update.exit.i.loopexit ] ; 2 uses
  %.133.i.i.lcssa = phi i64 [ %.lcssa41, %bb.c ], [ %i.ak, %chunk_state_update.exit.i.loopexit ]
  %.1.i.i.lcssa = phi ptr [ %i.aa, %bb.c ], [ %i.aj, %chunk_state_update.exit.i.loopexit ]
  %i.ap = sub nsw i64 64, %i.ao
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 %.133.i.i.lcssa) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %.1.i.i.lcssa, i64 %spec.select.i.i, i1 false)
  %i.ar = trunc nuw nsw i64 %spec.select.i.i to i8
  %i.as = load i8, ptr %i.w, align 8, !tbaa !15
  %i.at = add i8 %i.as, %i.ar                     ; 3 uses
  store i8 %i.at, ptr %i.w, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.au = load i8, ptr %i.y, align 2, !tbaa !13, !noalias !87
  %i.av = load i8, ptr %i.x, align 1, !tbaa !14, !noalias !87
  %i.aw = icmp eq i8 %i.av, 0
  %..i.i = zext i1 %i.aw to i8
  %i.ax = or i8 %i.au, %..i.i
  %i.ay = or i8 %i.ax, 2                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 64, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i8 %i.at, ptr %i.ba, align 8, !tbaa !19, !alias.scope !88
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.an, ptr %i.bb, align 8, !tbaa !20, !alias.scope !88
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 105
  store i8 %i.ay, ptr %i.bc, align 1, !tbaa !21, !alias.scope !88
  %i.bd = shl nuw nsw i64 %.027.i.lcssa, 5
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 %i.bd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @blake3_compress_in_place(ptr noundef nonnull %i.a, ptr noundef nonnull %i.az, i8 noundef zeroext %i.at, i64 noundef %i.an, i8 noundef zeroext %i.ay) #9
  %i.bf = load <4 x i32>, ptr %i.a, align 16, !tbaa !22
  store <4 x i32> %i.bf, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = load <4 x i32>, ptr %i.bh, align 16, !tbaa !22
  store <4 x i32> %i.bi, ptr %i.bg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bj = add nuw nsw i64 %.027.i.lcssa, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %compress_chunks_parallel.exit

compress_chunks_parallel.exit:                    ; preds = %._crit_edge, %chunk_state_update.exit.i
  %.0.i40 = phi i64 [ %i.bj, %chunk_state_update.exit.i ], [ %.027.i.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.bk = add i64 %1, -1
  %i.bl = lshr i64 %i.bk, 10
  %i.bm = or i64 %i.bl, 1
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.bm, i1 true) ; 2 uses
  %i.bo = lshr exact i64 -9223372036854775808, %i.bn ; 2 uses
  %i.bp = shl nuw i64 %i.bo, 10                   ; 3 uses
  %i.bq = sub i64 %1, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.bs = add i64 %i.bo, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.bt = tail call i64 @blake3_simd_degree() #9  ; 2 uses
  %i.bu = icmp ne i64 %i.bn, 63
  %i.bv = icmp eq i64 %i.bt, 1
  %or.cond = select i1 %i.bu, i1 %i.bv, i1 false
  %i.bw = shl i64 %i.bt, 5
  %i.bx = select i1 %or.cond, i64 64, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bx
  %i.bz = call fastcc i64 @blake3_compress_subtree_wide(ptr noundef %0, i64 noundef %i.bp, ptr noundef %2, i64 noundef %3, i8 noundef zeroext %4, ptr noundef %i.d) ; 2 uses
  %i.ca = call fastcc i64 @blake3_compress_subtree_wide(ptr noundef nonnull %i.br, i64 noundef %i.bq, ptr noundef %2, i64 noundef %i.bs, i8 noundef zeroext %4, ptr noundef %i.by)
  %i.cb = icmp eq i64 %i.bz, 1
  br i1 %i.cb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.d, i64 64, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.cc = add i64 %i.ca, %i.bz                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.cd = icmp ugt i64 %i.cc, 1
  br i1 %i.cd, label %.lr.ph54.preheader, label %._crit_edge55

.lr.ph54.preheader:                               ; preds = %bb.f
  %i.ce = add i64 %i.cc, -2                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 1                       ; 2 uses
  %i.cg = add nuw i64 %i.cf, 1                    ; 3 uses
  %min.iters.check85 = icmp ult i64 %i.ce, 6
  br i1 %min.iters.check85, label %.lr.ph54.preheader99, label %vector.ph86

vector.ph86:                                      ; preds = %.lr.ph54.preheader
  %n.vec87 = and i64 %i.cg, -4                    ; 4 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next94, %vector.body88 ] ; 2 uses
  %vec.ind90 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph86 ], [ %vec.ind.next95, %vector.body88 ] ; 3 uses
  %i.ch = shl nuw nsw <2 x i64> %vec.ind90, splat (i64 6)
  %step.add91 = shl <2 x i64> %vec.ind90, splat (i64 6)
  %i.ci = add <2 x i64> %step.add91, splat (i64 128)
  %wide.gep92 = getelementptr inbounds nuw i8, ptr %i.d, <2 x i64> %i.ch
  %wide.gep93 = getelementptr inbounds nuw i8, ptr %i.d, <2 x i64> %i.ci
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index89 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x ptr> %wide.gep92, ptr %i.cj, align 16, !tbaa !26
  store <2 x ptr> %wide.gep93, ptr %i.ck, align 16, !tbaa !26
  %index.next94 = add nuw i64 %index89, 4         ; 2 uses
  %vec.ind.next95 = add nuw <2 x i64> %vec.ind90, splat (i64 4)
  %i.cl = icmp eq i64 %index.next94, %n.vec87
  br i1 %i.cl, label %middle.block96, label %vector.body88, !llvm.loop !85

middle.block96:                                   ; preds = %vector.body88
  %cmp.n97 = icmp eq i64 %i.cg, %n.vec87
  br i1 %cmp.n97, label %._crit_edge55.loopexit, label %.lr.ph54.preheader99

.lr.ph54.preheader99:                             ; preds = %.lr.ph54.preheader, %middle.block96
  %.0.i52.ph = phi i64 [ 0, %.lr.ph54.preheader ], [ %n.vec87, %middle.block96 ]
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader99, %.lr.ph54
  %.0.i52 = phi i64 [ %i.cp, %.lr.ph54 ], [ %.0.i52.ph, %.lr.ph54.preheader99 ] ; 4 uses
  %i.cm = shl nuw nsw i64 %.0.i52, 6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0.i52
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !26
  %i.cp = add nuw nsw i64 %.0.i52, 1              ; 2 uses
  %exitcond65.not = icmp eq i64 %.0.i52, %i.cf
  br i1 %exitcond65.not, label %._crit_edge55.loopexit, label %.lr.ph54, !llvm.loop !86

._crit_edge55.loopexit:                           ; preds = %.lr.ph54, %middle.block96
  %.lcssa78 = phi i64 [ %n.vec87, %middle.block96 ], [ %i.cp, %.lr.ph54 ]
  %i.cq = shl nuw i64 %.lcssa78, 1
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %._crit_edge55.loopexit, %bb.f
  %.0.i.lcssa = phi i64 [ 0, %bb.f ], [ %i.cg, %._crit_edge55.loopexit ] ; 5 uses
  %.lcssa = phi i64 [ 0, %bb.f ], [ %i.cq, %._crit_edge55.loopexit ]
  %i.cr = or i8 %4, 4
  call void @blake3_hash_many(ptr noundef nonnull %i.c, i64 noundef %.0.i.lcssa, i64 noundef 1, ptr noundef %2, i64 noundef 0, i1 noundef zeroext false, i8 noundef zeroext %i.cr, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %5) #9
  %i.cs = icmp ugt i64 %i.cc, %.lcssa
  br i1 %i.cs, label %bb.g, label %compress_parents_parallel.exit

bb.g:                                             ; preds = %._crit_edge55
  %i.ct = shl i64 %.0.i.lcssa, 5
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 %i.ct
  %i.cv = shl i64 %.0.i.lcssa, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cu, ptr noundef nonnull align 16 dereferenceable(32) %i.cw, i64 32, i1 false)
  %i.cx = add nuw i64 %.0.i.lcssa, 1
  br label %compress_parents_parallel.exit

compress_parents_parallel.exit:                   ; preds = %._crit_edge55, %bb.g
  %.018.i = phi i64 [ %i.cx, %bb.g ], [ %.0.i.lcssa, %._crit_edge55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.h

bb.h:                                             ; preds = %compress_parents_parallel.exit, %bb.e
  %.0 = phi i64 [ 2, %bb.e ], [ %.018.i, %compress_parents_parallel.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %compress_chunks_parallel.exit
  %.1 = phi i64 [ %.0.i40, %compress_chunks_parallel.exit ], [ %.0, %bb.h ]
  ret i64 %.1
}

declare i64 @blake3_simd_degree() local_unnamed_addr #5

declare void @blake3_hash_many(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

declare void @blake3_compress_xof(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !17}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"", !5, i64 0, !9, i64 32, !5, i64 40, !5, i64 104, !5, i64 105, !5, i64 106}
!11 = !{!"", !5, i64 0, !10, i64 32, !5, i64 144, !5, i64 145}
!12 = !{!11, !5, i64 144}
!13 = !{!10, !5, i64 106}
!14 = !{!10, !5, i64 105}
!15 = !{!10, !5, i64 104}
!16 = !{!10, !9, i64 32}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"", !5, i64 0, !9, i64 32, !5, i64 40, !5, i64 104, !5, i64 105}
!19 = !{!18, !5, i64 104}
!20 = !{!18, !9, i64 32}
!21 = !{!18, !5, i64 105}
!22 = !{!6, !6, i64 0}
!23 = !{!11, !5, i64 138}
!24 = !{!"any pointer", !5, i64 0}
!25 = !{!"p1 omnipotent char", !24, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !"chunk_state_output"}
!30 = distinct !{!30, !29, !"chunk_state_output: argument 0"}
!31 = distinct !{!31, !"make_output"}
!32 = distinct !{!32, !31, !"make_output: argument 0"}
!33 = distinct !{!33, !"make_output"}
!34 = distinct !{!34, !33, !"make_output: argument 0"}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !"chunk_state_output"}
!38 = distinct !{!38, !37, !"chunk_state_output: argument 0"}
!39 = distinct !{!39, !"make_output"}
!40 = distinct !{!40, !39, !"make_output: argument 0"}
!41 = distinct !{!41, !"make_output"}
!42 = distinct !{!42, !41, !"make_output: argument 0"}
!43 = distinct !{!43, !17, !27, !28}
!44 = distinct !{!44, !17, !28, !27}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !"make_output"}
!47 = distinct !{!47, !46, !"make_output: argument 0"}
!48 = distinct !{!48, !"make_output"}
!49 = distinct !{!49, !48, !"make_output: argument 0"}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !"make_output"}
!52 = distinct !{!52, !51, !"make_output: argument 0"}
!53 = !{!30}
!54 = !{!32}
!55 = !{!11, !9, i64 64}
!56 = !{!34}
!57 = !{!38}
!58 = !{!40}
!59 = !{!42}
!60 = !{!47}
!61 = !{!49}
!62 = !{!52}
!63 = distinct !{!63, !"chunk_state_output"}
!64 = distinct !{!64, !63, !"chunk_state_output: argument 0"}
!65 = distinct !{!65, !"make_output"}
!66 = distinct !{!66, !65, !"make_output: argument 0"}
!67 = distinct !{!67, !17, !74}
!68 = distinct !{!68, !"chunk_state_output"}
!69 = distinct !{!69, !68, !"chunk_state_output: argument 0"}
!70 = distinct !{!70, !17, !74}
!71 = distinct !{!71, !17, !74}
!72 = !{!64}
!73 = !{!66}
!74 = !{!"llvm.loop.peeled.count", i32 1}
!75 = !{!69}
!76 = !{!9, !9, i64 0}
!77 = !{!5, !5, i64 0}
!78 = !{i64 0, i64 64, !77, i64 64, i64 1, !77, i64 65, i64 1, !77}
!79 = distinct !{!79, !17, !27, !28}
!80 = distinct !{!80, !17, !28, !27}
!81 = distinct !{!81, !"chunk_state_output"}
!82 = distinct !{!82, !81, !"chunk_state_output: argument 0"}
!83 = distinct !{!83, !"make_output"}
!84 = distinct !{!84, !83, !"make_output: argument 0"}
!85 = distinct !{!85, !17, !27, !28}
!86 = distinct !{!86, !17, !28, !27}
!87 = !{!82}
!88 = !{!84}
end_hunk_1
