inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@do_name_ex:bb.a
bb.b:                                             ; preds = %.lr.ph.i
  %i.b = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %3, %i.b
  br i1 %exitcond.not.i, label %.loopexit149, label %.lr.ph.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.06.i = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = tail call i32 %0(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 1) #8, !callees !11, !inline_history !12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %do_indent.exit, label %bb.b

.loopexit149:                                     ; preds = %bb.b, %bb.a
  %i.d = and i64 %4, 983040
  %i.e = add nsw i64 %i.d, -65536
  %i.f = lshr exact i64 %i.e, 16
  switch i64 %i.f, label %do_indent.exit [
    i64 3, label %bb.f
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %.loopexit149
  br label %bb.f

bb.d:                                             ; preds = %.loopexit149
  br label %bb.f

bb.e:                                             ; preds = %.loopexit149
  br label %bb.f

bb.f:                                             ; preds = %.loopexit149, %bb.e, %bb.d, %bb.c
  %.093 = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ %spec.store.select, %.loopexit149 ] ; 3 uses
  %.092 = phi ptr [ @.str.5, %bb.e ], [ @.str.2, %bb.c ], [ @.str.4, %bb.d ], [ @.str, %.loopexit149 ]
  %.091 = phi ptr [ @.str.1, %bb.e ], [ @.str.3, %bb.c ], [ @.str.1, %bb.d ], [ @.str.1, %.loopexit149 ]
  %.089 = phi i32 [ 2, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ], [ 1, %.loopexit149 ] ; 2 uses
  %.088 = phi i32 [ 3, %bb.e ], [ 1, %bb.c ], [ 3, %bb.d ], [ 3, %.loopexit149 ] ; 2 uses
  %i.g = and i64 %4, 8388608
  %.not108 = icmp eq i64 %i.g, 0                  ; 2 uses
  %.str.7..str.6 = select i1 %.not108, ptr @.str.7, ptr @.str.6
  %. = select i1 %.not108, i32 1, i32 3           ; 2 uses
  %i.h = trunc i64 %4 to i32
  %i.i = and i32 %i.h, 6291456                    ; 3 uses
  %i.j = tail call i32 @X509_NAME_entry_count(ptr noundef %2) #8 ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %do_indent.exit

.lr.ph:                                           ; preds = %bb.f
  %i.l = and i64 %4, 1048576
  %.not109 = icmp eq i64 %i.l, 0
  %.not144 = icmp eq i32 %.093, 0
  %i.m = add nuw i32 %.089, %.093
  %.not114 = icmp eq i32 %i.i, 6291456
  %i.n = icmp eq i32 %i.i, 4194304
  %i.o = and i64 %4, 33554432
  %.not116 = icmp eq i64 %i.o, 0
  %i.p = and i64 %4, 16777216
  %.not119 = icmp eq i64 %i.p, 0
  %i.q = or i64 %4, 128
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.y
  %.094152 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.ay, %bb.y ] ; 3 uses
  %.0100151 = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.y ] ; 3 uses
  %.0101150 = phi i32 [ -1, %.lr.ph ], [ %i.ac, %bb.y ] ; 2 uses
  %i.r = xor i32 %.0100151, -1
  %i.s = add nsw i32 %i.j, %i.r
  %.0100151.sink = select i1 %.not109, i32 %.0100151, i32 %i.s
  %i.t = call ptr @X509_NAME_get_entry(ptr noundef %2, i32 noundef %.0100151.sink) #8 ; 4 uses
  %.not110 = icmp eq i32 %.0101150, -1
  br i1 %.not110, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = call i32 @X509_NAME_ENTRY_set(ptr noundef %i.t) #8
  %i.v = icmp eq i32 %.0101150, %i.u
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 %0(ptr noundef %1, ptr noundef nonnull %.091, i32 noundef %.088) #8, !callees !11
  %.not113 = icmp eq i32 %i.w, 0
  br i1 %.not113, label %do_indent.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %.094152, %.088
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.y = call i32 %0(ptr noundef %1, ptr noundef nonnull %.092, i32 noundef %.089) #8, !callees !11
  %.not111 = icmp eq i32 %i.y, 0
  br i1 %.not111, label %do_indent.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not144, label %.loopexit146, label %.lr.ph.i123

bb.m:                                             ; preds = %.lr.ph.i123
  %i.z = add nuw nsw i32 %.06.i124, 1             ; 2 uses
  %exitcond.not.i126 = icmp eq i32 %i.z, %.093
  br i1 %exitcond.not.i126, label %.loopexit146, label %.lr.ph.i123, !llvm.loop !9

.lr.ph.i123:                                      ; preds = %bb.l, %bb.m
  %.06.i124 = phi i32 [ %i.z, %bb.m ], [ 0, %bb.l ]
  %i.aa = call i32 %0(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 1) #8, !callees !11, !inline_history !12
  %.not.i125 = icmp eq i32 %i.aa, 0
  br i1 %.not.i125, label %do_indent.exit, label %bb.m

.loopexit146:                                     ; preds = %bb.m, %bb.l
  %i.ab = add i32 %i.m, %.094152
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %.loopexit146, %bb.g
  %.195 = phi i32 [ %i.x, %bb.j ], [ %i.ab, %.loopexit146 ], [ %.094152, %bb.g ] ; 3 uses
  %i.ac = call i32 @X509_NAME_ENTRY_set(ptr noundef %i.t) #8
  %i.ad = call ptr @X509_NAME_ENTRY_get_object(ptr noundef %i.t) #8 ; 2 uses
  %i.ae = call ptr @X509_NAME_ENTRY_get_data(ptr noundef %i.t) #8
  %i.af = call i32 @OBJ_obj2nid(ptr noundef %i.ad) #8 ; 4 uses
  br i1 %.not114, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = icmp eq i32 %i.af, 0
  %or.cond = select i1 %i.n, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.a, i32 noundef 80, ptr noundef %i.ad, i32 noundef 1) #8 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  switch i32 %i.i, label %bb.t [
    i32 0, label %bb.r
    i32 2097152, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ai = call ptr @OBJ_nid2sn(i32 noundef %i.af) #8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.aj = call ptr @OBJ_nid2ln(i32 noundef %i.af) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %bb.p
  %.098 = phi ptr [ %i.a, %bb.p ], [ %i.ai, %bb.r ], [ %i.aj, %bb.s ], [ @.str.8, %bb.q ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.p ], [ 10, %bb.r ], [ 25, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.098) #9
  %i.al = trunc i64 %i.ak to i32                  ; 4 uses
  %i.am = call i32 %0(ptr noundef %1, ptr noundef nonnull %.098, i32 noundef %i.al) #8, !callees !11
  %.not115 = icmp eq i32 %i.am, 0
  br i1 %.not115, label %do_indent.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = icmp sle i32 %.0, %i.al
  %or.cond120 = or i1 %.not116, %i.an
  br i1 %or.cond120, label %bb.w, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %bb.u
  %i.ao = sub nsw i32 %.0, %i.al                  ; 2 uses
  br label %.lr.ph.i129

bb.v:                                             ; preds = %.lr.ph.i129
  %i.ap = add nuw nsw i32 %.06.i130, 1            ; 2 uses
  %exitcond.not.i132 = icmp eq i32 %i.ap, %i.ao
  br i1 %exitcond.not.i132, label %.loopexit, label %.lr.ph.i129, !llvm.loop !9

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.preheader, %bb.v
  %.06.i130 = phi i32 [ %i.ap, %bb.v ], [ 0, %.lr.ph.i129.preheader ]
  %i.aq = call i32 %0(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 1) #8, !callees !11, !inline_history !12
  %.not.i131 = icmp eq i32 %i.aq, 0
  br i1 %.not.i131, label %do_indent.exit, label %bb.v

.loopexit:                                        ; preds = %bb.v
  %i.ar = add nsw i32 %i.ao, %.195
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.u
  %.296 = phi i32 [ %i.ar, %.loopexit ], [ %.195, %bb.u ]
  %i.as = call i32 %0(ptr noundef %1, ptr noundef nonnull %.str.7..str.6, i32 noundef %.) #8, !callees !11
  %.not118 = icmp eq i32 %i.as, 0
  br i1 %.not118, label %do_indent.exit, label %do_indent.exit133

do_indent.exit133:                                ; preds = %bb.w
  %i.at = add nsw i32 %., %i.al
  %i.au = add nsw i32 %i.at, %.296
  br label %bb.x

bb.x:                                             ; preds = %do_indent.exit133, %bb.n
  %.4 = phi i32 [ %i.au, %do_indent.exit133 ], [ %.195, %bb.n ]
  %i.av = icmp ne i32 %i.af, 0
  %or.cond121 = or i1 %.not119, %i.av
  %.0102 = select i1 %or.cond121, i64 %4, i64 %i.q
  %i.aw = call fastcc i32 @do_print_ex(ptr noundef %0, ptr noundef %1, i64 noundef %.0102, ptr noundef %i.ae) ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %do_indent.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = add nsw i32 %i.aw, %.4                  ; 2 uses
  %i.az = add nuw nsw i32 %.0100151, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %i.j
  br i1 %exitcond.not, label %do_indent.exit, label %bb.g, !llvm.loop !13

do_indent.exit:                                   ; preds = %.lr.ph.i, %bb.i, %bb.k, %bb.x, %bb.y, %bb.w, %bb.t, %.lr.ph.i123, %.lr.ph.i129, %bb.f, %.loopexit149
  %.3 = phi i32 [ %spec.store.select, %bb.f ], [ -1, %bb.t ], [ -1, %.lr.ph.i123 ], [ -1, %.loopexit149 ], [ -1, %.lr.ph.i129 ], [ -1, %bb.w ], [ %i.ay, %bb.y ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.x ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @send_bio_chars(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @BIO_write(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #8
  %.not6 = icmp eq i32 %i.a, %2
  %. = zext i1 %.not6 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @X509_NAME_print_ex_fp(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @BIO_new_fp(ptr noundef %0, i32 noundef 0) #8 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @X509_NAME_print(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %2) #8
  %i.d = tail call i32 @BIO_free(ptr noundef nonnull %i.b) #8 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @do_name_ex(ptr noundef nonnull @send_fp_chars, ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi i32 [ %i.e, %bb.d ], [ %i.c, %bb.c ], [ -1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @BIO_new_fp(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 2) i32 @send_fp_chars(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef nonnull %0)
  %i.c = zext i32 %2 to i64
  %.not6 = icmp eq i64 %i.b, %i.c
  %. = zext i1 %.not6 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ASN1_STRING_print_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @do_print_ex(ptr noundef nonnull @send_bio_chars, ptr noundef %0, i64 noundef %2, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_print_ex(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %4 = alloca %struct.asn1_type_st, align 8       ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i8 0, ptr %i.d, align 1, !tbaa !14
  %i.e = trunc i64 %2 to i16
  %i.f = and i16 %i.e, 1039                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %.fr = freeze i32 %i.h                          ; 4 uses
  %i.i = and i64 %2, 64
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @ASN1_tag2str(i32 noundef %.fr) #8 ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #9
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = tail call i32 %0(ptr noundef %1, ptr noundef nonnull %i.j, i32 noundef %i.l) #8, !callees !11
  %.not70 = icmp eq i32 %i.m, 0
  br i1 %.not70, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 %0(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef 1) #8, !callees !11
  %.not71 = icmp eq i32 %i.n, 0
  br i1 %.not71, label %.thread, label %5

5:                                                ; preds = %bb.c
  %6 = add nsw i32 %i.l, 1
  br label %bb.d

bb.d:                                             ; preds = %5, %bb.a
  %.162 = phi i32 [ %6, %5 ], [ 0, %bb.a ]        ; 4 uses
  %i.o = and i64 %2, 128
  %.not72 = icmp eq i64 %i.o, 0
  br i1 %.not72, label %bb.e, label %.thread96

bb.e:                                             ; preds = %bb.d
  %i.p = and i64 %2, 32
  %.not73 = icmp eq i64 %i.p, 0
  br i1 %.not73, label %bb.f, label %.thread102

bb.f:                                             ; preds = %bb.e
  %i.q = add i32 %.fr, -1
  %or.cond = icmp ult i32 %i.q, 30
  br i1 %or.cond, label %bb.g, label %.thread94

bb.g:                                             ; preds = %bb.f
  %i.r = zext nneg i32 %.fr to i64                ; 2 uses
  %i.s = shl nuw nsw i64 1, %i.r
  %i.t = and i64 %i.s, 706998271
  %.not109 = icmp eq i64 %i.t, 0
  br i1 %.not109, label %bb.r, label %.thread94

.thread94:                                        ; preds = %bb.f, %bb.g
  %i.u = and i64 %2, 256
  %.not74 = icmp eq i64 %i.u, 0
  br i1 %.not74, label %.thread102, label %.thread96

.thread96:                                        ; preds = %.thread94, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.v = tail call i32 %0(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 1) #8, !callees !11, !inline_history !20
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %do_dump.exit, label %bb.h

bb.h:                                             ; preds = %.thread96
  %i.w = and i64 %2, 512
  %.not25.i = icmp eq i64 %i.w, 0
  br i1 %.not25.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = load i32, ptr %3, align 8, !tbaa !22
  %.fr44.i = freeze i32 %i.z                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %do_hex_dump.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %.fr44.i to i64
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa
  %.not1316.i.i = icmp eq i32 %.fr44.i, 0
  br i1 %.not1316.i.i, label %do_hex_dump.exit.thread38.i, label %.lr.ph.i.i

do_hex_dump.exit.thread38.i:                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %do_dump.exit

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.01117.i.i, i64 1 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not13.i.i, label %do_hex_dump.exit.i, label %.lr.ph.i.i, !llvm.loop !23

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %.01117.i.i = phi ptr [ %i.ac, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %i.ad = load i8, ptr %.01117.i.i, align 1, !tbaa !14
  %i.ae = call i64 @ossl_to_hex(ptr noundef nonnull %i.b, i8 noundef zeroext %i.ad) #8 ; 0 uses
  %i.af = call i32 %0(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 2) #8, !callees !11, !inline_history !24
  %.not14.i.i = icmp eq i32 %i.af, 0
  br i1 %.not14.i.i, label %do_hex_dump.exit.thread.i, label %bb.k

do_hex_dump.exit.thread.i:                        ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.q

do_hex_dump.exit.i:                               ; preds = %bb.k, %bb.i
  %i.ag = shl i32 %.fr44.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ah = icmp slt i32 %i.ag, 0
  %i.ai = or disjoint i32 %i.ag, 1
  br i1 %i.ah, label %bb.q, label %do_dump.exit

bb.l:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !15
  store i32 %i.aj, ptr %4, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ak, align 8, !tbaa !14
  %i.al = call i32 @i2d_ASN1_TYPE(ptr noundef nonnull %4, ptr noundef null) #8
  %.fr43.i = freeze i32 %i.al                     ; 3 uses
  %i.am = icmp slt i32 %.fr43.i, 1
  br i1 %i.am, label %do_dump.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = zext nneg i32 %.fr43.i to i64           ; 2 uses
  %i.ao = call noalias ptr @CRYPTO_malloc(i64 noundef %i.an, ptr noundef nonnull @.str.13, i32 noundef 281) #8 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %do_dump.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !27
  %i.aq = call i32 @i2d_ASN1_TYPE(ptr noundef nonnull %4, ptr noundef nonnull %i.c) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not.i27.i = icmp eq ptr %1, null
  br i1 %.not.i27.i, label %do_hex_dump.exit35.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  br label %.lr.ph.i29.i

bb.p:                                             ; preds = %.lr.ph.i29.i
  %i.as = getelementptr inbounds nuw i8, ptr %.01117.i30.i, i64 1 ; 2 uses
  %.not13.i32.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not13.i32.i, label %do_hex_dump.exit35.i, label %.lr.ph.i29.i, !llvm.loop !23

.lr.ph.i29.i:                                     ; preds = %bb.p, %bb.o
  %.01117.i30.i = phi ptr [ %i.as, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.at = load i8, ptr %.01117.i30.i, align 1, !tbaa !14
  %i.au = call i64 @ossl_to_hex(ptr noundef nonnull %i.a, i8 noundef zeroext %i.at) #8 ; 0 uses
  %i.av = call i32 %0(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 2) #8, !callees !11, !inline_history !24
  %.not14.i31.i = icmp eq i32 %i.av, 0
  br i1 %.not14.i31.i, label %do_hex_dump.exit35.thread.i, label %bb.p

do_hex_dump.exit35.thread.i:                      ; preds = %.lr.ph.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @CRYPTO_free(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.13, i32 noundef 286) #8
  br label %bb.q

do_hex_dump.exit35.i:                             ; preds = %bb.p, %bb.n
  %i.aw = shl nuw i32 %.fr43.i, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @CRYPTO_free(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.13, i32 noundef 286) #8
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = or disjoint i32 %i.aw, 1
  br i1 %i.ax, label %bb.q, label %do_dump.exit

bb.q:                                             ; preds = %do_hex_dump.exit35.i, %do_hex_dump.exit35.thread.i, %do_hex_dump.exit.i, %do_hex_dump.exit.thread.i
  br label %do_dump.exit

do_dump.exit:                                     ; preds = %.thread96, %do_hex_dump.exit.thread38.i, %do_hex_dump.exit.i, %bb.l, %bb.m, %do_hex_dump.exit35.i, %bb.q
  %.0.i = phi i32 [ 1, %do_hex_dump.exit.thread38.i ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %.thread96 ], [ %i.ay, %do_hex_dump.exit35.i ], [ %i.ai, %do_hex_dump.exit.i ], [ -1, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.az = icmp slt i32 %.0.i, 0
  %i.ba = sub nsw i32 2147483647, %.162
  %i.bb = icmp samesign ugt i32 %.0.i, %i.ba
  %or.cond84 = select i1 %i.az, i1 true, i1 %i.bb
  %i.bc = add nsw i32 %.0.i, %.162
  %spec.select90 = select i1 %or.cond84, i32 -1, i32 %i.bc
  br label %.thread

bb.r:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr @tag2nbyte, i64 %i.r
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = sext i8 %i.be to i32                    ; 2 uses
  %.not76 = icmp eq i32 %.fr, 12
  %i.bg = or i32 %i.bf, 8
  %spec.select = select i1 %.not76, i32 1, i32 %i.bg
  br label %.thread102

.thread102:                                       ; preds = %bb.e, %.thread94, %bb.r
  %.164101107 = phi i32 [ %i.bf, %bb.r ], [ 1, %.thread94 ], [ 1, %bb.e ]
  %i.bh = phi i32 [ %spec.select, %bb.r ], [ 9, %.thread94 ], [ 9, %bb.e ]
  %.not75108.in = and i64 %2, 16
  %.not75108 = icmp eq i64 %.not75108.in, 0
  %.265 = select i1 %.not75108, i32 %.164101107, i32 %i.bh ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bk = load i32, ptr %3, align 8, !tbaa !22
  %i.bl = call fastcc i32 @do_buf(ptr noundef %i.bj, i32 noundef %i.bk, i32 noundef %.265, i16 noundef zeroext %i.f, ptr noundef nonnull %i.d, ptr noundef %0, ptr noundef null) ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = sub nsw i32 2147483645, %.162
  %i.bo = icmp sgt i32 %i.bl, %i.bn
  %or.cond86 = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond86, label %.thread, label %bb.s

bb.s:                                             ; preds = %.thread102
  %i.bp = add nsw i32 %i.bl, %.162                ; 2 uses
  %i.bq = load i8, ptr %i.d, align 1, !tbaa !14
  %.not77 = icmp eq i8 %i.bq, 0                   ; 3 uses
  %i.br = add nsw i32 %i.bp, 2
  %spec.select87 = select i1 %.not77, i32 %i.bp, i32 %i.br ; 2 uses
  %.not78 = icmp eq ptr %1, null
  br i1 %.not78, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not77, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = call i32 %0(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, i32 noundef 1) #8, !callees !11
  %.not80 = icmp eq i32 %i.bs, 0
  br i1 %.not80, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !21
  %i.bu = load i32, ptr %3, align 8, !tbaa !22
  %i.bv = call fastcc i32 @do_buf(ptr noundef %i.bt, i32 noundef %i.bu, i32 noundef %.265, i16 noundef zeroext %i.f, ptr noundef null, ptr noundef %0, ptr noundef nonnull %1)
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = call i32 %0(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, i32 noundef 1) #8, !callees !11
  %.not82 = icmp eq i32 %i.bx, 0
  br i1 %.not82, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %.thread

.thread:                                          ; preds = %do_dump.exit, %bb.c, %bb.b, %bb.x, %bb.v, %bb.u, %bb.s, %.thread102, %bb.y
  %.1 = phi i32 [ -1, %bb.x ], [ -1, %bb.c ], [ %spec.select90, %do_dump.exit ], [ -1, %bb.u ], [ %spec.select87, %bb.y ], [ -1, %bb.v ], [ %spec.select87, %bb.s ], [ -1, %.thread102 ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ASN1_STRING_print_ex_fp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @do_print_ex(ptr noundef nonnull @send_fp_chars, ptr noundef %0, i64 noundef %2, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ASN1_STRING_to_UTF8(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.asn1_string_st, align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %2, ptr %i.a, align 8, !tbaa !28
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
  %or.cond = icmp ugt i32 %i.c, 30
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 1, %i.d
  %i.f = and i64 %i.e, 706998271
  %.not18 = icmp eq i64 %i.f, 0
  br i1 %.not18, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr @tag2nbyte, i64 %i.d
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = sext i8 %i.h to i32
  %i.j = or i32 %i.i, 4096
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %2, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = load i32, ptr %1, align 8, !tbaa !22
  %i.o = call i32 @ASN1_mbstring_copy(ptr noundef nonnull %i.a, ptr noundef %i.m, i32 noundef %i.n, i32 noundef %i.j, i64 noundef 8192) #8 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !21
  store ptr %i.q, ptr %0, align 8, !tbaa !27
  %i.r = load i32, ptr %2, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ %i.r, %bb.e ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

declare i32 @ASN1_mbstring_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @X509_NAME_entry_count(ptr noundef) local_unnamed_addr #1

declare ptr @X509_NAME_get_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @X509_NAME_ENTRY_set(ptr noundef) local_unnamed_addr #1

declare ptr @X509_NAME_ENTRY_get_object(ptr noundef) local_unnamed_addr #1

declare ptr @X509_NAME_ENTRY_get_data(ptr noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare ptr @OBJ_nid2ln(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @ASN1_tag2str(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_buf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext range(i16 0, 1040) %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef readonly captures(none) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 20 uses
  %i.b = alloca [6 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = and i32 %2, 7                            ; 4 uses
  switch i32 %i.e, label %bb.f [
    i32 4, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %1, 3
  %.not71 = icmp eq i32 %i.f, 0
  br i1 %.not71, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.13, i32 noundef 150, ptr noundef nonnull @__func__.do_buf) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 133, ptr noundef null) #8
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %1, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str.13, i32 noundef 156, ptr noundef nonnull @__func__.do_buf) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 129, ptr noundef null) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.not7283 = icmp eq i32 %1, 0
  br i1 %.not7283, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.f
  %i.h = and i16 %3, 1
  %.not73 = icmp eq i16 %i.h, 0                   ; 4 uses
  switch i32 %i.e, label %.loopexit [
    i32 4, label %.lr.ph88.split
    i32 2, label %.lr.ph88.split
    i32 1, label %.lr.ph88.split
    i32 0, label %.lr.ph88.split
  ]

.lr.ph88.split:                                   ; preds = %.lr.ph88, %.lr.ph88, %.lr.ph88, %.lr.ph88
  %i.i = and i32 %2, 8
  %.not75 = icmp eq i32 %i.i, 0
  br i1 %.not75, label %.lr.ph88.split.split.us, label %.lr.ph88.split.split

.lr.ph88.split.split.us:                          ; preds = %.lr.ph88.split, %bb.m
  %.05586.us = phi i32 [ %.156.us, %bb.m ], [ %1, %.lr.ph88.split ] ; 5 uses
  %.05785.us = phi ptr [ %.158.us, %bb.m ], [ %0, %.lr.ph88.split ] ; 13 uses
  %.06284.us = phi i32 [ %i.ax, %bb.m ], [ 0, %.lr.ph88.split ]
  %i.j = icmp ne ptr %.05785.us, %0
  %or.cond.us = or i1 %.not73, %i.j
  %.059.us = select i1 %or.cond.us, i16 0, i16 32
  switch i32 %i.e, label %bb.g [
    i32 4, label %bb.k
    i32 2, label %bb.j
    i32 1, label %bb.i
  ]

bb.g:                                             ; preds = %.lr.ph88.split.split.us
  %i.k = call i32 @UTF8_getc(ptr noundef %.05785.us, i32 noundef %.05586.us, ptr noundef nonnull %i.a) #8 ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = sub nsw i32 %.05586.us, %i.k
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.05785.us, i64 %i.n
  %.pre103 = load i64, ptr %i.a, align 8, !tbaa !30
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph88.split.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %.05785.us, i64 1
  %i.q = load i8, ptr %.05785.us, align 1, !tbaa !14
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !30
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph88.split.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %.05785.us, i64 1
  %i.t = load i8, ptr %.05785.us, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8                  ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %.05785.us, i64 2
  %i.x = load i8, ptr %i.s, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !30
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph88.split.split.us
  %i.aa = getelementptr inbounds nuw i8, ptr %.05785.us, i64 1
  %i.ab = load i8, ptr %.05785.us, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 24               ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %.05785.us, i64 2
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 16
  %i.ai = or disjoint i64 %i.ah, %i.ad            ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.05785.us, i64 3
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = or disjoint i64 %i.am, %i.ai            ; 2 uses
  store i64 %i.an, ptr %i.a, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %.05785.us, i64 4
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq            ; 2 uses
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.as = phi i64 [ %i.ar, %bb.k ], [ %i.z, %bb.j ], [ %i.r, %bb.i ], [ %.pre103, %bb.h ]
  %.158.us = phi ptr [ %i.ao, %bb.k ], [ %i.w, %bb.j ], [ %i.p, %bb.i ], [ %i.o, %bb.h ] ; 3 uses
  %.156.us = phi i32 [ %.05586.us, %bb.k ], [ %.05586.us, %bb.j ], [ %.05586.us, %bb.i ], [ %i.m, %bb.h ]
  %i.at = icmp ne ptr %.158.us, %i.d
  %or.cond76.us = or i1 %.not73, %i.at
  %.160.us = select i1 %or.cond76.us, i16 %.059.us, i16 64
  %i.au = or i16 %.160.us, %3
  %i.av = call fastcc i32 @do_esc_char(i64 noundef %i.as, i16 noundef zeroext %i.au, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nuw nsw i32 %i.av, %.06284.us       ; 2 uses
  %.not72.us = icmp eq ptr %.158.us, %i.d
  br i1 %.not72.us, label %.loopexit, label %.lr.ph88.split.split.us, !llvm.loop !31

.lr.ph88.split.split:                             ; preds = %.lr.ph88.split, %._crit_edge
  %.05586 = phi i32 [ %.156, %._crit_edge ], [ %1, %.lr.ph88.split ] ; 5 uses
  %.05785 = phi ptr [ %.158, %._crit_edge ], [ %0, %.lr.ph88.split ] ; 13 uses
  %.06284 = phi i32 [ %.163.lcssa, %._crit_edge ], [ 0, %.lr.ph88.split ] ; 2 uses
  %i.ay = icmp ne ptr %.05785, %0
  %or.cond = or i1 %.not73, %i.ay
  %.059 = select i1 %or.cond, i16 0, i16 32
  switch i32 %i.e, label %bb.q [
    i32 4, label %bb.n
    i32 2, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %.lr.ph88.split.split
  %i.az = getelementptr inbounds nuw i8, ptr %.05785, i64 1
  %i.ba = load i8, ptr %.05785, align 1, !tbaa !14
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 24               ; 2 uses
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.05785, i64 2
  %i.be = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 16
  %i.bh = or disjoint i64 %i.bg, %i.bc            ; 2 uses
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %.05785, i64 3
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 8
  %i.bm = or disjoint i64 %i.bl, %i.bh            ; 2 uses
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.05785, i64 4
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bp = zext i8 %i.bo to i64
  %i.bq = or disjoint i64 %i.bm, %i.bp            ; 2 uses
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !30
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph88.split.split
  %i.br = getelementptr inbounds nuw i8, ptr %.05785, i64 1
  %i.bs = load i8, ptr %.05785, align 1, !tbaa !14
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 8                ; 2 uses
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.05785, i64 2
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bu, %i.bx            ; 2 uses
  store i64 %i.by, ptr %i.a, align 8, !tbaa !30
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph88.split.split
  %i.bz = getelementptr inbounds nuw i8, ptr %.05785, i64 1
  %i.ca = load i8, ptr %.05785, align 1, !tbaa !14
  %i.cb = zext i8 %i.ca to i64                    ; 2 uses
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !30
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph88.split.split
  %i.cc = call i32 @UTF8_getc(ptr noundef %.05785, i32 noundef %.05586, ptr noundef nonnull %i.a) #8 ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = sub nsw i32 %.05586, %i.cc
  %i.cf = zext nneg i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.05785, i64 %i.cf
  %.pre = load i64, ptr %i.a, align 8, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.n
  %i.ch = phi i64 [ %i.bq, %bb.n ], [ %i.by, %bb.o ], [ %i.cb, %bb.p ], [ %.pre, %bb.r ]
  %.158 = phi ptr [ %i.bn, %bb.n ], [ %i.bv, %bb.o ], [ %i.bz, %bb.p ], [ %i.cg, %bb.r ] ; 3 uses
  %.156 = phi i32 [ %.05586, %bb.n ], [ %.05586, %bb.o ], [ %.05586, %bb.p ], [ %i.ce, %bb.r ]
  %i.ci = icmp ne ptr %.158, %i.d
  %or.cond76 = or i1 %.not73, %i.ci
  %.160 = select i1 %or.cond76, i16 %.059, i16 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.cj = call i32 @UTF8_putc(ptr noundef nonnull %i.b, i32 noundef 6, i64 noundef %i.ch) #8 ; 3 uses
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.s
  %.not98 = icmp eq i32 %i.cj, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cl = or i16 %.160, %3
  %wide.trip.count = zext nneg i32 %i.cj to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %.16381 = phi i32 [ %.06284, %.lr.ph ], [ %i.cr, %bb.u ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !14
  %i.co = zext i8 %i.cn to i64
  %i.cp = call fastcc i32 @do_esc_char(i64 noundef %i.co, i16 noundef zeroext %i.cl, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = add nsw i32 %i.cp, %.16381              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.t, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.u, %.preheader
  %.163.lcssa = phi i32 [ %.06284, %.preheader ], [ %i.cr, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not72 = icmp eq ptr %.158, %i.d
  br i1 %.not72, label %.loopexit, label %.lr.ph88.split.split, !llvm.loop !31

.critedge:                                        ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %._crit_edge, %bb.g, %bb.l, %bb.m, %bb.f, %.lr.ph88, %.critedge, %bb.e, %bb.c
  %.3 = phi i32 [ -1, %bb.e ], [ -1, %.critedge ], [ -1, %bb.c ], [ 0, %bb.f ], [ -1, %.lr.ph88 ], [ -1, %bb.l ], [ -1, %bb.g ], [ %i.ax, %bb.m ], [ -1, %bb.q ], [ %.163.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.3
}

declare i32 @i2d_ASN1_TYPE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @ossl_to_hex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @UTF8_getc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @UTF8_putc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 11) i32 @do_esc_char(i64 noundef %0, i16 noundef zeroext range(i16 0, 1152) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca [19 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp ugt i64 %0, 4294967295
  br i1 %i.c, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %0, 65535
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.b, i64 noundef 19, ptr noundef nonnull @.str.14, i64 noundef %0) #8 ; 0 uses
  %i.f = call i32 %3(ptr noundef %4, ptr noundef nonnull %i.b, i32 noundef 10) #8, !callees !11
  %.not44 = icmp eq i32 %i.f, 0
  %. = select i1 %.not44, i32 -1, i32 10
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ugt i64 %0, 255
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.b, i64 noundef 19, ptr noundef nonnull @.str.15, i64 noundef %0) #8 ; 0 uses
  %i.i = call i32 %3(ptr noundef %4, ptr noundef nonnull %i.b, i32 noundef 6) #8, !callees !11
  %.not43 = icmp eq i32 %i.i, 0
  %.45 = select i1 %.not43, i32 -1, i32 6
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.j = trunc nuw i64 %0 to i8
  store i8 %i.j, ptr %i.a, align 1, !tbaa !14
  %i.k = icmp samesign ugt i64 %0, 127
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = and i16 %1, 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @char_type, i64 %0
  %i.n = load i16, ptr %i.m, align 2, !tbaa !33
  %i.o = and i16 %i.n, %1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i16 [ %i.l, %bb.g ], [ %i.o, %bb.h ]
  %i.p = zext nneg i16 %.0 to i32                 ; 3 uses
  %i.q = and i32 %i.p, 97
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = and i32 %i.p, 8
  %.not38 = icmp eq i32 %i.r, 0
  br i1 %.not38, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %2, align 1, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = call i32 %3(ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef 1) #8, !callees !11
  %.not42 = icmp eq i32 %i.s, 0
  %.46 = select i1 %.not42, i32 -1, i32 1
  br label %bb.u

bb.n:                                             ; preds = %bb.j
  %i.t = tail call i32 %3(ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef 1) #8, !callees !11
  %.not39 = icmp eq i32 %i.t, 0
  br i1 %.not39, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = call i32 %3(ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef 1) #8, !callees !11
  %.not40 = icmp eq i32 %i.u, 0
  %.47 = select i1 %.not40, i32 -1, i32 2
  br label %bb.u

bb.p:                                             ; preds = %bb.i
  %i.v = and i32 %i.p, 1030
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = trunc nuw nsw i64 %0 to i32
  %i.x = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.b, i64 noundef 11, ptr noundef nonnull @.str.17, i32 noundef %i.w) #8 ; 0 uses
  %i.y = call i32 %3(ptr noundef %4, ptr noundef nonnull %i.b, i32 noundef 3) #8, !callees !11
  %.not37 = icmp eq i32 %i.y, 0
  %.48 = select i1 %.not37, i32 -1, i32 3
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.z = icmp ne i64 %0, 92
  %i.aa = and i16 %1, 1039
  %.not34 = icmp eq i16 %i.aa, 0
  %or.cond = or i1 %i.z, %.not34
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = tail call i32 %3(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef 2) #8, !callees !11
  %.not36 = icmp eq i32 %i.ab, 0
  %.49 = select i1 %.not36, i32 -1, i32 2
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ac = call i32 %3(ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef 1) #8, !callees !11
  %.not35 = icmp eq i32 %i.ac, 0
  %.50 = select i1 %.not35, i32 -1, i32 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.m, %bb.e, %bb.c, %bb.a
  %.030 = phi i32 [ %.50, %bb.t ], [ -1, %bb.a ], [ %., %bb.c ], [ %.48, %bb.q ], [ %.45, %bb.e ], [ %.49, %bb.s ], [ %.46, %bb.m ], [ -1, %bb.n ], [ %.47, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.030
}

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{ptr @send_bio_chars, ptr @send_fp_chars}
!12 = distinct !{null}
!13 = distinct !{!13, !10}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !6, i64 4}
!16 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !17, i64 8, !19, i64 16}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = distinct !{null}
!21 = !{!16, !17, i64 8}
!22 = !{!16, !6, i64 0}
!23 = distinct !{!23, !10}
!24 = distinct !{null, null}
!25 = !{!26, !6, i64 0}
!26 = !{!"asn1_type_st", !6, i64 0, !7, i64 8}
!27 = !{!17, !17, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 _ZTS14asn1_string_st", !18, i64 0}
!30 = !{!19, !19, i64 0}
end_hunk_0
