Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/psa_util?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@psa_pk_status_to_mbedtls:bb.a
bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %psa_generic_status_to_mbedtls.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %psa_generic_status_to_mbedtls.exit

bb.i:                                             ; preds = %bb.a
  br label %psa_generic_status_to_mbedtls.exit

psa_generic_status_to_mbedtls.exit:               ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -15616, %bb.a ], [ -15872, %bb.g ], [ %0, %bb.b ], [ -14720, %bb.c ], [ -14976, %bb.d ], [ -16128, %bb.e ], [ -147, %bb.h ], [ -135, %bb.f ], [ -132, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden zeroext range(i8 0, 66) i8 @mbedtls_ecc_group_to_psa(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #3 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.mbedtls_ecc_group_to_psa, i64 %i.b
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table.mbedtls_ecc_group_to_psa.1, i64 %i.c
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sink = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.0 = phi i8 [ %switch.load12, %switch.lookup ], [ 0, %bb.a ]
  store i64 %.sink, ptr %1, align 8, !tbaa !10
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 12) i32 @mbedtls_ecc_group_from_psa(i8 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i8 %0, label %bb.j [
    i8 18, label %bb.b
    i8 48, label %bb.e
    i8 65, label %bb.h
    i8 23, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  switch i64 %1, label %bb.j [
    i64 256, label %bb.k
    i64 384, label %bb.c
    i64 521, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  switch i64 %1, label %bb.j [
    i64 256, label %bb.k
    i64 384, label %bb.f
    i64 512, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %switch.selectcmp = icmp eq i64 %1, 448
  %switch.select = select i1 %switch.selectcmp, i32 11, i32 0
  %switch.selectcmp6 = icmp eq i64 %1, 255
  %switch.select7 = select i1 %switch.selectcmp6, i32 8, i32 %switch.select
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %cond = icmp eq i64 %1, 256
  br i1 %cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.b, %bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.b, %bb.j, %bb.g, %bb.f, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.j ], [ 5, %bb.e ], [ 3, %bb.c ], [ 4, %bb.d ], [ 2, %bb.b ], [ 6, %bb.f ], [ 7, %bb.g ], [ %switch.select7, %bb.h ], [ 10, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -148, 1) i32 @mbedtls_psa_get_random(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @psa_generate_random(ptr noundef %1, i64 noundef %2) #6
  %i.b = icmp eq i32 %i.a, 0
  %. = select i1 %i.b, i32 0, i32 -148
  ret i32 %.
}

declare i32 @psa_generate_random(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 1) i32 @mbedtls_ecdsa_raw_to_der(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [66 x i8], align 16               ; 4 uses
  %i.d = alloca [66 x i8], align 16               ; 4 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.f = add i64 %0, 7                            ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.i = icmp ne i64 %0, 0
  %i.j = shl nuw nsw i64 %i.g, 1
  %.not = icmp eq i64 %2, %i.j
  %or.cond = select i1 %i.i, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.f, 535
  br i1 %i.k, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %1, i64 %i.g, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr align 1 %i.l, i64 %i.g, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.025.i = phi i64 [ %i.g, %bb.c ], [ %i.p, %bb.e ] ; 3 uses
  %.024.i = phi ptr [ %i.d, %bb.c ], [ %i.o, %bb.e ] ; 3 uses
  %i.m = load i8, ptr %.024.i, align 1, !tbaa !11
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  %i.p = add i64 %.025.i, -1                      ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %convert_raw_to_der_single_int.exit.thread, label %bb.d, !llvm.loop !20

bb.f:                                             ; preds = %bb.d
  %i.r = trunc i64 %.025.i to i32                 ; 2 uses
  %sext.i = shl i64 %.025.i, 32
  %i.s = ashr exact i64 %sext.i, 32               ; 4 uses
  %i.t = icmp slt i64 %4, %i.s
  br i1 %i.t, label %convert_raw_to_der_single_int.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds i8, ptr %i.h, i64 %i.u ; 4 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %.024.i, i64 %i.s, i1 false)
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %.not.i = icmp sgt i8 %i.w, -1
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not56 = icmp sgt i64 %4, %i.s
  br i1 %.not56, label %bb.i, label %convert_raw_to_der_single_int.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.x, align 1, !tbaa !11
  %i.y = add nsw i32 %i.r, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.0.i = phi i32 [ %i.y, %bb.i ], [ %i.r, %bb.g ] ; 2 uses
  %i.z = sext i32 %.0.i to i64
  %i.aa = call i32 @mbedtls_asn1_write_len(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i64 noundef %i.z) #6 ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %convert_raw_to_der_single_int.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 @mbedtls_asn1_write_tag(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i8 noundef zeroext 2) #6 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %convert_raw_to_der_single_int.exit.thread, label %convert_raw_to_der_single_int.exit

convert_raw_to_der_single_int.exit.thread:        ; preds = %bb.e, %bb.k, %bb.f, %bb.h, %bb.j
  %.023.i.ph = phi i32 [ %i.ac, %bb.k ], [ %i.aa, %bb.j ], [ -138, %bb.h ], [ -138, %bb.f ], [ -104, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.x

convert_raw_to_der_single_int.exit:               ; preds = %bb.k
  %i.ae = add nsw i32 %i.aa, %.0.i
  %i.af = add nsw i32 %i.ae, %i.ac                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.x, label %bb.l

bb.l:                                             ; preds = %convert_raw_to_der_single_int.exit
  %i.ah = zext nneg i32 %i.af to i64              ; 3 uses
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.h, i64 %i.ai ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.025.i47 = phi i64 [ %i.g, %bb.l ], [ %i.an, %bb.n ] ; 3 uses
  %.024.i48 = phi ptr [ %i.c, %bb.l ], [ %i.am, %bb.n ] ; 3 uses
  %i.ak = load i8, ptr %.024.i48, align 1, !tbaa !11
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.024.i48, i64 1
  %i.an = add i64 %.025.i47, -1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %convert_raw_to_der_single_int.exit53.thread, label %bb.m, !llvm.loop !20

bb.o:                                             ; preds = %bb.m
  %i.ap = trunc i64 %.025.i47 to i32              ; 2 uses
  %i.aq = sub nsw i64 %4, %i.ah                   ; 2 uses
  %sext.i49 = shl i64 %.025.i47, 32
  %i.ar = ashr exact i64 %sext.i49, 32            ; 4 uses
  %i.as = icmp slt i64 %i.aq, %i.ar
  br i1 %i.as, label %convert_raw_to_der_single_int.exit53.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds i8, ptr %i.aj, i64 %i.at ; 4 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %.024.i48, i64 %i.ar, i1 false)
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %.not.i50 = icmp sgt i8 %i.av, -1
  br i1 %.not.i50, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = sub i64 %i.aq, %i.ar
  %i.ax = icmp slt i64 %i.aw, 1
  br i1 %i.ax, label %convert_raw_to_der_single_int.exit53.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 2 uses
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !14
  store i8 0, ptr %i.ay, align 1, !tbaa !11
  %i.az = add nsw i32 %i.ap, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.0.i51 = phi i32 [ %i.az, %bb.r ], [ %i.ap, %bb.p ] ; 2 uses
  %i.ba = sext i32 %.0.i51 to i64
  %i.bb = call i32 @mbedtls_asn1_write_len(ptr noundef nonnull %i.a, ptr noundef nonnull %3, i64 noundef %i.ba) #6 ; 3 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %convert_raw_to_der_single_int.exit53.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = call i32 @mbedtls_asn1_write_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %3, i8 noundef zeroext 2) #6 ; 3 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %convert_raw_to_der_single_int.exit53.thread, label %convert_raw_to_der_single_int.exit53

convert_raw_to_der_single_int.exit53.thread:      ; preds = %bb.n, %bb.t, %bb.o, %bb.q, %bb.s
  %.023.i52.ph = phi i32 [ %i.bd, %bb.t ], [ %i.bb, %bb.s ], [ -138, %bb.q ], [ -138, %bb.o ], [ -104, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.x

convert_raw_to_der_single_int.exit53:             ; preds = %bb.t
  %i.bf = add nsw i32 %i.bb, %.0.i51
  %i.bg = add nsw i32 %i.bf, %i.bd                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.x, label %bb.u

bb.u:                                             ; preds = %convert_raw_to_der_single_int.exit53
  %i.bi = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.aj, i64 %i.bj
  store ptr %i.bk, ptr %i.e, align 8, !tbaa !14
  %i.bl = add nuw nsw i64 %i.bi, %i.ah            ; 2 uses
  %i.bm = call i32 @mbedtls_asn1_write_len(ptr noundef nonnull %i.e, ptr noundef nonnull %3, i64 noundef %i.bl) #6 ; 3 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = call i32 @mbedtls_asn1_write_tag(ptr noundef nonnull %i.e, ptr noundef nonnull %3, i8 noundef zeroext 48) #6 ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = zext nneg i32 %i.bm to i64
  %i.br = add nuw nsw i64 %i.bl, %i.bq
  %i.bs = zext nneg i32 %i.bo to i64
  %i.bt = add nuw nsw i64 %i.br, %i.bs            ; 2 uses
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %i.bu, i64 %i.bt, i1 false)
  store i64 %i.bt, ptr %5, align 8, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %convert_raw_to_der_single_int.exit53.thread, %convert_raw_to_der_single_int.exit.thread, %bb.v, %bb.u, %convert_raw_to_der_single_int.exit53, %convert_raw_to_der_single_int.exit, %bb.b, %bb.a, %bb.w
  %.0 = phi i32 [ 0, %bb.w ], [ -104, %bb.a ], [ %i.bo, %bb.v ], [ -138, %bb.b ], [ %i.af, %convert_raw_to_der_single_int.exit ], [ %i.bg, %convert_raw_to_der_single_int.exit53 ], [ %i.bm, %bb.u ], [ %.023.i.ph, %convert_raw_to_der_single_int.exit.thread ], [ %.023.i52.ph, %convert_raw_to_der_single_int.exit53.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @mbedtls_asn1_write_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @mbedtls_asn1_write_tag(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_ecdsa_der_to_raw(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca [132 x i8], align 16              ; 6 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store ptr %1, ptr %i.f, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.h = add i64 %0, 7                            ; 2 uses
  %i.i = lshr i64 %i.h, 3                         ; 6 uses
  %i.j = icmp eq i64 %0, 0
  br i1 %i.j, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = shl nuw nsw i64 %i.i, 1                  ; 4 uses
  %i.l = icmp ult i64 %4, %i.k
  %i.m = icmp ugt i64 %i.h, 535
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.o = call i32 @mbedtls_asn1_get_tag(ptr noundef nonnull %i.f, ptr noundef %i.n, ptr noundef nonnull %i.g, i32 noundef 48) #6 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.e, i8 0, i64 %i.k, i1 false)
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr %i.p, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = call i32 @mbedtls_asn1_get_tag(ptr noundef nonnull %i.c, ptr noundef %i.r, ptr noundef nonnull %i.d, i32 noundef 2) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.e, label %convert_der_to_raw_single_int.exit

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.d, align 8, !tbaa !10   ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %convert_der_to_raw_single_int.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11    ; 2 uses
  %.not12.i = icmp sgt i8 %i.w, -1
  br i1 %.not12.i, label %bb.g, label %convert_der_to_raw_single_int.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 4 uses
  store ptr %i.y, ptr %i.c, align 8, !tbaa !14
  %i.z = add i64 %i.t, -1                         ; 3 uses
  store i64 %i.z, ptr %i.d, align 8, !tbaa !10
  %.not13.i = icmp eq i64 %i.z, 0
  br i1 %.not13.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !11
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %convert_der_to_raw_single_int.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ac = phi ptr [ %i.v, %bb.g ], [ %i.y, %bb.i ]
  %i.ad = phi i64 [ %i.t, %bb.g ], [ %i.z, %bb.i ] ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, %i.i
  br i1 %i.ae, label %convert_der_to_raw_single_int.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.h
  %i.af = phi i64 [ %i.ad, %bb.j ], [ 0, %bb.h ]  ; 3 uses
  %i.ag = phi ptr [ %i.ac, %bb.j ], [ %i.y, %bb.h ] ; 2 uses
  %i.ah = sub nuw nsw i64 %i.i, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 1 %i.ag, i64 %i.af, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.p to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32
  br label %convert_der_to_raw_single_int.exit

convert_der_to_raw_single_int.exit.thread:        ; preds = %bb.e, %bb.i, %bb.f, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.t

convert_der_to_raw_single_int.exit:               ; preds = %bb.d, %.thread.i
  %.0.i = phi i32 [ %i.an, %.thread.i ], [ %i.s, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.ao = icmp slt i32 %.0.i, 0
  br i1 %i.ao, label %bb.t, label %bb.k

bb.k:                                             ; preds = %convert_der_to_raw_single_int.exit
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !14  ; 2 uses
  %i.aq = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq ; 3 uses
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !14
  %i.as = load i64, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.at = sub i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.g, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as
  %i.aw = call i32 @mbedtls_asn1_get_tag(ptr noundef nonnull %i.a, ptr noundef %i.av, ptr noundef nonnull %i.b, i32 noundef 2) #6 ; 2 uses
  %.not.i34 = icmp eq i32 %i.aw, 0
  br i1 %.not.i34, label %bb.l, label %convert_der_to_raw_single_int.exit39

bb.l:                                             ; preds = %bb.k
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !10  ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
end_hunk_0
