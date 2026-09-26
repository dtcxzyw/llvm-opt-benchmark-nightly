Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pack?download=true
inline.NumInlined: 148
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pack_unpack1:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %3, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2long(i64 noundef %3) #12
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = tail call fastcc i64 @pack_unpack_internal(i64 noundef %1, i64 noundef %2, i32 noundef 2, i64 noundef %.0.i)
  ret i64 %i.d
}

declare void @rb_load_with_builtin_functions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_pack() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_make_internal_id() #12
  store i64 %i.a, ptr @id_associated, align 8, !tbaa !12
  ret void
}

declare i64 @rb_make_internal_id() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #2

declare void @rb_must_asciicompat(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #2

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #2

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @pack_modifiers(ptr nofree noundef readonly captures(ret: address, provenance) %0, i8 noundef signext %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = sext i8 %1 to i32                        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.1, %bb.l ]     ; 3 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !15     ; 4 uses
  switch i8 %i.b, label %bb.k [
    i8 95, label %bb.c
    i8 33, label %bb.c
    i8 60, label %bb.f
    i8 62, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %memchr11 = tail call ptr @memchr(ptr nonnull dereferenceable(1) @natstr, i32 %i.a, i64 11)
  %.not12 = icmp eq ptr %memchr11, null
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4, !tbaa !10
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  %i.d = zext nneg i8 %i.b to i32
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.17, i32 noundef %i.d, ptr noundef nonnull @natstr) #13
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.b
  %memchr = tail call ptr @memchr(ptr nonnull dereferenceable(1) @natstr, i32 %i.a, i64 11)
  %.not = icmp eq ptr %memchr, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  %i.f = zext nneg i8 %i.b to i32
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.17, i32 noundef %i.f, ptr noundef nonnull @natstr) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.g = load i32, ptr %3, align 4, !tbaa !10
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = load i64, ptr @rb_eRangeError, align 8, !tbaa !12
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.18) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.i = zext nneg i8 %i.b to i32
  store i32 %i.i, ptr %3, align 4, !tbaa !10
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  ret ptr %.0

bb.l:                                             ; preds = %bb.j, %bb.d
  %.1 = getelementptr i8, ptr %.0, i64 1
  br label %bb.b
}

declare ptr @rb_errno_ptr() local_unnamed_addr #2

declare i64 @ruby_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #4

declare i32 @rb_integer_pack(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @rb_float_value(i64 noundef) local_unnamed_addr #5

declare i64 @rb_to_float(i64 noundef) local_unnamed_addr #2

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_to_int(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @encodes(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef range(i32 -128, 128) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4097 x i8], align 16             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %3, 117                      ; 2 uses
  %i.c = select i1 %i.b, ptr @uu_table, ptr @b64_table ; 9 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i8
  %i.e = add i8 %i.d, 32
  store i8 %i.e, ptr %i.a, align 16, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.056 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]      ; 2 uses
  %.055 = phi i8 [ 96, %bb.b ], [ 61, %bb.a ]     ; 2 uses
  %i.f = icmp sgt i64 %2, 2
  br i1 %i.f, label %.preheader, label %._crit_edge69

.preheader:                                       ; preds = %bb.c, %bb.d
  %.068 = phi ptr [ %.1.lcssa85, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.15767 = phi i64 [ %.3, %bb.d ], [ %.056, %bb.c ] ; 3 uses
  %.05866 = phi i64 [ %.159.lcssa82, %bb.d ], [ %2, %bb.c ] ; 2 uses
  %notsub = add i64 %.15767, -4097
  %i.g = icmp slt i64 %notsub, -4
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.162 = phi ptr [ %i.as, %.lr.ph ], [ %.068, %.preheader ] ; 5 uses
  %.261 = phi i64 [ %i.aq, %.lr.ph ], [ %.15767, %.preheader ] ; 3 uses
  %.15960 = phi i64 [ %i.at, %.lr.ph ], [ %.05866, %.preheader ] ; 2 uses
  %i.h = load i8, ptr %.162, align 1, !tbaa !15
  %i.i = lshr i8 %i.h, 2
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr i8, ptr %i.c, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = getelementptr i8, ptr %i.a, i64 %.261    ; 4 uses
  store i8 %i.l, ptr %i.m, align 1, !tbaa !15
  %i.n = load i8, ptr %.162, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 4
  %i.q = and i64 %i.p, 48
  %i.r = getelementptr i8, ptr %.162, i64 1       ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  %i.t = lshr i8 %i.s, 4
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr i8, ptr %i.c, i64 %i.q
  %i.w = getelementptr i8, ptr %i.v, i64 %i.u
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = getelementptr i8, ptr %i.m, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !15
  %i.z = load i8, ptr %i.r, align 1, !tbaa !15
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = and i64 %i.ab, 60
  %i.ad = getelementptr i8, ptr %.162, i64 2      ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = lshr i8 %i.ae, 6
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %i.ak = getelementptr i8, ptr %i.m, i64 2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !15
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.am = and i8 %i.al, 63
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr i8, ptr %i.c, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !15
  %i.aq = add nsw i64 %.261, 4                    ; 3 uses
  %i.ar = getelementptr i8, ptr %i.m, i64 3
  store i8 %i.ap, ptr %i.ar, align 1, !tbaa !15
  %i.as = getelementptr i8, ptr %.162, i64 3      ; 3 uses
  %i.at = add nsw i64 %.15960, -3                 ; 3 uses
  %i.au = icmp samesign ugt i64 %.15960, 5
  %i.av = sub i64 4092, %.261                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 3
  %i.ax = and i1 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph
  %i.ay = icmp slt i64 %i.av, 4
  br i1 %i.ay, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.1.lcssa86 = phi ptr [ %i.as, %._crit_edge ], [ %.068, %.preheader ]
  %.2.lcssa84 = phi i64 [ %i.aq, %._crit_edge ], [ %.15767, %.preheader ]
  %.159.lcssa83 = phi i64 [ %i.at, %._crit_edge ], [ %.05866, %.preheader ]
  %i.az = call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull %i.a, i64 noundef %.2.lcssa84) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.1.lcssa85 = phi ptr [ %.1.lcssa86, %._crit_edge.thread ], [ %i.as, %._crit_edge ] ; 2 uses
  %.159.lcssa82 = phi i64 [ %.159.lcssa83, %._crit_edge.thread ], [ %i.at, %._crit_edge ] ; 3 uses
  %.3 = phi i64 [ 0, %._crit_edge.thread ], [ %i.aq, %._crit_edge ] ; 2 uses
  %i.ba = icmp sgt i64 %.159.lcssa82, 2
  br i1 %i.ba, label %.preheader, label %._crit_edge69, !llvm.loop !51

._crit_edge69:                                    ; preds = %bb.d, %bb.c
  %.058.lcssa = phi i64 [ %2, %bb.c ], [ %.159.lcssa82, %bb.d ]
  %.157.lcssa = phi i64 [ %.056, %bb.c ], [ %.3, %bb.d ] ; 6 uses
  %.0.lcssa = phi ptr [ %1, %bb.c ], [ %.1.lcssa85, %bb.d ] ; 5 uses
  switch i64 %.058.lcssa, label %bb.g [
    i64 2, label %bb.e
    i64 1, label %bb.f
  ]

bb.e:                                             ; preds = %._crit_edge69
  %i.bb = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.bc = lshr i8 %i.bb, 2
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = getelementptr i8, ptr %i.c, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bg = getelementptr i8, ptr %i.a, i64 %.157.lcssa ; 2 uses
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !15
  %i.bh = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = and i64 %i.bj, 48
  %i.bl = getelementptr i8, ptr %.0.lcssa, i64 1  ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.bn = lshr i8 %i.bm, 4
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = getelementptr i8, ptr %i.c, i64 %i.bk
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15
  %i.bs = getelementptr i8, ptr %i.bg, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !15
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = and i64 %i.bv, 60
  %i.bx = getelementptr i8, ptr %i.c, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !15
  br label %.sink.split

bb.f:                                             ; preds = %._crit_edge69
  %i.bz = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.ca = lshr i8 %i.bz, 2
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = getelementptr i8, ptr %i.c, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !15
  %i.ce = getelementptr i8, ptr %i.a, i64 %.157.lcssa ; 2 uses
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !15
  %i.cf = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 4
  %i.ci = and i64 %i.ch, 48
  %i.cj = getelementptr i8, ptr %i.c, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 16, !tbaa !15
  %i.cl = getelementptr i8, ptr %i.ce, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !15
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.055.sink = phi i8 [ %.055, %bb.f ], [ %i.by, %bb.e ]
  %i.cm = getelementptr i8, ptr %i.a, i64 %.157.lcssa
  %i.cn = getelementptr i8, ptr %i.a, i64 %.157.lcssa
  %i.co = getelementptr i8, ptr %i.cn, i64 2
  store i8 %.055.sink, ptr %i.co, align 1, !tbaa !15
  %i.cp = add i64 %.157.lcssa, 4
  %i.cq = getelementptr i8, ptr %i.cm, i64 3
  store i8 %.055, ptr %i.cq, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %._crit_edge69
  %.4 = phi i64 [ %.157.lcssa, %._crit_edge69 ], [ %i.cp, %.sink.split ] ; 3 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cr = add i64 %.4, 1
  %i.cs = getelementptr i8, ptr %i.a, i64 %.4
  store i8 10, ptr %i.cs, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.5 = phi i64 [ %i.cr, %bb.h ], [ %.4, %bb.g ]  ; 2 uses
  %i.ct = call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull %i.a, i64 noundef %.5) #12 ; 0 uses
  %i.cu = icmp ugt i64 %.5, 4097
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.19) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i64 @rb_obj_as_string(i64 noundef) local_unnamed_addr #2

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new() local_unnamed_addr #2

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_absint_numwords(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @unknown_directive(ptr noundef %0, i8 noundef signext %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = sext i8 %1 to i32                        ; 2 uses
  %i.c = add nsw i32 %i.b, -127
  %i.d = icmp ult i32 %i.c, -95
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.a, align 1, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 255
  %i.g = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.20, i32 noundef %i.f) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = call i64 @rb_str_quote_unprintable(i64 noundef %2) #12
  %i.i = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.h) #13
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_usascii_encindex() local_unnamed_addr #7

declare void @rb_enc_set_index(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_utf8_encindex() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_str_quote_unprintable(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_block_given_p() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @pack_unpack_internal(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 3) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca [3 x i8], align 1                 ; 6 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !12
end_hunk_0
