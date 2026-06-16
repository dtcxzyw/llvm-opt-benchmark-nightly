inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@LZWDecode:bb.a
  %i.kq = load i64, ptr %i.ap, align 8, !tbaa !56
  %i.kr = add i64 %.neg, %i.kq                    ; 2 uses
  store i64 %i.kr, ptr %i.ap, align 8, !tbaa !56
  store ptr %.7336, ptr %i.an, align 8, !tbaa !69
  store i64 %i.kr, ptr %i.ar, align 8, !tbaa !70
  store i64 %.7344, ptr %i.av, align 8, !tbaa !71
  %i.ks = trunc nuw i64 %.4394 to i16
  store i16 %i.ks, ptr %i.ay, align 8, !tbaa !60
  store i64 %.7376, ptr %i.bb, align 8, !tbaa !72
  store i64 %.7389, ptr %i.bd, align 8, !tbaa !73
  store i64 %.4381, ptr %i.bf, align 8, !tbaa !62
  store ptr %.2358, ptr %i.bh, align 8, !tbaa !64
  store ptr %.4368, ptr %i.bj, align 8, !tbaa !63
  store ptr %.4363, ptr %i.bl, align 8, !tbaa !65
  %i.kt = icmp sgt i64 %.8, 0
  br i1 %i.kt, label %bb.bi, label %.thread

bb.bi:                                            ; preds = %.thread451
  tail call void @llvm.memset.p0.i64(ptr align 1 %.5, i8 0, i64 %.8, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !66
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !67
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LZWDecode.module, ptr noundef nonnull @.str.7, i32 noundef %i.kv, i64 noundef %.8) #5
  br label %.thread

.loopexit542:                                     ; preds = %bb.q, %bb.s, %bb.ba, %bb.ay
  tail call void @llvm.memset.p0.i64(ptr align 1 %.2312, i8 0, i64 %.4318, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !66
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !78
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @LZWDecode.module, ptr noundef nonnull @.str.3, i32 noundef %i.kx) #5
  br label %.thread

bb.bj:                                            ; preds = %bb.be, %bb.ad, %bb.y
  tail call void @llvm.memset.p0.i64(ptr align 1 %.2312, i8 0, i64 %.4318, i1 false)
  store i32 1, ptr %i.c, align 8, !tbaa !66
  %i.ky = load ptr, ptr %0, align 8, !tbaa !79
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.ky, ptr noundef nonnull @.str.9) #5
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.g, %bb.bi, %.loopexit542, %bb.bj, %.thread451, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit542 ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 1, %.thread451 ], [ 1, %bb.g ], [ 1, %bb.i ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LZWSetupEncode(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 144016) #5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr %i.c, ptr %i.d, align 8, !tbaa !33
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LZWSetupEncode.module, ptr noundef nonnull @.str.10) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @LZWPreEncode(ptr noundef %0, i16 zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #5 ; 0 uses
  %.val.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val = phi ptr [ %.val.pre, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i16 9, ptr %i.i, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  store i16 511, ptr %i.j, align 2, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i16 258, ptr %i.k, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 10000, ptr %i.m, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.r = load i64, ptr %i.q, align 8, !tbaa !82
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -5
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr %i.t, ptr %i.u, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 144000
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.016.i = phi ptr [ %i.v, %bb.c ], [ %i.an, %bb.e ] ; 17 uses
  %.0.i = phi i64 [ 8993, %bb.c ], [ %i.af, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.016.i, i64 -112
  store i64 -1, ptr %i.w, align 8, !tbaa !84
  %i.x = getelementptr inbounds i8, ptr %.016.i, i64 -96
  store i64 -1, ptr %i.x, align 8, !tbaa !84
  %i.y = getelementptr inbounds i8, ptr %.016.i, i64 -80
  store i64 -1, ptr %i.y, align 8, !tbaa !84
  %i.z = getelementptr inbounds i8, ptr %.016.i, i64 -64
  store i64 -1, ptr %i.z, align 8, !tbaa !84
  %i.aa = getelementptr inbounds i8, ptr %.016.i, i64 -48
  store i64 -1, ptr %i.aa, align 8, !tbaa !84
  %i.ab = getelementptr inbounds i8, ptr %.016.i, i64 -32
  store i64 -1, ptr %i.ab, align 8, !tbaa !84
  %i.ac = getelementptr inbounds i8, ptr %.016.i, i64 -16
  store i64 -1, ptr %i.ac, align 8, !tbaa !84
  store i64 -1, ptr %.016.i, align 8, !tbaa !84
  %i.ad = icmp samesign ugt i64 %.0.i, 7
  br i1 %i.ad, label %bb.e, label %cl_hash.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %.016.i, i64 -128
  %i.af = add nsw i64 %.0.i, -16
  %i.ag = getelementptr inbounds i8, ptr %.016.i, i64 -240
  store i64 -1, ptr %i.ag, align 8, !tbaa !84
  %i.ah = getelementptr inbounds i8, ptr %.016.i, i64 -224
  store i64 -1, ptr %i.ah, align 8, !tbaa !84
  %i.ai = getelementptr inbounds i8, ptr %.016.i, i64 -208
  store i64 -1, ptr %i.ai, align 8, !tbaa !84
  %i.aj = getelementptr inbounds i8, ptr %.016.i, i64 -192
  store i64 -1, ptr %i.aj, align 8, !tbaa !84
  %i.ak = getelementptr inbounds i8, ptr %.016.i, i64 -176
  store i64 -1, ptr %i.ak, align 8, !tbaa !84
  %i.al = getelementptr inbounds i8, ptr %.016.i, i64 -160
  store i64 -1, ptr %i.al, align 8, !tbaa !84
  %i.am = getelementptr inbounds i8, ptr %.016.i, i64 -144
  store i64 -1, ptr %i.am, align 8, !tbaa !84
  store i64 -1, ptr %i.ae, align 8, !tbaa !84
  %i.an = getelementptr inbounds i8, ptr %.016.i, i64 -256
  br label %bb.d

cl_hash.exit:                                     ; preds = %bb.d
  store i64 -1, ptr %.val, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  store i32 65535, ptr %i.ao, align 4, !tbaa !86
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LZWPostEncode(ptr noundef initializes((1136, 1144)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load i64, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.j = load i16, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = icmp ugt ptr %i.d, %i.m
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = ptrtoint ptr %i.d to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i64 %i.s, ptr %i.t, align 8, !tbaa !56
  %i.u = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #5
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.080 = phi ptr [ %i.v, %bb.c ], [ %i.d, %bb.a ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 244 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !86   ; 2 uses
  %.not95 = icmp eq i32 %i.x, 65535
  br i1 %.not95, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.z = load i16, ptr %i.y, align 4, !tbaa !80   ; 2 uses
  %i.aa = zext i16 %i.j to i64                    ; 4 uses
  %i.ab = shl i64 %i.h, %i.aa
  %i.ac = sext i32 %i.x to i64
  %i.ad = or i64 %i.ab, %i.ac                     ; 4 uses
  %i.ae = add nsw i64 %i.f, %i.aa                 ; 3 uses
  %i.af = add nsw i64 %i.ae, -8                   ; 2 uses
  %i.ag = lshr i64 %i.ad, %i.af
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.080, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.080, align 1, !tbaa !58
  %i.aj = icmp sgt i64 %i.ae, 15
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i64 %i.ae, -16                  ; 2 uses
  %i.al = lshr i64 %i.ad, %i.ak
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.080, i64 2
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.181 = phi ptr [ %i.an, %bb.f ], [ %i.ai, %bb.e ] ; 4 uses
  %.078 = phi i64 [ %i.ak, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  store i32 65535, ptr %i.w, align 4, !tbaa !86
  %i.ao = icmp eq i16 %i.z, 4093
  br i1 %i.ao, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ap = shl i64 %i.ad, %i.aa
  %i.aq = or i64 %i.ap, 256                       ; 4 uses
  %i.ar = add nsw i64 %.078, %i.aa                ; 3 uses
  %i.as = add nsw i64 %i.ar, -8                   ; 2 uses
  %i.at = lshr i64 %i.aq, %i.as
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.181, i64 1 ; 2 uses
  store i8 %i.au, ptr %.181, align 1, !tbaa !58
  %i.aw = icmp sgt i64 %i.ar, 15
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ax = add nsw i64 %i.ar, -16                  ; 2 uses
  %i.ay = lshr i64 %i.aq, %i.ax
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.181, i64 2
  store i8 %i.az, ptr %i.av, align 1, !tbaa !58
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !59
  %.not96 = icmp uge i16 %i.z, %i.bc
  %i.bd = zext i1 %.not96 to i32
  %spec.select = add nuw nsw i32 %i.bd, %i.k
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  %.484 = phi ptr [ %.080, %bb.d ], [ %.181, %bb.j ], [ %i.av, %bb.h ], [ %i.ba, %bb.i ] ; 3 uses
  %.3 = phi i64 [ %i.f, %bb.d ], [ %.078, %bb.j ], [ %i.as, %bb.h ], [ %i.ax, %bb.i ]
  %.177 = phi i64 [ %i.h, %bb.d ], [ %i.ad, %bb.j ], [ %i.aq, %bb.h ], [ %i.aq, %bb.i ]
  %.1 = phi i32 [ %i.k, %bb.d ], [ %spec.select, %bb.j ], [ 9, %bb.h ], [ 9, %bb.i ]
  %i.be = zext nneg i32 %.1 to i64                ; 2 uses
  %i.bf = shl i64 %.177, %i.be
  %i.bg = or i64 %i.bf, 257                       ; 3 uses
  %i.bh = add nsw i64 %.3, %i.be                  ; 3 uses
  %i.bi = add nsw i64 %i.bh, -8                   ; 2 uses
  %i.bj = lshr i64 %i.bg, %i.bi
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.484, i64 1 ; 2 uses
  store i8 %i.bk, ptr %.484, align 1, !tbaa !58
  %i.bm = icmp sgt i64 %i.bh, 15
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = add nsw i64 %i.bh, -16                  ; 2 uses
  %i.bo = lshr i64 %i.bg, %i.bn
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.484, i64 2
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5 = phi ptr [ %i.bq, %bb.l ], [ %i.bl, %bb.k ] ; 3 uses
  %.4 = phi i64 [ %i.bn, %bb.l ], [ %i.bi, %bb.k ] ; 2 uses
  %i.br = icmp sgt i64 %.4, 0
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = sub nsw i64 8, %.4
  %i.bt = shl i64 %i.bg, %i.bs
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.bu, ptr %.5, align 1, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.6 = phi ptr [ %i.bv, %bb.n ], [ %.5, %bb.m ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.by = ptrtoint ptr %.6 to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.o
  %.085 = phi i32 [ 1, %bb.o ], [ 0, %bb.b ]
  ret i32 %.085
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LZWEncode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit230, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !72   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 132 ; 2 uses
  %i.o = load i16, ptr %i.n, align 4, !tbaa !80
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 130 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !59
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 244 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !86 ; 2 uses
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = and i32 %i.ab, 65535
  %i.ae = icmp eq i32 %i.ad, 65535
  %i.af = icmp sgt i64 %2, 0
  %or.cond = and i1 %i.af, %i.ae
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = zext i16 %i.u to i64                    ; 3 uses
  %i.ah = shl i64 %i.k, %i.ag
  %i.ai = or i64 %i.ah, 256                       ; 3 uses
  %i.aj = add nsw i64 %i.m, %i.ag                 ; 3 uses
  %i.ak = add nsw i64 %i.aj, -8                   ; 2 uses
  %i.al = lshr i64 %i.ai, %i.ak
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store i8 %i.am, ptr %i.x, align 1, !tbaa !58
  %i.ao = icmp sgt i64 %i.aj, 15
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = add nsw i64 %i.aj, -16                  ; 2 uses
  %i.aq = lshr i64 %i.ai, %i.ap
  %i.ar = trunc i64 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %i.ar, ptr %i.an, align 1, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0171 = phi i64 [ %i.ap, %bb.d ], [ %i.ak, %bb.c ]
  %.0161 = phi ptr [ %i.as, %bb.d ], [ %i.an, %bb.c ]
  %i.at = add nsw i64 %i.g, %i.ag
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.av = load i8, ptr %1, align 1, !tbaa !58
  %i.aw = zext i8 %i.av to i16
  %i.ax = add nsw i64 %2, -1
  %i.ay = add nsw i64 %i.e, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0201 = phi i64 [ %i.ax, %bb.e ], [ %2, %bb.b ] ; 2 uses
  %.0196 = phi ptr [ %i.au, %bb.e ], [ %1, %bb.b ]
  %.0193 = phi i16 [ %i.aw, %bb.e ], [ %i.ac, %bb.b ] ; 2 uses
  %.0189 = phi i64 [ %i.ay, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %.0185 = phi i64 [ %i.at, %bb.e ], [ %i.g, %bb.b ] ; 2 uses
  %.0179 = phi i64 [ %i.ai, %bb.e ], [ %i.k, %bb.b ] ; 2 uses
  %.1172 = phi i64 [ %.0171, %bb.e ], [ %i.m, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.0161, %bb.e ], [ %i.x, %bb.b ] ; 2 uses
  %i.az = icmp sgt i64 %.0201, 0
  br i1 %i.az, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.2.ph289 = phi ptr [ %.1, %.lr.ph.lr.ph ], [ %.8, %.outer ] ; 5 uses
  %.0162.ph288 = phi i32 [ %i.v, %.lr.ph.lr.ph ], [ %.2164, %.outer ] ; 7 uses
  %.0165.ph287 = phi i32 [ %i.s, %.lr.ph.lr.ph ], [ %.2167, %.outer ] ; 5 uses
  %.0168.ph286 = phi i32 [ %i.p, %.lr.ph.lr.ph ], [ %.2170, %.outer ] ; 5 uses
  %.2173.ph285 = phi i64 [ %.1172, %.lr.ph.lr.ph ], [ %.7178, %.outer ] ; 3 uses
  %.1180.ph284 = phi i64 [ %.0179, %.lr.ph.lr.ph ], [ %.3182, %.outer ] ; 3 uses
  %.0183.ph283 = phi i64 [ %i.i, %.lr.ph.lr.ph ], [ %.1184, %.outer ] ; 7 uses
  %.1186.ph282 = phi i64 [ %.0185, %.lr.ph.lr.ph ], [ %.3188, %.outer ] ; 3 uses
  %.1190.ph281 = phi i64 [ %.0189, %.lr.ph.lr.ph ], [ %.3192, %.outer ]
  %.1194.ph280 = phi i16 [ %.0193, %.lr.ph.lr.ph ], [ %.2195, %.outer ]
  %.1197.ph279 = phi ptr [ %.0196, %.lr.ph.lr.ph ], [ %i.bf, %.outer ]
  %.1202.ph278 = phi i64 [ %.0201, %.lr.ph.lr.ph ], [ %i.bi, %.outer ]
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %.1190258 = phi i64 [ %.1190.ph281, %.lr.ph ], [ %i.bj, %bb.h ] ; 3 uses
  %.1194257 = phi i16 [ %.1194.ph280, %.lr.ph ], [ %i.bw, %bb.h ] ; 2 uses
  %.1197256 = phi ptr [ %.1197.ph279, %.lr.ph ], [ %i.bf, %bb.h ] ; 2 uses
  %.1202255 = phi i64 [ %.1202.ph278, %.lr.ph ], [ %i.bi, %bb.h ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1197256, i64 1 ; 2 uses
  %i.bg = load i8, ptr %.1197256, align 1, !tbaa !58 ; 3 uses
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i64 %.1202255, -1               ; 2 uses
  %i.bj = add nsw i64 %.1190258, 1                ; 9 uses
  %i.bk = zext i8 %i.bg to i64
  %i.bl = shl nuw nsw i64 %i.bk, 12
  %i.bm = zext i16 %.1194257 to i64               ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, %i.bm            ; 3 uses
  %i.bo = shl nuw nsw i32 %i.bh, 5                ; 2 uses
  %i.bp = zext i16 %.1194257 to i32               ; 2 uses
  %i.bq = xor i32 %i.bo, %i.bp                    ; 3 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.br ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !84 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, %i.bn
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !89 ; 2 uses
  %i.bx = icmp samesign ugt i64 %.1202255, 1
  br i1 %i.bx, label %bb.g, label %.outer._crit_edge

bb.i:                                             ; preds = %bb.g
  %i.by = icmp sgt i64 %i.bt, -1
  br i1 %i.by, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %.neg = add nsw i32 %i.bq, -9001
  %i.bz = icmp eq i32 %i.bo, %i.bp
  %spec.store.select.neg = select i1 %i.bz, i32 -1, i32 %.neg
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.0198 = phi i32 [ %i.bq, %bb.j ], [ %spec.select, %bb.m ]
  %i.ca = add i32 %.0198, %spec.store.select.neg  ; 3 uses
  %i.cb = icmp slt i32 %i.ca, 0
  %narrow = add nsw i32 %i.ca, 9001
  %spec.select = select i1 %i.cb, i32 %narrow, i32 %i.ca ; 2 uses
  %i.cc = sext i32 %spec.select to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.cc ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !84 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %i.bn
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i16, ptr %i.cg, align 8, !tbaa !89
  br label %.outer

bb.m:                                             ; preds = %bb.k
  %i.ci = icmp sgt i64 %i.ce, -1
  br i1 %i.ci, label %bb.k, label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.i
  %.0200 = phi ptr [ %i.bs, %bb.i ], [ %i.cd, %bb.m ] ; 2 uses
  %i.cj = icmp ugt ptr %.2.ph289, %i.z
  br i1 %i.cj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.loopexit
  %i.ck = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.cl = ptrtoint ptr %.2.ph289 to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.bc, align 8, !tbaa !56
  %i.co = tail call i32 @TIFFFlushData1(ptr noundef %0) #5
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %.loopexit230, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr %i.bb, align 8, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.3 = phi ptr [ %i.cp, %bb.o ], [ %.2.ph289, %.loopexit ] ; 3 uses
  %i.cq = zext i32 %.0162.ph288 to i64            ; 3 uses
  %i.cr = shl i64 %.1180.ph284, %i.cq
  %i.cs = or i64 %i.cr, %i.bm                     ; 7 uses
  %i.ct = sext i32 %.0162.ph288 to i64            ; 8 uses
  %i.cu = add nsw i64 %.2173.ph285, %i.ct         ; 3 uses
  %i.cv = add nsw i64 %i.cu, -8                   ; 2 uses
  %i.cw = lshr i64 %i.cs, %i.cv
  %i.cx = trunc i64 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  store i8 %i.cx, ptr %.3, align 1, !tbaa !58
  %i.cz = icmp sgt i64 %i.cu, 15
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = add nsw i64 %i.cu, -16                  ; 2 uses
  %i.db = lshr i64 %i.cs, %i.da
  %i.dc = trunc i64 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.3, i64 2
  store i8 %i.dc, ptr %i.cy, align 1, !tbaa !58
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3174 = phi i64 [ %i.da, %bb.q ], [ %i.cv, %bb.p ] ; 5 uses
  %.4 = phi ptr [ %i.dd, %bb.q ], [ %i.cy, %bb.p ] ; 9 uses
  %i.de = add nsw i64 %.1186.ph282, %i.ct         ; 5 uses
  %i.df = zext i8 %i.bg to i16                    ; 7 uses
  %i.dg = add nsw i32 %.0168.ph286, 1             ; 4 uses
  %i.dh = trunc i32 %.0168.ph286 to i16
  %i.di = getelementptr inbounds nuw i8, ptr %.0200, i64 8
  store i16 %i.dh, ptr %i.di, align 8, !tbaa !89
  store i64 %i.bn, ptr %.0200, align 8, !tbaa !84
  %i.dj = icmp eq i32 %i.dg, 4094
  br i1 %i.dj, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.val226 = load ptr, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val226, i64 144000
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.016.i = phi ptr [ %i.dk, %bb.s ], [ %i.ec, %bb.u ] ; 17 uses
  %.0.i = phi i64 [ 8993, %bb.s ], [ %i.du, %bb.u ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.016.i, i64 -112
  store i64 -1, ptr %i.dl, align 8, !tbaa !84
  %i.dm = getelementptr inbounds i8, ptr %.016.i, i64 -96
  store i64 -1, ptr %i.dm, align 8, !tbaa !84
  %i.dn = getelementptr inbounds i8, ptr %.016.i, i64 -80
  store i64 -1, ptr %i.dn, align 8, !tbaa !84
  %i.do = getelementptr inbounds i8, ptr %.016.i, i64 -64
  store i64 -1, ptr %i.do, align 8, !tbaa !84
  %i.dp = getelementptr inbounds i8, ptr %.016.i, i64 -48
  store i64 -1, ptr %i.dp, align 8, !tbaa !84
  %i.dq = getelementptr inbounds i8, ptr %.016.i, i64 -32
  store i64 -1, ptr %i.dq, align 8, !tbaa !84
  %i.dr = getelementptr inbounds i8, ptr %.016.i, i64 -16
  store i64 -1, ptr %i.dr, align 8, !tbaa !84
  store i64 -1, ptr %.016.i, align 8, !tbaa !84
  %i.ds = icmp samesign ugt i64 %.0.i, 7
  br i1 %i.ds, label %bb.u, label %cl_hash.exit

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds i8, ptr %.016.i, i64 -128
  %i.du = add nsw i64 %.0.i, -16
  %i.dv = getelementptr inbounds i8, ptr %.016.i, i64 -240
  store i64 -1, ptr %i.dv, align 8, !tbaa !84
  %i.dw = getelementptr inbounds i8, ptr %.016.i, i64 -224
  store i64 -1, ptr %i.dw, align 8, !tbaa !84
  %i.dx = getelementptr inbounds i8, ptr %.016.i, i64 -208
  store i64 -1, ptr %i.dx, align 8, !tbaa !84
  %i.dy = getelementptr inbounds i8, ptr %.016.i, i64 -192
  store i64 -1, ptr %i.dy, align 8, !tbaa !84
  %i.dz = getelementptr inbounds i8, ptr %.016.i, i64 -176
  store i64 -1, ptr %i.dz, align 8, !tbaa !84
  %i.ea = getelementptr inbounds i8, ptr %.016.i, i64 -160
  store i64 -1, ptr %i.ea, align 8, !tbaa !84
  %i.eb = getelementptr inbounds i8, ptr %.016.i, i64 -144
  store i64 -1, ptr %i.eb, align 8, !tbaa !84
  store i64 -1, ptr %i.dt, align 8, !tbaa !84
  %i.ec = getelementptr inbounds i8, ptr %.016.i, i64 -256
  br label %bb.t

cl_hash.exit:                                     ; preds = %bb.t
  store i64 -1, ptr %.val226, align 8, !tbaa !84
  store i64 0, ptr %i.bd, align 8, !tbaa !90
  %i.ed = shl i64 %i.cs, %i.cq
  %i.ee = or i64 %i.ed, 256                       ; 4 uses
  %i.ef = add nsw i64 %.3174, %i.ct               ; 3 uses
  %i.eg = add nsw i64 %i.ef, -8                   ; 2 uses
  %i.eh = lshr i64 %i.ee, %i.eg
  %i.ei = trunc i64 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  store i8 %i.ei, ptr %.4, align 1, !tbaa !58
  %i.ek = icmp sgt i64 %i.ef, 15
  br i1 %i.ek, label %bb.v, label %.outer

bb.v:                                             ; preds = %cl_hash.exit
  %i.el = add nsw i64 %i.ef, -16                  ; 2 uses
  %i.em = lshr i64 %i.ee, %i.el
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.4, i64 2
  store i8 %i.en, ptr %i.ej, align 1, !tbaa !58
  br label %.outer

bb.w:                                             ; preds = %bb.r
  %.not223 = icmp slt i32 %.0168.ph286, %.0165.ph287
  br i1 %.not223, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ep = add nsw i32 %.0162.ph288, 1             ; 2 uses
  %i.eq = zext nneg i32 %i.ep to i64
  %notmask = shl nsw i64 -1, %i.eq
  %i.er = trunc i64 %notmask to i32
  %i.es = xor i32 %i.er, -1
  br label %.outer

bb.y:                                             ; preds = %bb.w
  %.not224.a = icmp slt i64 %i.bj, %.0183.ph283
  br i1 %.not224.a, label %.outer, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = add nsw i64 %.1190258, 10001            ; 3 uses
  %i.eu = icmp sgt i64 %.1190258, 8388606
  br i1 %i.eu, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ev = ashr i64 %i.de, 8                       ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ex = sdiv i64 %i.bj, %i.ev
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.ey = shl i64 %i.bj, 8
  %i.ez = sdiv i64 %i.ey, %i.de
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.ac
  %.0 = phi i64 [ %i.ez, %bb.ac ], [ %i.ex, %bb.ab ], [ 2147483647, %bb.aa ] ; 2 uses
  %i.fa = load i64, ptr %i.bd, align 8, !tbaa !90
  %.not225 = icmp sgt i64 %.0, %i.fa
  br i1 %.not225, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 144000
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.016.i227 = phi ptr [ %i.fb, %bb.ae ], [ %i.ft, %bb.ag ] ; 17 uses
  %.0.i228 = phi i64 [ 8993, %bb.ae ], [ %i.fl, %bb.ag ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.016.i227, i64 -112
  store i64 -1, ptr %i.fc, align 8, !tbaa !84
  %i.fd = getelementptr inbounds i8, ptr %.016.i227, i64 -96
  store i64 -1, ptr %i.fd, align 8, !tbaa !84
  %i.fe = getelementptr inbounds i8, ptr %.016.i227, i64 -80
  store i64 -1, ptr %i.fe, align 8, !tbaa !84
  %i.ff = getelementptr inbounds i8, ptr %.016.i227, i64 -64
  store i64 -1, ptr %i.ff, align 8, !tbaa !84
  %i.fg = getelementptr inbounds i8, ptr %.016.i227, i64 -48
  store i64 -1, ptr %i.fg, align 8, !tbaa !84
  %i.fh = getelementptr inbounds i8, ptr %.016.i227, i64 -32
  store i64 -1, ptr %i.fh, align 8, !tbaa !84
  %i.fi = getelementptr inbounds i8, ptr %.016.i227, i64 -16
  store i64 -1, ptr %i.fi, align 8, !tbaa !84
  store i64 -1, ptr %.016.i227, align 8, !tbaa !84
  %i.fj = icmp samesign ugt i64 %.0.i228, 7
  br i1 %i.fj, label %bb.ag, label %cl_hash.exit229

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds i8, ptr %.016.i227, i64 -128
  %i.fl = add nsw i64 %.0.i228, -16
  %i.fm = getelementptr inbounds i8, ptr %.016.i227, i64 -240
  store i64 -1, ptr %i.fm, align 8, !tbaa !84
  %i.fn = getelementptr inbounds i8, ptr %.016.i227, i64 -224
  store i64 -1, ptr %i.fn, align 8, !tbaa !84
  %i.fo = getelementptr inbounds i8, ptr %.016.i227, i64 -208
  store i64 -1, ptr %i.fo, align 8, !tbaa !84
  %i.fp = getelementptr inbounds i8, ptr %.016.i227, i64 -192
  store i64 -1, ptr %i.fp, align 8, !tbaa !84
  %i.fq = getelementptr inbounds i8, ptr %.016.i227, i64 -176
  store i64 -1, ptr %i.fq, align 8, !tbaa !84
  %i.fr = getelementptr inbounds i8, ptr %.016.i227, i64 -160
  store i64 -1, ptr %i.fr, align 8, !tbaa !84
  %i.fs = getelementptr inbounds i8, ptr %.016.i227, i64 -144
  store i64 -1, ptr %i.fs, align 8, !tbaa !84
  store i64 -1, ptr %i.fk, align 8, !tbaa !84
  %i.ft = getelementptr inbounds i8, ptr %.016.i227, i64 -256
  br label %bb.af

cl_hash.exit229:                                  ; preds = %bb.af
  store i64 -1, ptr %.val, align 8, !tbaa !84
  store i64 0, ptr %i.bd, align 8, !tbaa !90
  %i.fu = shl i64 %i.cs, %i.cq
  %i.fv = or i64 %i.fu, 256                       ; 4 uses
  %i.fw = add nsw i64 %.3174, %i.ct               ; 3 uses
  %i.fx = add nsw i64 %i.fw, -8                   ; 2 uses
  %i.fy = lshr i64 %i.fv, %i.fx
  %i.fz = trunc i64 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  store i8 %i.fz, ptr %.4, align 1, !tbaa !58
  %i.gb = icmp sgt i64 %i.fw, 15
  br i1 %i.gb, label %bb.ah, label %.outer

bb.ah:                                            ; preds = %cl_hash.exit229
  %i.gc = add nsw i64 %i.fw, -16                  ; 2 uses
  %i.gd = lshr i64 %i.fv, %i.gc
  %i.ge = trunc i64 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %.4, i64 2
  store i8 %i.ge, ptr %i.ga, align 1, !tbaa !58
  br label %.outer

bb.ai:                                            ; preds = %bb.ad
  store i64 %.0, ptr %i.bd, align 8, !tbaa !90
  br label %.outer

.outer:                                           ; preds = %bb.ai, %bb.ah, %cl_hash.exit229, %cl_hash.exit, %bb.v, %bb.y, %bb.x, %bb.l
  %.2195 = phi i16 [ %i.ch, %bb.l ], [ %i.df, %bb.y ], [ %i.df, %bb.x ], [ %i.df, %cl_hash.exit ], [ %i.df, %bb.v ], [ %i.df, %cl_hash.exit229 ], [ %i.df, %bb.ah ], [ %i.df, %bb.ai ] ; 2 uses
  %.3192 = phi i64 [ %i.bj, %bb.l ], [ %i.bj, %bb.y ], [ %i.bj, %bb.x ], [ 0, %cl_hash.exit ], [ 0, %bb.v ], [ 0, %cl_hash.exit229 ], [ 0, %bb.ah ], [ %i.bj, %bb.ai ] ; 2 uses
  %.3188 = phi i64 [ %.1186.ph282, %bb.l ], [ %i.de, %bb.y ], [ %i.de, %bb.x ], [ %i.ct, %cl_hash.exit ], [ %i.ct, %bb.v ], [ %i.ct, %cl_hash.exit229 ], [ %i.ct, %bb.ah ], [ %i.de, %bb.ai ] ; 2 uses
  %.1184 = phi i64 [ %.0183.ph283, %bb.l ], [ %.0183.ph283, %bb.y ], [ %.0183.ph283, %bb.x ], [ %.0183.ph283, %cl_hash.exit ], [ %.0183.ph283, %bb.v ], [ %i.et, %cl_hash.exit229 ], [ %i.et, %bb.ah ], [ %i.et, %bb.ai ] ; 2 uses
  %.3182 = phi i64 [ %.1180.ph284, %bb.l ], [ %i.cs, %bb.y ], [ %i.cs, %bb.x ], [ %i.ee, %cl_hash.exit ], [ %i.ee, %bb.v ], [ %i.fv, %cl_hash.exit229 ], [ %i.fv, %bb.ah ], [ %i.cs, %bb.ai ] ; 2 uses
  %.7178 = phi i64 [ %.2173.ph285, %bb.l ], [ %.3174, %bb.y ], [ %.3174, %bb.x ], [ %i.eg, %cl_hash.exit ], [ %i.el, %bb.v ], [ %i.fx, %cl_hash.exit229 ], [ %i.gc, %bb.ah ], [ %.3174, %bb.ai ] ; 2 uses
  %.2170 = phi i32 [ %.0168.ph286, %bb.l ], [ %i.dg, %bb.y ], [ %i.dg, %bb.x ], [ 258, %cl_hash.exit ], [ 258, %bb.v ], [ 258, %cl_hash.exit229 ], [ 258, %bb.ah ], [ %i.dg, %bb.ai ] ; 2 uses
  %.2167 = phi i32 [ %.0165.ph287, %bb.l ], [ %.0165.ph287, %bb.y ], [ %i.es, %bb.x ], [ 511, %cl_hash.exit ], [ 511, %bb.v ], [ 511, %cl_hash.exit229 ], [ 511, %bb.ah ], [ %.0165.ph287, %bb.ai ] ; 2 uses
  %.2164 = phi i32 [ %.0162.ph288, %bb.l ], [ %.0162.ph288, %bb.y ], [ %i.ep, %bb.x ], [ 9, %cl_hash.exit ], [ 9, %bb.v ], [ 9, %cl_hash.exit229 ], [ 9, %bb.ah ], [ %.0162.ph288, %bb.ai ] ; 2 uses
  %.8 = phi ptr [ %.2.ph289, %bb.l ], [ %.4, %bb.y ], [ %.4, %bb.x ], [ %i.ej, %cl_hash.exit ], [ %i.eo, %bb.v ], [ %i.ga, %cl_hash.exit229 ], [ %i.gf, %bb.ah ], [ %.4, %bb.ai ] ; 2 uses
  %i.gg = icmp sgt i64 %.1202255, 1
  br i1 %i.gg, label %.lr.ph, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %bb.h, %bb.f
  %.1186.ph.lcssa254 = phi i64 [ %.1186.ph282, %bb.h ], [ %.0185, %bb.f ], [ %.3188, %.outer ]
  %.0183.ph.lcssa253 = phi i64 [ %.0183.ph283, %bb.h ], [ %i.i, %bb.f ], [ %.1184, %.outer ]
  %.1180.ph.lcssa252 = phi i64 [ %.1180.ph284, %bb.h ], [ %.0179, %bb.f ], [ %.3182, %.outer ]
  %.2173.ph.lcssa251 = phi i64 [ %.2173.ph285, %bb.h ], [ %.1172, %bb.f ], [ %.7178, %.outer ]
  %.0168.ph.lcssa250 = phi i32 [ %.0168.ph286, %bb.h ], [ %i.p, %bb.f ], [ %.2170, %.outer ]
  %.0165.ph.lcssa249 = phi i32 [ %.0165.ph287, %bb.h ], [ %i.s, %bb.f ], [ %.2167, %.outer ]
  %.0162.ph.lcssa248 = phi i32 [ %.0162.ph288, %bb.h ], [ %i.v, %bb.f ], [ %.2164, %.outer ]
  %.2.ph.lcssa247 = phi ptr [ %.2.ph289, %bb.h ], [ %.1, %bb.f ], [ %.8, %.outer ]
  %.1194.lcssa = phi i16 [ %i.bw, %bb.h ], [ %.0193, %bb.f ], [ %.2195, %.outer ]
  %.1190.lcssa = phi i64 [ %i.bj, %bb.h ], [ %.0189, %bb.f ], [ %.3192, %.outer ]
  store i64 %.1190.lcssa, ptr %i.d, align 8, !tbaa !87
  store i64 %.1186.ph.lcssa254, ptr %i.f, align 8, !tbaa !88
  store i64 %.0183.ph.lcssa253, ptr %i.h, align 8, !tbaa !81
  %i.gh = zext i16 %.1194.lcssa to i32
  store i32 %i.gh, ptr %i.aa, align 4, !tbaa !86
  store i64 %.1180.ph.lcssa252, ptr %i.j, align 8, !tbaa !72
  store i64 %.2173.ph.lcssa251, ptr %i.l, align 8, !tbaa !73
  %i.gi = trunc i32 %.0168.ph.lcssa250 to i16
  store i16 %i.gi, ptr %i.n, align 4, !tbaa !80
  %i.gj = trunc i32 %.0165.ph.lcssa249 to i16
  store i16 %i.gj, ptr %i.q, align 2, !tbaa !59
  %i.gk = trunc i32 %.0162.ph.lcssa248 to i16
  store i16 %i.gk, ptr %i.t, align 8, !tbaa !60
  store ptr %.2.ph.lcssa247, ptr %i.w, align 8, !tbaa !69
  br label %.loopexit230

.loopexit230:                                     ; preds = %bb.n, %bb.a, %.outer._crit_edge
  %.0160 = phi i32 [ 1, %.outer._crit_edge ], [ 0, %bb.a ], [ 0, %bb.n ]
  ret i32 %.0160
}

; Function Attrs: nounwind uwtable
define internal void @LZWCleanup(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @TIFFPredictorCleanup(ptr noundef %0) #5 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #5
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #5
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre13, %bb.d ], [ %i.f, %bb.c ]
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef %i.i) #5
  store ptr null, ptr %i.b, align 8, !tbaa !7
  tail call void @_TIFFSetDefaultCompressionState(ptr noundef nonnull %0) #5
  ret void
}

declare i32 @TIFFPredictorInit(ptr noundef) local_unnamed_addr #1

declare void @TIFFErrorExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

end_hunk_0
