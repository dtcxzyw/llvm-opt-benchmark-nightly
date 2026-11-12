Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ic_term_writeln:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread5
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %term_writeln.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %0, align 1, !tbaa !48
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %term_writeln.exit, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %bb.d
  %i.m = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #29
  %i.n = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.m, i64 0)
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %0, i64 noundef %i.n)
  br label %term_writeln.exit

term_writeln.exit:                                ; preds = %bb.c, %bb.d, %ic_strlen.exit.i.i
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.296, i64 noundef 1)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit.thread5, %ic_get_env.exit, %term_writeln.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_writef(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread6.i

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %ic_term_vwritef.exit, label %ic_get_env.exit.i

ic_get_env.exit.i:                                ; preds = %bb.b
  %i.d = call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i.i, null
  br i1 %i.e, label %ic_term_vwritef.exit, label %ic_get_env.exit.thread6.i

ic_get_env.exit.thread6.i:                        ; preds = %ic_get_env.exit.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %ic_get_env.exit.i ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_term_vwritef.exit, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread6.i
  %i.j = getelementptr i8, ptr %i.h, i64 56
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !186
  call fastcc void @sbuf_append_vprintf(ptr noundef %.val.i, ptr noundef readonly %0, ptr noundef nonnull %1)
  br label %ic_term_vwritef.exit

ic_term_vwritef.exit:                             ; preds = %bb.b, %ic_get_env.exit.i, %ic_get_env.exit.thread6.i, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_vwritef(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread6

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread6

ic_get_env.exit.thread6:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread6
  %i.j = getelementptr i8, ptr %i.h, i64 56
  %.val = load ptr, ptr %i.j, align 8, !tbaa !186
  tail call fastcc void @sbuf_append_vprintf(ptr noundef %.val, ptr noundef readonly %0, ptr noundef %1)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit.thread6, %ic_get_env.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_reset() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread4
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.418, i64 noundef 3)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit.thread4, %ic_get_env.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_style(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.tag_s, align 8              ; 5 uses
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread9

ic_get_env.exit.thread9:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread9
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ic_get_env.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.k, i64 24
  %.val = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr i8, ptr %i.k, i64 40
  %.val8 = load i64, ptr %i.n, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call fastcc void @attr_update_with_styles(ptr noundef %1, ptr noundef %0, ptr noundef null, i1 noundef zeroext false, ptr noundef readonly %.val, i64 noundef %.val8)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  tail call fastcc void @term_set_attr(ptr noundef nonnull %i.h, i64 %.sroa.0.0.copyload.i)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit.thread9, %bb.c, %ic_get_env.exit, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @term_set_attr(ptr nofree noundef captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !160, !range !136, !noundef !137
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %1 to i32
  %i.e = and i32 %i.d, 268435455                  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 268435455
  %.not = icmp eq i32 %i.e, %i.i
  %.not43 = icmp eq i32 %i.e, 0
  %or.cond = or i1 %.not43, %.not
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @term_color_ex(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %i.e, i1 noundef zeroext false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !188
  %i.l = icmp ult i32 %i.k, 4
  %i.m = icmp samesign ugt i32 %i.e, 16777215
  %or.cond59 = select i1 %i.l, i1 %i.m, i1 false
  %.pre = load i64, ptr %i.f, align 8             ; 2 uses
  br i1 %or.cond59, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %1, 268435455
  %i.o = and i64 %.pre, -268435456
  %i.p = or disjoint i64 %i.o, %i.n               ; 2 uses
  store i64 %i.p, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %2 = phi i64 [ %.pre, %bb.c ], [ %i.p, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.q = lshr i64 %1, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = and i32 %i.r, 268435455                  ; 4 uses
  %3 = lshr i64 %2, 32
  %4 = trunc nuw i64 %3 to i32
  %i.t = and i32 %4, 268435455
  %.not44 = icmp eq i32 %i.s, %i.t
  %.not45 = icmp eq i32 %i.s, 0
  %or.cond54 = or i1 %.not45, %.not44
  br i1 %or.cond54, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @term_color_ex(ptr noundef nonnull %0, i32 noundef range(i32 1, 268435456) %i.s, i1 noundef zeroext true)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !188
  %i.w = icmp ult i32 %i.v, 4
  %i.x = icmp samesign ugt i32 %i.s, 16777215
  %or.cond60 = select i1 %i.w, i1 %i.x, i1 false
  %.pre61 = load i64, ptr %i.f, align 8           ; 2 uses
  br i1 %or.cond60, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %1, 1152921500311879680
  %i.z = and i64 %.pre61, -1152921500311879681
  %i.aa = or disjoint i64 %i.z, %i.y              ; 2 uses
  store i64 %i.aa, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ab = phi i64 [ %.pre61, %bb.f ], [ %i.aa, %bb.g ], [ %2, %bb.e ] ; 2 uses
  %i.ac = shl i64 %1, 34
  %i.ad = ashr i64 %i.ac, 62                      ; 3 uses
  %i.ae = shl i64 %i.ab, 34
  %i.af = ashr i64 %i.ae, 62
  %.not46 = icmp eq i64 %i.ad, %i.af
  %.not47 = icmp eq i64 %i.ad, 0
  %or.cond55 = or i1 %.not47, %.not46
  br i1 %or.cond55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq i64 %i.ad, 1                    ; 2 uses
  %i.ah = select i1 %i.ag, ptr @.str.419, ptr @.str.420
  %i.ai = select i1 %i.ag, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ah, i64 noundef %i.ai)
  %.pre62.a = load i64, ptr %i.f, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi i64 [ %.pre62.a, %bb.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ak = shl i64 %1, 2
  %i.al = ashr i64 %i.ak, 62                      ; 3 uses
  %i.am = shl i64 %i.aj, 2
  %i.an = ashr i64 %i.am, 62
  %.not48 = icmp eq i64 %i.al, %i.an
  %.not49 = icmp eq i64 %i.al, 0
  %or.cond56 = or i1 %.not49, %.not48
  br i1 %or.cond56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.al, 1                    ; 2 uses
  %i.ap = select i1 %i.ao, ptr @.str.421, ptr @.str.422
  %i.aq = select i1 %i.ao, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ap, i64 noundef %i.aq)
  %.pre63 = load i64, ptr %i.f, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi i64 [ %.pre63, %bb.k ], [ %i.aj, %bb.j ] ; 2 uses
  %i.as = shl i64 %1, 32
  %i.at = ashr i64 %i.as, 62                      ; 3 uses
  %i.au = shl i64 %i.ar, 32
  %i.av = ashr i64 %i.au, 62
  %.not50 = icmp eq i64 %i.at, %i.av
  %.not51 = icmp eq i64 %i.at, 0
  %or.cond57 = or i1 %.not51, %.not50
  br i1 %or.cond57, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp eq i64 %i.at, 1                    ; 2 uses
  %i.ax = select i1 %i.aw, ptr @.str.425, ptr @.str.426
  %i.ay = select i1 %i.aw, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ax, i64 noundef %i.ay)
  %.pre64 = load i64, ptr %i.f, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = phi i64 [ %.pre64, %bb.m ], [ %i.ar, %bb.l ]
  %i.ba = ashr i64 %1, 62                         ; 3 uses
  %i.bb = ashr i64 %i.az, 62
  %.not52 = icmp eq i64 %i.ba, %i.bb
  %.not53 = icmp eq i64 %i.ba, 0
  %or.cond58 = or i1 %.not53, %.not52
  br i1 %or.cond58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i64 %i.ba, 1                    ; 2 uses
  %i.bd = select i1 %i.bc, ptr @.str.423, ptr @.str.424
  %i.be = select i1 %i.bc, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bd, i64 noundef %i.be)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 25) i32 @ic_term_get_color_bits() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread5

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %term_get_color_bits.exit, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %term_get_color_bits.exit, label %ic_get_env.exit.thread5

ic_get_env.exit.thread5:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %term_get_color_bits.exit, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread5
  %i.j = getelementptr i8, ptr %i.h, i64 48
  %.val = load i32, ptr %i.j, align 8, !tbaa !188 ; 2 uses
  %i.k = icmp ult i32 %.val, 5
  br i1 %i.k, label %switch.lookup, label %term_get_color_bits.exit

switch.lookup:                                    ; preds = %bb.c
  %i.l = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ic_env_create, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %term_get_color_bits.exit

term_get_color_bits.exit:                         ; preds = %bb.c, %switch.lookup, %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread5
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %ic_get_env.exit.thread5 ], [ 4, %ic_get_env.exit ], [ 4, %bb.b ], [ 4, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_bold(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread4
  %i.j = select i1 %0, ptr @.str.419, ptr @.str.420
  %i.k = select i1 %0, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %i.j, i64 noundef %i.k)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread4, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_underline(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.c, ptr @rpenv, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %ic_get_env.exit.thread, label %ic_get_env.exit

ic_get_env.exit:                                  ; preds = %bb.b
  %i.d = tail call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.e = icmp eq ptr %.pre.i, null
  br i1 %i.e, label %ic_get_env.exit.thread, label %ic_get_env.exit.thread4

ic_get_env.exit.thread4:                          ; preds = %bb.a, %ic_get_env.exit
  %i.f = phi ptr [ %.pre.i, %ic_get_env.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %ic_get_env.exit.thread, label %bb.c

bb.c:                                             ; preds = %ic_get_env.exit.thread4
  %i.j = select i1 %0, ptr @.str.421, ptr @.str.422
  %i.k = select i1 %0, i64 4, i64 5
  tail call fastcc void @term_write_n(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %i.j, i64 noundef %i.k)
  br label %ic_get_env.exit.thread

ic_get_env.exit.thread:                           ; preds = %bb.b, %ic_get_env.exit, %ic_get_env.exit.thread4, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_term_italic(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %ic_get_env.exit.thread4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
end_hunk_0
