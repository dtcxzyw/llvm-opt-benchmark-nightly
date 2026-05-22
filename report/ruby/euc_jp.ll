inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0_@mbc_case_fold:bb.a
bb.y:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.cg
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !10
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = icmp eq i8 %i.cs, -1
  %i.cu = select i1 %i.ct, i32 3, i32 -1
  br label %code_to_mbc.exit

code_to_mbc.exit:                                 ; preds = %bb.r, %bb.t, %bb.v, %bb.x, %bb.y
  %.0.i.i = phi i32 [ %i.bv, %bb.r ], [ %i.bz, %bb.t ], [ %i.cj, %bb.v ], [ %i.cn, %bb.x ], [ %i.cu, %bb.y ]
  %i.cv = sext i32 %.0.i.i to i64
  %.not19.i = icmp eq i64 %.1.add.i, %i.cv
  %i.cw = trunc nuw nsw i64 %.1.add.i to i32
  %.016.i21 = select i1 %.not19.i, i32 %i.cw, i32 -400 ; 2 uses
  %i.cx = icmp eq i32 %.016.i21, -400
  %spec.store.select = select i1 %i.cx, i32 1, i32 %.016.i21 ; 2 uses
  %i.cy = load ptr, ptr %1, align 8, !tbaa !13
  %i.cz = sext i32 %spec.store.select to i64
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %i.cz
  br label %bb.z

bb.z:                                             ; preds = %code_to_mbc.exit, %bb.b
  %storemerge = phi ptr [ %i.da, %code_to_mbc.exit ], [ %i.h, %bb.b ]
  %.0 = phi i32 [ %spec.store.select, %code_to_mbc.exit ], [ 1, %bb.b ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !13
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @apply_all_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @onigenc_apply_all_case_fold_with_map(i32 noundef 83, ptr noundef nonnull @CaseFoldMap, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2) #8
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !10      ; 6 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 4 uses
  %i.f = sext i8 %i.e to i64                      ; 2 uses
  %i.g = icmp slt i8 %i.e, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.e, -1
  br i1 %i.h, label %mbc_to_code.exit.thread40, label %mbc_enc_len.exit.thread32.i

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.a, %2
  br i1 %i.i, label %mbc_enc_len.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.a, align 1, !tbaa !10
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10    ; 3 uses
  %i.p = sext i8 %i.o to i64
  %i.q = icmp slt i8 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.o, -1
  %i.s = select i1 %i.r, i32 2, i32 -1
  br label %mbc_enc_len.exit.thread32.i

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq ptr %i.k, %2
  br i1 %i.t, label %mbc_enc_len.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.p
  %i.v = load i8, ptr %i.k, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = icmp eq i8 %i.y, -1
  %i.aa = select i1 %i.z, i32 3, i32 -1
  br label %mbc_enc_len.exit.thread32.i

mbc_enc_len.exit.thread32.i:                      ; preds = %bb.g, %bb.e, %bb.b
  %.0.i.ph.i = phi i32 [ %i.aa, %bb.g ], [ %i.s, %bb.e ], [ -1, %bb.b ]
  %i.ab = zext i8 %i.b to i32
  br label %.preheader.i

mbc_enc_len.exit.i:                               ; preds = %bb.f, %bb.c
  %.sink.i = phi i32 [ 0, %bb.c ], [ 1, %bb.f ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6
  %i.ae = sub nsw i32 %.sink.i, %i.ad             ; 2 uses
  %i.af = zext i8 %i.b to i32                     ; 2 uses
  %i.ag = icmp eq i32 %i.ae, 1
  br i1 %i.ag, label %mbc_to_code.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %mbc_enc_len.exit.i, %mbc_enc_len.exit.thread32.i
  %i.ah = phi i32 [ %i.ab, %mbc_enc_len.exit.thread32.i ], [ %i.af, %mbc_enc_len.exit.i ] ; 2 uses
  %.0.i34.i = phi i32 [ %.0.i.ph.i, %mbc_enc_len.exit.thread32.i ], [ %i.ae, %mbc_enc_len.exit.i ] ; 2 uses
  %i.ai = icmp sgt i32 %.0.i34.i, 1
  %.not22.i = icmp ult ptr %i.a, %2
  %or.cond23.i = select i1 %i.ai, i1 %.not22.i, i1 false
  br i1 %or.cond23.i, label %.lr.ph.i, label %mbc_to_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01826.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %i.a, %.preheader.i ] ; 2 uses
  %.025.i = phi i32 [ %i.am, %.lr.ph.i ], [ %i.ah, %.preheader.i ]
  %.01724.i = phi i32 [ %i.an, %.lr.ph.i ], [ 1, %.preheader.i ]
  %i.aj = load i8, ptr %.01826.i, align 1, !tbaa !10
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl i32 %.025.i, 8
  %i.am = or disjoint i32 %i.al, %i.ak            ; 2 uses
  %i.an = add nuw nsw i32 %.01724.i, 1            ; 2 uses
  %.018.i = getelementptr inbounds nuw i8, ptr %.01826.i, i64 1 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.0.i34.i
  %.not.i = icmp ult ptr %.018.i, %2
  %or.cond.i = select i1 %i.ao, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %mbc_to_code.exit, !llvm.loop !11

mbc_to_code.exit:                                 ; preds = %.lr.ph.i, %.preheader.i
  %.016.i = phi i32 [ %i.ah, %.preheader.i ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.ap = icmp ult i32 %.016.i, 128
  br i1 %i.ap, label %bb.h, label %bb.i

mbc_to_code.exit.thread40:                        ; preds = %bb.b
  %i.aq = zext i8 %i.b to i32
  %i.ar = icmp sgt i8 %i.b, -1
  br i1 %i.ar, label %bb.h, label %.thread42

mbc_to_code.exit.thread:                          ; preds = %mbc_enc_len.exit.i
  %i.as = icmp sgt i8 %i.b, -1
  br i1 %i.as, label %bb.h, label %.thread

bb.h:                                             ; preds = %mbc_to_code.exit.thread40, %mbc_to_code.exit.thread, %mbc_to_code.exit
  %i.at = tail call i32 @onigenc_ascii_get_case_fold_codes_by_str(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  br label %bb.x

bb.i:                                             ; preds = %mbc_to_code.exit
  br i1 %i.g, label %.thread42, label %.thread

.thread42:                                        ; preds = %mbc_to_code.exit.thread40, %bb.i
  %.016.i3644 = phi i32 [ %.016.i, %bb.i ], [ %i.aq, %mbc_to_code.exit.thread40 ]
  %i.au = icmp eq i8 %i.e, -1
  %i.av = select i1 %i.au, i32 1, i32 -1
  br label %mbc_enc_len.exit

.thread:                                          ; preds = %mbc_to_code.exit.thread, %bb.i
  %.016.i3639 = phi i32 [ %.016.i, %bb.i ], [ %i.af, %mbc_to_code.exit.thread ] ; 4 uses
  %i.aw = icmp eq ptr %i.a, %2
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !6
  %i.az = sub nsw i32 0, %i.ay
  br label %mbc_enc_len.exit

bb.k:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.f
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !10  ; 3 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = icmp slt i8 %i.bf, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp eq i8 %i.bf, -1
  %i.bj = select i1 %i.bi, i32 2, i32 -1
  br label %mbc_enc_len.exit

bb.m:                                             ; preds = %bb.k
  %i.bk = icmp eq ptr %i.bb, %2
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !6
  %i.bn = sub nsw i32 1, %i.bm
  br label %mbc_enc_len.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.bg
  %i.bp = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = icmp eq i8 %i.bs, -1
  %i.bu = select i1 %i.bt, i32 3, i32 -1
  br label %mbc_enc_len.exit

mbc_enc_len.exit:                                 ; preds = %.thread42, %bb.j, %bb.l, %bb.n, %bb.o
  %.016.i3638 = phi i32 [ %.016.i3644, %.thread42 ], [ %.016.i3639, %bb.j ], [ %.016.i3639, %bb.l ], [ %.016.i3639, %bb.n ], [ %.016.i3639, %bb.o ] ; 16 uses
  %.0.i = phi i32 [ %i.av, %.thread42 ], [ %i.az, %bb.j ], [ %i.bj, %bb.l ], [ %i.bn, %bb.n ], [ %i.bu, %bb.o ]
  %i.bv = add i32 %.016.i3638, -41921
  %i.bw = icmp ult i32 %i.bv, 26
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %mbc_enc_len.exit
  %i.bx = or disjoint i32 %.016.i3638, 32
  br label %.thread48

bb.q:                                             ; preds = %mbc_enc_len.exit
  %i.by = add i32 %.016.i3638, -42657
  %i.bz = icmp ult i32 %i.by, 24
  br i1 %i.bz, label %bb.r, label %get_lower_case.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = add nuw nsw i32 %.016.i3638, 32
  br label %.thread48

get_lower_case.exit:                              ; preds = %bb.q
  %i.cb = add i32 %.016.i3638, -42913
  %i.cc = icmp ult i32 %i.cb, 33
  %i.cd = add nuw nsw i32 %.016.i3638, 48
  %spec.select.i = select i1 %i.cc, i32 %i.cd, i32 %.016.i3638 ; 3 uses
  %i.ce = add i32 %.016.i3638, -41953
  %i.cf = icmp ult i32 %i.ce, 26
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %get_lower_case.exit
  %i.cg = add nsw i32 %.016.i3638, -32
  br label %get_upper_case.exit

bb.t:                                             ; preds = %get_lower_case.exit
  %i.ch = add i32 %.016.i3638, -42689
  %i.ci = icmp ult i32 %i.ch, 24
  br i1 %i.ci, label %bb.u, label %.thread48

bb.u:                                             ; preds = %bb.t
  %i.cj = add nsw i32 %.016.i3638, -32
  br label %get_upper_case.exit

.thread48:                                        ; preds = %bb.p, %bb.r, %bb.t
  %.0.i324750 = phi i32 [ %spec.select.i, %bb.t ], [ %i.ca, %bb.r ], [ %i.bx, %bb.p ]
  %i.ck = add i32 %.016.i3638, -42961
  %i.cl = icmp ult i32 %i.ck, 33
  %i.cm = add nsw i32 %.016.i3638, -48
  %spec.select.i33 = select i1 %i.cl, i32 %i.cm, i32 %.016.i3638
  br label %get_upper_case.exit

get_upper_case.exit:                              ; preds = %bb.s, %bb.u, %.thread48
  %.0.i3246 = phi i32 [ %spec.select.i, %bb.s ], [ %spec.select.i, %bb.u ], [ %.0.i324750, %.thread48 ] ; 2 uses
  %.0.i34 = phi i32 [ %i.cg, %bb.s ], [ %i.cj, %bb.u ], [ %spec.select.i33, %.thread48 ] ; 2 uses
  %.not = icmp eq i32 %.016.i3638, %.0.i3246
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %get_upper_case.exit
  %.not31 = icmp eq i32 %.016.i3638, %.0.i34
  br i1 %.not31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %get_upper_case.exit
  %.0.i34.sink = phi i32 [ %.0.i3246, %get_upper_case.exit ], [ %.0.i34, %bb.v ]
  store i32 %.0.i, ptr %3, align 4, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i34.sink, ptr %i.co, align 4, !tbaa !6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.h
  %.0 = phi i32 [ %i.at, %bb.h ], [ 0, %bb.v ], [ 1, %bb.w ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @property_name_to_ctype(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = and i64 %i.c, 4294967295                 ; 3 uses
  %i.e = add nsw i64 %i.d, -3
  %or.cond.i = icmp ult i64 %i.e, 6
  br i1 %or.cond.i, label %bb.b, label %.critedge29.thread.i

bb.b:                                             ; preds = %bb.a
  %.val.i = load i8, ptr %1, align 1, !tbaa !10   ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 2
  %.val30.i = load i8, ptr %i.f, align 1, !tbaa !10
  %i.g = trunc i64 %i.c to i32                    ; 2 uses
  %i.h = zext i8 %.val30.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr @onig_jis_property_hash.asso_values, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10
  %i.k = zext i8 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, %i.g
  %i.m = zext i8 %.val.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr @onig_jis_property_hash.asso_values, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.l, %i.p               ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 13
  br i1 %i.r, label %bb.c, label %.critedge29.thread.i

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i32 %i.q to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @onig_jis_property.wordlist, i64 %i.s ; 2 uses
  %i.u = shl nuw nsw i64 1, %i.s
  %i.v = and i64 %i.u, 7584
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %.critedge29.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.t, align 2, !tbaa !19
  %i.x = sext i8 %i.w to i64
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr @onig_jis_property_pool_contents, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = xor i8 %i.aa, %.val.i
  %i.ac = and i8 %i.ab, -33
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %.critedge29.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.af = tail call i32 @onigenc_with_ascii_strnicmp(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %1, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.z, i32 noundef %i.g) #8
  %.not27.i = icmp eq i32 %i.af, 0
  br i1 %.not27.i, label %bb.f, label %.critedge29.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.d
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %onig_jis_property.exit, label %.critedge29.thread.i

.critedge29.thread.i:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %i.aj = tail call i32 @onigenc_minimum_property_name_to_ctype(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %bb.g

onig_jis_property.exit:                           ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = zext i8 %i.al to i32
  br label %bb.g

bb.g:                                             ; preds = %onig_jis_property.exit, %.critedge29.thread.i
  %.0 = phi i32 [ %i.am, %onig_jis_property.exit ], [ %i.aj, %.critedge29.thread.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @is_code_ctype(i32 noundef %0, i32 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp ult i32 %1, 15
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 128
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @OnigEncAsciiCtypeTable, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !22
  %i.f = zext i16 %i.e to i32
  %i.g = lshr i32 %i.f, %1
  %i.h = and i32 %i.g, 1
  br label %code_to_mbclen.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ne i32 %1, 12
  %i.j = and i32 %1, 13
  %i.k = icmp ne i32 %i.j, 5
  %or.cond3.not21 = and i1 %i.i, %i.k
  %i.l = icmp ugt i32 %0, 16777215
  %or.cond = or i1 %i.l, %or.cond3.not21
  br i1 %or.cond, label %code_to_mbclen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %0, 8421504
  %i.n = icmp eq i32 %i.m, 8421504
  br i1 %i.n, label %code_to_mbclen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %0, 16744576
  %i.p = icmp eq i32 %i.o, 32896
  %i.q = zext i1 %i.p to i32
  br label %code_to_mbclen.exit

bb.g:                                             ; preds = %bb.a
  %i.r = add i32 %1, -15                          ; 2 uses
  %i.s = icmp ugt i32 %i.r, 5
  br i1 %i.s, label %code_to_mbclen.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @PropertyList, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = tail call i32 @onig_is_in_code_range(ptr noundef %i.v, i32 noundef %0) #8
  br label %code_to_mbclen.exit

code_to_mbclen.exit:                              ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.h, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.d ], [ -6, %bb.g ], [ %i.w, %bb.h ], [ 1, %bb.e ], [ %i.q, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal range(i32 -6, 1) i32 @get_ctype_code_range(i32 noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr readnone captures(none) %3) #7 {
bb.a:
  %i.a = icmp ult i32 %0, 15
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 128, ptr %1, align 4, !tbaa !6
  %i.b = add i32 %0, -15                          ; 2 uses
  %i.c = icmp ugt i32 %i.b, 5
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @PropertyList, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  store ptr %i.f, ptr %2, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -6, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal ptr @left_adjust_char_head(ptr noundef readnone captures(address) %0, ptr noundef %1, ptr noundef readnone captures(address) %2, ptr readnone captures(none) %3) #3 {
bb.a:
  %.not = icmp ugt ptr %1, %0
  br i1 %.not, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.a, %.preheader
  %.020 = phi ptr [ %i.f, %.preheader ], [ %1, %bb.a ] ; 7 uses
  %i.a = load i8, ptr %.020, align 1, !tbaa !10   ; 2 uses
  %i.b = add i8 %i.a, 95
  %i.c = icmp ult i8 %i.b, 94
  %i.d = icmp ugt ptr %.020, %0
  %i.e = and i1 %i.d, %i.c
  %i.f = getelementptr inbounds i8, ptr %.020, i64 -1
  br i1 %i.e, label %.preheader, label %bb.b, !llvm.loop !26

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.020, i64 1 ; 2 uses
  %i.h = zext i8 %i.a to i64                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr @trans, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10    ; 3 uses
  %i.k = sext i8 %i.j to i64
  %i.l = icmp slt i8 %i.j, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i8 %i.j, -1
  %i.n = select i1 %i.m, i32 1, i32 -1
  br label %mbc_enc_len.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq ptr %i.g, %2
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.h
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6
  %i.r = sub nsw i32 0, %i.q
  br label %mbc_enc_len.exit

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.k
end_hunk_0
