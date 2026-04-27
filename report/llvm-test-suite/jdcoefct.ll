inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@decompress_smooth_data:bb.a

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0258 = phi ptr [ %i.bq, %bb.l ], [ %i.bw, %bb.m ]
  %i.bx = load ptr, ptr %i.ak, align 8, !tbaa !103
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv369
end_hunk_0
begin_hunk_1_@decompress_smooth_data:bb.a

.lr.ph:                                           ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv369
  %2 = load ptr, ptr %i.cc, align 8, !tbaa !104
  %3 = getelementptr inbounds nuw i8, ptr %.0266363, i64 80
  %i.cd = load ptr, ptr %3, align 8, !tbaa !72    ; 6 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %5 = load i16, ptr %4, align 4, !tbaa !73
  %6 = zext i16 %5 to i64                         ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.cd, i64 18
  %8 = load i16, ptr %7, align 2, !tbaa !73
  %9 = zext i16 %8 to i64                         ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %11 = load i16, ptr %10, align 4, !tbaa !73
  %12 = zext i16 %11 to i64                       ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %14 = load i16, ptr %13, align 4, !tbaa !73
  %15 = zext i16 %14 to i64                       ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %17 = load i16, ptr %16, align 2, !tbaa !73
  %18 = zext i16 %17 to i64                       ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !73
  %i.cf = zext i16 %i.ce to i64                   ; 3 uses
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !41
  %.idx = mul nuw nsw i64 %indvars.iv369, 24
end_hunk_1
begin_hunk_2_@decompress_smooth_data:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %.0266363, i64 28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = mul nuw nsw i64 %i.cf, 36               ; 2 uses
  %19 = shl nuw nsw i64 %18, 7                    ; 2 uses
  %i.cm = shl nuw nsw i64 %18, 8                  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %20 = shl nuw nsw i64 %15, 7                    ; 2 uses
  %i.co = shl nuw nsw i64 %15, 8                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cq = mul nuw nsw i64 %i.cf, 9                ; 2 uses
  %21 = shl nuw nsw i64 %12, 7                    ; 2 uses
  %i.cr = shl nuw nsw i64 %12, 8                  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ct = mul nuw nsw i64 %i.cf, 5
  %22 = shl nuw nsw i64 %9, 7                     ; 2 uses
  %i.cu = shl nuw nsw i64 %9, 8                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %23 = shl nuw nsw i64 %6, 7                     ; 2 uses
  %i.cw = shl nuw nsw i64 %6, 8                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0266363, i64 36
  %i.cy = zext nneg i32 %i.ci to i64
  %wide.trip.count = zext nneg i32 %.1256 to i64
end_hunk_2
begin_hunk_3_@decompress_smooth_data:bb.a

bb.o:                                             ; preds = %.lr.ph, %bb.ba
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ba ] ; 4 uses
  %.0268361 = phi ptr [ %2, %.lr.ph ], [ %i.ie, %bb.ba ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0258, i64 %indvars.iv ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !58 ; 4 uses
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_3
begin_hunk_4_@decompress_smooth_data:bb.a
  br i1 %i.eh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ej = add nuw nsw i64 %i.eg, %19
  %i.ek = udiv i64 %i.ej, %i.cm
  %i.el = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.ei, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
end_hunk_4
begin_hunk_5_@decompress_smooth_data:bb.a
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.en = sub nsw i64 %19, %i.eg
  %i.eo = udiv i64 %i.en, %i.cm
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  %notmask = shl nsw i32 -1, %i.ea
  %i.eq = xor i32 %notmask, -1
  %spec.select328 = call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.eq)
end_hunk_5
begin_hunk_6_@decompress_smooth_data:bb.a
  br i1 %i.fa, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fc = add nuw nsw i64 %i.ez, %20
  %i.fd = udiv i64 %i.fc, %i.co
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fb, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
end_hunk_6
begin_hunk_7_@decompress_smooth_data:bb.a
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.fg = sub nsw i64 %20, %i.ez
  %i.fh = udiv i64 %i.fg, %i.co
  %i.fi = trunc i64 %i.fh to i32                  ; 2 uses
  %notmask339 = shl nsw i32 -1, %i.et
  %i.fj = xor i32 %notmask339, -1
  %spec.select330 = call i32 @llvm.smin.i32(i32 %i.fi, i32 %i.fj)
end_hunk_7
begin_hunk_8_@decompress_smooth_data:bb.a
  br i1 %i.fv, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.fx = add nuw nsw i64 %i.fu, %21
  %i.fy = udiv i64 %i.fx, %i.cr
  %i.fz = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fw, label %bb.ak, label %bb.am

end_hunk_8
begin_hunk_9_@decompress_smooth_data:bb.a
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.gb = sub nsw i64 %21, %i.fu
  %i.gc = udiv i64 %i.gb, %i.cr
  %i.gd = trunc i64 %i.gc to i32                  ; 2 uses
  %notmask341 = shl nsw i32 -1, %i.fm
  %i.ge = xor i32 %notmask341, -1
end_hunk_9
begin_hunk_10_@decompress_smooth_data:bb.a
  br i1 %i.gq, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gs = add nuw nsw i64 %i.gp, %22
  %i.gt = udiv i64 %i.gs, %i.cu
  %i.gu = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gr, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
end_hunk_10
begin_hunk_11_@decompress_smooth_data:bb.a
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.gw = sub nsw i64 %22, %i.gp
  %i.gx = udiv i64 %i.gw, %i.cu
  %i.gy = trunc i64 %i.gx to i32                  ; 2 uses
  %notmask343 = shl nsw i32 -1, %i.gh
  %i.gz = xor i32 %notmask343, -1
  %spec.select334 = call i32 @llvm.smin.i32(i32 %i.gy, i32 %i.gz)
end_hunk_11
begin_hunk_12_@decompress_smooth_data:bb.a
  br i1 %i.hl, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hn = add nuw nsw i64 %i.hk, %23
  %i.ho = udiv i64 %i.hn, %i.cw
  %i.hp = trunc i64 %i.ho to i32                  ; 2 uses
  br i1 %i.hm, label %bb.aw, label %bb.ay

end_hunk_12
begin_hunk_13_@decompress_smooth_data:bb.a
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %i.hr = sub nsw i64 %23, %i.hk
  %i.hs = udiv i64 %i.hr, %i.cw
  %i.ht = trunc i64 %i.hs to i32                  ; 2 uses
  %notmask345 = shl nsw i32 -1, %i.hc
  %i.hu = xor i32 %notmask345, -1
end_hunk_13
