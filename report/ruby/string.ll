inline.NumInlined: 2336
inline.NumDeleted: 196
begin_hunk_0_@rb_str_conv_enc_opts:bb.a
  %i.d = icmp eq ptr %.030, %2
  br i1 %i.d, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %2, i64 20
  %.val.i = load i32, ptr %i.e, align 4, !tbaa !16
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.e
  %i.f = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %2) #32
  %.not3.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i, label %bb.f, label %rb_enc_asciicompat.exit.thread

bb.f:                                             ; preds = %rb_enc_asciicompat.exit
  %i.g = tail call i32 @rb_enc_to_index(ptr noundef %.030) #32
  %i.h = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = and i32 %i.l, 3145728                    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %is_enc_ascii_string.exit

bb.h:                                             ; preds = %bb.g
  %i.o = lshr i32 %i.l, 22
  %i.p = and i32 %i.o, 127                        ; 2 uses
  %i.q = icmp eq i32 %i.p, 127
  br i1 %i.q, label %bb.i, label %get_encoding.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i.i.i

get_encoding.exit.i.i.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.p, %bb.h ]
  %i.s = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i.i) #28
  %i.t = load i64, ptr %i.j, align 8, !tbaa !11
  %i.u = and i64 %i.t, 8192
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %enc_coderange_scan.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %get_encoding.exit.i.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i.i.i

enc_coderange_scan.exit.i.i.i:                    ; preds = %bb.j, %get_encoding.exit.i.i.i
  %i.x = phi ptr [ %i.w, %bb.j ], [ %i.v, %get_encoding.exit.i.i.i ]
  %i.y = getelementptr i8, ptr %i.j, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.x, i64 noundef %i.z, ptr noundef %i.s) ; 2 uses
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !11
  %i.ac = and i64 %i.ab, -3145729
  %i.ad = zext nneg i32 %i.aa to i64
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.j, align 8, !tbaa !11
  br label %is_enc_ascii_string.exit

bb.k:                                             ; preds = %bb.f
  %i.af = and i64 %i.k, 8192
  %.not.i.i.i = icmp eq i64 %i.af, 0
  %i.ag = getelementptr i8, ptr %i.j, i64 24      ; 2 uses
  br i1 %.not.i.i.i, label %enc_coderange_scan.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i

enc_coderange_scan.exit.i:                        ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ %i.ag, %bb.k ]
  %i.aj = getelementptr i8, ptr %i.j, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.al = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.ai, i64 noundef %i.ak, ptr noundef %.030)
  br label %is_enc_ascii_string.exit

is_enc_ascii_string.exit:                         ; preds = %bb.g, %enc_coderange_scan.exit.i.i.i, %enc_coderange_scan.exit.i
  %.0.in.i = phi i32 [ %i.al, %enc_coderange_scan.exit.i ], [ %i.aa, %enc_coderange_scan.exit.i.i.i ], [ %i.m, %bb.g ]
  %.0.i35 = icmp eq i32 %.0.in.i, 1048576
  br i1 %.0.i35, label %rb_enc_asciicompat.exit.thread._crit_edge, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.e, %is_enc_ascii_string.exit, %rb_enc_asciicompat.exit
  %i.am = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.an = icmp eq ptr %2, %i.am
  %.pre = inttoptr i64 %0 to ptr                  ; 4 uses
  br i1 %i.an, label %rb_enc_asciicompat.exit.thread._crit_edge, label %bb.o

rb_enc_asciicompat.exit.thread._crit_edge:        ; preds = %rb_enc_asciicompat.exit.thread, %is_enc_ascii_string.exit
  %.pre-phi = phi ptr [ %i.j, %is_enc_ascii_string.exit ], [ %.pre, %rb_enc_asciicompat.exit.thread ]
  %i.ao = load i64, ptr %.pre-phi, align 8, !tbaa !11
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = lshr i32 %i.ap, 22
  %i.ar = and i32 %i.aq, 127                      ; 2 uses
  %i.as = icmp eq i32 %i.ar, 127
  br i1 %i.as, label %bb.m, label %get_encoding.exit

bb.m:                                             ; preds = %rb_enc_asciicompat.exit.thread._crit_edge
  %i.at = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %rb_enc_asciicompat.exit.thread._crit_edge, %bb.m
  %.0.i.i = phi i32 [ %i.at, %bb.m ], [ %i.ar, %rb_enc_asciicompat.exit.thread._crit_edge ]
  %i.au = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28
  %.not34 = icmp eq ptr %i.au, %2
  br i1 %.not34, label %bb.s, label %bb.n

bb.n:                                             ; preds = %get_encoding.exit
  %i.av = tail call i64 @rb_obj_class(i64 noundef %0) #28
  %i.aw = tail call fastcc i64 @str_duplicate(i64 noundef %i.av, i64 noundef %0) ; 2 uses
  %i.ax = tail call i64 @rb_enc_associate(i64 noundef %i.aw, ptr noundef nonnull %2) #28 ; 0 uses
  br label %bb.s

bb.o:                                             ; preds = %rb_enc_asciicompat.exit.thread
  %i.ay = load i64, ptr %.pre, align 8, !tbaa !11
  %i.az = and i64 %i.ay, 8192
  %.not.i36 = icmp eq i64 %i.az, 0
  %i.ba = getelementptr i8, ptr %.pre, i64 24     ; 2 uses
  br i1 %.not.i36, label %RSTRING_PTR.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.o, %bb.p
  %i.bc = phi ptr [ %i.bb, %bb.p ], [ %i.ba, %bb.o ]
  %i.bd = getelementptr i8, ptr %.pre, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14 ; 4 uses
  %i.bf = add i64 %i.be, 25
  %spec.store.select.i.i.i = tail call noundef range(i64 40, 0) i64 @llvm.umax.i64(i64 %i.bf, i64 40) ; 2 uses
  %i.bg = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.store.select.i.i.i) #28
  %i.bh = load i64, ptr @rb_cString, align 8, !tbaa !27 ; 2 uses
  %i.bi = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !40
  store volatile ptr %i.bj, ptr %i.b, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bk = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.bh, i64 noundef 5, i32 noundef 0, i64 noundef %spec.store.select.i.i.i) #28 ; 2 uses
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store i64 0, ptr %i.bm, align 8, !tbaa !14
  %i.bn = getelementptr i8, ptr %i.bl, i64 24
  store i8 0, ptr %i.bn, align 8, !tbaa !20
  br label %rb_str_buf_new.exit

bb.r:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !40
  store volatile ptr %i.bo, ptr %i.a, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..0..0..i.i10.i = load volatile ptr, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i10.i, i64 noundef %i.bh, i64 noundef 8197, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.bq = inttoptr i64 %i.bp to ptr               ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 16, i1 false)
  %i.bs = getelementptr i8, ptr %i.bq, i64 24
  %i.bt = getelementptr i8, ptr %i.bq, i64 32
  store i64 %i.be, ptr %i.bt, align 8, !tbaa !20
  %i.bu = add i64 %i.be, 1
  %i.bv = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bu, i64 noundef 1) #33 ; 2 uses
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !20
  store i8 0, ptr %i.bv, align 1, !tbaa !20
  br label %rb_str_buf_new.exit

rb_str_buf_new.exit:                              ; preds = %bb.q, %bb.r
  %.0.i37 = phi i64 [ %i.bk, %bb.q ], [ %i.bp, %bb.r ]
  %i.bw = tail call fastcc i64 @str_cat_conv_enc_opts(i64 noundef %.0.i37, i64 noundef 0, ptr noundef %i.bc, i64 noundef %i.be, ptr noundef %.030, ptr noundef nonnull %2, i32 noundef %3, i64 noundef %4) ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4
  %. = select i1 %i.bx, i64 %0, i64 %i.bw
  br label %bb.s

bb.s:                                             ; preds = %rb_str_buf_new.exit, %get_encoding.exit, %bb.n, %bb.d, %bb.a
  %.0 = phi i64 [ %0, %bb.a ], [ %0, %bb.d ], [ %., %rb_str_buf_new.exit ], [ %0, %get_encoding.exit ], [ %i.aw, %bb.n ]
  ret i64 %.0
}

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #3

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_dup(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @rb_obj_class(i64 noundef %0) #28
  %i.b = tail call fastcc i64 @str_duplicate(i64 noundef %i.a, i64 noundef %0)
  ret i64 %i.b
}

declare i64 @rb_enc_associate(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @str_cat_conv_enc_opts(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6, i64 noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.e = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %i.g = and i64 %i.f, 532676608
  %switch.i.i.i = icmp samesign ult i64 %i.g, 12582912
  br i1 %switch.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32
  %i.i = lshr i32 %i.h, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.c, label %RB_ENCODING_GET.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit.i

RB_ENCODING_GET.exit.i:                           ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28
  %i.n = getelementptr i8, ptr %i.m, i64 20
  %.val.i = load i32, ptr %i.n, align 4, !tbaa !16
  %i.o = sext i32 %.val.i to i64
  %i.p = sub nsw i64 -24, %i.o
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %RB_ENCODING_GET.exit.i, %bb.a
  %i.q = phi i64 [ %.pre.i, %RB_ENCODING_GET.exit.i ], [ %i.f, %bb.a ] ; 2 uses
  %reass.sub.i.i = phi i64 [ %i.p, %RB_ENCODING_GET.exit.i ], [ -25, %bb.a ]
  %i.r = and i64 %i.q, 8192
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #28
  %i.t = add i64 %i.s, %reass.sub.i.i
  br label %rb_str_capacity.exit

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %i.q, 1073745920
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.e, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  br label %rb_str_capacity.exit

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.e, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20
  br label %rb_str_capacity.exit

rb_str_capacity.exit:                             ; preds = %bb.e, %bb.g, %bb.h
  %.0.i3.i = phi i64 [ %i.t, %bb.e ], [ %i.w, %bb.g ], [ %i.y, %bb.h ]
  %i.z = load i64, ptr @rb_cEncodingConverter, align 8, !tbaa !27
  %i.aa = tail call i64 @rb_obj_alloc(i64 noundef %i.z) #28 ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !27
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !27
  %i.ad = getelementptr i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = getelementptr i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = tail call ptr @rb_econv_open_opts(ptr noundef %i.ae, ptr noundef %i.ag, i32 noundef %6, i64 noundef %7) #28 ; 4 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.s, label %bb.i

bb.i:                                             ; preds = %rb_str_capacity.exit
  %i.ai = getelementptr i8, ptr %i.ab, i64 32     ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !43
  store ptr %2, ptr %i.b, align 8, !tbaa !45
  %i.aj = getelementptr i8, ptr %i.e, i64 24      ; 4 uses
  %i.ak = getelementptr i8, ptr %2, i64 %3
  %i.al = ptrtoint ptr %2 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %bb.i
  %.049 = phi i64 [ %.0.i3.i, %bb.i ], [ %i.bj, %bb.o ] ; 4 uses
  %.048 = phi i64 [ %1, %bb.i ], [ %i.bb, %bb.o ]
  %i.am = load i64, ptr %i.e, align 8, !tbaa !11
  %i.an = and i64 %i.am, 8192
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.j, %bb.k
  %i.ap = phi ptr [ %i.ao, %bb.k ], [ %i.aj, %bb.j ] ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.048
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !45
  %i.ar = getelementptr i8, ptr %i.ap, i64 %.049
  %i.as = call i32 @rb_econv_convert(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.b, ptr noundef %i.ak, ptr noundef nonnull %i.c, ptr noundef %i.ar, i32 noundef 0) #28 ; 2 uses
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.l, label %bb.p

bb.l:                                             ; preds = %RSTRING_PTR.exit
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.al                    ; 2 uses
  %i.ax = sub i64 %3, %i.aw                       ; 2 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ap to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 5 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bb)
  %i.bc = icmp ne ptr %i.au, %2
  %i.bd = icmp ne i64 %i.bb, 0
  %or.cond = and i1 %i.bc, %i.bd
  br i1 %or.cond, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.be = udiv i64 9223372036854775807, %i.bb
  %i.bf = icmp ult i64 %i.ax, %i.be
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = mul i64 %i.ax, %i.bb
  %i.bh = udiv i64 %i.bg, %i.aw
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.047 = phi i64 [ %i.bh, %bb.n ], [ %.049, %bb.m ], [ %.049, %bb.l ]
  %i.bi = call i64 @llvm.umax.i64(i64 %.047, i64 2)
  %i.bj = add i64 %i.bi, %.049                    ; 2 uses
  %i.bk = call i64 @rb_str_resize(i64 noundef %0, i64 noundef %i.bj) ; 0 uses
  br label %bb.j, !llvm.loop !46

bb.p:                                             ; preds = %RSTRING_PTR.exit
  store ptr null, ptr %i.ai, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %i.a, ptr %i.d, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #28, !srcloc !49
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.bm = load volatile i64, ptr %i.bl, align 8, !tbaa !27 ; 0 uses
  call void @rb_econv_close(ptr noundef nonnull %i.ah) #28
  %cond = icmp eq i32 %i.as, 4
  br i1 %cond, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !11
  %i.bp = and i64 %i.bo, 8192
  %.not.i55 = icmp eq i64 %i.bp, 0
  br i1 %.not.i55, label %RSTRING_PTR.exit56, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !20
  br label %RSTRING_PTR.exit56

RSTRING_PTR.exit56:                               ; preds = %bb.q, %bb.r
  %i.br = phi ptr [ %i.bq, %bb.r ], [ %i.aj, %bb.q ]
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.bu)
  %i.bv = call i64 @rb_enc_associate(i64 noundef %0, ptr noundef %5) #28 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %rb_str_capacity.exit, %RSTRING_PTR.exit56
  %.0 = phi i64 [ %0, %RSTRING_PTR.exit56 ], [ 4, %rb_str_capacity.exit ], [ 4, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_buf_new(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = add i64 %0, 25
  %spec.store.select.i.i = tail call noundef range(i64 40, 0) i64 @llvm.umax.i64(i64 %i.c, i64 40) ; 2 uses
  %i.d = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.store.select.i.i) #28
  %i.e = load i64, ptr @rb_cString, align 8, !tbaa !27 ; 2 uses
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  store volatile ptr %i.g, ptr %i.b, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.e, i64 noundef 5, i32 noundef 0, i64 noundef %spec.store.select.i.i) #28 ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr i8, ptr %i.i, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !40
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..i.i10 = load volatile ptr, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i10, i64 noundef %i.e, i64 noundef 8197, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr i8, ptr %i.n, i64 24
  %i.q = getelementptr i8, ptr %i.n, i64 32
  store i64 %0, ptr %i.q, align 8, !tbaa !20
  %i.r = add i64 %0, 1
  %i.s = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.r, i64 noundef 1) #33 ; 2 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !20
  store i8 0, ptr %i.s, align 1, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_str_cat_conv_enc_opts(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = sub i64 0, %i.c
  %i.e = icmp slt i64 %1, %i.d
  %i.f = icmp slt i64 %i.c, %1
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @rb_eIndexError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.2, i64 noundef %1) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %1, 0
  %i.i = select i1 %i.h, i64 %i.c, i64 0
  %spec.select = add i64 %i.i, %1                 ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i64 %spec.select, ptr %i.b, align 8, !tbaa !14
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %rb_str_cat.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i64 %3, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.17) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = tail call fastcc i64 @str_buf_cat4(i64 noundef %0, ptr noundef %2, i64 noundef %3, i1 noundef zeroext false)
  br label %rb_str_cat.exit

bb.h:                                             ; preds = %bb.c
  tail call void @rb_str_modify(i64 noundef %0)
  %i.n = tail call ptr @rb_enc_get(i64 noundef %0) #28
  %i.o = tail call fastcc i64 @str_cat_conv_enc_opts(i64 noundef %0, i64 noundef %spec.select, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef %i.n, i32 noundef %5, i64 noundef %6)
  br label %rb_str_cat.exit

rb_str_cat.exit:                                  ; preds = %bb.g, %bb.d, %bb.h
  %.0 = phi i64 [ %i.o, %bb.h ], [ %i.m, %bb.g ], [ %0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_str_cat(i64 noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.17) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc i64 @str_buf_cat4(i64 noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.d, %bb.d ], [ %0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_str_modify(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 1074321408
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %str_independent.exit.thread, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @str_modifiable(i64 noundef %0), !inline_history !33
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11
  %.fr6.i.i = freeze i64 %i.d                     ; 6 uses
  %i.e = and i64 %.fr6.i.i, 8192
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %str_independent.exit.thread, label %str_independent.exit

str_independent.exit:                             ; preds = %bb.b
  %i.f = icmp ne i64 %0, 0
  %i.g = and i64 %0, 7
  %i.h = icmp eq i64 %i.g, 0
  %.not5.i.not9.not12.i.i.not12.not14 = and i1 %i.f, %i.h
  %i.i = and i64 %.fr6.i.i, 1073745920
  %.not.i.i = icmp ne i64 %i.i, 0
  %or.cond.not.i.i.not.not = and i1 %.not5.i.not9.not12.i.i.not12.not14, %.not.i.i
  br i1 %or.cond.not.i.i.not.not, label %bb.c, label %str_independent.exit.thread

bb.c:                                             ; preds = %str_independent.exit
  %i.j = getelementptr i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = and i64 %.fr6.i.i, 532676608
  %switch.i.i.i = icmp samesign ult i64 %i.l, 12582912
  br i1 %switch.i.i.i, label %str_make_independent.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@rb_enc_strlen_cr:bb.a
  br i1 %.not3.i, label %.preheader, label %rb_enc_asciicompat.exit.preheader

.preheader:                                       ; preds = %bb.d
  %.not113 = icmp ult ptr %0, %1
  br i1 %.not113, label %.lr.ph92, label %._crit_edge.thread

.lr.ph92:                                         ; preds = %.preheader
  %i.n = getelementptr i8, ptr %1, i64 -7         ; 4 uses
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 -6         ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 -5         ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 -4         ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 -3         ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 -2         ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 -1         ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph92, %bb.v
  %.not71 = phi i1 [ true, %.lr.ph92 ], [ false, %bb.v ]
  %.05891 = phi ptr [ %0, %.lr.ph92 ], [ %i.ba, %bb.v ] ; 7 uses
  %.05990 = phi i64 [ 0, %.lr.ph92 ], [ %i.bb, %bb.v ] ; 3 uses
  %i.v = load i8, ptr %.05891, align 1, !tbaa !20
  %i.w = icmp slt i8 %i.v, 0
  br i1 %i.w, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp ult ptr %.05891, %i.n
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.02639.i = phi ptr [ %i.ad, %bb.h ], [ %.05891, %bb.f ] ; 3 uses
  %i.y = load i64, ptr %.02639.i, align 1
  %i.z = and i64 %i.y, -9187201950435737472       ; 2 uses
  %.not35.i = icmp eq i64 %i.z, 0
  br i1 %.not35.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, -9187201950435737471) %i.z, i1 true)
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %.02639.i, i64 %i.ab
  br label %search_nonascii.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr i8, ptr %.02639.i, i64 8  ; 3 uses
  %i.ae = icmp ult ptr %i.ad, %i.n
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  %.026.lcssa.i = phi ptr [ %.05891, %bb.f ], [ %i.ad, %bb.h ]
  %i.af = ptrtoint ptr %.026.lcssa.i to i64
  %i.ag = sub i64 %i.o, %i.af
  switch i64 %i.ag, label %bb.i [
    i64 7, label %bb.j
    i64 6, label %bb.k
    i64 5, label %bb.l
    i64 4, label %bb.m
    i64 3, label %bb.n
    i64 2, label %bb.o
    i64 1, label %bb.p
    i64 0, label %search_nonascii.exit.thread
  ]

bb.i:                                             ; preds = %._crit_edge.i
  unreachable

bb.j:                                             ; preds = %._crit_edge.i
  %i.ah = load i8, ptr %i.n, align 1, !tbaa !20
  %.not.i77 = icmp sgt i8 %i.ah, -1
  br i1 %.not.i77, label %bb.k, label %search_nonascii.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.ai = load i8, ptr %i.p, align 1, !tbaa !20
  %.not29.i = icmp sgt i8 %i.ai, -1
  br i1 %.not29.i, label %bb.l, label %search_nonascii.exit

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.aj = load i8, ptr %i.q, align 1, !tbaa !20
  %.not30.i = icmp sgt i8 %i.aj, -1
  br i1 %.not30.i, label %bb.m, label %search_nonascii.exit

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  %i.ak = load i8, ptr %i.r, align 1, !tbaa !20
  %.not31.i = icmp sgt i8 %i.ak, -1
  br i1 %.not31.i, label %bb.n, label %search_nonascii.exit

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %i.al = load i8, ptr %i.s, align 1, !tbaa !20
  %.not32.i = icmp sgt i8 %i.al, -1
  br i1 %.not32.i, label %bb.o, label %search_nonascii.exit

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %i.am = load i8, ptr %i.t, align 1, !tbaa !20
  %.not33.i = icmp sgt i8 %i.am, -1
  br i1 %.not33.i, label %bb.p, label %search_nonascii.exit

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %i.an = load i8, ptr %i.u, align 1, !tbaa !20
  %.not34.i = icmp sgt i8 %i.an, -1
  br i1 %.not34.i, label %search_nonascii.exit.thread, label %search_nonascii.exit

search_nonascii.exit:                             ; preds = %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.2.i = phi ptr [ %i.ac, %bb.g ], [ %i.u, %bb.p ], [ %i.n, %bb.j ], [ %i.p, %bb.k ], [ %i.q, %bb.l ], [ %i.r, %bb.m ], [ %i.s, %bb.n ], [ %i.t, %bb.o ] ; 3 uses
  %.not70 = icmp eq ptr %.2.i, null
  br i1 %.not70, label %search_nonascii.exit.thread, label %bb.s

search_nonascii.exit.thread:                      ; preds = %bb.p, %._crit_edge.i, %search_nonascii.exit
  br i1 %.not71, label %bb.q, label %bb.r

bb.q:                                             ; preds = %search_nonascii.exit.thread
  store i32 1048576, ptr %3, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %search_nonascii.exit.thread
  %i.ao = ptrtoint ptr %.05891 to i64
  %i.ap = add i64 %.05990, %i.o
  %i.aq = sub i64 %i.ap, %i.ao
  br label %._crit_edge

bb.s:                                             ; preds = %search_nonascii.exit
  %i.ar = ptrtoint ptr %.2.i to i64
  %i.as = ptrtoint ptr %.05891 to i64
  %i.at = sub i64 %.05990, %i.as
  %i.au = add i64 %i.at, %i.ar
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %.160 = phi i64 [ %i.au, %bb.s ], [ %.05990, %bb.e ]
  %.1 = phi ptr [ %.2.i, %bb.s ], [ %.05891, %bb.e ] ; 2 uses
  %i.av = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.1, ptr noundef nonnull %1, ptr noundef nonnull %2) #28 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ax = load i32, ptr %3, align 4, !tbaa !7
  %i.ay = or i32 %i.ax, 2097152
  %i.az = zext nneg i32 %i.av to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sink129 = phi i64 [ %i.az, %bb.u ], [ 1, %bb.t ]
  %.sink = phi i32 [ %i.ay, %bb.u ], [ 3145728, %bb.t ]
  %i.ba = getelementptr i8, ptr %.1, i64 %.sink129 ; 2 uses
  store i32 %.sink, ptr %3, align 4, !tbaa !7
  %i.bb = add i64 %.160, 1                        ; 2 uses
  %i.bc = icmp ult ptr %i.ba, %1
  br i1 %i.bc, label %bb.e, label %._crit_edge, !llvm.loop !68

._crit_edge.thread:                               ; preds = %.preheader
  store i32 1048576, ptr %3, align 4, !tbaa !7
  br label %._crit_edge

.lr.ph:                                           ; preds = %rb_enc_asciicompat.exit.preheader, %rb_enc_asciicompat.exit
  %.389 = phi ptr [ %.4, %rb_enc_asciicompat.exit ], [ %0, %rb_enc_asciicompat.exit.preheader ] ; 3 uses
  %.26188 = phi i64 [ %i.bl, %rb_enc_asciicompat.exit ], [ 0, %rb_enc_asciicompat.exit.preheader ]
  %i.bd = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.389, ptr noundef nonnull %1, ptr noundef %2) #28 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.bf = load i32, ptr %3, align 4, !tbaa !7
  %i.bg = or i32 %i.bf, 2097152
  store i32 %i.bg, ptr %3, align 4, !tbaa !7
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = getelementptr i8, ptr %.389, i64 %i.bh
  br label %rb_enc_asciicompat.exit

bb.x:                                             ; preds = %.lr.ph
  store i32 3145728, ptr %3, align 4, !tbaa !7
  %.val72 = load i32, ptr %i.b, align 4, !tbaa !16
  %i.bj = sext i32 %.val72 to i64
  %i.bk = getelementptr i8, ptr %.389, i64 %i.bj  ; 2 uses
  %.not67 = icmp ugt ptr %i.bk, %1
  %spec.select = select i1 %.not67, ptr %1, ptr %i.bk
  br label %rb_enc_asciicompat.exit

rb_enc_asciicompat.exit:                          ; preds = %bb.x, %bb.w
  %.4 = phi ptr [ %i.bi, %bb.w ], [ %spec.select, %bb.x ] ; 2 uses
  %i.bl = add i64 %.26188, 1                      ; 2 uses
  %i.bm = icmp ult ptr %.4, %1
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !69

rb_enc_asciicompat.exit._crit_edge.thread:        ; preds = %rb_enc_asciicompat.exit.preheader
  store i32 1048576, ptr %3, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %rb_enc_asciicompat.exit, %bb.v, %rb_enc_asciicompat.exit._crit_edge.thread, %._crit_edge.thread, %bb.r, %bb.b
  %.0 = phi i64 [ %i.l, %bb.b ], [ %i.aq, %bb.r ], [ %i.bb, %bb.v ], [ 0, %._crit_edge.thread ], [ 0, %rb_enc_asciicompat.exit._crit_edge.thread ], [ %i.bl, %rb_enc_asciicompat.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_strlen(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @str_strlen(i64 noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %0)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %i.f = inttoptr i64 %0 to ptr                   ; 6 uses
  br i1 %.not, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.e, label %get_encoding.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.d, %bb.e
  %.0.i.i = phi i32 [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %get_encoding.exit
  %.015 = phi ptr [ %i.m, %get_encoding.exit ], [ %1, %bb.c ] ; 2 uses
  %i.n = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %._crit_edge, %bb.f
  %i.r = phi ptr [ %i.q, %bb.f ], [ %i.p, %._crit_edge ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t     ; 2 uses
  %i.v = trunc i64 %i.n to i32
  %i.w = and i32 %i.v, 3145728                    ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %RSTRING_END.exit
  %i.y = call i64 @rb_enc_strlen_cr(ptr noundef %i.r, ptr noundef %i.u, ptr noundef %.015, ptr noundef nonnull %i.a) ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %.not19 = icmp eq i32 %i.z, 0
  br i1 %.not19, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !11
  %i.ab = and i64 %i.aa, -3145729
  %i.ac = zext i32 %i.z to i64
  %i.ad = or i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %RSTRING_END.exit
  %i.ae = tail call fastcc i64 @enc_strlen(ptr noundef %i.r, ptr noundef %i.u, ptr noundef %.015, i32 noundef %i.w)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.ae, %bb.i ], [ %i.y, %bb.h ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_length(i64 noundef %0) #1 {
bb.a:
  %i.a = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef null) ; 3 uses
  %i.b = add i64 %i.a, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.b, -1
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i64 %i.a, 1
  %i.d = or disjoint i64 %i.c, 1
  br label %rb_long2num_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_int2big(i64 noundef %i.a) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_str_bytesize(i64 noundef %0) #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  %i.d = add i64 %i.c, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.d, -1
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i64 %i.c, 1
  %i.f = or disjoint i64 %i.e, 1
  br label %rb_long2num_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_int2big(i64 noundef %i.c) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_str_plus(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !27
  store i64 %1, ptr %i.b, align 8, !tbaa !27
  %i.e = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %i.e, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 5
  br i1 %i.m, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.n = tail call i64 @rb_convert_type_with_id(i64 noundef %i.e, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.n, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.o = phi i64 [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.n, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 2 uses
  %i.p = tail call ptr @rb_enc_check_str(i64 noundef %0, i64 noundef %i.o) #28 ; 3 uses
  %i.q = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = and i64 %i.r, 8192
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %rb_string_value.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_string_value.exit, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ %i.t, %rb_string_value.exit ]
  %i.w = getelementptr i8, ptr %i.q, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14   ; 5 uses
  %i.y = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = and i64 %i.z, 8192
  %.not.i27 = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr i8, ptr %i.y, i64 24      ; 2 uses
  br i1 %.not.i27, label %RSTRING_PTR.exit28, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  br label %RSTRING_PTR.exit28

RSTRING_PTR.exit28:                               ; preds = %RSTRING_PTR.exit, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.ab, %RSTRING_PTR.exit ]
  %i.ae = getelementptr i8, ptr %i.y, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14 ; 4 uses
  %i.ag = getelementptr i8, ptr %i.p, i64 20
  %.val = load i32, ptr %i.ag, align 4, !tbaa !16 ; 2 uses
  %i.ah = sub i64 9223372036854775807, %i.af
  %i.ai = icmp sgt i64 %i.x, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RSTRING_PTR.exit28
  %i.aj = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.5) #30
  unreachable

bb.e:                                             ; preds = %RSTRING_PTR.exit28
  %i.ak = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.al = add i64 %i.af, %i.x                     ; 2 uses
  %i.am = tail call fastcc i64 @str_enc_new(i64 noundef %i.ak, ptr noundef null, i64 noundef %i.al, ptr noundef nonnull %i.p) ; 3 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = and i64 %i.ao, 8192
  %.not.i29 = icmp eq i64 %i.ap, 0
  %i.aq = getelementptr i8, ptr %i.an, i64 24     ; 2 uses
  br i1 %.not.i29, label %RSTRING_PTR.exit30, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  br label %RSTRING_PTR.exit30

RSTRING_PTR.exit30:                               ; preds = %bb.e, %bb.f
  %i.as = phi ptr [ %i.ar, %bb.f ], [ %i.aq, %bb.e ] ; 3 uses
  %.not.i31 = icmp eq i64 %i.x, 0
  br i1 %.not.i31, label %ruby_nonempty_memcpy.exit, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.as, ptr noundef nonnull readonly align 1 %i.v, i64 noundef range(i64 1, 0) %i.x, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit30, %bb.g
  %.not.i33 = icmp eq i64 %i.af, 0
  br i1 %.not.i33, label %ruby_nonempty_memcpy.exit35, label %bb.h

bb.h:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.at = getelementptr i8, ptr %i.as, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.at, ptr noundef nonnull readonly align 1 %i.ad, i64 noundef range(i64 1, 0) %i.af, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit35

ruby_nonempty_memcpy.exit35:                      ; preds = %ruby_nonempty_memcpy.exit, %bb.h
  %i.au = getelementptr i8, ptr %i.as, i64 %i.al  ; 2 uses
  store i8 0, ptr %i.au, align 1, !tbaa !20
  %i.av = icmp sgt i32 %.val, 1
  br i1 %i.av, label %bb.i, label %bb.j, !prof !34

bb.i:                                             ; preds = %ruby_nonempty_memcpy.exit35
  %i.aw = zext nneg i32 %.val to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.au, i8 noundef 0, i64 noundef %i.aw, i1 noundef false) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ruby_nonempty_memcpy.exit35
  %i.ax = tail call i32 @rb_enc_to_index(ptr noundef nonnull %i.p) #32
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !11
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 3145728
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !11
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 3145728                  ; 3 uses
  switch i32 %i.ba, label %bb.k [
    i32 1048576, label %RB_ENC_CODERANGE_AND.exit
    i32 2097152, label %bb.l
end_hunk_1
begin_hunk_2_@rb_str_drop_bytes:bb.a
bb.k:                                             ; preds = %bb.g
  %i.an = and i64 %i.af, 12288
  %i.ao = icmp eq i64 %i.an, 12288
  br i1 %i.ao, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call i64 @rb_obj_class(i64 noundef %0) #28
  %i.aq = tail call fastcc i64 @heap_str_make_shared(i64 noundef %i.ap, i64 noundef %0) ; 3 uses
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !11
  %i.as = trunc i64 %i.ar to i32
  %i.at = lshr i32 %i.as, 22
  %i.au = and i32 %i.at, 127                      ; 2 uses
  %i.av = icmp eq i32 %i.au, 127
  br i1 %i.av, label %bb.m, label %rb_enc_cr_str_exact_copy.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %rb_enc_cr_str_exact_copy.exit

rb_enc_cr_str_exact_copy.exit:                    ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %i.au, %bb.l ]
  tail call void @rb_enc_set_index(i64 noundef %i.aq, i32 noundef %.0.i.i.i) #28
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ay = and i64 %i.ax, 3145728
  %i.az = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = and i64 %i.ba, -3145729
  %i.bc = or disjoint i64 %i.bb, %i.ay
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !11
  tail call void @rb_obj_freeze_inline(i64 noundef %i.aq) #28
  br label %bb.n

bb.n:                                             ; preds = %rb_enc_cr_str_exact_copy.exit, %bb.k
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.be = getelementptr i8, ptr %i.bd, i64 %spec.select ; 2 uses
  store ptr %i.be, ptr %i.d, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %RB_FL_UNSET.exit, %bb.j, %bb.n
  %.041 = phi ptr [ %i.be, %bb.n ], [ %i.d, %bb.j ], [ %i.d, %RB_FL_UNSET.exit ]
  store i64 %i.q, ptr %i.g, align 8, !tbaa !14
  %i.bf = getelementptr i8, ptr %.041, i64 %i.q   ; 3 uses
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.bh = and i64 %i.bg, 532676608
  %switch.i.i46 = icmp samesign ult i64 %i.bh, 12582912
  br i1 %switch.i.i46, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.o
  store i8 0, ptr %i.bf, align 1, !tbaa !20
  br label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bi = trunc i64 %i.bg to i32
  %i.bj = lshr i32 %i.bi, 22
  %i.bk = and i32 %i.bj, 127                      ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 127
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i47 = phi i32 [ %i.bm, %bb.q ], [ %i.bk, %bb.p ]
  %i.bn = tail call ptr @rb_enc_from_index(i32 noundef %.0.i47) #28
  %i.bo = getelementptr i8, ptr %i.bn, i64 20
  %.val = load i32, ptr %i.bo, align 4, !tbaa !16 ; 2 uses
  store i8 0, ptr %i.bf, align 1, !tbaa !20
  %i.bp = icmp sgt i32 %.val, 1
  br i1 %i.bp, label %bb.s, label %bb.t, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.bq = zext nneg i32 %.val to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bf, i8 noundef 0, i64 noundef %i.bq, i1 noundef false) #28
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s, %bb.r
  %i.br = load i64, ptr %i.a, align 8, !tbaa !11
  %i.bs = and i64 %i.br, -3145729
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !11
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @heap_str_make_shared(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef 8197, i32 noundef 0, i64 noundef 40) #28 ; 7 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 12 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = inttoptr i64 %1 to ptr                   ; 9 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  store i64 %i.i, ptr %i.f, align 8, !tbaa !14
  %i.j = load i64, ptr %i.g, align 8, !tbaa !11
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ %i.l, %bb.a ]
  %i.o = getelementptr i8, ptr %i.e, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr i8, ptr %i.e, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = load i64, ptr %i.g, align 8, !tbaa !11
  %i.t = and i64 %i.s, 1073741824
  %i.u = load i64, ptr %i.e, align 8, !tbaa !11
  %i.v = or i64 %i.u, %i.t
  store i64 %i.v, ptr %i.e, align 8, !tbaa !11
  %i.w = load i64, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.x = and i64 %i.w, -1073741825
  store i64 %i.x, ptr %i.g, align 8, !tbaa !11
  %i.y = icmp eq i64 %1, 0
  %i.z = and i64 %1, 7
  %i.aa = icmp ne i64 %i.z, 0
  %.not5.i.not27 = or i1 %i.y, %i.aa              ; 2 uses
  %i.ab = and i64 %i.w, 2147483648
  %.not = icmp eq i64 %i.ab, 0
  %or.cond = select i1 %.not5.i.not27, i1 true, i1 %.not
  br i1 %or.cond, label %RB_FL_TEST.exit.thread, label %bb.g

RB_FL_TEST.exit.thread:                           ; preds = %RSTRING_PTR.exit
  store i64 %i.d, ptr %i.p, align 8, !tbaa !27
  %i.ac = icmp eq i64 %i.d, 0
  %i.ad = and i64 %i.d, 7                         ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %rb_obj_write.exit, label %bb.c

bb.c:                                             ; preds = %RB_FL_TEST.exit.thread
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.d) #28
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %RB_FL_TEST.exit.thread, %bb.c
  br i1 %.not5.i.not27, label %RB_FL_SET.exit, label %bb.d

bb.d:                                             ; preds = %rb_obj_write.exit
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !11
  %i.ah = or i64 %i.ag, 4096
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !11
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %rb_obj_write.exit, %bb.d
  %i.ai = icmp ne i64 %i.d, 0
  %i.aj = icmp eq i64 %i.ad, 0
  %.not4.i21 = and i1 %i.ai, %i.aj
  br i1 %.not4.i21, label %bb.e, label %RB_FL_SET.exit22

bb.e:                                             ; preds = %RB_FL_SET.exit
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !11
  %i.al = or i64 %i.ak, 131072
  store i64 %i.al, ptr %i.e, align 8, !tbaa !11
  br label %RB_FL_SET.exit22

RB_FL_SET.exit22:                                 ; preds = %RB_FL_SET.exit, %bb.e
  %i.am = getelementptr i8, ptr %i.e, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !26
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RB_FL_SET.exit22
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !11
  %i.aq = or i64 %i.ap, 262144
  store i64 %i.aq, ptr %i.e, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit, %RB_FL_SET.exit22, %bb.f
  %i.ar = icmp eq i64 %0, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load i64, ptr %i.e, align 8, !tbaa !11
  %i.at = and i64 %i.as, -262145
  store i64 %i.at, ptr %i.e, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_str_update(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  store i64 %3, ptr %i.c, align 8, !tbaa !27
  %i.d = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %0) ; 2 uses
  %i.e = icmp slt i64 %2, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eIndexError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.27, i64 noundef %2) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %.0..0..0. = load volatile i64, ptr %i.c, align 8, !tbaa !27 ; 5 uses
  %i.g = icmp eq i64 %.0..0..0., 0
  %i.h = and i64 %.0..0..0., 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.k = inttoptr i64 %.0..0..0. to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 5
  br i1 %i.n, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.o = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.o, ptr %i.c, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0..0.77 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.o, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 3 uses
  %i.p = tail call ptr @rb_enc_check(i64 noundef %0, i64 noundef %.0..0.77) #28 ; 4 uses
  %i.q = tail call fastcc i64 @str_strlen(i64 noundef %0, ptr noundef %i.p) ; 3 uses
  %i.r = icmp slt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_string_value.exit
  %i.s = add i64 %i.q, %1                         ; 2 uses
  %i.t = and i64 %i.s, %1
  %or.cond.not = icmp sgt i64 %i.t, -1
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_string_value.exit
  %i.u = load i64, ptr @rb_eIndexError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.2, i64 noundef %1) #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = icmp slt i64 %1, 0
  %spec.select = select i1 %i.v, i64 %i.s, i64 %1 ; 3 uses
  %i.w = sub i64 %i.q, %spec.select
  %.046 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.w) ; 2 uses
  %i.x = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = and i64 %i.y, 8192
  %.not.i = icmp eq i64 %i.z, 0
  %i.aa = getelementptr i8, ptr %i.x, i64 24      ; 10 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.f, %bb.g
  %i.ac = phi ptr [ %i.ab, %bb.g ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ad = getelementptr i8, ptr %i.x, i64 16      ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.ae  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %spec.select, ptr %i.b, align 8, !tbaa !27
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RSTRING_END.exit
  %i.ag = getelementptr i8, ptr %i.ac, i64 %spec.select
  br label %str_nth.exit

bb.i:                                             ; preds = %RSTRING_END.exit
  %i.ah = call fastcc ptr @str_nth_len(ptr noundef %i.ac, ptr noundef %i.af, ptr noundef %i.b, ptr noundef %i.p)
  %.pre.pre = load i64, ptr %i.x, align 8, !tbaa !11
  br label %str_nth.exit

str_nth.exit:                                     ; preds = %bb.h, %bb.i
  %.pre = phi i64 [ %i.y, %bb.h ], [ %.pre.pre, %bb.i ] ; 2 uses
  %.010.i = phi ptr [ %i.ag, %bb.h ], [ %i.ah, %bb.i ] ; 3 uses
  %.not12.i = icmp eq ptr %.010.i, null
  %i.ai = icmp ugt ptr %.010.i, %i.af
  %spec.select.i = select i1 %i.ai, ptr %i.af, ptr %.010.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not83 = icmp eq ptr %spec.select.i, null
  %.not = select i1 %.not12.i, i1 true, i1 %.not83
  %i.aj = and i64 %.pre, 8192                     ; 2 uses
  br i1 %.not, label %bb.j, label %str_nth.exit._crit_edge

bb.j:                                             ; preds = %str_nth.exit
  %.not.i62 = icmp eq i64 %i.aj, 0
  br i1 %.not.i62, label %RSTRING_END.exit63, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !20
  br label %RSTRING_END.exit63

RSTRING_END.exit63:                               ; preds = %bb.j, %bb.k
  %i.al = phi ptr [ %i.ak, %bb.k ], [ %i.aa, %bb.j ]
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  br label %str_nth.exit._crit_edge

str_nth.exit._crit_edge:                          ; preds = %str_nth.exit, %RSTRING_END.exit63
  %.047 = phi ptr [ %i.an, %RSTRING_END.exit63 ], [ %spec.select.i, %str_nth.exit ] ; 3 uses
  %.not.i64 = icmp eq i64 %i.aj, 0
  br i1 %.not.i64, label %RSTRING_END.exit65, label %bb.l

bb.l:                                             ; preds = %str_nth.exit._crit_edge
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !20
  br label %RSTRING_END.exit65

RSTRING_END.exit65:                               ; preds = %str_nth.exit._crit_edge, %bb.l
  %i.ap = phi ptr [ %i.ao, %bb.l ], [ %i.aa, %str_nth.exit._crit_edge ]
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.ar = getelementptr i8, ptr %i.ap, i64 %i.aq  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.046, ptr %i.a, align 8, !tbaa !27
  br i1 %i.d, label %bb.m, label %bb.n

bb.m:                                             ; preds = %RSTRING_END.exit65
  %i.as = getelementptr i8, ptr %.047, i64 %.046
  br label %str_nth.exit71

bb.n:                                             ; preds = %RSTRING_END.exit65
  %i.at = call fastcc ptr @str_nth_len(ptr noundef %.047, ptr noundef %i.ar, ptr noundef %i.a, ptr noundef %i.p)
  %.pre86.pre = load i64, ptr %i.x, align 8, !tbaa !11
  br label %str_nth.exit71

str_nth.exit71:                                   ; preds = %bb.m, %bb.n
  %.pre86 = phi i64 [ %.pre, %bb.m ], [ %.pre86.pre, %bb.n ]
  %.010.i67 = phi ptr [ %i.as, %bb.m ], [ %i.at, %bb.n ] ; 3 uses
  %.not12.i68 = icmp eq ptr %.010.i67, null
  %i.au = icmp ugt ptr %.010.i67, %i.ar
  %spec.select.i69 = select i1 %i.au, ptr %i.ar, ptr %.010.i67 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not5684 = icmp eq ptr %spec.select.i69, null
  %.not56 = select i1 %.not12.i68, i1 true, i1 %.not5684
  %i.av = and i64 %.pre86, 8192                   ; 2 uses
  br i1 %.not56, label %bb.o, label %str_nth.exit71._crit_edge

bb.o:                                             ; preds = %str_nth.exit71
  %.not.i72 = icmp eq i64 %i.av, 0
  br i1 %.not.i72, label %RSTRING_END.exit73, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !20
  br label %RSTRING_END.exit73

RSTRING_END.exit73:                               ; preds = %bb.o, %bb.p
  %i.ax = phi ptr [ %i.aw, %bb.p ], [ %i.aa, %bb.o ]
  %i.ay = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.az = getelementptr i8, ptr %i.ax, i64 %i.ay
  br label %str_nth.exit71._crit_edge

str_nth.exit71._crit_edge:                        ; preds = %str_nth.exit71, %RSTRING_END.exit73
  %.048 = phi ptr [ %i.az, %RSTRING_END.exit73 ], [ %spec.select.i69, %str_nth.exit71 ]
  %.not.i74 = icmp eq i64 %i.av, 0
  br i1 %.not.i74, label %RSTRING_PTR.exit75, label %bb.q

bb.q:                                             ; preds = %str_nth.exit71._crit_edge
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !20
  br label %RSTRING_PTR.exit75

RSTRING_PTR.exit75:                               ; preds = %str_nth.exit71._crit_edge, %bb.q
  %i.bb = phi ptr [ %i.ba, %bb.q ], [ %i.aa, %str_nth.exit71._crit_edge ]
  %i.bc = ptrtoint ptr %.047 to i64               ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ptrtoint ptr %.048 to i64
  %i.bg = sub i64 %i.bf, %i.bc
  %i.bh = inttoptr i64 %.0..0.77 to ptr           ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !14
  tail call fastcc void @rb_str_update_1(i64 noundef %0, i64 noundef %i.be, i64 noundef %i.bg, i64 noundef %.0..0.77, i64 noundef 0, i64 noundef %i.bj)
  %i.bk = tail call i64 @rb_enc_associate(i64 noundef %0, ptr noundef %i.p) #28 ; 0 uses
  %i.bl = load i64, ptr %i.x, align 8, !tbaa !11  ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 3145728
  %i.bo = load i64, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 3145728                  ; 2 uses
  switch i32 %i.bn, label %RB_ENC_CODERANGE_AND.exit.thread [
    i32 1048576, label %RB_ENC_CODERANGE_AND.exit
    i32 2097152, label %bb.r
  ]

bb.r:                                             ; preds = %RSTRING_PTR.exit75
  switch i32 %i.bq, label %RB_ENC_CODERANGE_AND.exit.thread.fold.split [
    i32 1048576, label %RB_ENC_CODERANGE_AND.exit.thread
    i32 3145728, label %bb.s
  ]

RB_ENC_CODERANGE_AND.exit:                        ; preds = %RSTRING_PTR.exit75
  %.not57 = icmp eq i32 %i.bq, 3145728
  br i1 %.not57, label %bb.s, label %RB_ENC_CODERANGE_AND.exit.thread.fold.split

RB_ENC_CODERANGE_AND.exit.thread.fold.split:      ; preds = %bb.r, %RB_ENC_CODERANGE_AND.exit
  %i.br = and i64 %i.bo, 3145728
  br label %RB_ENC_CODERANGE_AND.exit.thread

RB_ENC_CODERANGE_AND.exit.thread:                 ; preds = %bb.r, %RB_ENC_CODERANGE_AND.exit.thread.fold.split, %RSTRING_PTR.exit75
  %.0.i7682 = phi i64 [ 2097152, %bb.r ], [ 0, %RSTRING_PTR.exit75 ], [ %i.br, %RB_ENC_CODERANGE_AND.exit.thread.fold.split ]
  %i.bs = and i64 %i.bl, -3145729
  %i.bt = or disjoint i64 %.0.i7682, %i.bs
  store i64 %i.bt, ptr %i.x, align 8, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %RB_ENC_CODERANGE_AND.exit.thread, %RB_ENC_CODERANGE_AND.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_str_replace(i64 noundef returned %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  %i.b = inttoptr i64 %0 to ptr                   ; 11 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.d = and i64 %i.c, 575488
  %.not8.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i, label %str_modifiable.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not11.i = and i1 %i.e, %i.g
  %i.h = and i64 %i.c, 31
  %i.i = icmp eq i64 %i.h, 5
  %or.cond.i = and i1 %.not11.i, %i.i
  %i.j = and i64 %i.c, 49152
  %i.k = icmp ne i64 %i.j, 0
  %or.cond7.i = and i1 %i.k, %or.cond.i
  br i1 %or.cond7.i, label %bb.c, label %CHILLED_STRING_P.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @CHILLED_STRING_MUTATED(i64 noundef %0), !inline_history !91
  br label %CHILLED_STRING_P.exit.thread.i

CHILLED_STRING_P.exit.thread.i:                   ; preds = %bb.c, %bb.b
  tail call fastcc void @rb_check_lockedtmp(i64 noundef %0), !inline_history !91
  tail call fastcc void @rb_check_frozen_inline(i64 noundef %0) #34, !inline_history !91
  br label %str_modifiable.exit

str_modifiable.exit:                              ; preds = %bb.a, %CHILLED_STRING_P.exit.thread.i
  %i.l = icmp eq i64 %0, %1
  br i1 %i.l, label %bb.n, label %bb.d

bb.d:                                             ; preds = %str_modifiable.exit
  %.0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  %i.m = icmp eq i64 %.0..0..0., 0
  %i.n = and i64 %.0..0..0., 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.q = inttoptr i64 %.0..0..0. to ptr           ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 5
  br i1 %i.t, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  %i.u = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.u, ptr %i.a, align 8, !tbaa !27
  %.pre = inttoptr i64 %i.u to ptr
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.pre-phi = phi ptr [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 8 uses
  %.0..0.8 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.u, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 2 uses
  tail call fastcc void @str_discard(i64 noundef %0)
  %i.v = getelementptr i8, ptr %.pre-phi, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = load i64, ptr %.pre-phi, align 8, !tbaa !11 ; 2 uses
  %i.y = and i64 %i.x, 12288
  %i.z = icmp eq i64 %i.y, 12288
  br i1 %i.z, label %bb.e, label %bb.m

bb.e:                                             ; preds = %rb_string_value.exit
  %i.aa = getelementptr i8, ptr %.pre-phi, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20 ; 6 uses
  %i.ac = icmp ne i64 %0, 0
  %i.ad = and i64 %0, 7
  %i.ae = icmp eq i64 %i.ad, 0
  %.not4.i.i = and i1 %i.ac, %i.ae                ; 3 uses
  br i1 %.not4.i.i, label %bb.f, label %RB_FL_UNSET.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ag = and i64 %i.af, -405505
  %i.ah = or disjoint i64 %i.ag, 8192
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !11
  %.pre.i = load i64, ptr %.pre-phi, align 8, !tbaa !11
  br label %RB_FL_UNSET.exit.i

RB_FL_UNSET.exit.i:                               ; preds = %bb.f, %bb.e
  %i.ai = phi i64 [ %.pre.i, %bb.f ], [ %i.x, %bb.e ]
  %i.aj = getelementptr i8, ptr %i.b, i64 16
  store i64 %i.w, ptr %i.aj, align 8, !tbaa !14
  %i.ak = and i64 %i.ai, 8192
  %.not.i.i = icmp eq i64 %i.ak, 0
  %i.al = getelementptr i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.g

bb.g:                                             ; preds = %RB_FL_UNSET.exit.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.g, %RB_FL_UNSET.exit.i
  %i.an = phi ptr [ %i.am, %bb.g ], [ %i.al, %RB_FL_UNSET.exit.i ]
  %i.ao = getelementptr i8, ptr %i.b, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !20
  br i1 %.not4.i.i, label %RB_FL_TEST.exit.i, label %RB_FL_TEST.exit.thread.i

RB_FL_TEST.exit.i:                                ; preds = %RSTRING_PTR.exit.i
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !11
  %i.aq = and i64 %i.ap, 2147483648
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %RB_FL_TEST.exit.thread.i, label %bb.l

RB_FL_TEST.exit.thread.i:                         ; preds = %RB_FL_TEST.exit.i, %RSTRING_PTR.exit.i
  %i.ar = getelementptr i8, ptr %i.b, i64 32
  store i64 %i.ab, ptr %i.ar, align 8, !tbaa !27
  %i.as = icmp eq i64 %i.ab, 0
  %i.at = and i64 %i.ab, 7                        ; 2 uses
  %i.au = icmp ne i64 %i.at, 0
  %i.av = or i1 %i.as, %i.au
  br i1 %i.av, label %rb_obj_write.exit.i, label %bb.h

bb.h:                                             ; preds = %RB_FL_TEST.exit.thread.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ab) #28
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.h, %RB_FL_TEST.exit.thread.i
  br i1 %.not4.i.i, label %bb.i, label %RB_FL_SET.exit24.i

bb.i:                                             ; preds = %rb_obj_write.exit.i
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ax = or i64 %i.aw, 4096
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !11
  br label %RB_FL_SET.exit24.i

RB_FL_SET.exit24.i:                               ; preds = %bb.i, %rb_obj_write.exit.i
  %i.ay = icmp ne i64 %i.ab, 0
  %i.az = icmp eq i64 %i.at, 0
  %.not4.i25.i = and i1 %i.ay, %i.az
  %i.ba = inttoptr i64 %i.ab to ptr               ; 5 uses
  br i1 %.not4.i25.i, label %bb.j, label %RB_FL_SET.exit26.i

bb.j:                                             ; preds = %RB_FL_SET.exit24.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.bc = or i64 %i.bb, 131072
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !11
  br label %RB_FL_SET.exit26.i

RB_FL_SET.exit26.i:                               ; preds = %bb.j, %RB_FL_SET.exit24.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !26
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %RB_FL_SET.exit26.i
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.bh = or i64 %i.bg, 262144
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %RB_FL_SET.exit26.i, %RB_FL_TEST.exit.i
  %i.bi = load i64, ptr %.pre-phi, align 8, !tbaa !11
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = lshr i32 %i.bj, 22
  %i.bl = and i32 %i.bk, 127                      ; 2 uses
end_hunk_2
begin_hunk_3_@rb_str_dump:bb.a
  %i.dc = icmp slt i32 %i.cz, 65536
  %i.dd = ptrtoint ptr %i.cu to i64
  %i.de = sub i64 %i.bs, %i.dd
  %.str.45..str.46 = select i1 %i.dc, ptr @.str.45, ptr @.str.46
  %i.df = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.cu, i64 noundef %i.de, ptr noundef nonnull %.str.45..str.46, i32 noundef %i.cz) #28 ; 0 uses
  %i.dg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cu) #32
  %i.dh = getelementptr i8, ptr %i.cu, i64 %i.dg
  br label %bb.al

.thread177:                                       ; preds = %bb.aj, %bb.ai
  %i.di = ptrtoint ptr %i.cu to i64
  %i.dj = sub i64 %i.bs, %i.di
  %i.dk = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.cu, i64 noundef %i.dj, ptr noundef nonnull @.str.47, i32 noundef %i.bv) #28 ; 0 uses
  %i.dl = getelementptr i8, ptr %.0137184, i64 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.t, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ah, %.thread177, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x
  %.5142 = phi ptr [ %i.dh, %bb.ak ], [ %i.bx, %bb.t ], [ %i.cb, %bb.x ], [ %i.cd, %bb.y ], [ %i.cf, %bb.z ], [ %i.ch, %bb.aa ], [ %i.cj, %bb.ab ], [ %i.cl, %bb.ac ], [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ], [ %i.cr, %bb.af ], [ %i.cu, %bb.ah ], [ %i.dl, %.thread177 ] ; 2 uses
  %.8 = phi ptr [ %i.db, %bb.ak ], [ %i.bt, %bb.t ], [ %i.bt, %bb.x ], [ %i.bt, %bb.y ], [ %i.bt, %bb.z ], [ %i.bt, %bb.aa ], [ %i.bt, %bb.ab ], [ %i.bt, %bb.ac ], [ %i.bt, %bb.ad ], [ %i.bt, %bb.ae ], [ %i.bt, %bb.af ], [ %i.bt, %bb.ah ], [ %i.bt, %.thread177 ] ; 2 uses
  %i.dm = icmp ult ptr %.8, %i.bg
  br i1 %i.dm, label %bb.s, label %._crit_edge187

._crit_edge187:                                   ; preds = %bb.al, %RSTRING_PTR.exit165
  %.0137.lcssa = phi ptr [ %i.bp, %RSTRING_PTR.exit165 ], [ %.5142, %bb.al ] ; 2 uses
  %i.dn = getelementptr i8, ptr %.0137.lcssa, i64 1 ; 3 uses
  store i8 34, ptr %.0137.lcssa, align 1, !tbaa !20
  store i8 0, ptr %i.dn, align 1, !tbaa !20
  %.val.i166 = load i32, ptr %i.d, align 4, !tbaa !16
  %.not.i167 = icmp eq i32 %.val.i166, 1
  br i1 %.not.i167, label %rb_enc_asciicompat.exit170, label %rb_enc_asciicompat.exit170.thread

rb_enc_asciicompat.exit170:                       ; preds = %._crit_edge187
  %i.do = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.b) #32
  %.not3.i169 = icmp eq i32 %i.do, 0
  br i1 %.not3.i169, label %bb.am, label %rb_enc_asciicompat.exit170.thread

rb_enc_asciicompat.exit170.thread:                ; preds = %._crit_edge187, %rb_enc_asciicompat.exit170
  %i.dp = ptrtoint ptr %i.bo to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = getelementptr i8, ptr %i.b, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !42
  %i.du = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.dn, i64 noundef %i.dr, ptr noundef nonnull @rb_str_dump.nonascii_suffix, ptr noundef %i.dt) #28 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %rb_enc_asciicompat.exit170.thread, %rb_enc_asciicompat.exit170
  %.0 = phi i32 [ %i.a, %rb_enc_asciicompat.exit170 ], [ 0, %rb_enc_asciicompat.exit170.thread ]
  %i.dv = tail call i64 @rb_enc_associate_index(i64 noundef %i.ba, i32 noundef %.0) #28 ; 0 uses
  %i.dw = load i64, ptr %i.bh, align 8, !tbaa !11
  %i.dx = and i64 %i.dw, -3145729
  %i.dy = or disjoint i64 %i.dx, 1048576
  store i64 %i.dy, ptr %i.bh, align 8, !tbaa !11
  ret i64 %i.ba
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_split(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %.0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  %i.c = icmp eq i64 %.0..0..0., 0
  %i.d = and i64 %.0..0..0., 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.g = inttoptr i64 %.0..0..0. to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.k = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.k, ptr %i.a, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0..0.1 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.k, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.b, label %rb_str_new_cstr.exit

bb.b:                                             ; preds = %rb_string_value.exit
  %i.l = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.195) #30
  unreachable

rb_str_new_cstr.exit:                             ; preds = %rb_string_value.exit
  %i.m = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #32
  %i.n = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.o = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.p = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.n, ptr noundef nonnull readonly %1, i64 noundef %i.m, ptr noundef nonnull %i.o)
  store i64 %i.p, ptr %i.b, align 8, !tbaa !27
  %i.q = call i64 @rb_str_split_m(i32 noundef 1, ptr noundef nonnull %i.b, i64 noundef %.0..0.1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i64 %i.q
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_split_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = tail call i32 @rb_block_given_p() #28
  %.not335 = icmp eq i32 %i.f, 0                  ; 6 uses
  %i.g = icmp slt i32 %0, 0
  br i1 %i.g, label %bb.e, label %.preheader470.preheader

.preheader470.preheader:                          ; preds = %bb.a
  %.not640 = icmp eq i32 %0, 0
  br i1 %.not640, label %.preheader470.1, label %bb.b

bb.b:                                             ; preds = %.preheader470.preheader
  %i.h = load i64, ptr %1, align 8, !tbaa !27
  br label %.preheader470.1

.preheader470.1:                                  ; preds = %.preheader470.preheader, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 4, %.preheader470.preheader ] ; 8 uses
  %.286.i = phi i32 [ 1, %bb.b ], [ 0, %.preheader470.preheader ] ; 4 uses
  %i.i = icmp samesign ult i32 %.286.i, %0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader470.1
  %i.j = zext nneg i32 %.286.i to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = add nuw nsw i32 %.286.i, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader470.1, %bb.c
  %i.n = phi i64 [ %i.l, %bb.c ], [ 4, %.preheader470.1 ] ; 5 uses
  %.286.i.1 = phi i32 [ %i.m, %bb.c ], [ %.286.i, %.preheader470.1 ]
  %i.o = icmp eq i32 %.286.i.1, %0
  br i1 %i.o, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.p = icmp eq i32 %0, 2
  br i1 %i.p, label %bb.f, label %bb.p

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.q = trunc i64 %i.n to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i64 @rb_fix2int(i64 noundef %i.n) #28
  br label %rb_num2int_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.s = tail call i64 @rb_num2int(i64 noundef %i.n) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.r, %bb.g ], [ %i.s, %bb.h ]
  %i.t = trunc i64 %.0.i to i32                   ; 4 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.p, label %bb.i

bb.i:                                             ; preds = %rb_num2int_inline.exit
  %i.v = icmp eq i32 %i.t, 1
  br i1 %i.v, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.w = inttoptr i64 %2 to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not335, label %bb.l, label %bb.dz

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i64 @rb_ary_new_capa(i64 noundef 0) #28
  br label %bb.dz

bb.m:                                             ; preds = %bb.j
  %i.ab = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.ac = tail call fastcc i64 @str_duplicate(i64 noundef %i.ab, i64 noundef %2) ; 2 uses
  br i1 %.not335, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call i64 @rb_yield(i64 noundef %i.ac) #28 ; 0 uses
  br label %bb.dz

bb.o:                                             ; preds = %bb.m
  %i.ae = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.ac) #28
  br label %bb.dz

bb.p:                                             ; preds = %rb_num2int_inline.exit, %bb.i, %rb_scan_args_set.exit
  %.1 = phi i64 [ %i.n, %rb_scan_args_set.exit ], [ %i.n, %bb.i ], [ 4, %rb_num2int_inline.exit ] ; 7 uses
  %.0297 = phi i32 [ 0, %rb_scan_args_set.exit ], [ %i.t, %bb.i ], [ %i.t, %rb_num2int_inline.exit ] ; 7 uses
  %.0266 = phi i64 [ 0, %rb_scan_args_set.exit ], [ 1, %bb.i ], [ 1, %rb_num2int_inline.exit ] ; 5 uses
  %i.af = icmp ne i64 %.1, 4                      ; 3 uses
  %i.ag = icmp ne i32 %.0297, 0
  %or.cond.not.not = or i1 %i.ag, %i.af
  %spec.select = sext i1 %or.cond.not.not to i64  ; 10 uses
  %i.ah = inttoptr i64 %2 to ptr                  ; 18 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = lshr i32 %i.aj, 22
  %i.al = and i32 %i.ak, 127                      ; 2 uses
  %i.am = icmp eq i32 %i.al, 127
  br i1 %i.am, label %bb.q, label %get_encoding.exit

bb.q:                                             ; preds = %bb.p
  %i.an = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.p, %bb.q
  %.0.i.i = phi i32 [ %i.an, %bb.q ], [ %i.al, %bb.p ]
  %i.ao = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 3 uses
  %i.ap = icmp eq i64 %.sink, 4
  br i1 %i.ap, label %bb.t, label %bb.r

bb.r:                                             ; preds = %get_encoding.exit
  %i.aq = icmp eq i64 %.sink, 0
  %i.ar = and i64 %.sink, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = inttoptr i64 %.sink to ptr              ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %.off = add nsw i32 %i.ax, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.critedge356, label %.thread15.i

.thread.i:                                        ; preds = %bb.r
  %i.ay = tail call i64 @rb_check_convert_type_with_id(i64 noundef %.sink, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4
  br i1 %i.az, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %.critedge356

.thread15.i:                                      ; preds = %bb.s
  %i.ba = tail call i64 @rb_check_convert_type_with_id(i64 noundef %.sink, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4
  br i1 %i.bb, label %.thread16.i, label %.critedge356

.thread16.i:                                      ; preds = %.thread15.i
  %i.bc = load i64, ptr %i.au, align 8, !tbaa !11
  %i.bd = and i64 %i.bc, 31
  %i.be = icmp eq i64 %i.bd, 6
  br i1 %i.be, label %.critedge356, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, !prof !25

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %.thread16.i, %.thread.i
  tail call void @rb_unexpected_type(i64 noundef %.sink, i32 noundef 6) #29
  unreachable

bb.t:                                             ; preds = %get_encoding.exit
  %i.bf = load i64, ptr @rb_fs, align 8, !tbaa !27 ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 4
  br i1 %i.bg, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = icmp eq i64 %i.bf, 0
  %i.bi = and i64 %i.bf, 7
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = or i1 %i.bh, %i.bj
  br i1 %i.bk, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit9.i

rbimpl_RB_TYPE_P_fastpath.exit9.i:                ; preds = %bb.u
  %i.bl = inttoptr i64 %i.bf to ptr
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bn = and i64 %i.bm, 31
  %.off.i = add nsw i64 %i.bn, -5
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %rb_fs_check.exit.thread444, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit9.i, %bb.u
  %i.bo = tail call i64 @rb_check_convert_type_with_id(i64 noundef %i.bf, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  switch i64 %i.bo, label %rb_fs_check.exit.thread444 [
    i64 4, label %rb_fs_check.exit.thread
    i64 0, label %rb_fs_check.exit.thread
  ]

rb_fs_check.exit.thread:                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.bp = load i64, ptr @rb_eTypeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bp, ptr noundef nonnull @.str.202) #30
  unreachable

rb_fs_check.exit.thread444:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit9.i
  %i.bq = phi i64 [ %i.bo, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.bf, %rbimpl_RB_TYPE_P_fastpath.exit9.i ]
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.203) #36
  br label %.critedge356

.critedge356:                                     ; preds = %.thread16.i, %.thread15.i, %.thread.i, %bb.s, %rb_fs_check.exit.thread444
  %i.br = phi i64 [ %i.bq, %rb_fs_check.exit.thread444 ], [ 4, %.thread16.i ], [ %.sink, %bb.s ], [ %i.ba, %.thread15.i ], [ %i.ay, %.thread.i ] ; 8 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = and i64 %i.bt, 31
  %i.bv = icmp eq i64 %i.bu, 6
  br i1 %i.bv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.critedge356
  %i.bw = tail call i32 @rb_reg_options(i64 noundef %i.br) #28 ; 0 uses
  %i.bx = getelementptr i8, ptr %i.bs, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !150 ; 3 uses
  %i.bz = tail call fastcc i32 @literal_split_pattern(i64 noundef %i.by, i32 noundef 2) ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  br label %bb.y

bb.x:                                             ; preds = %.critedge356
  tail call fastcc void @mustnot_broken(i64 noundef %i.br)
  %i.cb = tail call fastcc i32 @literal_split_pattern(i64 noundef %i.br, i32 noundef 1)
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.x, %bb.w, %bb.v
  %.2726 = phi i64 [ %i.bf, %bb.t ], [ %i.by, %bb.w ], [ %i.br, %bb.v ], [ %i.br, %bb.x ]
  %i.cc = phi i64 [ 4, %bb.t ], [ %i.by, %bb.w ], [ %i.br, %bb.v ], [ %i.br, %bb.x ] ; 4 uses
  %.1256 = phi i32 [ 0, %bb.t ], [ 1, %bb.w ], [ %i.bz, %bb.v ], [ %i.cb, %bb.x ]
  %i.cd = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.ce = and i64 %i.cd, 8192
  %.not.i365 = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr i8, ptr %i.ah, i64 24     ; 24 uses
  br i1 %.not.i365, label %RSTRING_PTR.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.y, %bb.z
  %i.ch = phi ptr [ %i.cg, %bb.z ], [ %i.cf, %bb.y ] ; 26 uses
  %i.ci = getelementptr i8, ptr %i.ah, i64 16     ; 14 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14 ; 13 uses
  %i.ck = getelementptr i8, ptr %i.ch, i64 %i.cj  ; 13 uses
  switch i32 %.1256, label %default.unreachable [
    i32 0, label %bb.aa
    i32 1, label %bb.az
    i32 3, label %bb.bn
    i32 2, label %bb.bx
  ]

bb.aa:                                            ; preds = %RSTRING_PTR.exit
  br i1 %.not335, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cl = tail call i64 @rb_ary_new() #28
  %.pre589 = load i64, ptr %i.ah, align 8, !tbaa !11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cm = phi i64 [ %.pre589, %bb.ab ], [ %i.cd, %bb.aa ]
  %.0298 = phi i64 [ %i.cl, %bb.ab ], [ 0, %bb.aa ] ; 8 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %i.co = and i32 %i.cn, 3145728                  ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ad, label %is_ascii_string.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cq = lshr i32 %i.cn, 22
  %i.cr = and i32 %i.cq, 127                      ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 127
  br i1 %i.cs, label %bb.ae, label %get_encoding.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ct = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i.i

get_encoding.exit.i.i:                            ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.ct, %bb.ae ], [ %i.cr, %bb.ad ]
  %i.cu = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i) #28
  %i.cv = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.cw = and i64 %i.cv, 8192
  %.not.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i, label %enc_coderange_scan.exit.i.i, label %bb.af

bb.af:                                            ; preds = %get_encoding.exit.i.i
  %i.cx = load ptr, ptr %i.cf, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i.i

enc_coderange_scan.exit.i.i:                      ; preds = %bb.af, %get_encoding.exit.i.i
  %i.cy = phi ptr [ %i.cx, %bb.af ], [ %i.cf, %get_encoding.exit.i.i ]
  %i.cz = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.da = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.cy, i64 noundef %i.cz, ptr noundef %i.cu) ; 2 uses
  %i.db = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.dc = and i64 %i.db, -3145729
  %i.dd = zext nneg i32 %i.da to i64
  %i.de = or i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.ah, align 8, !tbaa !11
  br label %is_ascii_string.exit

is_ascii_string.exit:                             ; preds = %bb.ac, %enc_coderange_scan.exit.i.i
  %.0.i.i366 = phi i32 [ %i.da, %enc_coderange_scan.exit.i.i ], [ %i.co, %bb.ac ]
  %i.df = icmp eq i32 %.0.i.i366, 1048576
  %i.dg = icmp ult ptr %i.ch, %i.ck               ; 2 uses
  br i1 %i.df, label %.preheader, label %.preheader467

.preheader467:                                    ; preds = %is_ascii_string.exit
  br i1 %i.dg, label %.lr.ph542, label %.loopexit

.lr.ph542:                                        ; preds = %.preheader467
  %i.dh = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.di = sext i32 %.0297 to i64
  %3 = zext i1 %i.af to i64
  %4 = icmp eq i64 %.1, 4
  br label %bb.aq

.preheader:                                       ; preds = %is_ascii_string.exit
  br i1 %i.dg, label %.lr.ph551, label %.loopexit

.lr.ph551:                                        ; preds = %.preheader
  %i.dj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.dk = sext i32 %.0297 to i64
  %i.dl = zext i1 %i.af to i64
  %i.dm = icmp eq i64 %.1, 4
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph551, %bb.ap
  %.0257550 = phi i64 [ 0, %.lr.ph551 ], [ %.1258, %bb.ap ] ; 5 uses
  %.0261549 = phi i64 [ 0, %.lr.ph551 ], [ %.1262, %bb.ap ] ; 3 uses
  %.1267548 = phi i64 [ %.0266, %.lr.ph551 ], [ %.2268, %bb.ap ] ; 5 uses
  %.0279547 = phi i32 [ 1, %.lr.ph551 ], [ %.1280, %bb.ap ]
  %.1285546 = phi i64 [ %spec.select, %.lr.ph551 ], [ %.2286, %bb.ap ] ; 5 uses
  %.0303545 = phi ptr [ %i.ch, %.lr.ph551 ], [ %i.dn, %bb.ap ] ; 2 uses
  %i.dn = getelementptr i8, ptr %.0303545, i64 1  ; 5 uses
  %i.do = load i8, ptr %.0303545, align 1, !tbaa !20
  %.not350 = icmp eq i32 %.0279547, 0
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr i8, ptr @isspacetable, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !20
  %.not351 = icmp eq i8 %i.dr, 0                  ; 2 uses
  br i1 %.not350, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = sub i64 %i.ds, %i.dj                    ; 2 uses
  br i1 %.not351, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %.not353 = icmp slt i64 %.1267548, %i.dk
  %or.cond = select i1 %i.dm, i1 true, i1 %.not353
  br i1 %or.cond, label %bb.ap, label %.loopexit

bb.aj:                                            ; preds = %bb.ag
  br i1 %.not351, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = sub i64 %.0261549, %.0257550
  %i.dv = tail call fastcc i64 @split_string(i64 noundef %.0298, i64 noundef %2, i64 noundef %.0257550, i64 noundef %i.du, i64 noundef %.1285546)
  %i.dw = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.dx = and i64 %i.dw, 8192
  %.not.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = load ptr, ptr %i.cf, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.al, %bb.ak
  %i.dz = phi ptr [ %i.dy, %bb.al ], [ %i.cf, %bb.ak ]
  %.not.i367 = icmp eq ptr %i.dz, %i.ch
  br i1 %.not.i367, label %bb.am, label %bb.an

bb.am:                                            ; preds = %RSTRING_PTR.exit.i
  %i.ea = load i64, ptr %i.ci, align 8, !tbaa !14
  %.not3.i = icmp eq i64 %i.ea, %i.cj
  br i1 %.not3.i, label %str_mod_check.exit, label %bb.an

bb.an:                                            ; preds = %bb.am, %RSTRING_PTR.exit.i
  %i.eb = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eb, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit:                               ; preds = %bb.am
  %i.ec = ptrtoint ptr %i.dn to i64
  %i.ed = sub i64 %i.ec, %i.dj
  %spec.select357 = add i64 %.1267548, %i.dl
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.ee = ptrtoint ptr %i.dn to i64
  %i.ef = sub i64 %i.ee, %i.dj
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ah, %str_mod_check.exit, %bb.ao, %bb.ai
  %.2286 = phi i64 [ %i.dv, %str_mod_check.exit ], [ %.1285546, %bb.ai ], [ %.1285546, %bb.ao ], [ %.1285546, %bb.ah ] ; 2 uses
  %.1280 = phi i32 [ 1, %str_mod_check.exit ], [ 0, %bb.ai ], [ 0, %bb.ao ], [ 1, %bb.ah ]
  %.2268 = phi i64 [ %spec.select357, %str_mod_check.exit ], [ %.1267548, %bb.ai ], [ %.1267548, %bb.ao ], [ %.1267548, %bb.ah ]
  %.1262 = phi i64 [ %.0261549, %str_mod_check.exit ], [ %i.dt, %bb.ai ], [ %i.ef, %bb.ao ], [ %.0261549, %bb.ah ]
  %.1258 = phi i64 [ %i.ed, %str_mod_check.exit ], [ %.0257550, %bb.ai ], [ %.0257550, %bb.ao ], [ %i.dt, %bb.ah ] ; 2 uses
  %exitcond.not = icmp eq ptr %i.dn, %i.ck
  br i1 %exitcond.not, label %.loopexit, label %bb.ag, !llvm.loop !153

bb.aq:                                            ; preds = %.lr.ph542, %select.unfold447
  %.2259541 = phi i64 [ 0, %.lr.ph542 ], [ %.4, %select.unfold447 ] ; 5 uses
  %.2263540 = phi i64 [ 0, %.lr.ph542 ], [ %.4265, %select.unfold447 ] ; 8 uses
  %.3269539 = phi i64 [ %.0266, %.lr.ph542 ], [ %.5271, %select.unfold447 ] ; 10 uses
  %.2281538 = phi i32 [ 1, %.lr.ph542 ], [ %.4283, %select.unfold447 ]
  %.3287537 = phi i64 [ %spec.select, %.lr.ph542 ], [ %.5289, %select.unfold447 ] ; 10 uses
  %.1304536 = phi ptr [ %i.ch, %.lr.ph542 ], [ %i.ej, %select.unfold447 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.eg = call i32 @rb_enc_codepoint_len(ptr noundef %.1304536, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.e, ptr noundef %i.ao) #28 ; 2 uses
  %i.eh = load i32, ptr %i.e, align 4, !tbaa !7
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %.1304536, i64 %i.ei ; 5 uses
  %.not346 = icmp eq i32 %.2281538, 0
  br i1 %.not346, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.dh                    ; 7 uses
  switch i32 %i.eg, label %bb.as [
    i32 32, label %select.unfold447
    i32 13, label %select.unfold447
    i32 12, label %select.unfold447
    i32 11, label %select.unfold447
    i32 10, label %select.unfold447
    i32 9, label %select.unfold447
  ]

bb.as:                                            ; preds = %bb.ar
  %.not349 = icmp slt i64 %.3269539, %i.di
  %or.cond358 = select i1 %4, i1 true, i1 %.not349
  br i1 %or.cond358, label %select.unfold447, label %.thread

.thread:                                          ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %.loopexit

bb.at:                                            ; preds = %bb.aq
  switch i32 %i.eg, label %bb.ay [
    i32 32, label %bb.au
    i32 13, label %bb.au
    i32 12, label %bb.au
    i32 11, label %bb.au
    i32 10, label %bb.au
    i32 9, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at
  %i.em = sub i64 %.2263540, %.2259541
  %i.en = call fastcc i64 @split_string(i64 noundef %.0298, i64 noundef %2, i64 noundef %.2259541, i64 noundef %i.em, i64 noundef %.3287537)
  %i.eo = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.ep = and i64 %i.eo, 8192
  %.not.i.i369 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i369, label %RSTRING_PTR.exit.i370, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = load ptr, ptr %i.cf, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i370

RSTRING_PTR.exit.i370:                            ; preds = %bb.av, %bb.au
  %i.er = phi ptr [ %i.eq, %bb.av ], [ %i.cf, %bb.au ]
  %.not.i371 = icmp eq ptr %i.er, %i.ch
  br i1 %.not.i371, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %RSTRING_PTR.exit.i370
  %i.es = load i64, ptr %i.ci, align 8, !tbaa !14
  %.not3.i372 = icmp eq i64 %i.es, %i.cj
  br i1 %.not3.i372, label %str_mod_check.exit373, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %RSTRING_PTR.exit.i370
  %i.et = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.et, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit373:                            ; preds = %bb.aw
  %i.eu = ptrtoint ptr %i.ej to i64
  %i.ev = sub i64 %i.eu, %i.dh
  %spec.select359 = add i64 %.3269539, %3
  br label %select.unfold447

bb.ay:                                            ; preds = %bb.at
  %i.ew = ptrtoint ptr %i.ej to i64
  %i.ex = sub i64 %i.ew, %i.dh
  br label %select.unfold447

select.unfold447:                                 ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.as, %str_mod_check.exit373, %bb.ay
  %.5289 = phi i64 [ %i.en, %str_mod_check.exit373 ], [ %.3287537, %bb.as ], [ %.3287537, %bb.ay ], [ %.3287537, %bb.ar ], [ %.3287537, %bb.ar ], [ %.3287537, %bb.ar ], [ %.3287537, %bb.ar ], [ %.3287537, %bb.ar ], [ %.3287537, %bb.ar ] ; 2 uses
  %.4283 = phi i32 [ 1, %str_mod_check.exit373 ], [ 0, %bb.as ], [ 0, %bb.ay ], [ 1, %bb.ar ], [ 1, %bb.ar ], [ 1, %bb.ar ], [ 1, %bb.ar ], [ 1, %bb.ar ], [ 1, %bb.ar ]
  %.5271 = phi i64 [ %spec.select359, %str_mod_check.exit373 ], [ %.3269539, %bb.as ], [ %.3269539, %bb.ay ], [ %.3269539, %bb.ar ], [ %.3269539, %bb.ar ], [ %.3269539, %bb.ar ], [ %.3269539, %bb.ar ], [ %.3269539, %bb.ar ], [ %.3269539, %bb.ar ]
  %.4265 = phi i64 [ %.2263540, %str_mod_check.exit373 ], [ %i.el, %bb.as ], [ %i.ex, %bb.ay ], [ %.2263540, %bb.ar ], [ %.2263540, %bb.ar ], [ %.2263540, %bb.ar ], [ %.2263540, %bb.ar ], [ %.2263540, %bb.ar ], [ %.2263540, %bb.ar ]
  %.4 = phi i64 [ %i.ev, %str_mod_check.exit373 ], [ %.2259541, %bb.as ], [ %.2259541, %bb.ay ], [ %i.el, %bb.ar ], [ %i.el, %bb.ar ], [ %i.el, %bb.ar ], [ %i.el, %bb.ar ], [ %i.el, %bb.ar ], [ %i.el, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.ey = icmp ult ptr %i.ej, %i.ck
  br i1 %i.ey, label %bb.aq, label %.loopexit

bb.az:                                            ; preds = %RSTRING_PTR.exit
  %i.ez = inttoptr i64 %i.cc to ptr               ; 3 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !11
  %i.fb = and i64 %i.fa, 8192
  %.not.i374 = icmp eq i64 %i.fb, 0
  %i.fc = getelementptr i8, ptr %i.ez, i64 24     ; 2 uses
  br i1 %.not.i374, label %RSTRING_PTR.exit375, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !20
  br label %RSTRING_PTR.exit375

RSTRING_PTR.exit375:                              ; preds = %bb.az, %bb.ba
  %i.fe = phi ptr [ %i.fd, %bb.ba ], [ %i.fc, %bb.az ] ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ez, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !14 ; 3 uses
  br i1 %.not335, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %RSTRING_PTR.exit375
  %i.fh = tail call i64 @rb_ary_new() #28
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %RSTRING_PTR.exit375
  %.1299 = phi i64 [ %i.fh, %bb.bb ], [ 0, %RSTRING_PTR.exit375 ] ; 2 uses
  tail call fastcc void @mustnot_broken(i64 noundef %2)
  %i.fi = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %i.cc) #28 ; 2 uses
  %i.fj = icmp ult ptr %i.ch, %i.ck
  br i1 %i.fj, label %.lr.ph527, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.bc
  %.pre591 = ptrtoint ptr %i.ch to i64            ; 2 uses
  br label %.critedge

.lr.ph527:                                        ; preds = %bb.bc
  %i.fk = ptrtoint ptr %i.ck to i64
  %i.fl = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.fm = sext i32 %.0297 to i64
  %i.fn = inttoptr i64 %.2726 to ptr              ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 24     ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fn, i64 16
  %i.fq = icmp eq i64 %.1, 4
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph527, %select.unfold454
  %.6272525 = phi i64 [ %.0266, %.lr.ph527 ], [ %.8274, %select.unfold454 ] ; 3 uses
  %.0277524 = phi ptr [ %i.ch, %.lr.ph527 ], [ %.1278, %select.unfold454 ] ; 2 uses
  %.7291523 = phi i64 [ %spec.select, %.lr.ph527 ], [ %.8292, %select.unfold454 ] ; 3 uses
  %.2305522 = phi ptr [ %i.ch, %.lr.ph527 ], [ %.3306, %select.unfold454 ] ; 5 uses
  %i.fr = ptrtoint ptr %.2305522 to i64
  %i.fs = sub i64 %i.fk, %i.fr
  %i.ft = tail call i64 @rb_memsearch(ptr noundef %i.fe, i64 noundef %i.fg, ptr noundef %.2305522, i64 noundef %i.fs, ptr noundef %i.fi) #28 ; 2 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  br i1 %i.fu, label %bb.be, label %.critedge.loopexit

bb.be:                                            ; preds = %bb.bd
  %i.fv = getelementptr i8, ptr %.2305522, i64 %i.ft ; 4 uses
  %i.fw = tail call ptr @onigenc_get_right_adjust_char_head(ptr noundef %i.fi, ptr noundef %.2305522, ptr noundef %i.fv, ptr noundef nonnull %i.ck) #28 ; 2 uses
  %.not344 = icmp eq ptr %i.fw, %i.fv
  br i1 %.not344, label %bb.bf, label %select.unfold454, !llvm.loop !154

bb.bf:                                            ; preds = %bb.be
  %i.fx = ptrtoint ptr %.0277524 to i64           ; 2 uses
  %i.fy = sub i64 %i.fx, %i.fl
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fz, %i.fx
  %i.gb = tail call fastcc i64 @split_string(i64 noundef %.1299, i64 noundef %2, i64 noundef %i.fy, i64 noundef %i.ga, i64 noundef %.7291523) ; 3 uses
  %i.gc = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.gd = and i64 %i.gc, 8192
  %.not.i.i376 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i376, label %RSTRING_PTR.exit.i377, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ge = load ptr, ptr %i.cf, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i377

RSTRING_PTR.exit.i377:                            ; preds = %bb.bg, %bb.bf
  %i.gf = phi ptr [ %i.ge, %bb.bg ], [ %i.cf, %bb.bf ]
  %.not.i378 = icmp eq ptr %i.gf, %i.ch
  br i1 %.not.i378, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %RSTRING_PTR.exit.i377
  %i.gg = load i64, ptr %i.ci, align 8, !tbaa !14
  %.not3.i379 = icmp eq i64 %i.gg, %i.cj
  br i1 %.not3.i379, label %str_mod_check.exit380, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %RSTRING_PTR.exit.i377
  %i.gh = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gh, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit380:                            ; preds = %bb.bh
  %i.gi = load i64, ptr %i.fn, align 8, !tbaa !11
  %i.gj = and i64 %i.gi, 8192
  %.not.i.i381 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i381, label %RSTRING_PTR.exit.i382, label %bb.bj

bb.bj:                                            ; preds = %str_mod_check.exit380
  %i.gk = load ptr, ptr %i.fo, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i382

RSTRING_PTR.exit.i382:                            ; preds = %bb.bj, %str_mod_check.exit380
  %i.gl = phi ptr [ %i.gk, %bb.bj ], [ %i.fo, %str_mod_check.exit380 ]
  %.not.i383 = icmp eq ptr %i.gl, %i.fe
  br i1 %.not.i383, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %RSTRING_PTR.exit.i382
  %i.gm = load i64, ptr %i.fp, align 8, !tbaa !14
  %.not3.i384 = icmp eq i64 %i.gm, %i.fg
  br i1 %.not3.i384, label %str_mod_check.exit385, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %RSTRING_PTR.exit.i382
  %i.gn = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gn, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit385:                            ; preds = %bb.bk
  %i.go = getelementptr i8, ptr %i.fv, i64 %i.fg  ; 5 uses
  br i1 %i.fq, label %select.unfold454, label %bb.bm

bb.bm:                                            ; preds = %str_mod_check.exit385
  %i.gp = add i64 %.6272525, 1                    ; 2 uses
  %.not345 = icmp slt i64 %i.gp, %i.fm
  br i1 %.not345, label %select.unfold454, label %.critedge.loopexit

select.unfold454:                                 ; preds = %bb.bm, %str_mod_check.exit385, %bb.be
  %.3306 = phi ptr [ %i.fw, %bb.be ], [ %i.go, %str_mod_check.exit385 ], [ %i.go, %bb.bm ] ; 3 uses
  %.8292 = phi i64 [ %.7291523, %bb.be ], [ %i.gb, %str_mod_check.exit385 ], [ %i.gb, %bb.bm ] ; 2 uses
  %.1278 = phi ptr [ %.0277524, %bb.be ], [ %i.go, %str_mod_check.exit385 ], [ %i.go, %bb.bm ]
  %.8274 = phi i64 [ %.6272525, %bb.be ], [ %.6272525, %str_mod_check.exit385 ], [ %i.gp, %bb.bm ]
  %i.gq = icmp ult ptr %.3306, %i.ck
  br i1 %i.gq, label %bb.bd, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.bm, %select.unfold454, %bb.bd
  %.4307.ph = phi ptr [ %.2305522, %bb.bd ], [ %.3306, %select.unfold454 ], [ %i.go, %bb.bm ]
  %.9293.ph = phi i64 [ %.7291523, %bb.bd ], [ %.8292, %select.unfold454 ], [ %i.gb, %bb.bm ]
  %.pre595 = ptrtoint ptr %.4307.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.critedge.loopexit
  %.pre-phi596 = phi i64 [ %.pre591, %..critedge_crit_edge ], [ %.pre595, %.critedge.loopexit ]
  %.pre-phi592 = phi i64 [ %.pre591, %..critedge_crit_edge ], [ %i.fl, %.critedge.loopexit ]
  %.9293 = phi i64 [ %spec.select, %..critedge_crit_edge ], [ %.9293.ph, %.critedge.loopexit ]
  %i.gr = sub i64 %.pre-phi596, %.pre-phi592
  br label %.loopexit

bb.bn:                                            ; preds = %RSTRING_PTR.exit
  br i1 %.not335, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gs = tail call i64 @rb_ary_new_capa(i64 noundef %i.cj) #28
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.2300 = phi i64 [ %i.gs, %bb.bo ], [ 0, %bb.bn ] ; 2 uses
  tail call fastcc void @mustnot_broken(i64 noundef %2)
  %i.gt = tail call ptr @rb_enc_get(i64 noundef %2) #28
  %i.gu = icmp ult ptr %i.ch, %i.ck
  %i.gv = ptrtoint ptr %i.ch to i64               ; 3 uses
  br i1 %i.gu, label %.lr.ph513, label %.critedge3

.lr.ph513:                                        ; preds = %bb.bp
  %i.gw = sext i32 %.0297 to i64
  %i.gx = icmp eq i64 %.1, 4
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph513, %bb.bw
  %.9275511 = phi i64 [ %.0266, %.lr.ph513 ], [ %.10276, %bb.bw ] ; 2 uses
  %.10294510 = phi i64 [ %spec.select, %.lr.ph513 ], [ %i.hd, %bb.bw ] ; 2 uses
  %.5308509 = phi ptr [ %i.ch, %.lr.ph513 ], [ %i.hk, %bb.bw ] ; 4 uses
  %i.gy = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.5308509, ptr noundef nonnull %i.ck, ptr noundef %i.gt) #28 ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %bb.br, label %.critedge3.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.ha = ptrtoint ptr %.5308509 to i64
  %i.hb = sub i64 %i.ha, %i.gv
  %i.hc = zext nneg i32 %i.gy to i64              ; 2 uses
  %i.hd = tail call fastcc i64 @split_string(i64 noundef %.2300, i64 noundef %2, i64 noundef %i.hb, i64 noundef %i.hc, i64 noundef %.10294510) ; 3 uses
  %i.he = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.hf = and i64 %i.he, 8192
  %.not.i.i386 = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i386, label %RSTRING_PTR.exit.i387, label %bb.bs

end_hunk_3
begin_hunk_4_@rb_str_split_m:bb.a
str_mod_check.exit415.us:                         ; preds = %.str_mod_check.exit415.us_crit_edge, %.lr.ph.split.us
  %i.lt = phi i32 [ %i.jt, %.lr.ph.split.us ], [ %.pre588, %.str_mod_check.exit415.us_crit_edge ] ; 2 uses
  %i.lu = phi i64 [ %i.ju, %.lr.ph.split.us ], [ %i.lo, %.str_mod_check.exit415.us_crit_edge ]
  %.15.us = phi i64 [ %.14492.us, %.lr.ph.split.us ], [ %.020.i.us, %.str_mod_check.exit415.us_crit_edge ] ; 2 uses
  %i.lv = add nuw nsw i64 %.0252493.us, 1         ; 2 uses
  %i.lw = sext i32 %i.lt to i64
  %i.lx = icmp slt i64 %i.lv, %i.lw
  br i1 %i.lx, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !161

.lr.ph.split:                                     ; preds = %.lr.ph, %str_mod_check.exit415
  %i.ly = phi i32 [ %i.nz, %str_mod_check.exit415 ], [ %i.jq, %.lr.ph ]
  %i.lz = phi i64 [ %i.oa, %str_mod_check.exit415 ], [ %i.jo, %.lr.ph ] ; 2 uses
  %.0252493 = phi i64 [ %i.ob, %str_mod_check.exit415 ], [ 1, %.lr.ph ] ; 3 uses
  %.14492 = phi i64 [ %.15, %str_mod_check.exit415 ], [ %.13, %.lr.ph ] ; 6 uses
  %i.ma = load ptr, ptr %i.hy, align 8, !tbaa !156
  %i.mb = getelementptr [8 x i8], ptr %i.ma, i64 %.0252493
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !27 ; 4 uses
  %i.md = icmp eq i64 %i.mc, -1
  br i1 %i.md, label %str_mod_check.exit415, label %bb.de

bb.de:                                            ; preds = %.lr.ph.split
  %i.me = load ptr, ptr %i.js, align 8, !tbaa !158
  %i.mf = getelementptr [8 x i8], ptr %i.me, i64 %.0252493
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !27 ; 2 uses
  %i.mh = sub i64 %i.mg, %i.mc
  %i.mi = icmp sgt i64 %.14492, -1
  %i.mj = icmp eq i64 %i.mg, %i.mc
  %or.cond.i406 = and i1 %i.mi, %i.mj
  br i1 %or.cond.i406, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.mk = add nuw i64 %.14492, 1
  br label %split_string.exit

bb.dg:                                            ; preds = %bb.de
  %i.ml = icmp sgt i64 %.14492, 0
  br i1 %i.ml, label %.preheader28.i, label %.loopexit.i

.preheader28.i:                                   ; preds = %bb.dg, %str_enc_new.exit441
  %.0.i409 = phi i64 [ %i.np, %str_enc_new.exit441 ], [ %.14492, %bb.dg ] ; 2 uses
  %i.mm = load i64, ptr @rb_cString, align 8, !tbaa !27 ; 2 uses
  %i.mn = tail call nonnull ptr @rb_ascii8bit_encoding() #28 ; 3 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 20     ; 2 uses
  %.0.val.i425 = load i32, ptr %i.mo, align 4, !tbaa !16 ; 2 uses
  %i.mp = sext i32 %.0.val.i425 to i64            ; 3 uses
  %i.mq = add nsw i64 %i.mp, 24
  %spec.store.select.i.i.i426 = tail call noundef range(i64 40, 0) i64 @llvm.umax.i64(i64 %i.mq, i64 40) ; 2 uses
  %i.mr = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.store.select.i.i.i426) #28
  br i1 %i.mr, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.preheader28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ms = load ptr, ptr %i.hs, align 8, !tbaa !40
  store volatile ptr %i.ms, ptr %i.b, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..0..0..i.i.i433 = load volatile ptr, ptr %i.b, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.mt = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i433, i64 noundef %i.mm, i64 noundef 5, i32 noundef 0, i64 noundef %spec.store.select.i.i.i426) #28 ; 2 uses
  %i.mu = inttoptr i64 %i.mt to ptr               ; 5 uses
  %i.mv = getelementptr i8, ptr %i.mu, i64 16
  store i64 0, ptr %i.mv, align 8, !tbaa !14
  %i.mw = getelementptr i8, ptr %i.mu, i64 24
  store i8 0, ptr %i.mw, align 8, !tbaa !20
  %.val.i.i434 = load i32, ptr %i.mo, align 4, !tbaa !16
  %.not.i.i435 = icmp eq i32 %.val.i.i434, 1
  br i1 %.not.i.i435, label %rb_enc_asciicompat.exit.i437, label %rb_enc_asciicompat.exit.thread.i436

rb_enc_asciicompat.exit.i437:                     ; preds = %bb.dh
  %i.mx = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.mn) #32
  %.fr.i438 = freeze i32 %i.mx
  %.not3.i.i439 = icmp eq i32 %.fr.i438, 0
  %spec.select.i440 = select i1 %.not3.i.i439, i64 1048576, i64 2097152
  br label %rb_enc_asciicompat.exit.thread.i436

rb_enc_asciicompat.exit.thread.i436:              ; preds = %rb_enc_asciicompat.exit.i437, %bb.dh
  %i.my = phi i64 [ 2097152, %bb.dh ], [ %spec.select.i440, %rb_enc_asciicompat.exit.i437 ]
  %i.mz = load i64, ptr %i.mu, align 8, !tbaa !11
  %i.na = and i64 %i.mz, -3145729
  %i.nb = or disjoint i64 %i.na, %i.my
  store i64 %i.nb, ptr %i.mu, align 8, !tbaa !11
  br label %bb.dj

bb.di:                                            ; preds = %.preheader28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.nc = load ptr, ptr %i.hs, align 8, !tbaa !40
  store volatile ptr %i.nc, ptr %i.a, align 8, !tbaa !40
  %.0..0..0..0..0..0..0..0..0..0..i.i39.i427 = load volatile ptr, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.nd = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i39.i427, i64 noundef %i.mm, i64 noundef 8197, i32 noundef 0, i64 noundef 40) #28 ; 2 uses
  %i.ne = inttoptr i64 %i.nd to ptr               ; 3 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 16
  %i.ng = getelementptr i8, ptr %i.ne, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nf, i8 0, i64 24, i1 false)
  %i.nh = tail call noalias ptr @rb_xmalloc_mul_add_mul(i64 noundef 1, i64 noundef 0, i64 noundef 1, i64 noundef %i.mp) #28
  store ptr %i.nh, ptr %i.ng, align 8, !tbaa !20
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %rb_enc_asciicompat.exit.thread.i436
  %.pre-phi590 = phi ptr [ %i.ne, %bb.di ], [ %i.mu, %rb_enc_asciicompat.exit.thread.i436 ] ; 3 uses
  %.034.i428 = phi i64 [ %i.nd, %bb.di ], [ %i.mt, %rb_enc_asciicompat.exit.thread.i436 ] ; 3 uses
  tail call void @rb_enc_raw_set(i64 noundef %.034.i428, ptr noundef nonnull %i.mn) #28
  %i.ni = load i64, ptr %.pre-phi590, align 8, !tbaa !11
  %i.nj = and i64 %i.ni, 8192
  %.not.i43.i429 = icmp eq i64 %i.nj, 0
  %i.nk = getelementptr i8, ptr %.pre-phi590, i64 24 ; 2 uses
  br i1 %.not.i43.i429, label %RSTRING_PTR.exit46.i432, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !20
  br label %RSTRING_PTR.exit46.i432

RSTRING_PTR.exit46.i432:                          ; preds = %bb.dj, %bb.dk
  %.sink672 = phi ptr [ %i.nl, %bb.dk ], [ %i.nk, %bb.dj ] ; 2 uses
  %i.nm = getelementptr i8, ptr %.pre-phi590, i64 16
  store i64 0, ptr %i.nm, align 8, !tbaa !14
  store i8 0, ptr %.sink672, align 1, !tbaa !20
  %i.nn = icmp sgt i32 %.0.val.i425, 1
  br i1 %i.nn, label %bb.dl, label %str_enc_new.exit441, !prof !34

bb.dl:                                            ; preds = %RSTRING_PTR.exit46.i432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.sink672, i8 noundef 0, i64 noundef %i.mp, i1 noundef false) #28
  br label %str_enc_new.exit441

str_enc_new.exit441:                              ; preds = %RSTRING_PTR.exit46.i432, %bb.dl
  tail call void @rb_enc_copy(i64 noundef %.034.i428, i64 noundef %2) #28
  %i.no = tail call i64 @rb_ary_push(i64 noundef %.3301, i64 noundef %.034.i428) #28 ; 0 uses
  %i.np = add nsw i64 %.0.i409, -1
  %i.nq = icmp samesign ugt i64 %.0.i409, 1
  br i1 %i.nq, label %.preheader28.i, label %.loopexit.i, !llvm.loop !162

.loopexit.i:                                      ; preds = %str_enc_new.exit441, %bb.dg
  %.2.i407 = phi i64 [ %.14492, %bb.dg ], [ 0, %str_enc_new.exit441 ]
  %i.nr = tail call fastcc i64 @str_subseq(i64 noundef %2, i64 noundef %i.mc, i64 noundef %i.mh) ; 2 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.nr, i64 noundef %2)
  %i.ns = tail call i64 @rb_ary_push(i64 noundef %.3301, i64 noundef %i.nr) #28 ; 0 uses
  %.pre585 = load i64, ptr %i.ah, align 8, !tbaa !11
  br label %split_string.exit

split_string.exit:                                ; preds = %bb.df, %.loopexit.i
  %i.nt = phi i64 [ %i.lz, %bb.df ], [ %.pre585, %.loopexit.i ] ; 2 uses
  %.020.i = phi i64 [ %i.mk, %bb.df ], [ %.2.i407, %.loopexit.i ]
  %i.nu = and i64 %i.nt, 8192
  %.not.i.i411 = icmp eq i64 %i.nu, 0
  br i1 %.not.i.i411, label %RSTRING_PTR.exit.i412, label %bb.dm

bb.dm:                                            ; preds = %split_string.exit
  %i.nv = load ptr, ptr %i.cf, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i412

RSTRING_PTR.exit.i412:                            ; preds = %bb.dm, %split_string.exit
  %i.nw = phi ptr [ %i.nv, %bb.dm ], [ %i.cf, %split_string.exit ]
  %.not.i413 = icmp eq ptr %i.nw, %i.ch
  br i1 %.not.i413, label %bb.dn, label %.split.us

bb.dn:                                            ; preds = %RSTRING_PTR.exit.i412
  %i.nx = load i64, ptr %i.ci, align 8, !tbaa !14
  %.not3.i414 = icmp eq i64 %i.nx, %i.cj
  br i1 %.not3.i414, label %.str_mod_check.exit415_crit_edge, label %.split.us

.str_mod_check.exit415_crit_edge:                 ; preds = %bb.dn
  %.pre586 = load i32, ptr %i.jp, align 4, !tbaa !159
  br label %str_mod_check.exit415

.split.us:                                        ; preds = %RSTRING_PTR.exit.i412, %bb.dn, %RSTRING_PTR.exit.i412.us, %bb.dd
  %i.ny = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ny, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit415:                            ; preds = %.str_mod_check.exit415_crit_edge, %.lr.ph.split
  %i.nz = phi i32 [ %i.ly, %.lr.ph.split ], [ %.pre586, %.str_mod_check.exit415_crit_edge ] ; 2 uses
  %i.oa = phi i64 [ %i.lz, %.lr.ph.split ], [ %i.nt, %.str_mod_check.exit415_crit_edge ]
  %.15 = phi i64 [ %.14492, %.lr.ph.split ], [ %.020.i, %.str_mod_check.exit415_crit_edge ] ; 2 uses
  %i.ob = add nuw nsw i64 %.0252493, 1            ; 2 uses
  %i.oc = sext i32 %i.nz to i64
  %i.od = icmp slt i64 %i.ob, %i.oc
  br i1 %i.od, label %.lr.ph.split, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %str_mod_check.exit415, %str_mod_check.exit415.us, %str_mod_check.exit400
  %.14.lcssa = phi i64 [ %.13, %str_mod_check.exit400 ], [ %.15.us, %str_mod_check.exit415.us ], [ %.15, %str_mod_check.exit415 ] ; 3 uses
  br i1 %i.hv, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %._crit_edge
  %i.oe = add i64 %.11495, 1                      ; 2 uses
  %.not340 = icmp slt i64 %i.oe, %i.ht
  br i1 %.not340, label %bb.dp, label %str_mod_check.exit395

bb.dp:                                            ; preds = %bb.co, %bb.cp, %._crit_edge, %bb.do
  %.16 = phi i64 [ %.14.lcssa, %._crit_edge ], [ %.14.lcssa, %bb.do ], [ %.12296494, %bb.cp ], [ %.12296494, %bb.co ] ; 2 uses
  %.12 = phi i64 [ %.11495, %._crit_edge ], [ %i.oe, %bb.do ], [ %.11495, %bb.cp ], [ %.11495, %bb.co ]
  %.8 = phi i64 [ %.2, %._crit_edge ], [ %.2, %bb.do ], [ %.6497, %bb.cp ], [ %.6497, %bb.co ] ; 2 uses
  %.3 = phi i64 [ %.2, %._crit_edge ], [ %.2, %bb.do ], [ %i.jc, %bb.cp ], [ %i.hu, %bb.co ] ; 2 uses
  %.1251 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.do ], [ 1, %bb.cp ], [ 1, %bb.co ]
  %.not342 = icmp eq i64 %i.hw, 0
  br i1 %.not342, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @rb_match_unbusy(i64 noundef %i.hw) #28
  tail call void @rb_backref_set(i64 noundef %i.hw) #28
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  %i.of = tail call i64 @rb_reg_search(i64 noundef %i.cc, i64 noundef %2, i64 noundef %.3, i32 noundef 0) #28
  %i.og = icmp sgt i64 %i.of, -1
  br i1 %i.og, label %bb.ca, label %str_mod_check.exit395, !llvm.loop !163

str_mod_check.exit395:                            ; preds = %bb.dr, %bb.do, %bb.ch
  %.17 = phi i64 [ %i.ig, %bb.ch ], [ %.14.lcssa, %bb.do ], [ %.16, %bb.dr ] ; 2 uses
  %.9 = phi i64 [ %.6497, %bb.ch ], [ %.2, %bb.do ], [ %.8, %bb.dr ] ; 2 uses
  %.not341 = icmp eq i64 %i.hw, 0
  br i1 %.not341, label %.loopexit, label %bb.ds

bb.ds:                                            ; preds = %str_mod_check.exit395
  tail call void @rb_match_unbusy(i64 noundef %i.hw) #28
  br label %.loopexit

.loopexit:                                        ; preds = %select.unfold447, %bb.ai, %bb.ap, %bb.bz, %.preheader467, %.preheader, %.thread, %str_mod_check.exit395, %bb.ds, %.critedge, %.critedge3
  %.4302 = phi i64 [ %.3301, %bb.ds ], [ %.1299, %.critedge ], [ %.2300, %.critedge3 ], [ %.0298, %.thread ], [ %.3301, %str_mod_check.exit395 ], [ %.0298, %.preheader ], [ %.0298, %bb.ai ], [ %.0298, %.preheader467 ], [ %.3301, %bb.bz ], [ %.0298, %bb.ap ], [ %.0298, %select.unfold447 ] ; 3 uses
  %.18 = phi i64 [ %.17, %bb.ds ], [ %.9293, %.critedge ], [ %.11295, %.critedge3 ], [ %.3287537, %.thread ], [ %.17, %str_mod_check.exit395 ], [ %spec.select, %.preheader ], [ %.1285546, %bb.ai ], [ %spec.select, %.preheader467 ], [ %spec.select, %bb.bz ], [ %.2286, %bb.ap ], [ %.5289, %select.unfold447 ]
  %.10 = phi i64 [ %.9, %bb.ds ], [ %i.gr, %.critedge ], [ %i.hn, %.critedge3 ], [ %.2259541, %.thread ], [ %.9, %str_mod_check.exit395 ], [ 0, %.preheader ], [ %.0257550, %bb.ai ], [ 0, %.preheader467 ], [ 0, %bb.bz ], [ %.1258, %bb.ap ], [ %.4, %select.unfold447 ] ; 3 uses
  %i.oh = load i64, ptr %i.ci, align 8, !tbaa !14 ; 3 uses
  %i.oi = icmp sgt i64 %i.oh, 0
  br i1 %i.oi, label %bb.dt, label %str_mod_check.exit420

bb.dt:                                            ; preds = %.loopexit
  %i.oj = icmp eq i64 %.1, 4
  br i1 %i.oj, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ok = icmp sgt i64 %i.oh, %.10
  %i.ol = icmp slt i32 %.0297, 0
  %or.cond5 = or i1 %i.ol, %i.ok
  br i1 %or.cond5, label %bb.dv, label %str_mod_check.exit420

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.om = sub i64 %i.oh, %.10
  %i.on = call fastcc i64 @split_string(i64 noundef %.4302, i64 noundef %2, i64 noundef %.10, i64 noundef %i.om, i64 noundef %.18) ; 0 uses
  %i.oo = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.op = and i64 %i.oo, 8192
  %.not.i.i416 = icmp eq i64 %i.op, 0
  br i1 %.not.i.i416, label %RSTRING_PTR.exit.i417, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oq = load ptr, ptr %i.cf, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i417

RSTRING_PTR.exit.i417:                            ; preds = %bb.dw, %bb.dv
  %i.or = phi ptr [ %i.oq, %bb.dw ], [ %i.cf, %bb.dv ]
  %.not.i418 = icmp eq ptr %i.or, %i.ch
  br i1 %.not.i418, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %RSTRING_PTR.exit.i417
  %i.os = load i64, ptr %i.ci, align 8, !tbaa !14
  %.not3.i419 = icmp eq i64 %i.os, %i.cj
  br i1 %.not3.i419, label %str_mod_check.exit420, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %RSTRING_PTR.exit.i417
  %i.ot = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ot, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit420:                            ; preds = %bb.dx, %bb.du, %.loopexit
  %.not354 = icmp eq i64 %.4302, 0
  %i.ou = select i1 %.not354, i64 %2, i64 %.4302
  br label %bb.dz

bb.dz:                                            ; preds = %bb.l, %bb.k, %str_mod_check.exit420, %bb.o, %bb.n
  %.0249 = phi i64 [ %i.ou, %str_mod_check.exit420 ], [ %2, %bb.n ], [ %i.ae, %bb.o ], [ %i.aa, %bb.l ], [ %2, %bb.k ]
  ret i64 %.0249
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_str_chomp_string(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = tail call fastcc i64 @chompped_length(i64 noundef %0, i64 noundef %1) ; 3 uses
  %.not = icmp slt i64 %i.d, %i.c
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @str_modify_keep_cr(i64 noundef %0)
  store i64 %i.d, ptr %i.b, align 8, !tbaa !14
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.g, %bb.b ]
  %i.j = getelementptr i8, ptr %i.i, i64 %i.d     ; 3 uses
  %i.k = and i64 %i.e, 532676608
  %switch.i.i = icmp samesign ult i64 %i.k, 12582912
  br i1 %switch.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %RSTRING_PTR.exit
  store i8 0, ptr %i.j, align 1, !tbaa !20
  br label %bb.h

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.l = trunc i64 %i.e to i32
  %i.m = lshr i32 %i.l, 22
  %i.n = and i32 %i.m, 127                        ; 2 uses
  %i.o = icmp eq i32 %i.n, 127
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.p, %bb.e ], [ %i.n, %bb.d ]
  %i.q = tail call ptr @rb_enc_from_index(i32 noundef %.0.i) #28
  %i.r = getelementptr i8, ptr %i.q, i64 20
  %.val = load i32, ptr %i.r, align 4, !tbaa !16  ; 2 uses
  store i8 0, ptr %i.j, align 1, !tbaa !20
  %i.s = icmp sgt i32 %.val, 1
  br i1 %i.s, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.t = zext nneg i32 %.val to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.j, i8 noundef 0, i64 noundef %i.t, i1 noundef false) #28
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %i.u = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.v = and i64 %i.u, 3145728
  %.not21 = icmp eq i64 %i.v, 1048576
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = and i64 %i.u, -3145729
  store i64 %i.w, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  %.0 = phi i64 [ 4, %bb.a ], [ %0, %bb.i ], [ %0, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @chompped_length(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  %i.c = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 13 uses
  %i.i = getelementptr i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14   ; 9 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.af, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.l = getelementptr i8, ptr %i.h, i64 %i.j     ; 11 uses
  %i.m = load i64, ptr @rb_default_rs, align 8, !tbaa !27
  %i.n = icmp eq i64 %1, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call fastcc i64 @smart_chomp(i64 noundef %0, ptr noundef %i.l, ptr noundef %i.h)
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @rb_enc_get(i64 noundef %0) #28 ; 6 uses
  %i.q = inttoptr i64 %1 to ptr                   ; 7 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = and i64 %i.r, 8192
  %.not.i94 = icmp eq i64 %i.s, 0
  %i.t = getelementptr i8, ptr %i.q, i64 24       ; 4 uses
  br i1 %.not.i94, label %RSTRING_PTR.exit95, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  br label %RSTRING_PTR.exit95

RSTRING_PTR.exit95:                               ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 3 uses
  %i.w = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14   ; 9 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.o

bb.g:                                             ; preds = %RSTRING_PTR.exit95
  %i.z = getelementptr i8, ptr %i.p, i64 20       ; 3 uses
  %.val93 = load i32, ptr %i.z, align 4, !tbaa !16
end_hunk_4
begin_hunk_5_@rb_str_match_m:bb.a
    i32 5, label %Check_Type.exit.i
  ]

.thread.i:                                        ; preds = %bb.c
  %i.k = tail call i64 @rb_check_convert_type_with_id(i64 noundef %i.b, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %Check_Type.exit.i

.thread12.i:                                      ; preds = %bb.d
  %i.m = tail call i64 @rb_check_convert_type_with_id(i64 noundef %i.b, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %.thread13.i, label %Check_Type.exit.i

.thread13.i:                                      ; preds = %.thread12.i
  %i.o = load i64, ptr %i.g, align 8, !tbaa !11
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 6
  br i1 %i.q, label %Check_Type.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, !prof !25

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %.thread13.i, %.thread.i
  tail call void @rb_unexpected_type(i64 noundef %i.b, i32 noundef 6) #29
  unreachable

Check_Type.exit.i:                                ; preds = %.thread13.i, %.thread12.i, %.thread.i, %bb.d
  %.011.i = phi i64 [ %i.b, %bb.d ], [ %i.m, %.thread12.i ], [ %i.k, %.thread.i ], [ 4, %.thread13.i ]
  %i.r = tail call i64 @rb_reg_regcomp(i64 noundef %.011.i) #28
  br label %get_pat.exit

get_pat.exit:                                     ; preds = %bb.d, %Check_Type.exit.i
  %.0.i = phi i64 [ %i.r, %Check_Type.exit.i ], [ %i.b, %bb.d ]
  %.pr.i = load i64, ptr @rb_str_match_m.rbimpl_id, align 8, !tbaa !27 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %get_pat.exit, %.lr.ph.i
  %i.s = tail call i64 @rb_intern2(ptr noundef nonnull @.str.73, i64 noundef 5) #28 ; 3 uses
  store i64 %i.s, ptr @rb_str_match_m.rbimpl_id, align 8, !tbaa !27
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !137

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %get_pat.exit
  %.lcssa.i = phi i64 [ %.pr.i, %get_pat.exit ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call i64 @rb_funcallv(i64 noundef %.0.i, i64 noundef %.lcssa.i, i32 noundef %0, ptr noundef nonnull %1) #28 ; 3 uses
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %rbimpl_intern_const.exit
  %i.v = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i64 @rb_yield(i64 noundef %i.t) #28
  br label %bb.g

bb.g:                                             ; preds = %rbimpl_intern_const.exit, %bb.e, %bb.f
  %.0 = phi i64 [ %i.w, %bb.f ], [ %i.t, %bb.e ], [ 4, %rbimpl_intern_const.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_match_m_p(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = add i32 %0, -3
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !27     ; 8 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 31
  switch i32 %i.j, label %.thread12.i [
    i32 6, label %get_pat.exit
    i32 5, label %Check_Type.exit.i
  ]

.thread.i:                                        ; preds = %rb_check_arity.exit
  %i.k = tail call i64 @rb_check_convert_type_with_id(i64 noundef %i.b, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %Check_Type.exit.i

.thread12.i:                                      ; preds = %bb.c
  %i.m = tail call i64 @rb_check_convert_type_with_id(i64 noundef %i.b, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %.thread13.i, label %Check_Type.exit.i

.thread13.i:                                      ; preds = %.thread12.i
  %i.o = load i64, ptr %i.g, align 8, !tbaa !11
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 6
  br i1 %i.q, label %Check_Type.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, !prof !25

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %.thread13.i, %.thread.i
  tail call void @rb_unexpected_type(i64 noundef %i.b, i32 noundef 6) #29
  unreachable

Check_Type.exit.i:                                ; preds = %.thread13.i, %.thread12.i, %.thread.i, %bb.c
  %.011.i = phi i64 [ %i.b, %bb.c ], [ %i.m, %.thread12.i ], [ %i.k, %.thread.i ], [ 4, %.thread13.i ]
  %i.r = tail call i64 @rb_reg_regcomp(i64 noundef %.011.i) #28
  br label %get_pat.exit

get_pat.exit:                                     ; preds = %bb.c, %Check_Type.exit.i
  %.0.i = phi i64 [ %i.r, %Check_Type.exit.i ], [ %i.b, %bb.c ]
  %i.s = icmp samesign ugt i32 %0, 1
  br i1 %i.s, label %bb.d, label %rb_num2long_inline.exit

bb.d:                                             ; preds = %get_pat.exit
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = ashr i64 %i.u, 1
  br label %rb_num2long_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.x = tail call i64 @rb_num2long(i64 noundef %i.u) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.e, %get_pat.exit
  %i.y = phi i64 [ 0, %get_pat.exit ], [ %i.w, %bb.e ], [ %i.x, %bb.f ]
  %i.z = tail call i64 @rb_reg_match_p(i64 noundef %.0.i, i64 noundef %2, i64 noundef %i.y) #28
  ret i64 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_succ_bang(i64 noundef returned %0) #1 {
bb.a:
  tail call void @rb_str_modify(i64 noundef %0)
  %i.a = tail call fastcc i64 @str_succ(i64 noundef %0) ; 0 uses
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_upto(i32 noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !27
  %.not11 = icmp eq i32 %0, 1
  br i1 %.not11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = and i64 %i.d, -5
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.i = phi i32 [ %i.g, %bb.b ], [ 0, %.preheader ]
  %.185.i.lcssa = phi i1 [ %i.h, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.j = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.k = tail call i64 @rb_frame_this_func() #28
  %i.l = tail call i64 @rb_id2sym(i64 noundef %i.k) #28
  %i.m = tail call i64 @rb_enumeratorize_with_size(i64 noundef %2, i64 noundef %i.l, i32 noundef %0, ptr noundef nonnull %1, ptr noundef null) #28
  br label %bb.g

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.n = tail call i64 @rb_str_upto_each(i64 noundef %2, i64 noundef %i.b, i32 noundef %i.i, ptr noundef nonnull @str_upto_i, i64 noundef 4) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ %2, %bb.f ], [ %i.m, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_index_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = inttoptr i64 %2 to ptr                   ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 22
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = icmp eq i32 %i.g, 127
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  %i.j = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 2 uses
  %i.k = icmp slt i32 %0, 1
  br i1 %i.k, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.l = load i64, ptr %1, align 8, !tbaa !27     ; 8 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !27
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = icmp eq i32 %0, 2
  br i1 %i.o, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.p = tail call fastcc i64 @str_strlen(i64 noundef %2, ptr noundef %i.j) ; 2 uses
  %i.q = trunc i64 %i.n to i1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.r = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.s = tail call i64 @rb_num2long(i64 noundef %i.n) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i37 = phi i64 [ %i.r, %bb.f ], [ %i.s, %bb.g ] ; 4 uses
  %i.t = icmp slt i64 %.0.i37, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.u = add i64 %.0.i37, %i.p                    ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.j, label %rb_scan_args_set.exit.thread

bb.i:                                             ; preds = %rb_num2long_inline.exit
  %i.w = icmp sgt i64 %.0.i37, %i.p
  br i1 %i.w, label %bb.j, label %rb_scan_args_set.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.x = icmp eq i64 %i.l, 0
  %i.y = and i64 %i.l, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %.critedge, label %rbimpl_RB_TYPE_P_fastpath.exit36

rbimpl_RB_TYPE_P_fastpath.exit36:                 ; preds = %bb.j
  %i.ab = inttoptr i64 %i.l to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 6
  br i1 %i.ae, label %bb.k, label %.critedge

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit36
  tail call void @rb_backref_set(i64 noundef 4) #28
  br label %.critedge

rb_scan_args_set.exit.thread:                     ; preds = %.preheader, %bb.i, %bb.h
  %.3 = phi i64 [ %.0.i37, %bb.i ], [ %i.u, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.af = icmp eq i64 %i.l, 0
  %i.ag = and i64 %i.l, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_scan_args_set.exit.thread
  %i.aj = inttoptr i64 %i.l to ptr
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = and i64 %i.ak, 31
  %i.am = icmp eq i64 %i.al, 6
  br i1 %i.am, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.an = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ao = and i64 %i.an, 8192
  %.not.i38 = icmp eq i64 %i.ao, 0
  %i.ap = getelementptr i8, ptr %i.c, i64 24      ; 4 uses
  br i1 %.not.i38, label %RSTRING_END.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.l, %bb.m
  %i.ar = phi ptr [ %i.aq, %bb.m ], [ %i.ap, %bb.l ] ; 4 uses
  %i.as = getelementptr i8, ptr %i.c, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at  ; 4 uses
  %i.av = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.3, ptr %i.a, align 8, !tbaa !27
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RSTRING_END.exit
  %i.aw = getelementptr i8, ptr %i.ar, i64 %.3
  br label %str_offset.exit

bb.o:                                             ; preds = %RSTRING_END.exit
  %i.ax = call fastcc ptr @str_nth_len(ptr noundef %i.ar, ptr noundef %i.au, ptr noundef %i.a, ptr noundef %i.j)
  br label %str_offset.exit

str_offset.exit:                                  ; preds = %bb.n, %bb.o
  %.010.i.i = phi ptr [ %i.aw, %bb.n ], [ %i.ax, %bb.o ] ; 3 uses
  %.not12.i.i = icmp eq ptr %.010.i.i, null
  %i.ay = icmp ugt ptr %.010.i.i, %i.au
  %spec.select.i.i = select i1 %i.ay, ptr %i.au, ptr %.010.i.i
  %.0.i.i40 = select i1 %.not12.i.i, ptr null, ptr %spec.select.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i41 = icmp eq ptr %.0.i.i40, null
  %i.az = ptrtoint ptr %i.ar to i64
  %.0.v.v.i = select i1 %.not.i41, ptr %i.au, ptr %.0.i.i40
  %.0.v.i = ptrtoint ptr %.0.v.v.i to i64
  %.0.i42 = sub i64 %.0.v.i, %i.az
  %i.ba = tail call i64 @rb_reg_search(i64 noundef %i.l, i64 noundef %2, i64 noundef %.0.i42, i32 noundef 0) #28
  %i.bb = icmp sgt i64 %i.ba, -1
  br i1 %i.bb, label %bb.p, label %.critedge

bb.p:                                             ; preds = %str_offset.exit
  %i.bc = tail call i64 @rb_backref_get() #28
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !156
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !27 ; 3 uses
  %i.bh = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  %i.bi = icmp slt i64 %i.bg, 0
  %or.cond.i43 = or i1 %i.bi, %i.bh
  br i1 %or.cond.i43, label %rb_str_sublen.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.bk = and i64 %i.bj, 8192
  %.not.i.i44 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i44, label %RSTRING_PTR.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.r, %bb.q
  %i.bm = phi ptr [ %i.bl, %bb.r ], [ %i.ap, %bb.q ] ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bg
  %i.bo = trunc i64 %i.bj to i32
  %i.bp = lshr i32 %i.bo, 22
  %i.bq = and i32 %i.bp, 127                      ; 2 uses
  %i.br = icmp eq i32 %i.bq, 127
  br i1 %i.br, label %bb.s, label %get_encoding.exit.i

bb.s:                                             ; preds = %RSTRING_PTR.exit.i
  %i.bs = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.s, %RSTRING_PTR.exit.i
  %.0.i.i.i = phi i32 [ %i.bs, %bb.s ], [ %i.bq, %RSTRING_PTR.exit.i ]
  %i.bt = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !11
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = and i32 %i.bv, 3145728
  %i.bx = tail call fastcc i64 @enc_strlen(ptr noundef %i.bm, ptr noundef %i.bn, ptr noundef %i.bt, i32 noundef %i.bw)
  br label %rb_str_sublen.exit

rb_str_sublen.exit:                               ; preds = %bb.p, %get_encoding.exit.i
  %.0.i45 = phi i64 [ %i.bx, %get_encoding.exit.i ], [ %i.bg, %bb.p ] ; 3 uses
  %i.by = add i64 %.0.i45, 4611686018427387904
  %or.cond.i46 = icmp sgt i64 %i.by, -1
  br i1 %or.cond.i46, label %bb.t, label %bb.u

bb.t:                                             ; preds = %rb_str_sublen.exit
  %i.bz = shl nsw i64 %.0.i45, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %.critedge

bb.u:                                             ; preds = %rb_str_sublen.exit
  %i.cb = tail call i64 @rb_int2big(i64 noundef %.0.i45) #28
  br label %.critedge

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rb_scan_args_set.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0. = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.cc = icmp eq i64 %.0., 0
  %i.cd = and i64 %.0., 7
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = or i1 %i.cc, %i.ce
  br i1 %i.cf, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cg = inttoptr i64 %.0. to ptr
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  %i.ci = and i64 %i.ch, 31
  %i.cj = icmp eq i64 %i.ci, 5
  br i1 %i.cj, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ck = tail call i64 @rb_convert_type_with_id(i64 noundef %.0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.ck, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.cl = phi i64 [ %.0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ck, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %i.cm = tail call fastcc i64 @rb_strseq_index(i64 noundef %2, i64 noundef %i.cl, i64 noundef %.3, i32 noundef 0) ; 3 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  br i1 %i.cn, label %bb.v, label %.critedge

bb.v:                                             ; preds = %rb_string_value.exit
  %i.co = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  br i1 %i.co, label %rb_str_sublen.exit55, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cq = and i64 %i.cp, 8192
  %.not.i.i50 = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr i8, ptr %i.c, i64 24      ; 2 uses
  br i1 %.not.i.i50, label %RSTRING_PTR.exit.i51, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i51

RSTRING_PTR.exit.i51:                             ; preds = %bb.x, %bb.w
  %i.ct = phi ptr [ %i.cs, %bb.x ], [ %i.cr, %bb.w ] ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cm
  %i.cv = trunc i64 %i.cp to i32
  %i.cw = lshr i32 %i.cv, 22
  %i.cx = and i32 %i.cw, 127                      ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 127
  br i1 %i.cy, label %bb.y, label %get_encoding.exit.i52

bb.y:                                             ; preds = %RSTRING_PTR.exit.i51
  %i.cz = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i52

get_encoding.exit.i52:                            ; preds = %bb.y, %RSTRING_PTR.exit.i51
  %.0.i.i.i53 = phi i32 [ %i.cz, %bb.y ], [ %i.cx, %RSTRING_PTR.exit.i51 ]
  %i.da = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i53) #28
  %i.db = load i64, ptr %i.c, align 8, !tbaa !11
  %i.dc = trunc i64 %i.db to i32
  %i.dd = and i32 %i.dc, 3145728
  %i.de = tail call fastcc i64 @enc_strlen(ptr noundef %i.ct, ptr noundef %i.cu, ptr noundef %i.da, i32 noundef %i.dd)
  br label %rb_str_sublen.exit55

rb_str_sublen.exit55:                             ; preds = %bb.v, %get_encoding.exit.i52
  %.0.i54 = phi i64 [ %i.de, %get_encoding.exit.i52 ], [ %i.cm, %bb.v ] ; 3 uses
  %i.df = add i64 %.0.i54, 4611686018427387904
  %or.cond.i56 = icmp sgt i64 %i.df, -1
  br i1 %or.cond.i56, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %rb_str_sublen.exit55
  %i.dg = shl nsw i64 %.0.i54, 1
  %i.dh = or disjoint i64 %i.dg, 1
  br label %.critedge

bb.aa:                                            ; preds = %rb_str_sublen.exit55
  %i.di = tail call i64 @rb_int2big(i64 noundef %.0.i54) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.aa, %bb.z, %bb.u, %bb.t, %rbimpl_RB_TYPE_P_fastpath.exit36, %bb.k, %str_offset.exit, %rb_string_value.exit
  %.1 = phi i64 [ %i.di, %bb.aa ], [ 4, %str_offset.exit ], [ %i.cb, %bb.u ], [ 4, %rb_string_value.exit ], [ 4, %bb.k ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit36 ], [ %i.ca, %bb.t ], [ %i.dh, %bb.z ], [ 4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_byteindex_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !27     ; 8 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27   ; 3 uses
  %i.f = icmp eq i32 %0, 2
  br i1 %i.f, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.g = inttoptr i64 %2 to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = trunc i64 %i.e to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.k = ashr i64 %i.e, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.l = tail call i64 @rb_num2long(i64 noundef %i.e) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i29 = phi i64 [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 4 uses
  %i.m = icmp slt i64 %.0.i29, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_num2long_inline.exit
  %i.n = add i64 %.0.i29, %i.i                    ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %rb_scan_args_set.exit.thread

bb.g:                                             ; preds = %rb_num2long_inline.exit
  %i.p = icmp sgt i64 %.0.i29, %i.i
  br i1 %i.p, label %bb.h, label %rb_scan_args_set.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.q = icmp eq i64 %i.c, 0
  %i.r = and i64 %i.c, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %.critedge, label %rbimpl_RB_TYPE_P_fastpath.exit28

rbimpl_RB_TYPE_P_fastpath.exit28:                 ; preds = %bb.h
  %i.u = inttoptr i64 %i.c to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = and i64 %i.v, 31
  %i.x = icmp eq i64 %i.w, 6
  br i1 %i.x, label %bb.i, label %.critedge

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit28
  tail call void @rb_backref_set(i64 noundef 4) #28
  br label %.critedge

rb_scan_args_set.exit.thread:                     ; preds = %.preheader, %bb.g, %bb.f
  %.3 = phi i64 [ %.0.i29, %bb.g ], [ %i.n, %bb.f ], [ 0, %.preheader ] ; 4 uses
  %i.y = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  br i1 %i.y, label %str_ensure_byte_pos.exit, label %bb.j

bb.j:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.z = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = and i64 %i.aa, 8192
  %.not.i.i = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr i8, ptr %i.z, i64 24      ; 2 uses
  br i1 %.not.i.i, label %RSTRING_END.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.k, %bb.j
  %i.ae = phi ptr [ %i.ad, %bb.k ], [ %i.ac, %bb.j ] ; 3 uses
  %i.af = getelementptr i8, ptr %i.z, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ae, i64 %.3    ; 2 uses
  %i.aj = tail call ptr @rb_enc_get(i64 noundef %2) #28
  %i.ak = tail call ptr @onigenc_get_left_adjust_char_head(ptr noundef %i.aj, ptr noundef %i.ae, ptr noundef %i.ai, ptr noundef %i.ah) #28
  %i.al = icmp eq ptr %i.ak, %i.ai
  br i1 %i.al, label %str_ensure_byte_pos.exit, label %bb.l

bb.l:                                             ; preds = %RSTRING_END.exit.i
  %i.am = load i64, ptr @rb_eIndexError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.am, ptr noundef nonnull @.str.226, i64 noundef %.3) #30
  unreachable

str_ensure_byte_pos.exit:                         ; preds = %rb_scan_args_set.exit.thread, %RSTRING_END.exit.i
  %i.an = icmp eq i64 %i.c, 0
  %i.ao = and i64 %i.c, 7
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %i.an, %i.ap
  br i1 %i.aq, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %str_ensure_byte_pos.exit
  %i.ar = inttoptr i64 %i.c to ptr
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = and i64 %i.as, 31
  %i.au = icmp eq i64 %i.at, 6
  br i1 %i.au, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.av = tail call i64 @rb_reg_search(i64 noundef %i.c, i64 noundef %2, i64 noundef %.3, i32 noundef 0) #28
  %i.aw = icmp sgt i64 %i.av, -1
  br i1 %i.aw, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ax = tail call i64 @rb_backref_get() #28
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !156
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !27 ; 3 uses
  %i.bc = add i64 %i.bb, 4611686018427387904
  %or.cond.i30 = icmp sgt i64 %i.bc, -1
  br i1 %or.cond.i30, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = shl nsw i64 %i.bb, 1
  %i.be = or disjoint i64 %i.bd, 1
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.bf = tail call i64 @rb_int2big(i64 noundef %i.bb) #28
  br label %.critedge

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %str_ensure_byte_pos.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0. = load volatile i64, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  %i.bg = icmp eq i64 %.0., 0
  %i.bh = and i64 %.0., 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bk = inttoptr i64 %.0. to ptr
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = and i64 %i.bl, 31
  %i.bn = icmp eq i64 %i.bm, 5
  br i1 %i.bn, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bo = tail call i64 @rb_convert_type_with_id(i64 noundef %.0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.bo, ptr %i.a, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.bp = phi i64 [ %.0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bo, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %i.bq = tail call fastcc i64 @rb_strseq_index(i64 noundef %2, i64 noundef %i.bp, i64 noundef %.3, i32 noundef 1) ; 4 uses
  %i.br = icmp sgt i64 %i.bq, -1
  br i1 %i.br, label %bb.q, label %.critedge

bb.q:                                             ; preds = %rb_string_value.exit
  %i.bs = icmp samesign ult i64 %i.bq, 4611686018427387904
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = shl nuw nsw i64 %i.bq, 1
  %i.bu = or disjoint i64 %i.bt, 1
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.bv = tail call i64 @rb_int2big(i64 noundef %i.bq) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.s, %bb.r, %bb.p, %bb.o, %rbimpl_RB_TYPE_P_fastpath.exit28, %bb.i, %bb.m, %rb_string_value.exit
  %.1 = phi i64 [ %i.bv, %bb.s ], [ 4, %bb.m ], [ %i.bf, %bb.p ], [ 4, %rb_string_value.exit ], [ 4, %bb.i ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit28 ], [ %i.be, %bb.o ], [ %i.bu, %bb.r ], [ 4, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_rindex_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = inttoptr i64 %2 to ptr                   ; 9 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 22
  %i.g = and i32 %i.f, 127                        ; 2 uses
  %i.h = icmp eq i32 %i.g, 127
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ %i.g, %bb.a ]
  %i.j = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 2 uses
  %i.k = tail call fastcc i64 @str_strlen(i64 noundef %2, ptr noundef %i.j) ; 3 uses
  %i.l = icmp slt i32 %0, 1
  br i1 %i.l, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.m = load i64, ptr %1, align 8, !tbaa !27     ; 8 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !27
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %i.p = icmp eq i32 %0, 2
  br i1 %i.p, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.q = trunc i64 %i.o to i1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.r = ashr i64 %i.o, 1
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.s = tail call i64 @rb_num2long(i64 noundef %i.o) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i37 = phi i64 [ %i.r, %bb.f ], [ %i.s, %bb.g ] ; 3 uses
  %i.t = icmp slt i64 %.0.i37, 0
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.u = add i64 %.0.i37, %i.k                    ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %i.m, 0
  %i.x = and i64 %i.m, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %rb_long2num_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit36

rbimpl_RB_TYPE_P_fastpath.exit36:                 ; preds = %bb.i
  %i.aa = inttoptr i64 %i.m to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 6
  br i1 %i.ad, label %bb.j, label %rb_long2num_inline.exit

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit36
  tail call void @rb_backref_set(i64 noundef 4) #28
  br label %rb_long2num_inline.exit

bb.k:                                             ; preds = %bb.h, %rb_num2long_inline.exit
  %.029 = phi i64 [ %i.u, %bb.h ], [ %.0.i37, %rb_num2long_inline.exit ]
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.029, i64 %i.k)
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader, %bb.k
  %.1 = phi i64 [ %spec.select, %bb.k ], [ %i.k, %.preheader ] ; 3 uses
  %i.ae = icmp eq i64 %i.m, 0
  %i.af = and i64 %i.m, 7
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = or i1 %i.ae, %i.ag
  br i1 %i.ah, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_scan_args_set.exit.thread
  %i.ai = inttoptr i64 %i.m to ptr
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = and i64 %i.aj, 31
  %i.al = icmp eq i64 %i.ak, 6
  br i1 %i.al, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.am = load i64, ptr %i.c, align 8, !tbaa !11
  %i.an = and i64 %i.am, 8192
  %.not.i38 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr i8, ptr %i.c, i64 24      ; 4 uses
  br i1 %.not.i38, label %RSTRING_END.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.l, %bb.m
  %i.aq = phi ptr [ %i.ap, %bb.m ], [ %i.ao, %bb.l ] ; 4 uses
  %i.ar = getelementptr i8, ptr %i.c, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !14
  %i.at = getelementptr i8, ptr %i.aq, i64 %i.as  ; 4 uses
  %i.au = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.1, ptr %i.a, align 8, !tbaa !27
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RSTRING_END.exit
  %i.av = getelementptr i8, ptr %i.aq, i64 %.1
  br label %str_offset.exit

bb.o:                                             ; preds = %RSTRING_END.exit
  %i.aw = call fastcc ptr @str_nth_len(ptr noundef %i.aq, ptr noundef %i.at, ptr noundef %i.a, ptr noundef %i.j)
  br label %str_offset.exit

str_offset.exit:                                  ; preds = %bb.n, %bb.o
  %.010.i.i = phi ptr [ %i.av, %bb.n ], [ %i.aw, %bb.o ] ; 3 uses
  %.not12.i.i = icmp eq ptr %.010.i.i, null
  %i.ax = icmp ugt ptr %.010.i.i, %i.at
  %spec.select.i.i = select i1 %i.ax, ptr %i.at, ptr %.010.i.i
  %.0.i.i40 = select i1 %.not12.i.i, ptr null, ptr %spec.select.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i41 = icmp eq ptr %.0.i.i40, null
  %i.ay = ptrtoint ptr %i.aq to i64
  %.0.v.v.i = select i1 %.not.i41, ptr %i.at, ptr %.0.i.i40
  %.0.v.i = ptrtoint ptr %.0.v.v.i to i64
  %.0.i42 = sub i64 %.0.v.i, %i.ay
  %i.az = tail call i64 @rb_reg_search(i64 noundef %i.m, i64 noundef %2, i64 noundef %.0.i42, i32 noundef 1) #28
  %i.ba = icmp sgt i64 %i.az, -1
  br i1 %i.ba, label %bb.p, label %rb_long2num_inline.exit

bb.p:                                             ; preds = %str_offset.exit
  %i.bb = tail call i64 @rb_backref_get() #28
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !156
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !27 ; 3 uses
  %i.bg = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  %i.bh = icmp slt i64 %i.bf, 0
  %or.cond.i43 = or i1 %i.bh, %i.bg
  br i1 %or.cond.i43, label %rb_str_sublen.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.bj = and i64 %i.bi, 8192
  %.not.i.i44 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i44, label %RSTRING_PTR.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %i.ao, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.r, %bb.q
  %i.bl = phi ptr [ %i.bk, %bb.r ], [ %i.ao, %bb.q ] ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bf
  %i.bn = trunc i64 %i.bi to i32
  %i.bo = lshr i32 %i.bn, 22
  %i.bp = and i32 %i.bo, 127                      ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 127
  br i1 %i.bq, label %bb.s, label %get_encoding.exit.i

bb.s:                                             ; preds = %RSTRING_PTR.exit.i
  %i.br = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.s, %RSTRING_PTR.exit.i
  %.0.i.i.i = phi i32 [ %i.br, %bb.s ], [ %i.bp, %RSTRING_PTR.exit.i ]
  %i.bs = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !11
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3145728
  %i.bw = tail call fastcc i64 @enc_strlen(ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef %i.bs, i32 noundef %i.bv)
  br label %rb_str_sublen.exit

rb_str_sublen.exit:                               ; preds = %bb.p, %get_encoding.exit.i
  %.0.i45 = phi i64 [ %i.bw, %get_encoding.exit.i ], [ %i.bf, %bb.p ] ; 3 uses
  %i.bx = add i64 %.0.i45, 4611686018427387904
  %or.cond.i46 = icmp sgt i64 %i.bx, -1
  br i1 %or.cond.i46, label %bb.t, label %bb.u

bb.t:                                             ; preds = %rb_str_sublen.exit
  %i.by = shl nsw i64 %.0.i45, 1
  %i.bz = or disjoint i64 %i.by, 1
  br label %rb_long2num_inline.exit

bb.u:                                             ; preds = %rb_str_sublen.exit
  %i.ca = tail call i64 @rb_int2big(i64 noundef %.0.i45) #28
  br label %rb_long2num_inline.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rb_scan_args_set.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0. = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.cb = icmp eq i64 %.0., 0
  %i.cc = and i64 %.0., 7
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = or i1 %i.cb, %i.cd
  br i1 %i.ce, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cf = inttoptr i64 %.0. to ptr
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !11
  %i.ch = and i64 %i.cg, 31
  %i.ci = icmp eq i64 %i.ch, 5
  br i1 %i.ci, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cj = tail call i64 @rb_convert_type_with_id(i64 noundef %.0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.cj, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ck = phi i64 [ %.0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.cj, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %i.cl = tail call fastcc i64 @rb_str_rindex(i64 noundef %2, i64 noundef %i.ck, i64 noundef %.1) ; 3 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  br i1 %i.cm, label %bb.v, label %rb_long2num_inline.exit

bb.v:                                             ; preds = %rb_string_value.exit
  %i.cn = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  br i1 %i.cn, label %rb_str_sublen.exit55, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cp = and i64 %i.co, 8192
  %.not.i.i50 = icmp eq i64 %i.cp, 0
  %i.cq = getelementptr i8, ptr %i.c, i64 24      ; 2 uses
  br i1 %.not.i.i50, label %RSTRING_PTR.exit.i51, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i51

RSTRING_PTR.exit.i51:                             ; preds = %bb.x, %bb.w
  %i.cs = phi ptr [ %i.cr, %bb.x ], [ %i.cq, %bb.w ] ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cl
  %i.cu = trunc i64 %i.co to i32
  %i.cv = lshr i32 %i.cu, 22
  %i.cw = and i32 %i.cv, 127                      ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 127
  br i1 %i.cx, label %bb.y, label %get_encoding.exit.i52

bb.y:                                             ; preds = %RSTRING_PTR.exit.i51
  %i.cy = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit.i52

get_encoding.exit.i52:                            ; preds = %bb.y, %RSTRING_PTR.exit.i51
  %.0.i.i.i53 = phi i32 [ %i.cy, %bb.y ], [ %i.cw, %RSTRING_PTR.exit.i51 ]
  %i.cz = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i53) #28
  %i.da = load i64, ptr %i.c, align 8, !tbaa !11
  %i.db = trunc i64 %i.da to i32
  %i.dc = and i32 %i.db, 3145728
  %i.dd = tail call fastcc i64 @enc_strlen(ptr noundef %i.cs, ptr noundef %i.ct, ptr noundef %i.cz, i32 noundef %i.dc)
  br label %rb_str_sublen.exit55

rb_str_sublen.exit55:                             ; preds = %bb.v, %get_encoding.exit.i52
  %.0.i54 = phi i64 [ %i.dd, %get_encoding.exit.i52 ], [ %i.cl, %bb.v ] ; 3 uses
  %i.de = add i64 %.0.i54, 4611686018427387904
  %or.cond.i56 = icmp sgt i64 %i.de, -1
  br i1 %or.cond.i56, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %rb_str_sublen.exit55
  %i.df = shl nsw i64 %.0.i54, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %rb_long2num_inline.exit

bb.aa:                                            ; preds = %rb_str_sublen.exit55
  %i.dh = tail call i64 @rb_int2big(i64 noundef %.0.i54) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.i, %bb.aa, %bb.z, %bb.u, %bb.t, %str_offset.exit, %rb_string_value.exit, %rbimpl_RB_TYPE_P_fastpath.exit36, %bb.j
  %.0 = phi i64 [ %i.ca, %bb.u ], [ %i.dh, %bb.aa ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit36 ], [ 4, %bb.j ], [ 4, %rb_string_value.exit ], [ 4, %str_offset.exit ], [ %i.bz, %bb.t ], [ %i.dg, %bb.z ], [ 4, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_byterindex_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = icmp slt i32 %0, 1
  br i1 %i.e, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !27     ; 8 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp eq i32 %0, 2
  br i1 %i.i, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.j = trunc i64 %i.h to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.k = ashr i64 %i.h, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.l = tail call i64 @rb_num2long(i64 noundef %i.h) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i29 = phi i64 [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 3 uses
  %i.m = icmp slt i64 %.0.i29, 0
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %rb_num2long_inline.exit
  %i.n = add i64 %.0.i29, %i.d                    ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i64 %i.f, 0
  %i.q = and i64 %i.f, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %rb_long2num_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit28

rbimpl_RB_TYPE_P_fastpath.exit28:                 ; preds = %bb.g
  %i.t = inttoptr i64 %i.f to ptr
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = and i64 %i.u, 31
  %i.w = icmp eq i64 %i.v, 6
  br i1 %i.w, label %bb.h, label %rb_long2num_inline.exit

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit28
  tail call void @rb_backref_set(i64 noundef 4) #28
  br label %rb_long2num_inline.exit

bb.i:                                             ; preds = %bb.f, %rb_num2long_inline.exit
  %.021 = phi i64 [ %i.n, %bb.f ], [ %.0.i29, %rb_num2long_inline.exit ]
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.021, i64 %i.d)
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader, %bb.i
  %.1 = phi i64 [ %spec.select, %bb.i ], [ %i.d, %.preheader ] ; 5 uses
  %i.x = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  br i1 %i.x, label %str_ensure_byte_pos.exit, label %bb.j

bb.j:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11
  %i.z = and i64 %i.y, 8192
  %.not.i.i = icmp eq i64 %i.z, 0
  %i.aa = getelementptr i8, ptr %i.b, i64 24      ; 2 uses
  br i1 %.not.i.i, label %RSTRING_END.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.k, %bb.j
  %i.ac = phi ptr [ %i.ab, %bb.k ], [ %i.aa, %bb.j ] ; 3 uses
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 %.1    ; 2 uses
  %i.ag = tail call ptr @rb_enc_get(i64 noundef %2) #28
  %i.ah = tail call ptr @onigenc_get_left_adjust_char_head(ptr noundef %i.ag, ptr noundef %i.ac, ptr noundef %i.af, ptr noundef %i.ae) #28
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %str_ensure_byte_pos.exit, label %bb.l

bb.l:                                             ; preds = %RSTRING_END.exit.i
  %i.aj = load i64, ptr @rb_eIndexError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.226, i64 noundef %.1) #30
  unreachable

str_ensure_byte_pos.exit:                         ; preds = %rb_scan_args_set.exit.thread, %RSTRING_END.exit.i
  %i.ak = icmp eq i64 %i.f, 0
  %i.al = and i64 %i.f, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  br i1 %i.an, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %str_ensure_byte_pos.exit
  %i.ao = inttoptr i64 %i.f to ptr
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11
  %i.aq = and i64 %i.ap, 31
  %i.ar = icmp eq i64 %i.aq, 6
  br i1 %i.ar, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.as = tail call i64 @rb_reg_search(i64 noundef %i.f, i64 noundef %2, i64 noundef %.1, i32 noundef 1) #28
  %i.at = icmp sgt i64 %i.as, -1
  br i1 %i.at, label %bb.n, label %rb_long2num_inline.exit

bb.n:                                             ; preds = %bb.m
  %i.au = tail call i64 @rb_backref_get() #28
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !156
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !27 ; 3 uses
  %i.az = add i64 %i.ay, 4611686018427387904
  %or.cond.i30 = icmp sgt i64 %i.az, -1
  br i1 %or.cond.i30, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = shl nsw i64 %i.ay, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %rb_long2num_inline.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = tail call i64 @rb_int2big(i64 noundef %i.ay) #28
  br label %rb_long2num_inline.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %str_ensure_byte_pos.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0. = load volatile i64, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  %i.bd = icmp eq i64 %.0., 0
  %i.be = and i64 %.0., 7
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = or i1 %i.bd, %i.bf
  br i1 %i.bg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bh = inttoptr i64 %.0. to ptr                ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11
  %i.bj = and i64 %i.bi, 31
  %i.bk = icmp eq i64 %i.bj, 5
  br i1 %i.bk, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bl = tail call i64 @rb_convert_type_with_id(i64 noundef %.0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.bl, ptr %i.a, align 8, !tbaa !27
  %.pre48 = inttoptr i64 %i.bl to ptr
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.pre-phi = phi ptr [ %i.bh, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre48, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 8 uses
  %i.bm = phi i64 [ %.0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bl, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 3 uses
  %i.bn = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %i.bm) #28
  %i.bo = load i64, ptr %.pre-phi, align 8, !tbaa !11 ; 2 uses
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %i.bq = and i32 %i.bp, 3145728                  ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.q, label %is_broken_string.exit.i

bb.q:                                             ; preds = %rb_string_value.exit
  %i.bs = lshr i32 %i.bp, 22
  %i.bt = and i32 %i.bs, 127                      ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 127
  br i1 %i.bu, label %bb.r, label %get_encoding.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call i32 @rb_enc_get_index(i64 noundef %i.bm) #28
  br label %get_encoding.exit.i.i.i

get_encoding.exit.i.i.i:                          ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.bv, %bb.r ], [ %i.bt, %bb.q ]
  %i.bw = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i.i) #28
  %i.bx = load i64, ptr %.pre-phi, align 8, !tbaa !11
  %i.by = and i64 %i.bx, 8192
  %.not.i.i.i.i.i = icmp eq i64 %i.by, 0
  %i.bz = getelementptr i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %enc_coderange_scan.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %get_encoding.exit.i.i.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i.i.i

enc_coderange_scan.exit.i.i.i:                    ; preds = %bb.s, %get_encoding.exit.i.i.i
  %i.cb = phi ptr [ %i.ca, %bb.s ], [ %i.bz, %get_encoding.exit.i.i.i ]
  %i.cc = getelementptr i8, ptr %.pre-phi, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.ce = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.cb, i64 noundef %i.cd, ptr noundef %i.bw) ; 2 uses
  %i.cf = load i64, ptr %.pre-phi, align 8, !tbaa !11
  %i.cg = and i64 %i.cf, -3145729
  %i.ch = zext nneg i32 %i.ce to i64
  %i.ci = or i64 %i.cg, %i.ch                     ; 2 uses
  store i64 %i.ci, ptr %.pre-phi, align 8, !tbaa !11
  br label %is_broken_string.exit.i

is_broken_string.exit.i:                          ; preds = %enc_coderange_scan.exit.i.i.i, %rb_string_value.exit
  %i.cj = phi i64 [ %i.ci, %enc_coderange_scan.exit.i.i.i ], [ %i.bo, %rb_string_value.exit ]
  %.0.i.i.i = phi i32 [ %i.ce, %enc_coderange_scan.exit.i.i.i ], [ %i.bq, %rb_string_value.exit ]
  %i.ck = icmp eq i32 %.0.i.i.i, 3145728
  br i1 %i.ck, label %rb_long2num_inline.exit, label %bb.t

bb.t:                                             ; preds = %is_broken_string.exit.i
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !14  ; 4 uses
  %i.cm = getelementptr i8, ptr %.pre-phi, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !14 ; 4 uses
  %i.co = icmp slt i64 %i.cl, %i.cn
  br i1 %i.co, label %rb_long2num_inline.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = sub i64 %i.cl, %.1
  %i.cq = icmp slt i64 %i.cp, %i.cn
  %i.cr = sub i64 %i.cl, %i.cn
  %spec.select.i33 = select i1 %i.cq, i64 %i.cr, i64 %.1 ; 3 uses
  %i.cs = icmp eq i64 %i.cl, 0
  br i1 %i.cs, label %rb_str_byterindex.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !11
  %i.cu = and i64 %i.ct, 8192
  %.not.i.i34 = icmp eq i64 %i.cu, 0
  %i.cv = getelementptr i8, ptr %i.b, i64 24      ; 2 uses
  br i1 %.not.i.i34, label %RSTRING_PTR.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.w, %bb.v
  %i.cx = phi ptr [ %i.cw, %bb.w ], [ %i.cv, %bb.v ] ; 2 uses
  %i.cy = icmp eq i64 %spec.select.i33, 0
  br i1 %i.cy, label %bb.x, label %bb.z

bb.x:                                             ; preds = %RSTRING_PTR.exit.i
  %i.cz = and i64 %i.cj, 8192
  %.not.i28.i = icmp eq i64 %i.cz, 0
  %i.da = getelementptr i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i28.i, label %RSTRING_PTR.exit29.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !20
  br label %RSTRING_PTR.exit29.i

RSTRING_PTR.exit29.i:                             ; preds = %bb.y, %bb.x
  %i.dc = phi ptr [ %i.db, %bb.y ], [ %i.da, %bb.x ]
  %bcmp.i = tail call i32 @bcmp(ptr %i.cx, ptr %i.dc, i64 %i.cn)
  %i.dd = icmp ne i32 %bcmp.i, 0
  %..i = sext i1 %i.dd to i64
  br label %rb_str_byterindex.exit

bb.z:                                             ; preds = %RSTRING_PTR.exit.i
  %i.de = getelementptr i8, ptr %i.cx, i64 %spec.select.i33
  %i.df = tail call fastcc i64 @str_rindex(i64 noundef %2, i64 noundef %i.bm, ptr noundef %i.de, ptr noundef %i.bn)
  br label %rb_str_byterindex.exit

rb_str_byterindex.exit:                           ; preds = %bb.u, %RSTRING_PTR.exit29.i, %bb.z
  %.0.i35 = phi i64 [ %i.df, %bb.z ], [ %..i, %RSTRING_PTR.exit29.i ], [ %spec.select.i33, %bb.u ] ; 4 uses
  %i.dg = icmp sgt i64 %.0.i35, -1
  br i1 %i.dg, label %bb.aa, label %rb_long2num_inline.exit

bb.aa:                                            ; preds = %rb_str_byterindex.exit
  %i.dh = icmp samesign ult i64 %.0.i35, 4611686018427387904
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.di = shl nuw nsw i64 %.0.i35, 1
  %i.dj = or disjoint i64 %i.di, 1
  br label %rb_long2num_inline.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dk = tail call i64 @rb_int2big(i64 noundef %.0.i35) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.t, %is_broken_string.exit.i, %bb.g, %bb.ac, %bb.ab, %bb.p, %bb.o, %bb.m, %rb_str_byterindex.exit, %rbimpl_RB_TYPE_P_fastpath.exit28, %bb.h
  %.0 = phi i64 [ 4, %bb.g ], [ %i.dk, %bb.ac ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit28 ], [ 4, %bb.h ], [ 4, %rb_str_byterindex.exit ], [ 4, %bb.m ], [ %i.bb, %bb.o ], [ %i.bc, %bb.p ], [ %i.dj, %bb.ab ], [ 4, %is_broken_string.exit.i ], [ 4, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_clear(i64 noundef returned %0) #1 {
bb.a:
  tail call fastcc void @str_discard(i64 noundef %0)
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not4.i = and i1 %i.a, %i.c
  %i.d = inttoptr i64 %0 to ptr                   ; 8 uses
  br i1 %.not4.i, label %bb.b, label %RB_FL_UNSET.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = and i64 %i.e, -1073754113
  store i64 %i.f, ptr %i.d, align 8, !tbaa !11
  br label %RB_FL_UNSET.exit

RB_FL_UNSET.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !14
  %i.h = load i64, ptr %i.d, align 8, !tbaa !11
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %RB_FL_UNSET.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  br label %RSTRING_PTR.exit
end_hunk_5
begin_hunk_6_@rb_str_end_with:bb.a
  %i.ak = icmp eq i32 %bcmp, 0
  br i1 %i.ak, label %select.unfold, label %bb.h

select.unfold:                                    ; preds = %RSTRING_PTR.exit25, %rb_string_value.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.h:                                             ; preds = %bb.c, %RSTRING_PTR.exit25, %RSTRING_PTR.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !209

.loopexit:                                        ; preds = %bb.h, %bb.a, %select.unfold
  %.2 = phi i64 [ 20, %select.unfold ], [ 0, %bb.a ], [ 0, %bb.h ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_scan(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !27
  %i.b = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = and i64 %i.c, 8192
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.b, i64 24       ; 4 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = tail call fastcc i64 @get_pat_quoted(i64 noundef %1, i32 noundef 1) ; 6 uses
  tail call fastcc void @mustnot_broken(i64 noundef %0)
  %i.k = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %str_mod_check.exit.preheader

str_mod_check.exit.preheader:                     ; preds = %RSTRING_PTR.exit
  %i.l = call fastcc i64 @scan_once(i64 noundef %0, i64 noundef %i.j, ptr noundef %i.a, i32 noundef 1) ; 2 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %str_mod_check.exit._crit_edge.thread, label %.lr.ph

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.n = tail call i64 @rb_ary_new() #28          ; 3 uses
  %i.o = call fastcc i64 @scan_once(i64 noundef %0, i64 noundef %i.j, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %._crit_edge.thread, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.c, %.lr.ph33
  %i.q = phi i64 [ %i.t, %.lr.ph33 ], [ %i.o, %bb.c ]
  %.02632 = phi i64 [ %i.r, %.lr.ph33 ], [ 0, %bb.c ] ; 2 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !27
  %i.s = tail call i64 @rb_ary_push(i64 noundef %i.n, i64 noundef %i.q) #28 ; 0 uses
  %i.t = call fastcc i64 @scan_once(i64 noundef %0, i64 noundef %i.j, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %._crit_edge, label %.lr.ph33, !llvm.loop !210

._crit_edge:                                      ; preds = %.lr.ph33
  %i.v = icmp sgt i64 %.02632, -1
  br i1 %i.v, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %._crit_edge
  %i.w = tail call fastcc i64 @rb_pat_search0(i64 noundef %i.j, i64 noundef %0, i64 noundef %.02632, i32 noundef 1, ptr noundef null) ; 0 uses
  br label %str_mod_check.exit._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  tail call void @rb_backref_set(i64 noundef 4) #28
  br label %str_mod_check.exit._crit_edge.thread

str_mod_check.exit:                               ; preds = %bb.f
  %i.x = call fastcc i64 @scan_once(i64 noundef %0, i64 noundef %i.j, ptr noundef %i.a, i32 noundef 1) ; 2 uses
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %str_mod_check.exit._crit_edge, label %.lr.ph, !llvm.loop !211

.lr.ph:                                           ; preds = %str_mod_check.exit.preheader, %str_mod_check.exit
  %i.z = phi i64 [ %i.x, %str_mod_check.exit ], [ %i.l, %str_mod_check.exit.preheader ]
  %.131 = phi i64 [ %i.aa, %str_mod_check.exit ], [ 0, %str_mod_check.exit.preheader ] ; 2 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !27
  %i.ab = tail call i64 @rb_yield(i64 noundef %i.z) #28 ; 0 uses
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ad = and i64 %i.ac, 8192
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.e, %.lr.ph
  %i.af = phi ptr [ %i.ae, %bb.e ], [ %i.e, %.lr.ph ]
  %.not.i29 = icmp eq ptr %i.af, %i.g
  br i1 %.not.i29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !14
  %.not3.i = icmp eq i64 %i.ag, %i.i
  br i1 %.not3.i, label %str_mod_check.exit, label %bb.g, !llvm.loop !211

bb.g:                                             ; preds = %bb.f, %RSTRING_PTR.exit.i
  %i.ah = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit._crit_edge:                    ; preds = %str_mod_check.exit
  %i.ai = icmp sgt i64 %.131, -1
  br i1 %i.ai, label %bb.h, label %str_mod_check.exit._crit_edge.thread

bb.h:                                             ; preds = %str_mod_check.exit._crit_edge
  %i.aj = tail call fastcc i64 @rb_pat_search0(i64 noundef %i.j, i64 noundef %0, i64 noundef %.131, i32 noundef 1, ptr noundef null) ; 0 uses
  br label %str_mod_check.exit._crit_edge.thread

str_mod_check.exit._crit_edge.thread:             ; preds = %str_mod_check.exit.preheader, %str_mod_check.exit._crit_edge, %bb.h, %bb.d, %._crit_edge.thread
  %.0 = phi i64 [ %i.n, %bb.d ], [ %i.n, %._crit_edge.thread ], [ %0, %bb.h ], [ %0, %str_mod_check.exit._crit_edge ], [ %0, %str_mod_check.exit.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_ljust(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = tail call fastcc i64 @rb_str_justify(i32 noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext 108)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_rjust(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = tail call fastcc i64 @rb_str_justify(i32 noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext 114)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_center(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = tail call fastcc i64 @rb_str_justify(i32 noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext 99)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_sub(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.b = tail call fastcc i64 @str_duplicate(i64 noundef %i.a, i64 noundef %2) ; 2 uses
  %i.c = tail call i64 @rb_str_sub_bang(i32 noundef %0, ptr noundef %1, i64 noundef %i.b) ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_gsub(i32 noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = tail call fastcc i64 @str_gsub(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_chop(i64 noundef %0) #1 {
bb.a:
  %i.a = tail call fastcc i64 @chopped_length(i64 noundef %0)
  %i.b = tail call fastcc i64 @str_subseq(i64 noundef %0, i64 noundef 0, i64 noundef %i.a) ; 2 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.b, i64 noundef %0)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_chomp(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = tail call fastcc i64 @chomp_rs(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.d = tail call fastcc i64 @str_duplicate(i64 noundef %i.c, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @chompped_length(i64 noundef %2, i64 noundef %i.a)
  %i.f = tail call fastcc i64 @str_subseq(i64 noundef %2, i64 noundef 0, i64 noundef %i.e) ; 2 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.f, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_strip(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [257 x i8], align 16              ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.b, label %get_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.l, %bb.b ], [ %i.j, %bb.a ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 4 uses
  %i.n = load i64, ptr %i.f, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %get_encoding.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %get_encoding.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %get_encoding.exit ] ; 10 uses
  %i.s = getelementptr i8, ptr %i.f, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  %i.u = icmp sgt i32 %0, 0
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 0, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 0, ptr %i.e, align 8, !tbaa !27
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %bb.e

bb.e:                                             ; preds = %rb_string_value.exit.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %rb_string_value.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  store i64 %i.w, ptr %i.b, align 8, !tbaa !27
  %.0..0..0..0..0..i = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.x = icmp eq i64 %.0..0..0..0..0..i, 0
  %i.y = and i64 %.0..0..0..0..0..i, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.e
  %i.ab = inttoptr i64 %.0..0..0..0..0..i to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 5
  br i1 %i.ae, label %rb_string_value.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.e
  %i.af = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0..0..0..i, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.af, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit.i

rb_string_value.exit.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %.0..0.10.i = phi i64 [ %.0..0..0..0..0..i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.af, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ] ; 2 uses
  %i.ag = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.10.i) #28
  %i.ah = icmp eq i64 %indvars.iv.i, 0
  %i.ai = zext i1 %i.ah to i32
  call fastcc void @tr_setup_table(i64 noundef %.0..0.10.i, ptr noundef nonnull %i.c, i32 noundef %i.ai, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tr_setup_table_multi.exit, label %bb.e, !llvm.loop !212

tr_setup_table_multi.exit:                        ; preds = %rb_string_value.exit.i
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.t    ; 2 uses
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %i.al = load i64, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.am = call fastcc i64 @lstrip_offset_table(ptr noundef %i.r, ptr noundef %i.aj, ptr noundef %i.m, ptr noundef %i.c, i64 noundef %i.ak, i64 noundef %i.al) ; 2 uses
  %i.an = getelementptr i8, ptr %i.r, i64 %i.am
  %i.ao = call fastcc i64 @rstrip_offset_table(i64 noundef %2, ptr noundef %i.an, ptr noundef %i.aj, ptr noundef %i.m, ptr noundef %i.c, i64 noundef %i.ak, i64 noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.j

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.t    ; 6 uses
  %i.aq = ptrtoint ptr %i.r to i64
  %.not.i41 = icmp ne ptr %i.r, null
  %.not28.i = icmp ult ptr %i.r, %i.ap
  %or.cond.i = and i1 %.not.i41, %.not28.i
  br i1 %or.cond.i, label %bb.g, label %lstrip_offset.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  br i1 %i.ar, label %.lr.ph41.i, label %.lr.ph.i

.lr.ph41.i:                                       ; preds = %bb.g, %.critedge2.i
  %.02440.i = phi ptr [ %i.ax, %.critedge2.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.as = load i8, ptr %.02440.i, align 1, !tbaa !20 ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.critedge2.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph41.i
  %i.au = zext i8 %i.as to i64
  %i.av = getelementptr i8, ptr @isspacetable, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %.not31.i = icmp eq i8 %i.aw, 0
  br i1 %.not31.i, label %.critedge.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.h, %.lr.ph41.i
  %i.ax = getelementptr i8, ptr %.02440.i, i64 1  ; 2 uses
  %exitcond.not.i42 = icmp eq ptr %i.ax, %i.ap
  br i1 %exitcond.not.i42, label %.critedge.i, label %.lr.ph41.i, !llvm.loop !213

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.139.i = phi ptr [ %i.bb, %bb.i ], [ %i.r, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ay = call i32 @rb_enc_codepoint_len(ptr noundef %.139.i, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a, ptr noundef %i.m) #28
  switch i32 %i.ay, label %.thread.i [
    i32 0, label %bb.i
    i32 32, label %bb.i
    i32 13, label %bb.i
    i32 12, label %bb.i
    i32 11, label %bb.i
    i32 10, label %bb.i
    i32 9, label %bb.i
  ]

.thread.i:                                        ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.critedge.i

bb.i:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.az = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %.139.i, i64 %i.ba ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bc = icmp ult ptr %i.bb, %i.ap
  br i1 %i.bc, label %.lr.ph.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %.critedge2.i, %bb.h, %.thread.i
  %.3.i = phi ptr [ %.139.i, %.thread.i ], [ %.02440.i, %bb.h ], [ %i.ap, %.critedge2.i ], [ %i.bb, %bb.i ]
  %i.bd = ptrtoint ptr %.3.i to i64
  %i.be = sub i64 %i.bd, %i.aq
  br label %lstrip_offset.exit

lstrip_offset.exit:                               ; preds = %bb.f, %.critedge.i
  %.0.i = phi i64 [ %i.be, %.critedge.i ], [ 0, %bb.f ] ; 2 uses
  %i.bf = getelementptr i8, ptr %i.r, i64 %.0.i
  %i.bg = call fastcc i64 @rstrip_offset(i64 noundef %2, ptr noundef %i.bf, ptr noundef %i.ap, ptr noundef %i.m)
  br label %bb.j

bb.j:                                             ; preds = %lstrip_offset.exit, %tr_setup_table_multi.exit
  %.039 = phi i64 [ %i.am, %tr_setup_table_multi.exit ], [ %.0.i, %lstrip_offset.exit ] ; 3 uses
  %.038 = phi i64 [ %i.ao, %tr_setup_table_multi.exit ], [ %i.bg, %lstrip_offset.exit ] ; 2 uses
  %i.bh = icmp slt i64 %.039, 1
  %i.bi = icmp slt i64 %.038, 1
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.bk = call fastcc i64 @str_duplicate(i64 noundef %i.bj, i64 noundef %2)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bl = add i64 %.039, %.038
  %i.bm = sub i64 %i.t, %i.bl
  %i.bn = call fastcc i64 @str_subseq(i64 noundef %2, i64 noundef %.039, i64 noundef %i.bm) ; 2 uses
  call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.bn, i64 noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i64 [ %i.bk, %bb.k ], [ %i.bn, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_lstrip(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [257 x i8], align 16              ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ] ; 8 uses
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14   ; 3 uses
  %i.n = icmp sgt i32 %0, 0
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 0, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 0, ptr %i.e, align 8, !tbaa !27
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %bb.d

bb.d:                                             ; preds = %rb_string_value.exit.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %rb_string_value.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  store i64 %i.p, ptr %i.b, align 8, !tbaa !27
  %.0..0..0..0..0..i = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.q = icmp eq i64 %.0..0..0..0..0..i, 0
  %i.r = and i64 %.0..0..0..0..0..i, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.d
  %i.u = inttoptr i64 %.0..0..0..0..0..i to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = and i64 %i.v, 31
  %i.x = icmp eq i64 %i.w, 5
  br i1 %i.x, label %rb_string_value.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.y = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0..0..0..i, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.y, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit.i

rb_string_value.exit.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %.0..0.10.i = phi i64 [ %.0..0..0..0..0..i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.y, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ] ; 2 uses
  %i.z = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.10.i) #28
  %i.aa = icmp eq i64 %indvars.iv.i, 0
  %i.ab = zext i1 %i.aa to i32
  call fastcc void @tr_setup_table(i64 noundef %.0..0.10.i, ptr noundef nonnull %i.c, i32 noundef %i.ab, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tr_setup_table_multi.exit, label %bb.d, !llvm.loop !212

tr_setup_table_multi.exit:                        ; preds = %rb_string_value.exit.i
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.m
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !11
  %i.ae = trunc i64 %i.ad to i32
  %i.af = lshr i32 %i.ae, 22
  %i.ag = and i32 %i.af, 127                      ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 127
  br i1 %i.ah, label %bb.e, label %get_encoding.exit

bb.e:                                             ; preds = %tr_setup_table_multi.exit
  %i.ai = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %tr_setup_table_multi.exit, %bb.e
  %.0.i.i = phi i32 [ %i.ai, %bb.e ], [ %i.ag, %tr_setup_table_multi.exit ]
  %i.aj = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !27
  %i.al = load i64, ptr %i.e, align 8, !tbaa !27
  %i.am = call fastcc i64 @lstrip_offset_table(ptr noundef %i.k, ptr noundef %i.ac, ptr noundef %i.aj, ptr noundef %i.c, i64 noundef %i.ak, i64 noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %lstrip_offset.exit

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.an = getelementptr i8, ptr %i.k, i64 %i.m    ; 5 uses
  %i.ao = trunc i64 %i.g to i32
  %i.ap = lshr i32 %i.ao, 22
  %i.aq = and i32 %i.ap, 127                      ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 127
  br i1 %i.ar, label %bb.g, label %get_encoding.exit25
end_hunk_6
begin_hunk_7_@rb_str_sub_bang:bb.a

RSTRING_PTR.exit197:                              ; preds = %RSTRING_PTR.exit195, %bb.aq
  %i.hs = phi ptr [ %i.hr, %bb.aq ], [ %i.ha, %RSTRING_PTR.exit195 ]
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.ho  ; 3 uses
  %i.hu = and i64 %i.hp, 532676608
  %switch.i.i198 = icmp samesign ult i64 %i.hu, 12582912
  br i1 %switch.i.i198, label %.thread248, label %bb.ar

.thread248:                                       ; preds = %RSTRING_PTR.exit197
  store i8 0, ptr %i.ht, align 1, !tbaa !20
  br label %bb.av

bb.ar:                                            ; preds = %RSTRING_PTR.exit197
  %i.hv = trunc i64 %i.hp to i32
  %i.hw = lshr i32 %i.hv, 22
  %i.hx = and i32 %i.hw, 127                      ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 127
  br i1 %i.hy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hz = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i199 = phi i32 [ %i.hz, %bb.as ], [ %i.hx, %bb.ar ]
  %i.ia = tail call ptr @rb_enc_from_index(i32 noundef %.0.i199) #28
  %i.ib = getelementptr i8, ptr %i.ia, i64 20
  %.val = load i32, ptr %i.ib, align 4, !tbaa !16 ; 2 uses
  store i8 0, ptr %i.ht, align 1, !tbaa !20
  %i.ic = icmp sgt i32 %.val, 1
  br i1 %i.ic, label %bb.au, label %bb.av, !prof !21

bb.au:                                            ; preds = %bb.at
  %i.id = zext nneg i32 %.val to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ht, i8 noundef 0, i64 noundef %i.id, i1 noundef false) #28
  br label %bb.av

bb.av:                                            ; preds = %.thread248, %bb.au, %bb.at
  %i.ie = load i64, ptr %i.w, align 8, !tbaa !11
  %i.if = and i64 %i.ie, -3145729
  %i.ig = zext nneg i32 %.1 to i64
  %i.ih = or i64 %i.if, %i.ig
  store i64 %i.ih, ptr %i.w, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %i.b, ptr %i.c, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #28, !srcloc !215
  %i.ii = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ij = load volatile i64, ptr %i.ii, align 8, !tbaa !27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.aw

bb.aw:                                            ; preds = %str_modifiable.exit, %bb.av
  %.0 = phi i64 [ %2, %bb.av ], [ 4, %str_modifiable.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_gsub_bang(i32 noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  tail call fastcc void @str_modify_keep_cr(i64 noundef %2)
  %i.a = tail call fastcc i64 @str_gsub(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_chop_bang(i64 noundef %0) #1 {
bb.a:
  tail call fastcc void @str_modify_keep_cr(i64 noundef %0)
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @chopped_length(i64 noundef %0) ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !14
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  %i.k = getelementptr i8, ptr %i.j, i64 %i.e     ; 3 uses
  %i.l = and i64 %i.f, 532676608
  %switch.i.i = icmp samesign ult i64 %i.l, 12582912
  br i1 %switch.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %RSTRING_PTR.exit
  store i8 0, ptr %i.k, align 1, !tbaa !20
  br label %bb.h

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.m = trunc i64 %i.f to i32
  %i.n = lshr i32 %i.m, 22
  %i.o = and i32 %i.n, 127                        ; 2 uses
  %i.p = icmp eq i32 %i.o, 127
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.o, %bb.d ]
  %i.r = tail call ptr @rb_enc_from_index(i32 noundef %.0.i) #28
  %i.s = getelementptr i8, ptr %i.r, i64 20
  %.val = load i32, ptr %i.s, align 4, !tbaa !16  ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !20
  %i.t = icmp sgt i32 %.val, 1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %.val to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.k, i8 noundef 0, i64 noundef %i.u, i1 noundef false) #28
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %i.v = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.w = and i64 %i.v, 3145728
  %.not = icmp eq i64 %i.w, 1048576
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.v, -3145729
  store i64 %i.x, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.h, %bb.i
  %.0 = phi i64 [ %0, %bb.h ], [ %0, %bb.i ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_chomp_bang(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = and i64 %i.b, 575488
  %.not8.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i, label %str_modifiable.exit, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not11.i = and i1 %i.d, %i.f
  %i.g = and i64 %i.b, 31
  %i.h = icmp eq i64 %i.g, 5
  %or.cond.i = and i1 %.not11.i, %i.h
  %i.i = and i64 %i.b, 49152
  %i.j = icmp ne i64 %i.i, 0
  %or.cond7.i = and i1 %i.j, %or.cond.i
  br i1 %or.cond7.i, label %bb.c, label %CHILLED_STRING_P.exit.thread.i

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @CHILLED_STRING_MUTATED(i64 noundef %2), !inline_history !91
  br label %CHILLED_STRING_P.exit.thread.i

CHILLED_STRING_P.exit.thread.i:                   ; preds = %bb.c, %bb.b
  tail call fastcc void @rb_check_lockedtmp(i64 noundef %2), !inline_history !91
  tail call fastcc void @rb_check_frozen_inline(i64 noundef %2) #34, !inline_history !91
  br label %str_modifiable.exit

str_modifiable.exit:                              ; preds = %bb.a, %CHILLED_STRING_P.exit.thread.i
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14
  %i.m = icmp eq i64 %i.l, 0
  %i.n = icmp slt i32 %0, 2
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %str_modifiable.exit
  %i.o = tail call fastcc i64 @chomp_rs(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 @rb_str_chomp_string(i64 noundef %2, i64 noundef %i.o)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %str_modifiable.exit, %bb.e
  %.0 = phi i64 [ %i.q, %bb.e ], [ 4, %str_modifiable.exit ], [ 4, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_strip_bang(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [257 x i8], align 16              ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  tail call fastcc void @str_modify_keep_cr(i64 noundef %2)
  %i.f = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.b, label %get_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.l, %bb.b ], [ %i.j, %bb.a ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 5 uses
  %i.n = load i64, ptr %i.f, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %get_encoding.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %get_encoding.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %get_encoding.exit ] ; 13 uses
  %i.s = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  %i.u = icmp sgt i32 %0, 0
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 0, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 0, ptr %i.e, align 8, !tbaa !27
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %bb.e

bb.e:                                             ; preds = %rb_string_value.exit.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %rb_string_value.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  store i64 %i.w, ptr %i.b, align 8, !tbaa !27
  %.0..0..0..0..0..i = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.x = icmp eq i64 %.0..0..0..0..0..i, 0
  %i.y = and i64 %.0..0..0..0..0..i, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.e
  %i.ab = inttoptr i64 %.0..0..0..0..0..i to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 5
  br i1 %i.ae, label %rb_string_value.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.e
  %i.af = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0..0..0..i, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.af, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit.i

rb_string_value.exit.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %.0..0.10.i = phi i64 [ %.0..0..0..0..0..i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.af, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ] ; 2 uses
  %i.ag = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.10.i) #28
  %i.ah = icmp eq i64 %indvars.iv.i, 0
  %i.ai = zext i1 %i.ah to i32
  call fastcc void @tr_setup_table(i64 noundef %.0..0.10.i, ptr noundef nonnull %i.c, i32 noundef %i.ai, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tr_setup_table_multi.exit, label %bb.e, !llvm.loop !212

tr_setup_table_multi.exit:                        ; preds = %rb_string_value.exit.i
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.t    ; 2 uses
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %i.al = load i64, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.am = call fastcc i64 @lstrip_offset_table(ptr noundef %i.r, ptr noundef %i.aj, ptr noundef %i.m, ptr noundef %i.c, i64 noundef %i.ak, i64 noundef %i.al) ; 2 uses
  %i.an = getelementptr i8, ptr %i.r, i64 %i.am
  %i.ao = call fastcc i64 @rstrip_offset_table(i64 noundef %2, ptr noundef %i.an, ptr noundef %i.aj, ptr noundef %i.m, ptr noundef %i.c, i64 noundef %i.ak, i64 noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.j

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.t    ; 6 uses
  %i.aq = ptrtoint ptr %i.r to i64
  %.not.i57 = icmp ne ptr %i.r, null
  %.not28.i = icmp ult ptr %i.r, %i.ap
  %or.cond.i = and i1 %.not.i57, %.not28.i
  br i1 %or.cond.i, label %bb.g, label %lstrip_offset.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %2)
  br i1 %i.ar, label %.lr.ph41.i, label %.lr.ph.i

.lr.ph41.i:                                       ; preds = %bb.g, %.critedge2.i
  %.02440.i = phi ptr [ %i.ax, %.critedge2.i ], [ %i.r, %bb.g ] ; 3 uses
  %i.as = load i8, ptr %.02440.i, align 1, !tbaa !20 ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.critedge2.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph41.i
  %i.au = zext i8 %i.as to i64
  %i.av = getelementptr i8, ptr @isspacetable, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !20
  %.not31.i = icmp eq i8 %i.aw, 0
  br i1 %.not31.i, label %.critedge.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.h, %.lr.ph41.i
  %i.ax = getelementptr i8, ptr %.02440.i, i64 1  ; 2 uses
  %exitcond.not.i58 = icmp eq ptr %i.ax, %i.ap
  br i1 %exitcond.not.i58, label %.critedge.i, label %.lr.ph41.i, !llvm.loop !213

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.139.i = phi ptr [ %i.bb, %bb.i ], [ %i.r, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ay = call i32 @rb_enc_codepoint_len(ptr noundef %.139.i, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a, ptr noundef %i.m) #28
  switch i32 %i.ay, label %.thread.i [
    i32 0, label %bb.i
    i32 32, label %bb.i
    i32 13, label %bb.i
    i32 12, label %bb.i
    i32 11, label %bb.i
    i32 10, label %bb.i
    i32 9, label %bb.i
  ]

.thread.i:                                        ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.critedge.i

bb.i:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.az = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %.139.i, i64 %i.ba ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bc = icmp ult ptr %i.bb, %i.ap
  br i1 %i.bc, label %.lr.ph.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.i, %.critedge2.i, %bb.h, %.thread.i
  %.3.i = phi ptr [ %.139.i, %.thread.i ], [ %.02440.i, %bb.h ], [ %i.ap, %.critedge2.i ], [ %i.bb, %bb.i ]
  %i.bd = ptrtoint ptr %.3.i to i64
  %i.be = sub i64 %i.bd, %i.aq
  br label %lstrip_offset.exit

lstrip_offset.exit:                               ; preds = %bb.f, %.critedge.i
  %.0.i = phi i64 [ %i.be, %.critedge.i ], [ 0, %bb.f ] ; 2 uses
  %i.bf = getelementptr i8, ptr %i.r, i64 %.0.i
  %i.bg = call fastcc i64 @rstrip_offset(i64 noundef %2, ptr noundef %i.bf, ptr noundef %i.ap, ptr noundef %i.m)
  br label %bb.j

bb.j:                                             ; preds = %lstrip_offset.exit, %tr_setup_table_multi.exit
  %.054 = phi i64 [ %i.ao, %tr_setup_table_multi.exit ], [ %i.bg, %lstrip_offset.exit ] ; 2 uses
  %.052 = phi i64 [ %i.am, %tr_setup_table_multi.exit ], [ %.0.i, %lstrip_offset.exit ] ; 3 uses
  %i.bh = icmp sgt i64 %.052, 0                   ; 2 uses
  %i.bi = icmp sgt i64 %.054, 0
  %or.cond = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bj = sub i64 %i.t, %.054                     ; 2 uses
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = sub i64 %i.bj, %.052                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.r, i64 %.052
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.r, ptr noundef nonnull align 1 %i.bl, i64 noundef %i.bk, i1 noundef false) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.053 = phi i64 [ %i.bk, %bb.l ], [ %i.bj, %bb.k ] ; 2 uses
  store i64 %.053, ptr %i.s, align 8, !tbaa !14
  %i.bm = getelementptr i8, ptr %i.r, i64 %.053   ; 2 uses
  %i.bn = getelementptr i8, ptr %i.m, i64 20
  %.val = load i32, ptr %i.bn, align 4, !tbaa !16 ; 2 uses
  store i8 0, ptr %i.bm, align 1, !tbaa !20
  %i.bo = icmp sgt i32 %.val, 1
  br i1 %i.bo, label %bb.n, label %bb.o, !prof !34

bb.n:                                             ; preds = %bb.m
  %i.bp = zext nneg i32 %.val to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bm, i8 noundef 0, i64 noundef %i.bp, i1 noundef false) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.m, %bb.n
  %.0 = phi i64 [ %2, %bb.m ], [ %2, %bb.n ], [ 4, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_str_lstrip_bang(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [257 x i8], align 16              ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  tail call fastcc void @str_modify_keep_cr(i64 noundef %2)
  %i.f = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.b, label %get_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %2) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.l, %bb.b ], [ %i.j, %bb.a ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 3 uses
  %i.n = load i64, ptr %i.f, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %get_encoding.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %get_encoding.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %get_encoding.exit ] ; 11 uses
  %i.s = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  %i.u = icmp sgt i32 %0, 0
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 0, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 0, ptr %i.e, align 8, !tbaa !27
  %wide.trip.count.i = zext nneg i32 %0 to i64
  br label %bb.e

bb.e:                                             ; preds = %rb_string_value.exit.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %rb_string_value.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  store i64 %i.w, ptr %i.b, align 8, !tbaa !27
  %.0..0..0..0..0..i = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.x = icmp eq i64 %.0..0..0..0..0..i, 0
  %i.y = and i64 %.0..0..0..0..0..i, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.e
  %i.ab = inttoptr i64 %.0..0..0..0..0..i to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 5
  br i1 %i.ae, label %rb_string_value.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.e
  %i.af = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0..0..0..i, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.af, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit.i

rb_string_value.exit.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %.0..0.10.i = phi i64 [ %.0..0..0..0..0..i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.af, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ] ; 2 uses
  %i.ag = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.10.i) #28
  %i.ah = icmp eq i64 %indvars.iv.i, 0
  %i.ai = zext i1 %i.ah to i32
  call fastcc void @tr_setup_table(i64 noundef %.0..0.10.i, ptr noundef nonnull %i.c, i32 noundef %i.ai, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tr_setup_table_multi.exit, label %bb.e, !llvm.loop !212

tr_setup_table_multi.exit:                        ; preds = %rb_string_value.exit.i
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.t
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !27
end_hunk_7
begin_hunk_8_@rb_str_count:bb.a
  br i1 %.not.i72, label %RSTRING_PTR.exit73, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20
  br label %RSTRING_PTR.exit73

RSTRING_PTR.exit73:                               ; preds = %bb.k, %bb.l
  %i.bk = phi ptr [ %i.bj, %bb.l ], [ %i.bi, %bb.k ] ; 7 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %.not64 = icmp eq ptr %i.bk, null
  br i1 %.not64, label %bb.q, label %bb.m

bb.m:                                             ; preds = %RSTRING_PTR.exit73
  %i.bm = getelementptr i8, ptr %i.ai, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14 ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i72, label %RSTRING_END.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.n, %bb.o
  %i.bq = phi ptr [ %i.bp, %bb.o ], [ %i.bi, %bb.n ] ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bn
  %i.bs = icmp ult ptr %i.bk, %i.br
  br i1 %i.bs, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %RSTRING_END.exit
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = trunc i32 %i.bf to i8                   ; 2 uses
  %i.bv = add i64 %i.bn, %i.bt
  %i.bw = sub i64 %i.bv, %i.bl                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bw
  %min.iters.check = icmp ult i64 %i.bw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bk, i64 %n.vec
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.bu, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %vec.phi154 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.bk, i64 %index ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load155 = load <2 x i8>, ptr %i.by, align 1, !tbaa !20
  %i.bz = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.ca = icmp eq <2 x i8> %wide.load155, %broadcast.splat
  %i.cb = zext <2 x i1> %i.bz to <2 x i64>
  %i.cc = zext <2 x i1> %i.ca to <2 x i64>
  %i.cd = add <2 x i64> %vec.phi, %i.cb           ; 2 uses
  %i.ce = add <2 x i64> %vec.phi154, %i.cc        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ce, %i.cd
  %i.cg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.054111.ph = phi i64 [ 0, %.lr.ph ], [ %i.cg, %middle.block ]
  %.057110.ph = phi ptr [ %i.bk, %.lr.ph ], [ %i.bx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.054111 = phi i64 [ %spec.select, %scalar.ph ], [ %.054111.ph, %scalar.ph.preheader ]
  %.057110 = phi ptr [ %i.ch, %scalar.ph ], [ %.057110.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ch = getelementptr i8, ptr %.057110, i64 1   ; 2 uses
  %i.ci = load i8, ptr %.057110, align 1, !tbaa !20
  %i.cj = icmp eq i8 %i.ci, %i.bu
  %i.ck = zext i1 %i.cj to i64
  %spec.select = add i64 %.054111, %i.ck          ; 2 uses
  %exitcond.not = icmp eq ptr %i.ch, %scevgep
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !218

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.cg, %middle.block ], [ %spec.select, %scalar.ph ] ; 3 uses
  %i.cl = icmp ult i64 %spec.select.lcssa, 4611686018427387904
  br i1 %i.cl, label %._crit_edge.thread, label %bb.p

._crit_edge.thread:                               ; preds = %RSTRING_END.exit, %._crit_edge
  %.054.lcssa144 = phi i64 [ %spec.select.lcssa, %._crit_edge ], [ 0, %RSTRING_END.exit ]
  %i.cm = shl nuw nsw i64 %.054.lcssa144, 1
  %i.cn = or disjoint i64 %i.cm, 1
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.co = call i64 @rb_ull2inum(i64 noundef %spec.select.lcssa) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %RSTRING_PTR.exit73, %._crit_edge.thread, %bb.p
  %.051 = phi i64 [ 1, %RSTRING_PTR.exit73 ], [ 1, %bb.m ], [ %i.cn, %._crit_edge.thread ], [ %i.co, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %rb_ull2num_inline.exit91

.thread.thread:                                   ; preds = %bb.d, %bb.c, %rb_enc_asciicompat.exit, %RSTRING_PTR.exit, %is_broken_string.exit
  call fastcc void @tr_setup_table(i64 noundef %.0..0.96, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.r)
  br label %._crit_edge114

.lr.ph113.preheader:                              ; preds = %rb_string_value.exit
  call fastcc void @tr_setup_table(i64 noundef %.0..0.96, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.r)
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %rb_string_value.exit79
  %indvars.iv = phi i64 [ 1, %.lr.ph113.preheader ], [ %indvars.iv.next, %rb_string_value.exit79 ] ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !27
  store i64 %i.cq, ptr %i.d, align 8, !tbaa !27
  %.0..0..0.92 = load volatile i64, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  %i.cr = icmp eq i64 %.0..0..0.92, 0
  %i.cs = and i64 %.0..0..0.92, 7
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = or i1 %i.cr, %i.ct
  br i1 %i.cu, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i77, label %rbimpl_RB_TYPE_P_fastpath.exit.i76

rbimpl_RB_TYPE_P_fastpath.exit.i76:               ; preds = %.lr.ph113
  %i.cv = inttoptr i64 %.0..0..0.92 to ptr
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.cx = and i64 %i.cw, 31
  %i.cy = icmp eq i64 %i.cx, 5
  br i1 %i.cy, label %rb_string_value.exit79, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i77

rbimpl_RB_TYPE_P_fastpath.exit.thread.i77:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i76, %.lr.ph113
  %i.cz = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0.92, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.cz, ptr %i.d, align 8, !tbaa !27
  br label %rb_string_value.exit79

rb_string_value.exit79:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i76, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i77
  %.0..0.97 = phi i64 [ %.0..0..0.92, %rbimpl_RB_TYPE_P_fastpath.exit.i76 ], [ %i.cz, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i77 ] ; 2 uses
  %i.da = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.97) #28 ; 2 uses
  call fastcc void @tr_setup_table(i64 noundef %.0..0.97, ptr noundef %i.a, i32 noundef 0, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.da)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond125.not, label %._crit_edge114, label %.lr.ph113, !llvm.loop !219

._crit_edge114:                                   ; preds = %rb_string_value.exit79, %.thread.thread
  %.053.lcssa = phi ptr [ %i.r, %.thread.thread ], [ %i.da, %rb_string_value.exit79 ] ; 4 uses
  %i.db = inttoptr i64 %2 to ptr                  ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !11
  %i.dd = and i64 %i.dc, 8192
  %.not.i80 = icmp eq i64 %i.dd, 0                ; 2 uses
  %i.de = getelementptr i8, ptr %i.db, i64 24     ; 4 uses
  br i1 %.not.i80, label %RSTRING_PTR.exit81, label %bb.r

bb.r:                                             ; preds = %._crit_edge114
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !20
  br label %RSTRING_PTR.exit81

RSTRING_PTR.exit81:                               ; preds = %._crit_edge114, %bb.r
  %i.dg = phi ptr [ %i.df, %bb.r ], [ %i.de, %._crit_edge114 ] ; 4 uses
  %.not65 = icmp eq ptr %i.dg, null
  br i1 %.not65, label %rb_ull2num_inline.exit91, label %bb.s

bb.s:                                             ; preds = %RSTRING_PTR.exit81
  %i.dh = getelementptr i8, ptr %i.db, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !14 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %rb_ull2num_inline.exit91, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i80, label %RSTRING_END.exit83, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !20
  br label %RSTRING_END.exit83

RSTRING_END.exit83:                               ; preds = %bb.t, %bb.u
  %i.dl = phi ptr [ %i.dk, %bb.u ], [ %i.de, %bb.t ]
  %i.dm = getelementptr i8, ptr %i.dl, i64 %i.di  ; 5 uses
  %i.dn = getelementptr i8, ptr %.053.lcssa, i64 20
  %.val.i84 = load i32, ptr %i.dn, align 4, !tbaa !16
  %.not.i85 = icmp eq i32 %.val.i84, 1
  %i.do = icmp ult ptr %i.dg, %i.dm               ; 2 uses
  br i1 %.not.i85, label %rb_enc_asciicompat.exit88, label %rb_enc_asciicompat.exit88.thread

rb_enc_asciicompat.exit88:                        ; preds = %RSTRING_END.exit83
  br i1 %i.do, label %.lr.ph118, label %._crit_edge119.thread

rb_enc_asciicompat.exit88.thread:                 ; preds = %RSTRING_END.exit83
  br i1 %i.do, label %.lr.ph118.split.preheader, label %._crit_edge119.thread

.lr.ph118:                                        ; preds = %rb_enc_asciicompat.exit88
  %i.dp = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.053.lcssa) #32
  %.not3.i87 = icmp eq i32 %i.dp, 0
  br i1 %.not3.i87, label %.lr.ph118.split.us, label %.lr.ph118.split.preheader

.lr.ph118.split.preheader:                        ; preds = %rb_enc_asciicompat.exit88.thread, %.lr.ph118
  %.pre = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %.pre128 = load i64, ptr %i.c, align 8, !tbaa !27 ; 4 uses
  %.not.i89 = icmp eq i64 %.pre, 0
  %.not20.i = icmp eq i64 %.pre128, 0
  %.not19.i = icmp eq i64 %.pre128, 0
  br label %.lr.ph118.split

.lr.ph118.split.us:                               ; preds = %.lr.ph118, %bb.ae
  %.5117.us = phi i64 [ %.8.us, %bb.ae ], [ 0, %.lr.ph118 ] ; 4 uses
  %.158116.us = phi ptr [ %.259.us, %bb.ae ], [ %i.dg, %.lr.ph118 ] ; 4 uses
  %i.dq = load i8, ptr %.158116.us, align 1, !tbaa !20 ; 2 uses
  %i.dr = icmp sgt i8 %i.dq, -1
  br i1 %i.dr, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %.lr.ph118.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.ds = call i32 @rb_enc_codepoint_len(ptr noundef nonnull %.158116.us, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.f, ptr noundef nonnull %.053.lcssa) #28 ; 2 uses
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.du = load i64, ptr %i.c, align 8, !tbaa !27  ; 4 uses
  %i.dv = icmp ult i32 %i.ds, 256
  %i.dw = zext i32 %i.ds to i64                   ; 2 uses
  br i1 %i.dv, label %tr_find.exit.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = shl nuw nsw i64 %i.dw, 1
  %i.dy = or disjoint i64 %i.dx, 1                ; 3 uses
  %.not.i89.us = icmp eq i64 %i.dt, 0
  br i1 %.not.i89.us, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = call i64 @rb_hash_lookup(i64 noundef %i.dt, i64 noundef %i.dy) #28
  %i.ea = icmp eq i64 %i.dz, 4
  br i1 %i.ea, label %tr_find.exit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not20.i.us = icmp eq i64 %i.du, 0
  br i1 %.not20.i.us, label %tr_find.exit.thread.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = call i64 @rb_hash_lookup(i64 noundef %i.du, i64 noundef %i.dy) #28
  %i.ec = icmp eq i64 %i.eb, 4
  br i1 %i.ec, label %tr_find.exit.thread.us, label %tr_find.exit.us

tr_find.exit.thread.us:                           ; preds = %bb.z, %bb.y
  %i.ed = add i64 %.5117.us, 1
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %.not19.i.us = icmp eq i64 %i.du, 0
  br i1 %.not19.i.us, label %tr_find.exit.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = call i64 @rb_hash_lookup(i64 noundef %i.du, i64 noundef %i.dy) #28
  %i.ef = icmp eq i64 %i.ee, 4
  br i1 %i.ef, label %tr_find.exit.us, label %tr_find.exit.thread106.us

tr_find.exit.us:                                  ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.v
  %.sink.i.us = phi i64 [ %i.dw, %bb.v ], [ 256, %bb.aa ], [ 256, %bb.ab ], [ 256, %bb.x ], [ 256, %bb.z ]
  %i.eg = getelementptr i8, ptr %i.a, i64 %.sink.i.us
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !20
  %.fr.us = freeze i8 %i.eh
  %.not21.i.not.us = icmp eq i8 %.fr.us, 0
  %i.ei = add i64 %.5117.us, 1
  br i1 %.not21.i.not.us, label %tr_find.exit.thread106.us, label %bb.ac

tr_find.exit.thread106.us:                        ; preds = %tr_find.exit.us, %bb.ab
  br label %bb.ac

bb.ac:                                            ; preds = %tr_find.exit.thread106.us, %tr_find.exit.us, %tr_find.exit.thread.us
  %i.ej = phi i64 [ %.5117.us, %tr_find.exit.thread106.us ], [ %i.ei, %tr_find.exit.us ], [ %i.ed, %tr_find.exit.thread.us ]
  %i.ek = load i32, ptr %i.f, align 4, !tbaa !7
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr i8, ptr %.158116.us, i64 %i.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph118.split.us
  %i.en = zext nneg i8 %i.dq to i64
  %i.eo = getelementptr i8, ptr %i.a, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !20
  %.not67.us = icmp ne i8 %i.ep, 0
  %i.eq = zext i1 %.not67.us to i64
  %spec.select68.us = add i64 %.5117.us, %i.eq
  %i.er = getelementptr i8, ptr %.158116.us, i64 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.259.us = phi ptr [ %i.er, %bb.ad ], [ %i.em, %bb.ac ] ; 2 uses
  %.8.us = phi i64 [ %spec.select68.us, %bb.ad ], [ %i.ej, %bb.ac ] ; 2 uses
  %i.es = icmp ult ptr %.259.us, %i.dm
  br i1 %i.es, label %.lr.ph118.split.us, label %._crit_edge119, !llvm.loop !220

.lr.ph118.split:                                  ; preds = %.lr.ph118.split.preheader, %bb.al
  %.5117 = phi i64 [ %i.fi, %bb.al ], [ 0, %.lr.ph118.split.preheader ] ; 3 uses
  %.158116 = phi ptr [ %i.fl, %bb.al ], [ %i.dg, %.lr.ph118.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.et = call i32 @rb_enc_codepoint_len(ptr noundef %.158116, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.f, ptr noundef %.053.lcssa) #28 ; 2 uses
  %i.eu = icmp ult i32 %i.et, 256
  %i.ev = zext i32 %i.et to i64                   ; 2 uses
  br i1 %i.eu, label %tr_find.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph118.split
  %i.ew = shl nuw nsw i64 %i.ev, 1
  %i.ex = or disjoint i64 %i.ew, 1                ; 3 uses
  br i1 %.not.i89, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = call i64 @rb_hash_lookup(i64 noundef %.pre, i64 noundef %i.ex) #28
  %i.ez = icmp eq i64 %i.ey, 4
  br i1 %i.ez, label %tr_find.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not20.i, label %tr_find.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = call i64 @rb_hash_lookup(i64 noundef %.pre128, i64 noundef %i.ex) #28
  %i.fb = icmp eq i64 %i.fa, 4
  br i1 %i.fb, label %tr_find.exit.thread, label %tr_find.exit

bb.aj:                                            ; preds = %bb.af
  br i1 %.not19.i, label %tr_find.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fc = call i64 @rb_hash_lookup(i64 noundef %.pre128, i64 noundef %i.ex) #28
  %i.fd = icmp eq i64 %i.fc, 4
  br i1 %i.fd, label %tr_find.exit, label %tr_find.exit.thread106

tr_find.exit.thread:                              ; preds = %bb.ai, %bb.ah
  %i.fe = add i64 %.5117, 1
  br label %bb.al

tr_find.exit:                                     ; preds = %.lr.ph118.split, %bb.ag, %bb.ai, %bb.aj, %bb.ak
  %.sink.i = phi i64 [ %i.ev, %.lr.ph118.split ], [ 256, %bb.aj ], [ 256, %bb.ak ], [ 256, %bb.ag ], [ 256, %bb.ai ]
  %i.ff = getelementptr i8, ptr %i.a, i64 %.sink.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20
  %.fr = freeze i8 %i.fg
  %.not21.i.not = icmp eq i8 %.fr, 0
  %i.fh = add i64 %.5117, 1
  br i1 %.not21.i.not, label %tr_find.exit.thread106, label %bb.al

tr_find.exit.thread106:                           ; preds = %bb.ak, %tr_find.exit
  br label %bb.al

bb.al:                                            ; preds = %tr_find.exit.thread, %tr_find.exit, %tr_find.exit.thread106
  %i.fi = phi i64 [ %.5117, %tr_find.exit.thread106 ], [ %i.fh, %tr_find.exit ], [ %i.fe, %tr_find.exit.thread ] ; 2 uses
  %i.fj = load i32, ptr %i.f, align 4, !tbaa !7
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr i8, ptr %.158116, i64 %i.fk ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %i.fm = icmp ult ptr %i.fl, %i.dm
  br i1 %i.fm, label %.lr.ph118.split, label %._crit_edge119, !llvm.loop !220

._crit_edge119:                                   ; preds = %bb.al, %bb.ae
  %.5.lcssa = phi i64 [ %.8.us, %bb.ae ], [ %i.fi, %bb.al ] ; 3 uses
  %i.fn = icmp ult i64 %.5.lcssa, 4611686018427387904
  br i1 %i.fn, label %._crit_edge119.thread, label %bb.am

._crit_edge119.thread:                            ; preds = %rb_enc_asciicompat.exit88.thread, %rb_enc_asciicompat.exit88, %._crit_edge119
  %.5.lcssa149 = phi i64 [ %.5.lcssa, %._crit_edge119 ], [ 0, %rb_enc_asciicompat.exit88 ], [ 0, %rb_enc_asciicompat.exit88.thread ]
  %i.fo = shl nuw nsw i64 %.5.lcssa149, 1
  %i.fp = or disjoint i64 %i.fo, 1
  br label %rb_ull2num_inline.exit91

bb.am:                                            ; preds = %._crit_edge119
  %i.fq = call i64 @rb_ull2inum(i64 noundef %.5.lcssa) #28
  br label %rb_ull2num_inline.exit91

rb_ull2num_inline.exit91:                         ; preds = %bb.am, %._crit_edge119.thread, %bb.q, %RSTRING_PTR.exit81, %bb.s
  %.2 = phi i64 [ %.051, %bb.q ], [ 1, %RSTRING_PTR.exit81 ], [ 1, %bb.s ], [ %i.fp, %._crit_edge119.thread ], [ %i.fq, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_tr_bang(i64 noundef %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = tail call fastcc i64 @tr_trans(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_tr_s_bang(i64 noundef %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = tail call fastcc i64 @tr_trans(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_delete_bang(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %i.f = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8, !tbaa !11
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.f, i64 24       ; 6 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %bb.b ]
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.o = icmp slt i32 %0, 1
  br i1 %i.o, label %bb.e, label %rb_check_arity.exit.preheader.preheader

rb_check_arity.exit.preheader.preheader:          ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %rb_check_arity.exit.preheader

bb.e:                                             ; preds = %bb.d
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef -1) #30
  unreachable

rb_check_arity.exit.preheader:                    ; preds = %rb_check_arity.exit.preheader.preheader, %rb_string_value.exit
  %indvars.iv = phi i64 [ 0, %rb_check_arity.exit.preheader.preheader ], [ %indvars.iv.next, %rb_string_value.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.p = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27
  store i64 %i.q, ptr %i.d, align 8, !tbaa !27
  %.0..0..0. = load volatile i64, ptr %i.d, align 8, !tbaa !27 ; 5 uses
  %i.r = icmp eq i64 %.0..0..0., 0
  %i.s = and i64 %.0..0..0., 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_check_arity.exit.preheader
  %i.v = inttoptr i64 %.0..0..0. to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = and i64 %i.w, 31
  %i.y = icmp eq i64 %i.x, 5
  br i1 %i.y, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_check_arity.exit.preheader
  %i.z = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.z, ptr %i.d, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0..0.82 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.z, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 2 uses
  %i.aa = tail call ptr @rb_enc_check(i64 noundef %2, i64 noundef %.0..0.82) #28 ; 6 uses
  %i.ab = icmp eq i64 %indvars.iv, 0
  %i.ac = zext i1 %i.ab to i32
  call fastcc void @tr_setup_table(i64 noundef %.0..0.82, ptr noundef %i.a, i32 noundef %i.ac, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %rb_check_arity.exit.preheader, !llvm.loop !221

bb.f:                                             ; preds = %rb_string_value.exit
  tail call fastcc void @str_modify_keep_cr(i64 noundef %2)
  %i.ad = getelementptr i8, ptr %i.aa, i64 20
  %.val.i = load i32, ptr %i.ad, align 4, !tbaa !16
  %.not.i73 = icmp eq i32 %.val.i, 1
  br i1 %.not.i73, label %bb.g, label %rb_enc_asciicompat.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.aa) #32
  %.not3.i = icmp eq i32 %i.ae, 0
  br label %rb_enc_asciicompat.exit

rb_enc_asciicompat.exit:                          ; preds = %bb.f, %bb.g
  %.0.i74 = phi i1 [ false, %bb.f ], [ %.not3.i, %bb.g ] ; 2 uses
  %i.af = load i64, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.ag = and i64 %i.af, 8192
  %.not.i75 = icmp eq i64 %i.ag, 0
  br i1 %.not.i75, label %RSTRING_END.exit, label %bb.h

bb.h:                                             ; preds = %rb_enc_asciicompat.exit
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %rb_enc_asciicompat.exit, %bb.h
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ %i.l, %rb_enc_asciicompat.exit ] ; 5 uses
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !14
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj  ; 3 uses
  %i.al = select i1 %.0.i74, i32 1048576, i32 2097152 ; 2 uses
  %i.am = icmp ult ptr %i.ai, %i.ak
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %RSTRING_END.exit
  %i.an = getelementptr i8, ptr %i.aa, i64 48
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.x
  %.05493 = phi i32 [ %i.al, %.lr.ph ], [ %.2, %bb.x ] ; 7 uses
  %.05592 = phi ptr [ %i.ai, %.lr.ph ], [ %i.br, %bb.x ] ; 5 uses
  %.05891 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.x ] ; 2 uses
  %.06190 = phi ptr [ %i.ai, %.lr.ph ], [ %.364, %bb.x ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  br i1 %.0.i74, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = load i8, ptr %.05592, align 1, !tbaa !20 ; 3 uses
  %i.ap = icmp sgt i8 %i.ao, -1
  br i1 %i.ap, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aq = zext nneg i8 %i.ao to i64
  %i.ar = getelementptr i8, ptr %i.a, i64 %i.aq
end_hunk_8
begin_hunk_9_@rb_intern2
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 8192, 4259840) i32 @check_case_options(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 8192, 40961) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 2
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.242) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !tbaa !27     ; 4 uses
  %i.e = load i64, ptr @sym_turkic, align 8, !tbaa !27 ; 2 uses
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.g = or disjoint i32 %2, 1048576
  %i.h = icmp eq i32 %0, 2
  br i1 %i.h, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = load i64, ptr @sym_lithuanian, align 8, !tbaa !27
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = or disjoint i32 %2, 3145728
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.243) #30
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.o = load i64, ptr @sym_lithuanian, align 8, !tbaa !27
  %i.p = icmp eq i64 %i.d, %i.o
  br i1 %i.p, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.q = or disjoint i32 %2, 2097152
  %i.r = icmp eq i32 %0, 2
  br i1 %i.r, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27
  %i.u = icmp eq i64 %i.t, %i.e
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = or disjoint i32 %2, 3145728
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.243) #30
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.x = icmp eq i32 %0, 2
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.242) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.z = load i64, ptr @sym_ascii, align 8, !tbaa !27
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = or disjoint i32 %2, 4194304
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.ac = load i64, ptr @sym_fold, align 8, !tbaa !27
  %i.ad = icmp eq i64 %i.d, %i.ac
  br i1 %i.ad, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ae = and i32 %2, 24576
  %i.af = icmp eq i32 %i.ae, 16384
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ag = xor i32 %2, 540672
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.244) #30
  unreachable

bb.v:                                             ; preds = %bb.r
  %i.ai = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.245) #30
  unreachable

bb.w:                                             ; preds = %bb.g, %bb.e, %bb.t, %bb.q, %bb.j, %bb.l, %bb.a
  %.020 = phi i32 [ %2, %bb.a ], [ %i.m, %bb.g ], [ %i.g, %bb.e ], [ %i.v, %bb.l ], [ %i.q, %bb.j ], [ %i.ab, %bb.q ], [ %i.ag, %bb.t ]
  ret i32 %.020
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_str_ascii_casemap(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !tbaa !11
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !45
  %i.k = getelementptr i8, ptr %i.j, i64 %i.d     ; 2 uses
  %i.l = icmp eq i64 %0, %1
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %RSTRING_END.exit
  %i.m = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i22 = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i22, label %RSTRING_END.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  br label %RSTRING_END.exit25

RSTRING_END.exit25:                               ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr i8, ptr %i.r, i64 %i.t
  br label %bb.f

bb.f:                                             ; preds = %RSTRING_END.exit, %RSTRING_END.exit25
  %.019 = phi ptr [ %i.u, %RSTRING_END.exit25 ], [ %i.k, %RSTRING_END.exit ]
  %.018 = phi ptr [ %i.r, %RSTRING_END.exit25 ], [ %i.j, %RSTRING_END.exit ]
  %i.v = call i32 @onigenc_ascii_only_case_map(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.k, ptr noundef %.018, ptr noundef %.019, ptr noundef %3) #28
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.247) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11
  %i.z = trunc i64 %i.y to i32
  %i.aa = lshr i32 %i.z, 22
  %i.ab = and i32 %i.aa, 127                      ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 127
  br i1 %i.ac, label %bb.i, label %str_enc_copy.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %str_enc_copy.exit

str_enc_copy.exit:                                ; preds = %bb.h, %bb.i
  %.0.i.i = phi i32 [ %i.ad, %bb.i ], [ %i.ab, %bb.h ]
  call void @rb_enc_set_index(i64 noundef %1, i32 noundef %.0.i.i) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %str_enc_copy.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_str_casemap(i64 noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.i = tail call fastcc i64 @str_duplicate(i64 noundef %i.h, i64 noundef %0)
  br label %str_enc_copy_direct.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !11
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !45
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f     ; 4 uses
  %i.p = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef null, ptr noundef nonnull @mapping_buffer_type) #28 ; 4 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !27
  %i.q = icmp ult ptr %i.n, %i.o
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %RSTRING_END.exit
  %i.r = inttoptr i64 %i.p to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 32       ; 3 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = getelementptr i8, ptr %2, i64 120
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.v = phi ptr [ %i.n, %.lr.ph ], [ %i.ao, %bb.g ]
  %.04562 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.g ]
  %.04661 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.g ] ; 2 uses
  %.04760 = phi ptr [ %i.s, %.lr.ph ], [ %i.ad, %bb.g ]
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.t, %i.w
  %i.y = add i64 %.04661, 1                       ; 2 uses
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = add i64 %i.z, 20                        ; 2 uses
  %i.ab = add i64 %i.z, 44
  %i.ac = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.ab) #38 ; 6 uses
  store ptr %i.ac, ptr %.04760, align 8, !tbaa !238
  %i.ad = getelementptr i8, ptr %i.ac, i64 16     ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !238
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !27
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !240
  %i.af = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.aa
  %i.ah = call i32 %i.ae(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %2) #28 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !43
  store ptr null, ptr %i.s, align 8, !tbaa !43
  call void @mapping_buffer_free(ptr noundef %i.aj)
  %i.ak = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ak, ptr noundef nonnull @.str.247) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !27
  %i.an = add i32 %i.ah, %.04562                  ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.o
  br i1 %i.ap, label %bb.e, label %._crit_edge, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.g
  %i.aq = icmp eq i64 %.04661, 0
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  br i1 %i.aq, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %._crit_edge
  %i.as = getelementptr i8, ptr %i.ac, i64 24
  %i.at = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.au = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.av = call fastcc noundef i64 @str_enc_new(i64 noundef %i.at, ptr noundef readonly %i.as, i64 noundef %i.ar, ptr noundef nonnull %i.au)
  %.pre75 = inttoptr i64 %i.p to ptr
  br label %.loopexit

._crit_edge.thread:                               ; preds = %RSTRING_END.exit, %._crit_edge
  %.045.lcssa87 = phi i64 [ %i.ar, %._crit_edge ], [ 0, %RSTRING_END.exit ]
  %i.aw = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.ax = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ay = call fastcc noundef i64 @str_enc_new(i64 noundef %i.aw, ptr noundef readonly null, i64 noundef %.045.lcssa87, ptr noundef nonnull %i.ax) ; 3 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = and i64 %i.ba, 8192
  %.not.i53 = icmp eq i64 %i.bb, 0
  %i.bc = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  br i1 %.not.i53, label %RSTRING_PTR.exit54, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  br label %RSTRING_PTR.exit54

RSTRING_PTR.exit54:                               ; preds = %._crit_edge.thread, %bb.i
  %i.be = phi ptr [ %i.bd, %bb.i ], [ %i.bc, %._crit_edge.thread ]
  %i.bf = inttoptr i64 %i.p to ptr                ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %.165 = load ptr, ptr %i.bg, align 8, !tbaa !242 ; 2 uses
  %.not66 = icmp eq ptr %.165, null
  br i1 %.not66, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %RSTRING_PTR.exit54, %ruby_nonempty_memcpy.exit
  %.168 = phi ptr [ %.1, %ruby_nonempty_memcpy.exit ], [ %.165, %RSTRING_PTR.exit54 ] ; 3 uses
  %.04367 = phi ptr [ %i.bl, %ruby_nonempty_memcpy.exit ], [ %i.be, %RSTRING_PTR.exit54 ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.168, i64 8      ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !27 ; 2 uses
  %.not.i55 = icmp eq i64 %i.bi, 0
  br i1 %.not.i55, label %ruby_nonempty_memcpy.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph69
  %i.bj = getelementptr i8, ptr %.168, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.04367, ptr noundef nonnull readonly align 1 %i.bj, i64 noundef range(i64 1, 0) %i.bi, i1 noundef false) #28
  %.pre = load i64, ptr %i.bh, align 8, !tbaa !27
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %.lr.ph69, %bb.j
  %i.bk = phi i64 [ 0, %.lr.ph69 ], [ %.pre, %bb.j ]
  %i.bl = getelementptr i8, ptr %.04367, i64 %i.bk
  %i.bm = getelementptr i8, ptr %.168, i64 16
  %.1 = load ptr, ptr %i.bm, align 8, !tbaa !242  ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.loopexit, label %.lr.ph69, !llvm.loop !243

.loopexit:                                        ; preds = %ruby_nonempty_memcpy.exit, %RSTRING_PTR.exit54, %bb.h
  %.pre-phi = phi ptr [ %.pre75, %bb.h ], [ %i.bf, %RSTRING_PTR.exit54 ], [ %i.bf, %ruby_nonempty_memcpy.exit ]
  %.044 = phi i64 [ %i.av, %bb.h ], [ %i.ay, %RSTRING_PTR.exit54 ], [ %i.ay, %ruby_nonempty_memcpy.exit ] ; 4 uses
  %i.bn = getelementptr i8, ptr %.pre-phi, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43 ; 2 uses
  store ptr null, ptr %i.bn, align 8, !tbaa !43
  %.not6.i = icmp eq ptr %i.bo, null
  br i1 %.not6.i, label %mapping_buffer_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bo, %.loopexit ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.07.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !238 ; 2 uses
  call void @ruby_xfree(ptr noundef nonnull %.07.i) #28
  %.not.i56 = icmp eq ptr %i.bq, null
  br i1 %.not.i56, label %mapping_buffer_free.exit, label %.lr.ph.i, !llvm.loop !244

mapping_buffer_free.exit:                         ; preds = %.lr.ph.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %i.b, ptr %i.c, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #28, !srcloc !245
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bs = load volatile i64, ptr %i.br, align 8, !tbaa !27 ; 0 uses
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !11
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = lshr i32 %i.bu, 22
  %i.bw = and i32 %i.bv, 127                      ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 127
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %mapping_buffer_free.exit
  %i.by = call i32 @rb_enc_get_index(i64 noundef %0) #28
  call void @rb_enc_set_index(i64 noundef %.044, i32 noundef %i.by) #28
  br label %str_enc_copy_direct.exit

bb.l:                                             ; preds = %mapping_buffer_free.exit
  %i.bz = shl nuw nsw i32 %i.bw, 22
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = inttoptr i64 %.044 to ptr               ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11
  %i.cd = and i64 %i.cc, -532676609
  %i.ce = or disjoint i64 %i.cd, %i.ca
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !11
  br label %str_enc_copy_direct.exit

str_enc_copy_direct.exit:                         ; preds = %bb.l, %bb.k, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %.044, %bb.k ], [ %.044, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

declare i32 @onigenc_ascii_only_case_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: nounwind sspstrong uwtable
define internal void @mapping_buffer_free(ptr noundef %0) #1 {
bb.a:
  %.not6 = icmp eq ptr %0, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.07, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  tail call void @ruby_xfree(ptr noundef nonnull %.07) #28
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !244

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_str_enumerate_lines(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 0, ptr %i.c, align 8, !tbaa !27
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr [8 x i8], ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call i32 @rb_keyword_given_p() #28
  %.not214 = icmp eq i32 %i.k, 0
  br i1 %.not214, label %.preheader217.thread272, label %.preheader217

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.l = icmp slt i32 %0, 0
  br i1 %i.l, label %bb.c, label %.preheader217.thread

.preheader217:                                    ; preds = %bb.a
  %i.m = tail call i64 @rb_hash_dup(i64 noundef %i.j) #28 ; 2 uses
  %i.n = add nsw i32 %0, -1                       ; 2 uses
  %.not227 = icmp eq i32 %i.n, 0
  br i1 %.not227, label %.preheader217.thread, label %.preheader217.thread272

.preheader217.thread272:                          ; preds = %bb.a, %.preheader217
  %.1.i.ph277 = phi i32 [ %i.n, %.preheader217 ], [ %0, %bb.a ] ; 2 uses
  %.188.i.ph276 = phi i64 [ %i.m, %.preheader217 ], [ 4, %bb.a ]
  %i.o = load i64, ptr %1, align 8, !tbaa !27
  %i.p = icmp eq i32 %.1.i.ph277, 1
  br label %.preheader217.thread

.preheader217.thread:                             ; preds = %.preheader217, %bb.b, %.preheader217.thread272
  %.sink = phi i64 [ %i.o, %.preheader217.thread272 ], [ 4, %bb.b ], [ 4, %.preheader217 ] ; 2 uses
  %.not227270 = phi i1 [ false, %.preheader217.thread272 ], [ true, %bb.b ], [ true, %.preheader217 ]
  %.188.i260268 = phi i64 [ %.188.i.ph276, %.preheader217.thread272 ], [ 4, %bb.b ], [ %i.m, %.preheader217 ] ; 2 uses
  %.1.i261266 = phi i32 [ %.1.i.ph277, %.preheader217.thread272 ], [ 0, %bb.b ], [ 0, %.preheader217 ]
  %.185.i.lcssa = phi i1 [ %i.p, %.preheader217.thread272 ], [ true, %bb.b ], [ true, %.preheader217 ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !27
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %.preheader217.thread, %bb.b
  %.1.i262 = phi i32 [ %.1.i261266, %.preheader217.thread ], [ %0, %bb.b ]
  tail call void @rb_error_arity(i32 noundef %.1.i262, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader217.thread
  br i1 %.not227270, label %bb.d, label %bb.i

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.q = load i64, ptr @rb_rs, align 8, !tbaa !27 ; 6 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %get_rs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %i.q, 0
  %i.t = and i64 %i.q, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.e
  %i.w = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %i.y = and i64 %i.x, 31
  %i.z = icmp eq i64 %i.y, 5
  br i1 %i.z, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14
  %.not.i165 = icmp eq i64 %i.ab, 1
  br i1 %.not.i165, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ac = and i64 %i.x, 8192
  %.not.i.i = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %i.ae, %bb.h ], [ %i.ad, %bb.g ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %.not5.i = icmp eq i8 %i.ag, 10
  br i1 %.not5.i, label %get_rs.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %RSTRING_PTR.exit.i, %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 1, ptr noundef nonnull @.str.249) #36
  br label %get_rs.exit

get_rs.exit:                                      ; preds = %bb.d, %RSTRING_PTR.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  store i64 %i.q, ptr %i.b, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %get_rs.exit, %rb_scan_args_set.exit
  %i.ah = phi i64 [ %i.q, %get_rs.exit ], [ %.sink, %rb_scan_args_set.exit ]
  %i.ai = icmp eq i64 %.188.i260268, 4
  br i1 %i.ai, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr @rb_str_enumerate_lines.keywords, align 8, !tbaa !27
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call i64 @rb_intern2(ptr noundef nonnull @.str.143, i64 noundef 5) #28
  store i64 %i.ak, ptr @rb_str_enumerate_lines.keywords, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = call i32 @rb_get_kwargs(i64 noundef %.188.i260268, ptr noundef nonnull @rb_str_enumerate_lines.keywords, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.c) #28 ; 0 uses
  %i.am = load i64, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.an = icmp ne i64 %i.am, 36
  %i.ao = and i64 %i.am, -5
  %i.ap = icmp ne i64 %i.ao, 0
  %narrow = and i1 %i.an, %i.ap
  %i.aq = zext i1 %narrow to i64
  store i64 %i.aq, ptr %i.c, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ar = icmp eq i64 %i.ah, 4
  br i1 %i.ar, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not.i166 = icmp eq i64 %3, 0
  br i1 %.not.i166, label %enumerator_element.exit, label %bb.o

enumerator_element.exit:                          ; preds = %bb.n
  %i.as = call i64 @rb_yield(i64 noundef %2) #28  ; 0 uses
  br label %bb.bl

bb.o:                                             ; preds = %bb.n
  %i.at = call i64 @rb_ary_push(i64 noundef %3, i64 noundef %2) #28 ; 0 uses
  br label %bb.bl

bb.p:                                             ; preds = %bb.m
  %i.au = inttoptr i64 %2 to ptr                  ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14
  %.not144 = icmp eq i64 %i.aw, 0
  br i1 %.not144, label %bb.bk, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.ay = and i64 %i.ax, 51200
  %i.az = icmp eq i64 %i.ay, 2048
  br i1 %i.az, label %rb_str_new_frozen.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = call i64 @rb_obj_class(i64 noundef %2) #28, !inline_history !35
  %i.bb = call fastcc i64 @str_new_frozen_buffer(i64 noundef %i.ba, i64 noundef %2, i32 noundef 1), !inline_history !142 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.bb to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %rb_str_new_frozen.exit

rb_str_new_frozen.exit:                           ; preds = %bb.q, %bb.r
  %.pre-phi = phi ptr [ %i.au, %bb.q ], [ %.phi.trans.insert, %bb.r ] ; 2 uses
  %i.bc = phi i64 [ %i.ax, %bb.q ], [ %.pre, %bb.r ]
  %i.bd = phi i64 [ %2, %bb.q ], [ %i.bb, %bb.r ] ; 3 uses
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !27
  %i.be = and i64 %i.bc, 8192
  %.not.i168 = icmp eq i64 %i.be, 0
  %i.bf = getelementptr i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i168, label %RSTRING_END.exit, label %bb.s

bb.s:                                             ; preds = %rb_str_new_frozen.exit
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %rb_str_new_frozen.exit, %bb.s
  %i.bh = phi ptr [ %i.bg, %bb.s ], [ %i.bf, %rb_str_new_frozen.exit ] ; 12 uses
  %i.bi = getelementptr i8, ptr %.pre-phi, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !14 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bh, i64 %i.bj  ; 20 uses
  %.0. = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.bl = icmp eq i64 %.0., 0
  %i.bm = and i64 %.0., 7
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i171, label %rbimpl_RB_TYPE_P_fastpath.exit.i170

rbimpl_RB_TYPE_P_fastpath.exit.i170:              ; preds = %RSTRING_END.exit
  %i.bp = inttoptr i64 %.0. to ptr                ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !11
  %i.br = and i64 %i.bq, 31
  %i.bs = icmp eq i64 %i.br, 5
  br i1 %i.bs, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i171

rbimpl_RB_TYPE_P_fastpath.exit.thread.i171:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i170, %RSTRING_END.exit
  %i.bt = call i64 @rb_convert_type_with_id(i64 noundef %.0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.bt, ptr %i.b, align 8, !tbaa !27
  %.pre234 = inttoptr i64 %i.bt to ptr
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i170, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i171
  %.pre-phi235 = phi ptr [ %i.bp, %rbimpl_RB_TYPE_P_fastpath.exit.i170 ], [ %.pre234, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i171 ] ; 3 uses
  %i.bu = phi i64 [ %.0., %rbimpl_RB_TYPE_P_fastpath.exit.i170 ], [ %i.bt, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i171 ] ; 3 uses
  %i.bv = getelementptr i8, ptr %.pre-phi235, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !14 ; 4 uses
  %i.bx = load i64, ptr @rb_default_rs, align 8, !tbaa !27
  %i.by = icmp eq i64 %i.bu, %i.bx
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %rb_string_value.exit
  %i.bz = call ptr @rb_enc_get(i64 noundef %i.bd) #28
  br label %bb.v

bb.u:                                             ; preds = %rb_string_value.exit
  %i.ca = call ptr @rb_enc_check(i64 noundef %i.bd, i64 noundef %i.bu) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0122 = phi ptr [ %i.bz, %bb.t ], [ %i.ca, %bb.u ] ; 21 uses
  %i.cb = icmp eq i64 %i.bw, 0
  br i1 %i.cb, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.cc = icmp ult ptr %i.bh, %i.bk
  br i1 %i.cc, label %.preheader.lr.ph, label %str_mod_check.exit.thread

.preheader.lr.ph:                                 ; preds = %bb.w
  %i.cd = getelementptr i8, ptr %.0122, i64 24
  %i.ce = ptrtoint ptr %i.bh to i64
  %.not.i173 = icmp eq i64 %3, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.lr.ph
  %.1131 = phi ptr [ %i.bh, %.preheader.lr.ph ], [ %.1131.be, %.preheader.backedge ] ; 5 uses
  %.1126 = phi ptr [ %i.bh, %.preheader.lr.ph ], [ %.1126.be, %.preheader.backedge ] ; 8 uses
  %.1115 = phi ptr [ null, %.preheader.lr.ph ], [ %.1115.be, %.preheader.backedge ] ; 3 uses
  %.0113 = phi i64 [ 0, %.preheader.lr.ph ], [ %.0113.be, %.preheader.backedge ] ; 3 uses
  %i.cf = call i32 @rb_enc_ascget(ptr noundef %.1126, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.d, ptr noundef %.0122) #28
  %.not153 = icmp eq i32 %i.cf, 13
  br i1 %.not153, label %._crit_edge232, label %bb.x

._crit_edge232:                                   ; preds = %.preheader
  %.pre233 = load i32, ptr %i.d, align 4, !tbaa !7
  br label %bb.y

bb.x:                                             ; preds = %.preheader
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge232, %bb.x
  %i.cg = phi i32 [ %.pre233, %._crit_edge232 ], [ 0, %bb.x ] ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %.1126, i64 %i.ch
  %i.cj = call i32 @rb_enc_mbclen(ptr noundef %i.ci, ptr noundef nonnull %i.bk, ptr noundef %.0122) #28
  %i.ck = add i32 %i.cj, %i.cg
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = load i32, ptr %i.d, align 4, !tbaa !7
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %.1126, i64 %i.cn
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !164
  %i.cq = call i32 %i.cp(ptr noundef %i.co, ptr noundef nonnull %i.bk, ptr noundef %.0122) #28, !inline_history !165
  %.not216 = icmp eq i32 %i.cq, 0
  br i1 %.not216, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = icmp eq ptr %.1115, %.1126
  br i1 %i.cr, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr i8, ptr %.1126, i64 %i.cl ; 3 uses
  %.not155 = icmp eq ptr %.1131, null
  br i1 %.not155, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = sub nsw i64 0, %i.cl
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %.not154 = icmp eq ptr %.1131, null
  %spec.select = select i1 %.not154, ptr %.1126, ptr %.1131
  %i.cu = getelementptr i8, ptr %.1126, i64 %i.cl
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.3133 = phi ptr [ %.1131, %bb.ab ], [ null, %bb.aa ], [ %spec.select, %bb.ac ] ; 2 uses
  %.2127 = phi ptr [ %i.cs, %bb.ab ], [ %i.cs, %bb.aa ], [ %i.cu, %bb.ac ] ; 3 uses
  %.2116 = phi ptr [ %i.cs, %bb.ab ], [ %.1115, %bb.aa ], [ %.1115, %bb.ac ]
  %.1 = phi i64 [ %i.ct, %bb.ab ], [ %.0113, %bb.aa ], [ %.0113, %bb.ac ] ; 2 uses
  %i.cv = icmp ult ptr %.2127, %i.bk
  br i1 %i.cv, label %.preheader.backedge, label %bb.ae

.preheader.backedge:                              ; preds = %bb.ad, %str_mod_check.exit
  %.1131.be = phi ptr [ %.3133, %bb.ad ], [ null, %str_mod_check.exit ]
  %.1126.be = phi ptr [ %.2127, %bb.ad ], [ %.3128, %str_mod_check.exit ]
  %.1115.be = phi ptr [ %.2116, %bb.ad ], [ null, %str_mod_check.exit ]
  %.0113.be = phi i64 [ %.1, %bb.ad ], [ 0, %str_mod_check.exit ]
  br label %.preheader, !llvm.loop !246

bb.ae:                                            ; preds = %bb.z, %bb.ad
  %.4134 = phi ptr [ %.1131, %bb.z ], [ %.3133, %bb.ad ] ; 2 uses
  %.3128 = phi ptr [ %.1126, %bb.z ], [ %.2127, %bb.ad ] ; 3 uses
  %.0120 = phi i64 [ %i.cl, %bb.z ], [ 0, %bb.ad ] ; 2 uses
  %.2 = phi i64 [ %.0113, %bb.z ], [ %.1, %bb.ad ]
  %.not156 = icmp eq ptr %.4134, null
  br i1 %.not156, label %str_mod_check.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = icmp eq i64 %.0120, 0
  %spec.select161 = select i1 %i.cw, i64 0, i64 %.2
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.cy = ptrtoint ptr %.4134 to i64              ; 2 uses
  %i.cz = sub i64 %i.cy, %i.ce
  %i.da = ptrtoint ptr %.3128 to i64
  %i.db = sub i64 %i.da, %i.cy
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !27
  %.not157 = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not157, i64 %.0120, i64 %spec.select161
  %i.de = add i64 %i.db, %i.dd
  %i.df = call fastcc i64 @str_subseq(i64 noundef %i.cx, i64 noundef %i.cz, i64 noundef %i.de) ; 3 uses
  call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.df, i64 noundef %i.cx)
  br i1 %.not.i173, label %bb.ag, label %enumerator_element.exit175.thread

enumerator_element.exit175.thread:                ; preds = %bb.af
  %i.dg = call i64 @rb_ary_push(i64 noundef %3, i64 noundef %i.df) #28 ; 0 uses
  br label %str_mod_check.exit

bb.ag:                                            ; preds = %bb.af
  %i.dh = call i64 @rb_yield(i64 noundef %i.df) #28 ; 0 uses
  %i.di = inttoptr i64 %i.cx to ptr               ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dk = and i64 %i.dj, 8192
  %.not.i.i176 = icmp eq i64 %i.dk, 0
  %i.dl = getelementptr i8, ptr %i.di, i64 24     ; 2 uses
  br i1 %.not.i.i176, label %RSTRING_PTR.exit.i177, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i177

RSTRING_PTR.exit.i177:                            ; preds = %bb.ah, %bb.ag
  %i.dn = phi ptr [ %i.dm, %bb.ah ], [ %i.dl, %bb.ag ]
  %.not.i178 = icmp eq ptr %i.dn, %i.bh
  br i1 %.not.i178, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %RSTRING_PTR.exit.i177
  %i.do = getelementptr i8, ptr %i.di, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !14
  %.not3.i = icmp eq i64 %i.dp, %i.bj
  br i1 %.not3.i, label %str_mod_check.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %RSTRING_PTR.exit.i177
  %i.dq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dq, ptr noundef nonnull @.str.206) #30
  unreachable

str_mod_check.exit:                               ; preds = %bb.ai, %enumerator_element.exit175.thread
  %i.dr = icmp ult ptr %.3128, %i.bk
  br i1 %i.dr, label %.preheader.backedge, label %str_mod_check.exit.thread

str_mod_check.exit.thread:                        ; preds = %str_mod_check.exit, %bb.ae, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.bk

bb.ak:                                            ; preds = %bb.v
  %i.ds = load i64, ptr %.pre-phi235, align 8, !tbaa !11
  %i.dt = and i64 %i.ds, 8192
  %.not.i179 = icmp eq i64 %i.dt, 0
  %i.du = getelementptr i8, ptr %.pre-phi235, i64 24 ; 2 uses
  br i1 %.not.i179, label %RSTRING_PTR.exit180, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !20
  br label %RSTRING_PTR.exit180

RSTRING_PTR.exit180:                              ; preds = %bb.ak, %bb.al
  %i.dw = phi ptr [ %i.dv, %bb.al ], [ %i.du, %bb.ak ] ; 5 uses
  %i.dx = load i64, ptr %i.bv, align 8, !tbaa !14 ; 2 uses
  %i.dy = getelementptr i8, ptr %.0122, i64 20    ; 2 uses
  %.0122.val = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.dz = sext i32 %.0122.val to i64
  %i.ea = icmp eq i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.am, label %bb.an

bb.am:                                            ; preds = %RSTRING_PTR.exit180
  %i.eb = getelementptr i8, ptr %i.dw, i64 %i.dx
  %i.ec = getelementptr i8, ptr %.0122, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !164
  %i.ee = call i32 %i.ed(ptr noundef %i.dw, ptr noundef %i.eb, ptr noundef nonnull %.0122) #28, !inline_history !165
  %.not215 = icmp eq i32 %i.ee, 0
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %RSTRING_PTR.exit180
  %.not147 = phi i1 [ true, %RSTRING_PTR.exit180 ], [ %.not215, %bb.am ] ; 2 uses
  %i.ef = load i64, ptr @rb_default_rs, align 8, !tbaa !27
  %i.eg = icmp eq i64 %i.bu, %i.ef
  br i1 %i.eg, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %.val.i = load i32, ptr %i.dy, align 4, !tbaa !16
  %.not.i181 = icmp eq i32 %.val.i, 1
  br i1 %.not.i181, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.ao
  %i.eh = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.0122) #32
  %.not3.i183 = icmp eq i32 %i.eh, 0
  br i1 %.not3.i183, label %bb.aq, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.ao, %rb_enc_asciicompat.exit
  %i.ei = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.ej = call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ek = call fastcc noundef i64 @str_enc_new(i64 noundef %i.ei, ptr noundef readonly %i.dw, i64 noundef %i.bw, ptr noundef nonnull %i.ej)
  %i.el = call i64 @rb_enc_from_encoding(ptr noundef nonnull %.0122) #28
  %i.em = call i64 @rb_str_encode(i64 noundef %i.ek, i64 noundef %i.el, i32 noundef 0, i64 noundef 4) #28 ; 2 uses
  store i64 %i.em, ptr %i.b, align 8, !tbaa !27
  %i.en = inttoptr i64 %i.em to ptr               ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !11
  %i.ep = and i64 %i.eo, 8192
  %.not.i184 = icmp eq i64 %i.ep, 0
  %i.eq = getelementptr i8, ptr %i.en, i64 24     ; 2 uses
  br i1 %.not.i184, label %RSTRING_PTR.exit185, label %bb.ap

bb.ap:                                            ; preds = %rb_enc_asciicompat.exit.thread
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !20
  br label %RSTRING_PTR.exit185

RSTRING_PTR.exit185:                              ; preds = %rb_enc_asciicompat.exit.thread, %bb.ap
  %i.es = phi ptr [ %i.er, %bb.ap ], [ %i.eq, %rb_enc_asciicompat.exit.thread ]
  %i.et = getelementptr i8, ptr %i.en, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !14
  br label %bb.aq

bb.aq:                                            ; preds = %RSTRING_PTR.exit185, %rb_enc_asciicompat.exit, %bb.an
  %.0124 = phi ptr [ %i.dw, %rb_enc_asciicompat.exit ], [ %i.es, %RSTRING_PTR.exit185 ], [ %i.dw, %bb.an ] ; 2 uses
  %.1121 = phi i64 [ %i.bw, %rb_enc_asciicompat.exit ], [ %i.eu, %RSTRING_PTR.exit185 ], [ %i.bw, %bb.an ] ; 5 uses
  %i.ev = icmp ult ptr %i.bh, %i.bk
  br i1 %i.ev, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aq
  %i.ew = ptrtoint ptr %i.bk to i64
  %i.ex = getelementptr i8, ptr %.0122, i64 24
  %i.ey = ptrtoint ptr %i.bh to i64
  %.not.i189 = icmp eq i64 %3, 0
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %.backedge
  %.6221 = phi ptr [ %i.bh, %.lr.ph ], [ %.6.be, %.backedge ] ; 7 uses
  %i.ez = ptrtoint ptr %.6221 to i64              ; 3 uses
  %i.fa = sub i64 %i.ew, %i.ez
  %i.fb = call i64 @rb_memsearch(ptr noundef %.0124, i64 noundef %.1121, ptr noundef %.6221, i64 noundef %i.fa, ptr noundef %.0122) #28 ; 2 uses
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %._crit_edge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = getelementptr i8, ptr %.6221, i64 %i.fb ; 4 uses
  %i.fe = call ptr @onigenc_get_right_adjust_char_head(ptr noundef %.0122, ptr noundef %.6221, ptr noundef %i.fd, ptr noundef nonnull %i.bk) #28 ; 2 uses
  %.not145 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not145, label %bb.at, label %.backedge

bb.at:                                            ; preds = %bb.as
  %i.ff = getelementptr i8, ptr %i.fd, i64 %.1121 ; 7 uses
  %i.fg = load i64, ptr %i.c, align 8, !tbaa !27
  %.not146 = icmp eq i64 %i.fg, 0                 ; 2 uses
  %brmerge = select i1 %.not146, i1 true, i1 %.not147
  %.mux = select i1 %.not146, ptr %i.ff, ptr %i.fd
  br i1 %brmerge, label %chomp_newline.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fh = call ptr @onigenc_get_prev_char_head(ptr noundef %.0122, ptr noundef %.6221, ptr noundef %i.ff, ptr noundef %i.ff) #28 ; 6 uses
  %i.fi = load ptr, ptr %i.ex, align 8, !tbaa !164
  %i.fj = call i32 %i.fi(ptr noundef %i.fh, ptr noundef %i.ff, ptr noundef %.0122) #28, !inline_history !247
  %.not19.i = icmp eq i32 %i.fj, 0
  br i1 %.not19.i, label %chomp_newline.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fk = call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %.0122, ptr noundef %.6221, ptr noundef %i.fh, ptr noundef %i.fh) #28 ; 3 uses
  %.not.i186 = icmp eq ptr %i.fk, null
  br i1 %.not.i186, label %chomp_newline.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fl = call i32 @rb_enc_ascget(ptr noundef nonnull %i.fk, ptr noundef %i.fh, ptr noundef null, ptr noundef nonnull %.0122) #28
  %i.fm = icmp eq i32 %i.fl, 13
  %spec.select.i187 = select i1 %i.fm, ptr %i.fk, ptr %i.fh
  br label %chomp_newline.exit

chomp_newline.exit:                               ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %.4129 = phi ptr [ %.mux, %bb.at ], [ %i.ff, %bb.au ], [ %spec.select.i187, %bb.aw ], [ %i.fh, %bb.av ]
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.fo = sub i64 %i.ez, %i.ey
  %i.fp = ptrtoint ptr %.4129 to i64
  %i.fq = sub i64 %i.fp, %i.ez
  %i.fr = call fastcc i64 @str_subseq(i64 noundef %i.fn, i64 noundef %i.fo, i64 noundef %i.fq) ; 3 uses
  call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.fr, i64 noundef %i.fn)
  br i1 %.not.i189, label %bb.ax, label %enumerator_element.exit191.thread

enumerator_element.exit191.thread:                ; preds = %chomp_newline.exit
  %i.fs = call i64 @rb_ary_push(i64 noundef %3, i64 noundef %i.fr) #28 ; 0 uses
  br label %.backedge

bb.ax:                                            ; preds = %chomp_newline.exit
  %i.ft = call i64 @rb_yield(i64 noundef %i.fr) #28 ; 0 uses
  %i.fu = inttoptr i64 %i.fn to ptr               ; 3 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !11
  %i.fw = and i64 %i.fv, 8192
  %.not.i.i192 = icmp eq i64 %i.fw, 0
  %i.fx = getelementptr i8, ptr %i.fu, i64 24     ; 2 uses
  br i1 %.not.i.i192, label %RSTRING_PTR.exit.i193, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i193

RSTRING_PTR.exit.i193:                            ; preds = %bb.ay, %bb.ax
  %i.fz = phi ptr [ %i.fy, %bb.ay ], [ %i.fx, %bb.ax ]
  %.not.i194 = icmp eq ptr %i.fz, %i.bh
  br i1 %.not.i194, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %RSTRING_PTR.exit.i193
  %i.ga = getelementptr i8, ptr %i.fu, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !14
  %.not3.i195 = icmp eq i64 %i.gb, %i.bj
  br i1 %.not3.i195, label %.backedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %RSTRING_PTR.exit.i193
  %i.gc = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gc, ptr noundef nonnull @.str.206) #30
  unreachable

.backedge:                                        ; preds = %enumerator_element.exit191.thread, %bb.az, %bb.as
  %.6.be = phi ptr [ %i.fe, %bb.as ], [ %i.ff, %bb.az ], [ %i.ff, %enumerator_element.exit191.thread ] ; 3 uses
  %i.gd = icmp ult ptr %.6.be, %i.bk
  br i1 %i.gd, label %bb.ar, label %._crit_edge, !llvm.loop !248

._crit_edge:                                      ; preds = %.backedge, %bb.ar, %bb.aq
  %.6.lcssa = phi ptr [ %i.bh, %bb.aq ], [ %.6221, %bb.ar ], [ %.6.be, %.backedge ] ; 5 uses
  %.not149 = icmp eq ptr %.6.lcssa, %i.bk
  br i1 %.not149, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  %i.ge = load i64, ptr %i.c, align 8, !tbaa !27
  %.not150 = icmp eq i64 %i.ge, 0
  br i1 %.not150, label %chomp_newline.exit201, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not147, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gf = call ptr @onigenc_get_prev_char_head(ptr noundef %.0122, ptr noundef %.6.lcssa, ptr noundef %i.bk, ptr noundef %i.bk) #28 ; 6 uses
  %i.gg = getelementptr i8, ptr %.0122, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !164
  %i.gi = call i32 %i.gh(ptr noundef %i.gf, ptr noundef %i.bk, ptr noundef %.0122) #28, !inline_history !247
  %.not19.i197 = icmp eq i32 %i.gi, 0
  br i1 %.not19.i197, label %chomp_newline.exit201, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gj = call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %.0122, ptr noundef %.6.lcssa, ptr noundef %i.gf, ptr noundef %i.gf) #28 ; 3 uses
  %.not.i198 = icmp eq ptr %i.gj, null
  br i1 %.not.i198, label %chomp_newline.exit201, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gk = call i32 @rb_enc_ascget(ptr noundef nonnull %i.gj, ptr noundef %i.gf, ptr noundef null, ptr noundef nonnull %.0122) #28
  %i.gl = icmp eq i32 %i.gk, 13
  %spec.select.i199 = select i1 %i.gl, ptr %i.gj, ptr %i.gf
  br label %chomp_newline.exit201

bb.bg:                                            ; preds = %bb.bc
  %i.gm = ptrtoint ptr %i.bk to i64
  %i.gn = ptrtoint ptr %.6.lcssa to i64
  %i.go = sub i64 %i.gm, %i.gn
  %.not152 = icmp slt i64 %i.go, %.1121
  br i1 %.not152, label %chomp_newline.exit201, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gp = sub i64 0, %.1121
  %i.gq = getelementptr i8, ptr %i.bk, i64 %i.gp  ; 2 uses
  %bcmp = call i32 @bcmp(ptr %i.gq, ptr %.0124, i64 %.1121)
  %i.gr = icmp eq i32 %bcmp, 0
  %spec.select163 = select i1 %i.gr, ptr %i.gq, ptr %i.bk
  br label %chomp_newline.exit201

chomp_newline.exit201:                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bh, %bb.bg, %bb.bb
  %.0123 = phi ptr [ %i.bk, %bb.bg ], [ %i.bk, %bb.bb ], [ %spec.select163, %bb.bh ], [ %i.bk, %bb.bd ], [ %spec.select.i199, %bb.bf ], [ %i.gf, %bb.be ]
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.gt = ptrtoint ptr %.6.lcssa to i64           ; 2 uses
  %i.gu = ptrtoint ptr %i.bh to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = ptrtoint ptr %.0123 to i64
  %i.gx = sub i64 %i.gw, %i.gt
  %i.gy = call fastcc i64 @str_subseq(i64 noundef %i.gs, i64 noundef %i.gv, i64 noundef %i.gx) ; 3 uses
  call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.gy, i64 noundef %i.gs)
  %.not.i202 = icmp eq i64 %3, 0
  br i1 %.not.i202, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %chomp_newline.exit201
  %i.gz = call i64 @rb_ary_push(i64 noundef %3, i64 noundef %i.gy) #28 ; 0 uses
  br label %enumerator_element.exit204
end_hunk_9
begin_hunk_10_@rb_str_enumerate_chars:bb.a

enumerator_element.exit36:                        ; preds = %.lr.ph42, %enumerator_element.exit36
  %.141 = phi i64 [ %i.az, %enumerator_element.exit36 ], [ 0, %.lr.ph42 ] ; 3 uses
  %i.au = getelementptr i8, ptr %i.n, i64 %.141
  %i.av = tail call i32 @rb_enc_mbclen(ptr noundef %i.au, ptr noundef %i.af, ptr noundef %i.q) #28
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = tail call fastcc i64 @str_subseq(i64 noundef %i.j, i64 noundef %.141, i64 noundef %i.aw) ; 2 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.ax, i64 noundef %i.j)
  %i.ay = tail call i64 @rb_ary_push(i64 noundef %1, i64 noundef %i.ax) #28 ; 0 uses
  %i.az = add i64 %.141, %i.aw                    ; 2 uses
  %i.ba = icmp slt i64 %i.az, %i.p
  br i1 %i.ba, label %enumerator_element.exit36, label %.loopexit, !llvm.loop !251

.loopexit:                                        ; preds = %enumerator_element.exit, %enumerator_element.exit.us, %enumerator_element.exit36, %enumerator_element.exit36.us, %.preheader38, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.a, ptr %i.b, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #28, !srcloc !252
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bc = load volatile i64, ptr %i.bb, align 8, !tbaa !27 ; 0 uses
  %.not = icmp eq i64 %1, 0
  %. = select i1 %.not, i64 %0, i64 %1
  ret i64 %.
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_str_enumerate_codepoints(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.d = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %0)
  %i.e = inttoptr i64 %0 to ptr                   ; 6 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %rb_str_enumerate_bytes.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 24       ; 4 uses
  %.not.i12.i = icmp eq i64 %1, 0
  br i1 %.not.i12.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %RSTRING_PTR.exit.us.i
  %.013.us.i = phi i64 [ %i.t, %RSTRING_PTR.exit.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !11
  %i.k = and i64 %i.j, 8192
  %.not.i.us.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.us.i, label %RSTRING_PTR.exit.us.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.us.i

RSTRING_PTR.exit.us.i:                            ; preds = %bb.c, %.lr.ph.split.us.i
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.i, %.lr.ph.split.us.i ]
  %i.n = getelementptr i8, ptr %i.m, i64 %.013.us.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = or disjoint i64 %i.q, 1
  %i.s = tail call i64 @rb_yield(i64 noundef %i.r) #28 ; 0 uses
  %i.t = add nuw nsw i64 %.013.us.i, 1            ; 2 uses
  %i.u = load i64, ptr %i.f, align 8, !tbaa !14
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.split.us.i, label %rb_str_enumerate_bytes.exit, !llvm.loop !190

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %RSTRING_PTR.exit.i
  %.013.i = phi i64 [ %i.ag, %RSTRING_PTR.exit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !11
  %i.x = and i64 %i.w, 8192
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.d, %.lr.ph.split.i
  %i.z = phi ptr [ %i.y, %bb.d ], [ %i.i, %.lr.ph.split.i ]
  %i.aa = getelementptr i8, ptr %i.z, i64 %.013.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = tail call i64 @rb_ary_push(i64 noundef %1, i64 noundef %i.ae) #28 ; 0 uses
  %i.ag = add nuw nsw i64 %.013.i, 1              ; 2 uses
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !14
  %i.ai = icmp slt i64 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.split.i, label %rb_str_enumerate_bytes.exit, !llvm.loop !190

bb.e:                                             ; preds = %bb.a
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.ak = and i64 %i.aj, 51200
  %i.al = icmp eq i64 %i.ak, 2048
  br i1 %i.al, label %rb_str_new_frozen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = tail call i64 @rb_obj_class(i64 noundef %0) #28, !inline_history !35
  %i.an = tail call fastcc i64 @str_new_frozen_buffer(i64 noundef %i.am, i64 noundef %0, i32 noundef 1), !inline_history !142 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.an to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %rb_str_new_frozen.exit

rb_str_new_frozen.exit:                           ; preds = %bb.e, %bb.f
  %.pre-phi = phi ptr [ %i.e, %bb.e ], [ %.phi.trans.insert, %bb.f ] ; 2 uses
  %i.ao = phi i64 [ %i.aj, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %.0.i = phi i64 [ %0, %bb.e ], [ %i.an, %bb.f ] ; 2 uses
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !27
  %i.ap = and i64 %i.ao, 8192
  %.not.i16 = icmp eq i64 %i.ap, 0
  %i.aq = getelementptr i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i16, label %RSTRING_END.exit, label %bb.g

bb.g:                                             ; preds = %rb_str_new_frozen.exit
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %rb_str_new_frozen.exit, %bb.g
  %i.as = phi ptr [ %i.ar, %bb.g ], [ %i.aq, %rb_str_new_frozen.exit ] ; 4 uses
  %i.at = getelementptr i8, ptr %.pre-phi, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !14
  %i.av = getelementptr i8, ptr %i.as, i64 %i.au  ; 5 uses
  %i.aw = trunc i64 %i.ao to i32
  %i.ax = lshr i32 %i.aw, 22
  %i.ay = and i32 %i.ax, 127                      ; 2 uses
  %i.az = icmp eq i32 %i.ay, 127
  br i1 %i.az, label %bb.h, label %get_encoding.exit

bb.h:                                             ; preds = %RSTRING_END.exit
  %i.ba = tail call i32 @rb_enc_get_index(i64 noundef %.0.i) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %RSTRING_END.exit, %bb.h
  %.0.i.i = phi i32 [ %i.ba, %bb.h ], [ %i.ay, %RSTRING_END.exit ]
  %i.bb = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 2 uses
  %i.bc = icmp ult ptr %i.as, %i.av
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %get_encoding.exit
  %.not.i18 = icmp eq i64 %1, 0
  br i1 %.not.i18, label %enumerator_element.exit.us, label %enumerator_element.exit

enumerator_element.exit.us:                       ; preds = %.lr.ph, %enumerator_element.exit.us
  %.01321.us = phi ptr [ %i.bk, %enumerator_element.exit.us ], [ %i.as, %.lr.ph ] ; 2 uses
  %i.bd = call i32 @rb_enc_codepoint_len(ptr noundef %.01321.us, ptr noundef nonnull %i.av, ptr noundef nonnull %i.b, ptr noundef %i.bb) #28
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = call i64 @rb_yield(i64 noundef %i.bg) #28 ; 0 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %.01321.us, i64 %i.bj ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.av
  br i1 %i.bl, label %enumerator_element.exit.us, label %._crit_edge, !llvm.loop !253

enumerator_element.exit:                          ; preds = %.lr.ph, %enumerator_element.exit
  %.01321 = phi ptr [ %i.bt, %enumerator_element.exit ], [ %i.as, %.lr.ph ] ; 2 uses
  %i.bm = call i32 @rb_enc_codepoint_len(ptr noundef %.01321, ptr noundef nonnull %i.av, ptr noundef nonnull %i.b, ptr noundef %i.bb) #28
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = call i64 @rb_ary_push(i64 noundef %1, i64 noundef %i.bp) #28 ; 0 uses
  %i.br = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr i8, ptr %.01321, i64 %i.bs ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.av
  br i1 %i.bu, label %enumerator_element.exit, label %._crit_edge, !llvm.loop !253

._crit_edge:                                      ; preds = %enumerator_element.exit, %enumerator_element.exit.us, %get_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %i.a, ptr %i.c, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #28, !srcloc !254
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bw = load volatile i64, ptr %i.bv, align 8, !tbaa !27 ; 0 uses
  br label %rb_str_enumerate_bytes.exit

rb_str_enumerate_bytes.exit:                      ; preds = %RSTRING_PTR.exit.i, %RSTRING_PTR.exit.us.i, %bb.b, %._crit_edge
  %.not = icmp eq i64 %1, 0
  %. = select i1 %.not, i64 %0, i64 %1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i64 %.
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_str_enumerate_grapheme_clusters(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.OnigErrorInfo, align 8      ; 4 uses
  %i.c = alloca [90 x i8], align 16               ; 3 uses
  %i.d = alloca [3 x i8], align 1                 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.OnigErrorInfo, align 8      ; 4 uses
  %i.f = alloca [90 x i8], align 16               ; 3 uses
  %i.g = alloca i64, align 8                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.g, align 8, !tbaa !27
  %i.i = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 22
  %i.m = and i32 %i.l, 127                        ; 2 uses
  %i.n = icmp eq i32 %i.m, 127
  br i1 %i.n, label %bb.b, label %get_encoding.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.o, %bb.b ], [ %i.m, %bb.a ]
  %i.p = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 5 uses
  %i.q = tail call i32 @rb_enc_unicode_p(ptr noundef %i.p) #32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %get_encoding.exit
  %i.r = tail call fastcc i64 @rb_str_enumerate_chars(i64 noundef %0, i64 noundef %1)
  br label %bb.r

bb.d:                                             ; preds = %get_encoding.exit
  %.not35 = icmp eq i64 %1, 0                     ; 3 uses
  br i1 %.not35, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.i, align 8, !tbaa !11
  %i.t = and i64 %i.s, 51200
  %i.u = icmp eq i64 %i.t, 2048
  br i1 %i.u, label %rb_str_new_frozen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i64 @rb_obj_class(i64 noundef %0) #28, !inline_history !35
  %i.w = tail call fastcc i64 @str_new_frozen_buffer(i64 noundef %i.v, i64 noundef %0, i32 noundef 1), !inline_history !142
  br label %rb_str_new_frozen.exit

rb_str_new_frozen.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.w, %bb.f ], [ %0, %bb.e ]  ; 2 uses
  store i64 %.0.i, ptr %i.g, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %rb_str_new_frozen.exit, %bb.d
  %i.x = phi i64 [ %.0.i, %rb_str_new_frozen.exit ], [ %0, %bb.d ] ; 5 uses
  %i.y = tail call i32 @rb_enc_to_index(ptr noundef %i.p) #32
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.h, label %get_cached_reg_grapheme_cluster.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr @get_cached_reg_grapheme_cluster.reg_grapheme_cluster_utf8, align 8, !tbaa !255 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.i, label %get_cached_reg_grapheme_cluster.exit.thread48

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, ptr noundef nonnull align 1 dereferenceable(3) @__const.get_reg_grapheme_cluster.source_ascii, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ac = load ptr, ptr @OnigDefaultSyntax, align 8, !tbaa !242
  %i.ad = call i32 @onig_new(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ab, i32 noundef 0, ptr noundef %i.p, ptr noundef %i.ac, ptr noundef nonnull %3) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %get_cached_reg_grapheme_cluster.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.ae = sext i32 %i.ad to i64
  %i.af = call i32 (ptr, i64, ...) @onig_error_code_to_str(ptr noundef nonnull %i.f, i64 noundef %i.ae, ptr noundef nonnull %3) #28 ; 0 uses
  call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.250, ptr noundef nonnull %i.f) #30
  unreachable

get_cached_reg_grapheme_cluster.exit:             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !255 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  store ptr %i.ag, ptr @get_cached_reg_grapheme_cluster.reg_grapheme_cluster_utf8, align 8, !tbaa !255
  %.not36.not = icmp eq ptr %i.ag, null
  br i1 %.not36.not, label %get_cached_reg_grapheme_cluster.exit.thread, label %get_cached_reg_grapheme_cluster.exit.thread48

get_cached_reg_grapheme_cluster.exit.thread:      ; preds = %bb.g, %get_cached_reg_grapheme_cluster.exit
  %i.ah = call i32 @rb_enc_to_index(ptr noundef %i.p) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @__const.get_reg_grapheme_cluster.source_ascii, i64 3, i1 false)
  %switch.tableidx = add i32 %i.ah, -3            ; 3 uses
  %i.ai = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ai, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %get_cached_reg_grapheme_cluster.exit.thread
  %i.aj = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.rb_str_each_grapheme_cluster_size, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ak = zext nneg i32 %switch.tableidx to i64
  %switch.gep69 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_str_each_grapheme_cluster_size.10, i64 %i.ak
  %switch.load70 = load ptr, ptr %switch.gep69, align 8
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup, %get_cached_reg_grapheme_cluster.exit.thread
  %.07.i = phi i64 [ 2, %get_cached_reg_grapheme_cluster.exit.thread ], [ %switch.ext, %switch.lookup ]
  %.0.i38 = phi ptr [ %i.a, %get_cached_reg_grapheme_cluster.exit.thread ], [ %switch.load70, %switch.lookup ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.al = getelementptr i8, ptr %.0.i38, i64 %.07.i
  %i.am = load ptr, ptr @OnigDefaultSyntax, align 8, !tbaa !242
  %i.an = call i32 @onig_new(ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i38, ptr noundef %i.al, i32 noundef 0, ptr noundef %i.p, ptr noundef %i.am, ptr noundef nonnull %2) #28 ; 2 uses
  %.not.i39 = icmp eq i32 %i.an, 0
  br i1 %.not.i39, label %get_reg_grapheme_cluster.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.ao = sext i32 %i.an to i64
  %i.ap = call i32 (ptr, i64, ...) @onig_error_code_to_str(ptr noundef nonnull %i.c, i64 noundef %i.ao, ptr noundef nonnull %2) #28 ; 0 uses
  call void (ptr, ...) @rb_fatal(ptr noundef nonnull @.str.250, ptr noundef nonnull %i.c) #30
  unreachable

get_reg_grapheme_cluster.exit:                    ; preds = %bb.k
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %get_cached_reg_grapheme_cluster.exit.thread48

get_cached_reg_grapheme_cluster.exit.thread48:    ; preds = %bb.h, %get_reg_grapheme_cluster.exit, %get_cached_reg_grapheme_cluster.exit
  %.not36.not46 = phi i1 [ false, %get_cached_reg_grapheme_cluster.exit ], [ true, %get_reg_grapheme_cluster.exit ], [ false, %bb.h ]
  %.028 = phi ptr [ %i.ag, %get_cached_reg_grapheme_cluster.exit ], [ %i.aq, %get_reg_grapheme_cluster.exit ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ar = inttoptr i64 %i.x to ptr                ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = and i64 %i.as, 8192
  %.not.i40 = icmp eq i64 %i.at, 0
  %i.au = getelementptr i8, ptr %i.ar, i64 24     ; 2 uses
  br i1 %.not.i40, label %RSTRING_END.exit, label %bb.m

bb.m:                                             ; preds = %get_cached_reg_grapheme_cluster.exit.thread48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %get_cached_reg_grapheme_cluster.exit.thread48, %bb.m
  %i.aw = phi ptr [ %i.av, %bb.m ], [ %i.au, %get_cached_reg_grapheme_cluster.exit.thread48 ] ; 5 uses
  %i.ax = getelementptr i8, ptr %i.ar, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr i8, ptr %i.aw, i64 %i.ay  ; 5 uses
  %i.ba = icmp ult ptr %i.aw, %i.az
  br i1 %i.ba, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %RSTRING_END.exit
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  br i1 %.not35, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.n
  %.02653.us = phi ptr [ %i.bi, %bb.n ], [ %i.aw, %.lr.ph ] ; 4 uses
  %i.bc = call i64 @onig_match(ptr noundef %.028, ptr noundef %.02653.us, ptr noundef nonnull %i.az, ptr noundef %.02653.us, ptr noundef null, i32 noundef 0) #28 ; 3 uses
  %i.bd = icmp slt i64 %i.bc, 1
  br i1 %i.bd, label %.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.be = ptrtoint ptr %.02653.us to i64
  %i.bf = sub i64 %i.be, %i.bb
  %i.bg = call fastcc i64 @str_subseq(i64 noundef %i.x, i64 noundef %i.bf, i64 noundef %i.bc) ; 2 uses
  call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.bg, i64 noundef %i.x)
  %i.bh = call i64 @rb_yield(i64 noundef %i.bg) #28 ; 0 uses
  %i.bi = getelementptr i8, ptr %.02653.us, i64 %i.bc ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %i.az
  br i1 %i.bj, label %.lr.ph.split.us, label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.02653 = phi ptr [ %i.bq, %bb.o ], [ %i.aw, %.lr.ph ] ; 4 uses
  %i.bk = call i64 @onig_match(ptr noundef %.028, ptr noundef %.02653, ptr noundef nonnull %i.az, ptr noundef %.02653, ptr noundef null, i32 noundef 0) #28 ; 3 uses
  %i.bl = icmp slt i64 %i.bk, 1
  br i1 %i.bl, label %.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split
  %i.bm = ptrtoint ptr %.02653 to i64
  %i.bn = sub i64 %i.bm, %i.bb
  %i.bo = call fastcc i64 @str_subseq(i64 noundef %i.x, i64 noundef %i.bn, i64 noundef %i.bk) ; 2 uses
  call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.bo, i64 noundef %i.x)
  %i.bp = call i64 @rb_ary_push(i64 noundef %1, i64 noundef %i.bo) #28 ; 0 uses
  %i.bq = getelementptr i8, ptr %.02653, i64 %i.bk ; 2 uses
  %i.br = icmp ult ptr %i.bq, %i.az
  br i1 %i.br, label %.lr.ph.split, label %.thread

.thread:                                          ; preds = %bb.o, %.lr.ph.split, %bb.n, %.lr.ph.split.us, %RSTRING_END.exit
  br i1 %.not36.not46, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  call void @onig_free(ptr noundef %.028) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store ptr %i.g, ptr %i.h, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #28, !srcloc !256
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %i.bt = load volatile i64, ptr %i.bs, align 8, !tbaa !27 ; 0 uses
  %. = select i1 %.not35, i64 %0, i64 %1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.c
  %.1 = phi i64 [ %., %bb.q ], [ %i.r, %bb.c ]
  ret i64 %.1
}

declare i64 @onig_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @onig_free(ptr noundef) local_unnamed_addr #3

declare i32 @onig_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @onig_error_code_to_str(ptr noundef, i64 noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(1)
declare noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare ptr @crypt_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #26

declare ptr @rb_errno_ptr() local_unnamed_addr #3

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_syserr_fail(i32 noundef, ptr noundef) local_unnamed_addr #10

declare zeroext i1 @rb_reg_start_with_p(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @scan_once(i64 noundef %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !27
  %i.d = tail call fastcc i64 @rb_pat_search0(i64 noundef %1, i64 noundef %0, i64 noundef %i.c, i32 noundef range(i32 0, 2) %3, ptr noundef null) ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = add i64 %i.k, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call i64 @rb_backref_get() #28      ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !27
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = getelementptr i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr i8, ptr %i.n, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.057 = phi i64 [ %i.l, %bb.c ], [ %i.u, %bb.d ] ; 7 uses
  %.056 = phi i64 [ %i.d, %bb.c ], [ %i.r, %bb.d ] ; 3 uses
  %.055 = phi ptr [ null, %bb.c ], [ %i.o, %bb.d ] ; 4 uses
  %i.v = icmp eq i64 %.056, %.057
  br i1 %i.v, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.w = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = trunc i64 %i.x to i32
  %i.z = lshr i32 %i.y, 22
  %i.aa = and i32 %i.z, 127                       ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 127
  br i1 %i.ab, label %bb.g, label %get_encoding.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.aa, %bb.f ]
  %i.ad = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28
  %i.ae = getelementptr i8, ptr %i.w, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, %.057
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %get_encoding.exit
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !11
  %i.ai = and i64 %i.ah, 8192
  %.not.i = icmp eq i64 %i.ai, 0
  %i.aj = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.h, %bb.i
  %i.al = phi ptr [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %.057
  %i.an = getelementptr i8, ptr %i.al, i64 %i.af
  %i.ao = tail call i32 @rb_enc_fast_mbclen(ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.ad) #28
  %i.ap = sext i32 %i.ao to i64
  %i.aq = add i64 %.057, %i.ap
  br label %bb.k

bb.j:                                             ; preds = %get_encoding.exit
  %i.ar = add i64 %.057, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %RSTRING_END.exit, %bb.j
  %storemerge61 = phi i64 [ %i.aq, %RSTRING_END.exit ], [ %i.ar, %bb.j ], [ %.057, %bb.e ]
  store i64 %storemerge61, ptr %2, align 8, !tbaa !27
  %.not = icmp eq ptr %.055, null
  br i1 %.not, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %.055, i64 4      ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !159 ; 2 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = tail call i64 @rb_ary_new_capa(i64 noundef %i.av) #28 ; 2 uses
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !159
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.az = getelementptr i8, ptr %.055, i64 8
  %i.ba = getelementptr i8, ptr %.055, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !156
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !27 ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !158
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !27
  %i.bi = sub i64 %i.bh, %i.bd
  %i.bj = tail call fastcc i64 @str_subseq(i64 noundef %0, i64 noundef %i.bd, i64 noundef %i.bi) ; 2 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.bj, i64 noundef %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.050 = phi i64 [ %i.bj, %bb.o ], [ 4, %bb.n ]
  %i.bk = tail call i64 @rb_ary_push(i64 noundef %i.aw, i64 noundef %.050) #28 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = load i32, ptr %i.as, align 4, !tbaa !159
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %bb.n, label %._crit_edge, !llvm.loop !257

bb.q:                                             ; preds = %bb.k, %bb.l
  %i.bo = sub i64 %.057, %.056
  %i.bp = tail call fastcc i64 @str_subseq(i64 noundef %0, i64 noundef %.056, i64 noundef %i.bo) ; 2 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.bp, i64 noundef %0)
  br label %.sink.split

._crit_edge:                                      ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.a, ptr %i.b, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #28, !srcloc !258
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !47
end_hunk_10
begin_hunk_11_@deleted_prefix_length:bb.a
  %.0.i.i34 = phi i32 [ %i.br, %enc_coderange_scan.exit.i.i38 ], [ %i.bf, %bb.l ]
  %i.bw = icmp eq i32 %.0.i.i34, 3145728
  br i1 %i.bw, label %bb.p, label %bb.u

bb.p:                                             ; preds = %is_broken_string.exit39
  %i.bx = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.by = trunc i64 %i.bx to i32                  ; 2 uses
  %i.bz = and i32 %i.by, 3145728                  ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %is_broken_string.exit45

bb.q:                                             ; preds = %bb.p
  %i.cb = lshr i32 %i.by, 22
  %i.cc = and i32 %i.cb, 127                      ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 127
  br i1 %i.cd, label %bb.r, label %get_encoding.exit.i.i41

bb.r:                                             ; preds = %bb.q
  %i.ce = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i.i41

get_encoding.exit.i.i41:                          ; preds = %bb.r, %bb.q
  %.0.i.i.i.i42 = phi i32 [ %i.ce, %bb.r ], [ %i.cc, %bb.q ]
  %i.cf = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i42) #28
  %i.cg = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.ch = and i64 %i.cg, 8192
  %.not.i.i.i.i43 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i43, label %enc_coderange_scan.exit.i.i44, label %bb.s

bb.s:                                             ; preds = %get_encoding.exit.i.i41
  %i.ci = load ptr, ptr %i.aw, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i.i44

enc_coderange_scan.exit.i.i44:                    ; preds = %bb.s, %get_encoding.exit.i.i41
  %i.cj = phi ptr [ %i.ci, %bb.s ], [ %i.aw, %get_encoding.exit.i.i41 ]
  %i.ck = load i64, ptr %i.ar, align 8, !tbaa !14
  %i.cl = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.cj, i64 noundef %i.ck, ptr noundef %i.cf) ; 2 uses
  %i.cm = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.cn = and i64 %i.cm, -3145729
  %i.co = zext nneg i32 %i.cl to i64
  %i.cp = or i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.aq, align 8, !tbaa !11
  br label %is_broken_string.exit45

is_broken_string.exit45:                          ; preds = %bb.p, %enc_coderange_scan.exit.i.i44
  %.0.i.i40 = phi i32 [ %i.cl, %enc_coderange_scan.exit.i.i44 ], [ %i.bz, %bb.p ]
  %i.cq = icmp eq i32 %.0.i.i40, 3145728
  br i1 %i.cq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %is_broken_string.exit45
  %i.cr = getelementptr i8, ptr %i.ay, i64 %i.as
  %i.cs = getelementptr i8, ptr %i.ay, i64 %i.ao  ; 2 uses
  %i.ct = tail call ptr @onigenc_get_right_adjust_char_head(ptr noundef %.022, ptr noundef %i.ay, ptr noundef %i.cs, ptr noundef %i.cr) #28
  %i.cu = icmp eq ptr %i.ct, %i.cs
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %is_broken_string.exit39
  br label %bb.v

bb.v:                                             ; preds = %is_broken_string.exit45, %RSTRING_PTR.exit33, %bb.h, %bb.g, %bb.t, %bb.u
  %.1 = phi i64 [ 0, %RSTRING_PTR.exit33 ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ao, %bb.u ], [ 0, %bb.t ], [ 0, %is_broken_string.exit45 ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @deleted_suffix_length(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  %.0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  %i.b = icmp eq i64 %.0..0..0., 0
  %i.c = and i64 %.0..0..0., 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.f = inttoptr i64 %.0..0..0. to ptr           ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.j = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.j, ptr %i.a, align 8, !tbaa !27
  %.phi.trans.insert = inttoptr i64 %i.j to ptr   ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.pre-phi = phi ptr [ %i.f, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.phi.trans.insert, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 8 uses
  %i.k = phi i64 [ %i.g, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %.0..0.22 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = and i32 %i.l, 3145728                    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %is_broken_string.exit

bb.b:                                             ; preds = %rb_string_value.exit
  %i.o = lshr i32 %i.l, 22
  %i.p = and i32 %i.o, 127                        ; 2 uses
  %i.q = icmp eq i32 %i.p, 127
  br i1 %i.q, label %bb.c, label %get_encoding.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @rb_enc_get_index(i64 noundef %.0..0.22) #28
  br label %get_encoding.exit.i.i

get_encoding.exit.i.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.c ], [ %i.p, %bb.b ]
  %i.s = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i) #28
  %i.t = load i64, ptr %.pre-phi, align 8, !tbaa !11
  %i.u = and i64 %i.t, 8192
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %.pre-phi, i64 24  ; 2 uses
  br i1 %.not.i.i.i.i, label %enc_coderange_scan.exit.i.i, label %bb.d

bb.d:                                             ; preds = %get_encoding.exit.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i.i

enc_coderange_scan.exit.i.i:                      ; preds = %bb.d, %get_encoding.exit.i.i
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.v, %get_encoding.exit.i.i ]
  %i.y = getelementptr i8, ptr %.pre-phi, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.x, i64 noundef %i.z, ptr noundef %i.s) ; 2 uses
  %i.ab = load i64, ptr %.pre-phi, align 8, !tbaa !11
  %i.ac = and i64 %i.ab, -3145729
  %i.ad = zext nneg i32 %i.aa to i64
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %.pre-phi, align 8, !tbaa !11
  br label %is_broken_string.exit

is_broken_string.exit:                            ; preds = %rb_string_value.exit, %enc_coderange_scan.exit.i.i
  %.0.i.i = phi i32 [ %i.aa, %enc_coderange_scan.exit.i.i ], [ %i.m, %rb_string_value.exit ]
  %i.af = icmp eq i32 %.0.i.i, 3145728
  br i1 %i.af, label %bb.k, label %bb.e

bb.e:                                             ; preds = %is_broken_string.exit
  %i.ag = tail call ptr @rb_enc_check(i64 noundef %0, i64 noundef %.0..0.22) #28
  %i.ah = getelementptr i8, ptr %.pre-phi, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14 ; 5 uses
  %i.aj = icmp slt i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %i.an = icmp slt i64 %i.am, %i.ai
  br i1 %i.an, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.ap = and i64 %i.ao, 8192
  %.not.i = icmp eq i64 %i.ap, 0
  %i.aq = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.g, %bb.h
  %i.as = phi ptr [ %i.ar, %bb.h ], [ %i.aq, %bb.g ] ; 2 uses
  %i.at = load i64, ptr %.pre-phi, align 8, !tbaa !11
  %i.au = and i64 %i.at, 8192
  %.not.i20 = icmp eq i64 %i.au, 0
  %i.av = getelementptr i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i20, label %RSTRING_PTR.exit21, label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  br label %RSTRING_PTR.exit21

RSTRING_PTR.exit21:                               ; preds = %RSTRING_PTR.exit, %bb.i
  %i.ax = phi ptr [ %i.aw, %bb.i ], [ %i.av, %RSTRING_PTR.exit ]
  %i.ay = getelementptr i8, ptr %i.as, i64 %i.am  ; 2 uses
  %i.az = sub nsw i64 0, %i.ai
  %i.ba = getelementptr i8, ptr %i.ay, i64 %i.az  ; 3 uses
  %bcmp = tail call i32 @bcmp(ptr %i.ba, ptr %i.ax, i64 %i.ai)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %RSTRING_PTR.exit21
  %i.bb = tail call ptr @onigenc_get_left_adjust_char_head(ptr noundef %i.ag, ptr noundef %i.as, ptr noundef %i.ba, ptr noundef %i.ay) #28
  %i.bc = icmp eq ptr %i.bb, %i.ba
  %. = select i1 %i.bc, i64 %i.ai, i64 0
  br label %bb.k

bb.k:                                             ; preds = %RSTRING_PTR.exit21, %bb.j, %bb.f, %bb.e, %is_broken_string.exit
  %.1 = phi i64 [ 0, %bb.f ], [ 0, %is_broken_string.exit ], [ 0, %bb.e ], [ %., %bb.j ], [ 0, %RSTRING_PTR.exit21 ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @tr_trans(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca [256 x i32], align 16             ; 78 uses
  %4 = alloca %struct.tr, align 8                 ; 11 uses
  %5 = alloca %struct.tr, align 8                 ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  store i64 %2, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.e = tail call fastcc zeroext i1 @single_byte_optimizable(i64 noundef %0)
  %i.f = zext i1 %i.e to i32                      ; 3 uses
  %i.g = load volatile i64, ptr %i.a, align 8, !tbaa !27 ; 5 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.l = inttoptr i64 %i.g to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 5
  br i1 %i.o, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.p = tail call i64 @rb_convert_type_with_id(i64 noundef %i.g, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.p, ptr %i.a, align 8, !tbaa !27
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.q = phi i64 [ %i.g, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.p, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 3 uses
  %.0..0..0. = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.r = icmp eq i64 %.0..0..0., 0
  %i.s = and i64 %.0..0..0., 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i374, label %rbimpl_RB_TYPE_P_fastpath.exit.i373

rbimpl_RB_TYPE_P_fastpath.exit.i373:              ; preds = %rb_string_value.exit
  %i.v = inttoptr i64 %.0..0..0. to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = and i64 %i.w, 31
  %i.y = icmp eq i64 %i.x, 5
  br i1 %i.y, label %rb_string_value.exit376, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i374

rbimpl_RB_TYPE_P_fastpath.exit.thread.i374:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i373, %rb_string_value.exit
  %i.z = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.z, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit376

rb_string_value.exit376:                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i373, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i374
  %.0..0.400 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i373 ], [ %i.z, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i374 ] ; 3 uses
  %i.aa = inttoptr i64 %0 to ptr                  ; 11 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16     ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !14
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.loopexit.thread, label %bb.b

bb.b:                                             ; preds = %rb_string_value.exit376
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.af = and i64 %i.ae, 8192
  %.not.i = icmp eq i64 %i.af, 0
  %i.ag = getelementptr i8, ptr %i.aa, i64 24     ; 8 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.ai = phi ptr [ %i.ah, %bb.c ], [ %i.ag, %bb.b ]
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.loopexit.thread, label %bb.d

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.aj = inttoptr i64 %.0..0.400 to ptr          ; 3 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = call i64 @rb_str_delete_bang(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0)
  br label %.loopexit.thread

bb.f:                                             ; preds = %bb.d
  %i.ao = trunc i64 %i.ae to i32
  %i.ap = and i32 %i.ao, 3145728                  ; 2 uses
  %i.aq = tail call ptr @rb_enc_check(i64 noundef %0, i64 noundef %i.q) #28 ; 14 uses
  %i.ar = tail call ptr @rb_enc_check(i64 noundef %0, i64 noundef %.0..0.400) #28
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = tail call ptr @rb_enc_check(i64 noundef %i.q, i64 noundef %.0..0.400) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0253 = phi ptr [ %i.at, %bb.g ], [ %i.aq, %bb.f ] ; 21 uses
  %i.au = inttoptr i64 %i.q to ptr                ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  %i.aw = and i64 %i.av, 8192
  %.not.i377 = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  br i1 %.not.i377, label %RSTRING_PTR.exit378, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  br label %RSTRING_PTR.exit378

RSTRING_PTR.exit378:                              ; preds = %bb.h, %bb.i
  %i.az = phi ptr [ %i.ay, %bb.i ], [ %i.ax, %bb.h ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !265
  %i.bb = getelementptr i8, ptr %i.au, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 %i.bc  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !267
  %i.bf = icmp sgt i64 %i.bc, 1
  br i1 %i.bf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %RSTRING_PTR.exit378
  %i.bg = call i32 @rb_enc_ascget(ptr noundef %i.az, ptr noundef %i.bd, ptr noundef nonnull %i.d, ptr noundef %.0253) #28
  %i.bh = icmp eq i32 %i.bg, 94
  br i1 %i.bh, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !7
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.az, i64 %i.bj  ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.bd
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.bk, ptr %i.ba, align 8, !tbaa !265
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %RSTRING_PTR.exit378
  %.not331 = phi i1 [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %RSTRING_PTR.exit378 ] ; 6 uses
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.bn = and i64 %i.bm, 8192
  %.not.i379 = icmp eq i64 %i.bn, 0
  %i.bo = getelementptr i8, ptr %i.aj, i64 24     ; 2 uses
  br i1 %.not.i379, label %RSTRING_PTR.exit380, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20
  br label %RSTRING_PTR.exit380

RSTRING_PTR.exit380:                              ; preds = %bb.m, %bb.n
  %i.bq = phi ptr [ %i.bp, %bb.n ], [ %i.bo, %bb.m ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !265
  %i.bs = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !267
  store i32 0, ptr %5, align 8, !tbaa !270
  store i32 0, ptr %4, align 8, !tbaa !270
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store i32 0, ptr %i.bv, align 4, !tbaa !269
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !269
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.bx, align 8, !tbaa !268
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.by, align 8, !tbaa !268
  br i1 %.not331, label %.preheader416.preheader, label %vector.body

vector.body:                                      ; preds = %RSTRING_PTR.exit380
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x i32> splat (i32 1), ptr %i.c, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.bz, align 16, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x i32> splat (i32 1), ptr %i.ca, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cb, align 16, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x i32> splat (i32 1), ptr %i.cc, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cd, align 16, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store <4 x i32> splat (i32 1), ptr %i.ce, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cf, align 16, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store <4 x i32> splat (i32 1), ptr %i.cg, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.ch, align 16, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store <4 x i32> splat (i32 1), ptr %i.ci, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cj, align 16, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store <4 x i32> splat (i32 1), ptr %i.ck, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cl, align 16, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store <4 x i32> splat (i32 1), ptr %i.cm, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cn, align 16, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store <4 x i32> splat (i32 1), ptr %i.co, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cp, align 16, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store <4 x i32> splat (i32 1), ptr %i.cq, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cr, align 16, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store <4 x i32> splat (i32 1), ptr %i.cs, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.ct, align 16, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store <4 x i32> splat (i32 1), ptr %i.cu, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cv, align 16, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store <4 x i32> splat (i32 1), ptr %i.cw, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cx, align 16, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store <4 x i32> splat (i32 1), ptr %i.cy, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.cz, align 16, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store <4 x i32> splat (i32 1), ptr %i.da, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.db, align 16, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store <4 x i32> splat (i32 1), ptr %i.dc, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dd, align 16, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  store <4 x i32> splat (i32 1), ptr %i.de, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.df, align 16, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  store <4 x i32> splat (i32 1), ptr %i.dg, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dh, align 16, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  store <4 x i32> splat (i32 1), ptr %i.di, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dj, align 16, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  store <4 x i32> splat (i32 1), ptr %i.dk, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dl, align 16, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  store <4 x i32> splat (i32 1), ptr %i.dm, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dn, align 16, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  store <4 x i32> splat (i32 1), ptr %i.do, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dp, align 16, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  store <4 x i32> splat (i32 1), ptr %i.dq, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dr, align 16, !tbaa !7
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 752
  store <4 x i32> splat (i32 1), ptr %i.ds, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dt, align 16, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 784
  store <4 x i32> splat (i32 1), ptr %i.du, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dv, align 16, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 816
  store <4 x i32> splat (i32 1), ptr %i.dw, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dx, align 16, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 848
  store <4 x i32> splat (i32 1), ptr %i.dy, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.dz, align 16, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 864
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 880
  store <4 x i32> splat (i32 1), ptr %i.ea, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.eb, align 16, !tbaa !7
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 912
  store <4 x i32> splat (i32 1), ptr %i.ec, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.ed, align 16, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 928
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 944
  store <4 x i32> splat (i32 1), ptr %i.ee, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.ef, align 16, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 976
  store <4 x i32> splat (i32 1), ptr %i.eg, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.eh, align 16, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 992
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 1008
  store <4 x i32> splat (i32 1), ptr %i.ei, align 16, !tbaa !7
  store <4 x i32> splat (i32 1), ptr %i.ej, align 16, !tbaa !7
  %i.ek = call fastcc i32 @trnext(ptr noundef %4, ptr noundef %.0253) ; 2 uses
  %.not335432 = icmp eq i32 %i.ek, -1
  br i1 %.not335432, label %.preheader418, label %.lr.ph

.preheader416.preheader:                          ; preds = %RSTRING_PTR.exit380
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 -1, i64 1024, i1 false), !tbaa !7
  %i.el = call fastcc i32 @trnext(ptr noundef %4, ptr noundef %.0253) ; 2 uses
  %.not332436 = icmp eq i32 %i.el, -1
  br i1 %.not332436, label %.loopexit415, label %.lr.ph439

.preheader418:                                    ; preds = %bb.s, %vector.body
  %.0278.lcssa = phi i64 [ 0, %vector.body ], [ %.2280, %bb.s ]
  br label %bb.t

.lr.ph:                                           ; preds = %vector.body, %bb.s
  %i.em = phi i32 [ %i.ev, %bb.s ], [ %i.ek, %vector.body ] ; 3 uses
  %.0278433 = phi i64 [ %.2280, %bb.s ], [ 0, %vector.body ] ; 3 uses
  %i.en = icmp ult i32 %i.em, 256
  br i1 %i.en, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = getelementptr [4 x i8], ptr %i.c, i64 %i.eo
  store i32 -1, ptr %i.ep, align 4, !tbaa !7
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph
  %.not357 = icmp eq i64 %.0278433, 0
  br i1 %.not357, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eq = call i64 @rb_hash_new() #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1279 = phi i64 [ %.0278433, %bb.p ], [ %i.eq, %bb.q ] ; 2 uses
  %i.er = zext i32 %i.em to i64
  %i.es = shl nuw nsw i64 %i.er, 1
  %i.et = or disjoint i64 %i.es, 1
  %i.eu = call i64 @rb_hash_aset(i64 noundef %.1279, i64 noundef %i.et, i64 noundef 20) #28 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.2280 = phi i64 [ %.0278433, %bb.o ], [ %.1279, %bb.r ] ; 2 uses
  %i.ev = call fastcc i32 @trnext(ptr noundef %4, ptr noundef %.0253) ; 2 uses
  %.not335 = icmp eq i32 %i.ev, -1
  br i1 %.not335, label %.preheader418, label %.lr.ph, !llvm.loop !273

bb.t:                                             ; preds = %.preheader418, %bb.t
  %i.ew = call fastcc i32 @trnext(ptr noundef %5, ptr noundef %.0253)
  %.not336 = icmp eq i32 %i.ew, -1
  br i1 %.not336, label %vector.ph539, label %bb.t, !llvm.loop !274

vector.ph539:                                     ; preds = %bb.t
  %i.ex = load i32, ptr %i.bv, align 4, !tbaa !269 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_11
