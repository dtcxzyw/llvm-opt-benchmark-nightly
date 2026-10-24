Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/string?download=true
inline.NumInlined: 2338
inline.NumDeleted: 197
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@rb_str_equal:bb.a

RSTRING_PTR.exit15.i:                             ; preds = %bb.h, %RSTRING_PTR.exit.i
  %i.aa = phi ptr [ %i.z, %bb.h ], [ %i.y, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.ab = icmp eq ptr %i.v, %i.aa
  br i1 %i.ab, label %rb_str_eql_internal.exit, label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit15.i
  %bcmp.i = tail call i32 @bcmp(ptr %i.v, ptr %i.aa, i64 %i.n)
  %i.ac = icmp eq i32 %bcmp.i, 0
  %..i = select i1 %i.ac, i64 20, i64 0
  br label %rb_str_eql_internal.exit

rb_str_eql_internal.exit:                         ; preds = %bb.i, %RSTRING_PTR.exit15.i, %bb.e, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.a, %bb.c
  %.0 = phi i64 [ 20, %bb.a ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.k, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %..i, %bb.i ], [ 20, %RSTRING_PTR.exit15.i ]
  ret i64 %.0
}

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_str_eql(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %rb_str_eql_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rb_str_eql_internal.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %bb.c, label %rb_str_eql_internal.exit

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38   ; 2 uses
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  %.not.i = icmp eq i64 %i.l, %i.n
  br i1 %.not.i, label %bb.d, label %rb_str_eql_internal.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @rb_str_comparable(i64 noundef %0, i64 noundef %1)
  %.not13.i = icmp eq i32 %i.o, 0
  br i1 %.not13.i, label %rb_str_eql_internal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.j, align 8, !tbaa !36
  %i.q = and i64 %i.p, 8192
  %.not.i.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.u = load i64, ptr %i.f, align 8, !tbaa !36
  %i.v = and i64 %i.u, 8192
  %.not.i14.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i14.i, label %RSTRING_PTR.exit15.i, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  br label %RSTRING_PTR.exit15.i

RSTRING_PTR.exit15.i:                             ; preds = %bb.g, %RSTRING_PTR.exit.i
  %i.y = phi ptr [ %i.x, %bb.g ], [ %i.w, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.z = icmp eq ptr %i.t, %i.y
  br i1 %i.z, label %rb_str_eql_internal.exit, label %bb.h

bb.h:                                             ; preds = %RSTRING_PTR.exit15.i
  %bcmp.i = tail call i32 @bcmp(ptr %i.t, ptr %i.y, i64 %i.l)
  %i.aa = icmp eq i32 %bcmp.i, 0
  %..i = select i1 %i.aa, i64 20, i64 0
  br label %rb_str_eql_internal.exit

rb_str_eql_internal.exit:                         ; preds = %bb.b, %bb.h, %RSTRING_PTR.exit15.i, %bb.d, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.a
  %.0 = phi i64 [ 20, %bb.a ], [ 20, %RSTRING_PTR.exit15.i ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ %..i, %bb.h ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_str_succ(i64 noundef %0) #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %i.i = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.j = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.k = tail call fastcc noundef i64 @str_enc_new(i64 noundef %i.i, ptr noundef readonly %i.f, i64 noundef %i.h, ptr noundef nonnull %i.j) ; 3 uses
  tail call fastcc void @rb_enc_cr_str_copy_for_substr(i64 noundef %i.k, i64 noundef %0)
  %i.l = tail call fastcc i64 @str_succ(i64 noundef %i.k) ; 0 uses
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @str_succ(i64 noundef returned %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 8 uses
  %i.b = alloca [7 x i8], align 1                 ; 7 uses
  %i.c = alloca [7 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @__const.str_succ.carry, i64 7, i1 false)
  %i.d = inttoptr i64 %0 to ptr                   ; 16 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %rb_enc_str_coderange.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !tbaa !36
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %i.i, 22
  %i.k = and i32 %i.j, 127                        ; 2 uses
  %i.l = icmp eq i32 %i.k, 127
  br i1 %i.l, label %bb.c, label %get_encoding.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit

get_encoding.exit:                                ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.m, %bb.c ], [ %i.k, %bb.b ]
  %i.n = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i) #28 ; 36 uses
  %i.o = load i64, ptr %i.d, align 8, !tbaa !36
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.d, i64 24       ; 11 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %get_encoding.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %get_encoding.exit, %bb.d
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %get_encoding.exit ] ; 6 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.f     ; 9 uses
  %i.u = getelementptr i8, ptr %i.n, i64 32       ; 5 uses
  %i.v = getelementptr i8, ptr %i.n, i64 88       ; 5 uses
  %i.w = getelementptr i8, ptr %i.n, i64 20       ; 3 uses
  %i.x = getelementptr i8, ptr %i.n, i64 40
  %i.y = getelementptr i8, ptr %i.n, i64 48
  %i.z = ptrtoint ptr %i.s to i64                 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.ac, %RSTRING_PTR.exit
  %.0135.ph = phi ptr [ %.us-phi221, %bb.ac ], [ %i.t, %RSTRING_PTR.exit ]
  %.0133.ph = phi ptr [ %.us-phi221, %bb.ac ], [ null, %RSTRING_PTR.exit ] ; 2 uses
  %.not149 = phi i1 [ false, %bb.ac ], [ true, %RSTRING_PTR.exit ]
  %.0128.ph = phi i64 [ %i.ds, %bb.ac ], [ 0, %RSTRING_PTR.exit ] ; 3 uses
  %.0125.ph = phi i64 [ %i.ar, %bb.ac ], [ 1, %RSTRING_PTR.exit ] ; 3 uses
  %i.aa = icmp ne ptr %.0133.ph, null
  br label %.outer191

.outer191:                                        ; preds = %.outer, %enc_succ_alnum_char.exit
  %.0135.ph192 = phi ptr [ %.0135.ph, %.outer ], [ %.us-phi221, %enc_succ_alnum_char.exit ] ; 2 uses
  %or.cond = phi i1 [ false, %.outer ], [ %i.aa, %enc_succ_alnum_char.exit ]
  br i1 %or.cond, label %.outer191.split.us, label %.outer191.split

.outer191.split.us:                               ; preds = %.outer191, %bb.i
  %.0135.us = phi ptr [ %i.ab, %bb.i ], [ %.0135.ph192, %.outer191 ]
  %i.ab = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0135.us, ptr noundef %i.t) #28 ; 6 uses
  %.not.us = icmp eq ptr %i.ab, null
  br i1 %.not.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %.outer191.split.us
  %i.ac = load i8, ptr %.0133.ph, align 1, !tbaa !43
  %i.ad = sext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, -33
  %i.af = add nsw i32 %i.ae, -91
  %narrow.i.us = icmp ult i32 %i.af, -26
  br i1 %narrow.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !43
  %1 = sext i8 %i.ag to i32
  %2 = add nsw i32 %1, -58
  %i.ah = icmp ult i32 %2, -10
  br i1 %i.ah, label %bb.i, label %.split.us

bb.g:                                             ; preds = %bb.e
  %i.ai = add nsw i32 %i.ad, -58
  %i.aj = icmp ult i32 %i.ai, -10
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %i.ab, align 1, !tbaa !43
  %i.al = and i8 %i.ak, -33
  %3 = sext i8 %i.al to i32
  %4 = add nsw i32 %3, -91
  %narrow.i153.us = icmp ult i32 %4, -26
  br i1 %narrow.i153.us, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.am = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.ab, ptr noundef %i.t, ptr noundef %i.n) #28 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.split218.us, label %.outer191.split.us, !llvm.loop !142

.outer191.split:                                  ; preds = %.outer191, %bb.j
  %.0135 = phi ptr [ %i.ao, %bb.j ], [ %.0135.ph192, %.outer191 ]
  %i.ao = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0135, ptr noundef %i.t) #28 ; 4 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.outer191.split
  %i.ap = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.ao, ptr noundef %i.t, ptr noundef %i.n) #28 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.split218.us, label %.outer191.split, !llvm.loop !142

.split218.us:                                     ; preds = %bb.j, %bb.i
  %.us-phi219 = phi i32 [ %i.am, %bb.i ], [ %i.ap, %bb.j ] ; 4 uses
  %.us-phi221 = phi ptr [ %i.ab, %bb.i ], [ %i.ao, %bb.j ] ; 29 uses
  %i.ar = zext nneg i32 %.us-phi219 to i64        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.as = getelementptr i8, ptr %.us-phi221, i64 %i.ar ; 9 uses
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.au = call i32 %i.at(ptr noundef nonnull %.us-phi221, ptr noundef %i.as, ptr noundef %i.n) #28, !inline_history !143 ; 2 uses
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.aw = call i32 %i.av(i32 noundef %i.au, i32 noundef 4, ptr noundef %i.n) #28, !inline_history !144
  %.not.i154 = icmp eq i32 %i.aw, 0               ; 2 uses
  br i1 %.not.i154, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split218.us
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.ay = call i32 %i.ax(i32 noundef %i.au, i32 noundef 1, ptr noundef nonnull %i.n) #28, !inline_history !144
  %.not65.i = icmp eq i32 %i.ay, 0
  br i1 %.not65.i, label %enc_succ_alnum_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split218.us
  %.055.i = phi i32 [ 4, %.split218.us ], [ 1, %bb.k ] ; 3 uses
  %i.az = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.ar, i64 noundef 7) #28, !alias.scope !163 ; 0 uses
  %i.ba = call fastcc i32 @enc_succ_char(ptr noundef nonnull %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.ar, ptr noundef nonnull %i.n)
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.bd = call i32 %i.bc(ptr noundef nonnull %.us-phi221, ptr noundef %i.as, ptr noundef nonnull %i.n) #28, !inline_history !143
  %i.be = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.bf = call i32 %i.be(i32 noundef %i.bd, i32 noundef range(i32 1, 5) %.055.i, ptr noundef nonnull %i.n) #28, !inline_history !144
  %.not67.i = icmp eq i32 %i.bf, 0
  br i1 %.not67.i, label %bb.n, label %enc_succ_alnum_char.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = call fastcc i32 @enc_succ_char(ptr noundef nonnull %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.ar, ptr noundef nonnull %i.n)
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.bj = call i32 %i.bi(ptr noundef nonnull %.us-phi221, ptr noundef %i.as, ptr noundef nonnull %i.n) #28, !inline_history !143
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.bl = call i32 %i.bk(i32 noundef %i.bj, i32 noundef range(i32 1, 5) %.055.i, ptr noundef nonnull %i.n) #28, !inline_history !144
  %.not67.1.i = icmp eq i32 %i.bl, 0
  br i1 %.not67.1.i, label %bb.p, label %enc_succ_alnum_char.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.us-phi221, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 noundef range(i64 1, 2147483648) %i.ar, i1 noundef false) #28
  %i.bm = add nsw i64 %i.ar, -1                   ; 7 uses
  %.not188 = icmp eq i32 %.us-phi219, 1
  %i.bn = getelementptr i8, ptr %.us-phi221, i64 %i.bm ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.z, %bb.p
  %.054.i = phi i32 [ 1, %bb.p ], [ %i.dn, %bb.z ] ; 2 uses
  %i.bo = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.ar, i64 noundef 7) #28, !alias.scope !164 ; 0 uses
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !42
  %i.bp = icmp sgt i32 %.val.i.i, 1
  br i1 %i.bp, label %bb.v, label %.preheader74.i.i

.preheader74.i.i:                                 ; preds = %bb.q
  br i1 %.not188, label %.preheader74.split.i.i.preheader, label %.preheader74.split.us.i.i

.preheader74.split.i.i.preheader:                 ; preds = %.preheader74.i.i
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !43  ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %enc_pred_char.exit.thread.loopexit68.i, label %.critedge.i.i

.preheader74.split.us.i.i:                        ; preds = %.preheader74.i.i, %.preheader74.split.us.i.i.backedge
  %.06377.us.i.i = phi i64 [ %.06377.us.i.i.be, %.preheader74.split.us.i.i.backedge ], [ %i.bm, %.preheader74.i.i ] ; 4 uses
  %i.bs = getelementptr i8, ptr %.us-phi221, i64 %.06377.us.i.i ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !43  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %.critedge.us.i.i

bb.r:                                             ; preds = %.preheader74.split.us.i.i
  store i8 -1, ptr %i.bs, align 1, !tbaa !43
  %i.bv = add nsw i64 %.06377.us.i.i, -1
  %i.bw = icmp sgt i64 %.06377.us.i.i, 0
  br i1 %i.bw, label %.preheader74.split.us.i.i.backedge, label %enc_pred_char.exit.thread.i

.preheader74.split.us.i.i.backedge:               ; preds = %bb.r, %.thread.us.i.i, %._crit_edge.us.i.i, %bb.s
  %.06377.us.i.i.be = phi i64 [ %i.bv, %bb.r ], [ %i.bm, %bb.s ], [ %i.bm, %.thread.us.i.i ], [ %i.bm, %._crit_edge.us.i.i ]
  br label %.preheader74.split.us.i.i, !llvm.loop !151

.critedge.us.i.i:                                 ; preds = %.preheader74.split.us.i.i
  %i.bx = add i8 %i.bt, -1
  store i8 %i.bx, ptr %i.bs, align 1, !tbaa !43
  %i.by = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.as, ptr noundef nonnull %i.n) #28 ; 4 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge.us.i.i
  %i.ca = icmp eq i32 %i.by, -1
  %i.cb = icmp slt i64 %.06377.us.i.i, %i.bm
  %or.cond.us.i.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.us.i.i, label %.preheader.us.i.i, label %.preheader74.split.us.i.i.backedge

.preheader.us.i.i:                                ; preds = %bb.s, %bb.t
  %.078.us.i.i = phi i64 [ %i.cf, %bb.t ], [ %i.bm, %bb.s ] ; 4 uses
  %i.cc = getelementptr i8, ptr %.us-phi221, i64 %.078.us.i.i
  %i.cd = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.cc, ptr noundef nonnull %i.n) #28
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %bb.t, label %._crit_edge.us.i.i

bb.t:                                             ; preds = %.preheader.us.i.i
  %i.cf = add nsw i64 %.078.us.i.i, -1
  %i.cg = icmp sgt i64 %.078.us.i.i, 1
  br i1 %i.cg, label %.preheader.us.i.i, label %._crit_edge.us.i.i, !llvm.loop !152

._crit_edge.us.i.i:                               ; preds = %bb.t, %.preheader.us.i.i
  %.0.lcssa.us.i.i = phi i64 [ %.078.us.i.i, %.preheader.us.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.ch = getelementptr i8, ptr %.us-phi221, i64 %.0.lcssa.us.i.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %.neg.us.i.i = xor i64 %.0.lcssa.us.i.i, -1
  %i.cj = add i64 %.neg.us.i.i, %i.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ci, i8 noundef 0, i64 noundef %i.cj, i1 noundef false) #28
  br label %.preheader74.split.us.i.i.backedge

bb.u:                                             ; preds = %.critedge.us.i.i
  %i.ck = icmp eq i32 %.us-phi219, %i.by
  br i1 %i.ck, label %enc_pred_char.exit.thread63.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %bb.u
  %i.cl = zext nneg i32 %i.by to i64              ; 2 uses
  %i.cm = getelementptr i8, ptr %.us-phi221, i64 %i.cl
  %i.cn = sub nsw i64 %i.ar, %i.cl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cm, i8 noundef 0, i64 noundef %i.cn, i1 noundef false) #28
  br label %.preheader74.split.us.i.i.backedge

bb.v:                                             ; preds = %bb.q
  %i.co = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.as, ptr noundef nonnull %i.n) #28
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.w, label %enc_pred_char.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.cr = call i32 %i.cq(ptr noundef nonnull %.us-phi221, ptr noundef %i.as, ptr noundef nonnull %i.n) #28, !inline_history !153 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i, label %enc_pred_char.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  %i.ct = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.cu = call i32 %i.ct(i32 noundef %i.cs, ptr noundef nonnull %i.n) #28, !inline_history !154
  %.not72.i.i = icmp eq i32 %.us-phi219, %i.cu
  br i1 %.not72.i.i, label %enc_pred_char.exit.i, label %enc_pred_char.exit.thread.i

enc_pred_char.exit.thread.loopexit68.i:           ; preds = %.preheader74.split.i.i.preheader, %.preheader74.split.i.i
  store i8 -1, ptr %i.bn, align 1, !tbaa !43
  br label %enc_pred_char.exit.thread.i

.critedge.i.i:                                    ; preds = %.preheader74.split.i.i.preheader, %.preheader74.split.i.i
  %i.cv = phi i8 [ %i.dd, %.preheader74.split.i.i ], [ %i.bq, %.preheader74.split.i.i.preheader ]
  %i.cw = add i8 %i.cv, -1
  store i8 %i.cw, ptr %i.bn, align 1, !tbaa !43
  %i.cx = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.as, ptr noundef nonnull %i.n) #28 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.y, label %.preheader74.split.i.i

bb.y:                                             ; preds = %.critedge.i.i
  %i.cz = icmp eq i32 %i.cx, 1
  br i1 %i.cz, label %enc_pred_char.exit.thread63.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.y
  %i.da = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.db = getelementptr i8, ptr %.us-phi221, i64 %i.da
  %i.dc = sub nsw i64 1, %i.da
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.db, i8 noundef 0, i64 noundef %i.dc, i1 noundef false) #28
  br label %.preheader74.split.i.i

.preheader74.split.i.i:                           ; preds = %.thread.i.i, %.critedge.i.i
  %i.dd = load i8, ptr %i.bn, align 1, !tbaa !43  ; 2 uses
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %enc_pred_char.exit.thread.loopexit68.i, label %.critedge.i.i

enc_pred_char.exit.i:                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.dg = call i32 %i.df(i32 noundef %i.cs, ptr noundef nonnull %.us-phi221, ptr noundef nonnull %i.n) #28, !inline_history !155 ; 0 uses
  %i.dh = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.as, ptr noundef nonnull %i.n) #28
  %i.di = icmp sgt i32 %i.dh, 0
end_hunk_0
begin_hunk_1_@rb_str_upto_each:bb.a
  br i1 %i.w, label %bb.c, label %get_encoding.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i.i

get_encoding.exit.i.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.c ], [ %i.v, %bb.b ]
  %i.y = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i) #28
  %i.z = load i64, ptr %i.p, align 8, !tbaa !36
  %i.aa = and i64 %i.z, 8192
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr i8, ptr %i.p, i64 24      ; 2 uses
  br i1 %.not.i.i.i.i, label %enc_coderange_scan.exit.i.i, label %bb.d

bb.d:                                             ; preds = %get_encoding.exit.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  br label %enc_coderange_scan.exit.i.i

enc_coderange_scan.exit.i.i:                      ; preds = %bb.d, %get_encoding.exit.i.i
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ %i.ab, %get_encoding.exit.i.i ]
  %i.ae = getelementptr i8, ptr %i.p, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ag = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.ad, i64 noundef %i.af, ptr noundef %i.y) ; 2 uses
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !36
  %i.ai = and i64 %i.ah, -3145729
  %i.aj = zext nneg i32 %i.ag to i64
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.p, align 8, !tbaa !36
  br label %is_ascii_string.exit

is_ascii_string.exit:                             ; preds = %rb_string_value.exit, %enc_coderange_scan.exit.i.i
  %.0.i.i = phi i32 [ %i.ag, %enc_coderange_scan.exit.i.i ], [ %i.s, %rb_string_value.exit ]
  %i.al = icmp eq i32 %.0.i.i, 1048576
  br i1 %i.al, label %bb.e, label %bb.i

bb.e:                                             ; preds = %is_ascii_string.exit
  %i.am = inttoptr i64 %.0..0.141 to ptr          ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = and i32 %i.ao, 3145728                  ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %is_ascii_string.exit111

bb.f:                                             ; preds = %bb.e
  %i.ar = lshr i32 %i.ao, 22
  %i.as = and i32 %i.ar, 127                      ; 2 uses
  %i.at = icmp eq i32 %i.as, 127
  br i1 %i.at, label %bb.g, label %get_encoding.exit.i.i107

bb.g:                                             ; preds = %bb.f
  %i.au = tail call i32 @rb_enc_get_index(i64 noundef %.0..0.141) #28
  br label %get_encoding.exit.i.i107

get_encoding.exit.i.i107:                         ; preds = %bb.g, %bb.f
  %.0.i.i.i.i108 = phi i32 [ %i.au, %bb.g ], [ %i.as, %bb.f ]
  %i.av = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i108) #28
  %i.aw = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ax = and i64 %i.aw, 8192
  %.not.i.i.i.i109 = icmp eq i64 %i.ax, 0
  %i.ay = getelementptr i8, ptr %i.am, i64 24     ; 2 uses
  br i1 %.not.i.i.i.i109, label %enc_coderange_scan.exit.i.i110, label %bb.h

bb.h:                                             ; preds = %get_encoding.exit.i.i107
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  br label %enc_coderange_scan.exit.i.i110

enc_coderange_scan.exit.i.i110:                   ; preds = %bb.h, %get_encoding.exit.i.i107
  %i.ba = phi ptr [ %i.az, %bb.h ], [ %i.ay, %get_encoding.exit.i.i107 ]
  %i.bb = getelementptr i8, ptr %i.am, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !38
  %i.bd = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.ba, i64 noundef %i.bc, ptr noundef %i.av) ; 2 uses
  %i.be = load i64, ptr %i.am, align 8, !tbaa !36
  %i.bf = and i64 %i.be, -3145729
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = or i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.am, align 8, !tbaa !36
  br label %is_ascii_string.exit111

is_ascii_string.exit111:                          ; preds = %bb.e, %enc_coderange_scan.exit.i.i110
  %.0.i.i106 = phi i32 [ %i.bd, %enc_coderange_scan.exit.i.i110 ], [ %i.ap, %bb.e ]
  %i.bi = icmp eq i32 %.0.i.i106, 1048576
  br label %bb.i

bb.i:                                             ; preds = %is_ascii_string.exit111, %is_ascii_string.exit
  %i.bj = phi i1 [ false, %is_ascii_string.exit ], [ %i.bi, %is_ascii_string.exit111 ] ; 2 uses
  %i.bk = getelementptr i8, ptr %i.p, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !38 ; 7 uses
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bn = inttoptr i64 %.0..0.141 to ptr          ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !38
  %i.bq = icmp eq i64 %i.bp, 1
  %or.cond = select i1 %i.bq, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.br = load i64, ptr %i.p, align 8, !tbaa !36
  %i.bs = and i64 %i.br, 8192
  %.not.i112 = icmp eq i64 %i.bs, 0
  %i.bt = getelementptr i8, ptr %i.p, i64 24      ; 2 uses
  br i1 %.not.i112, label %RSTRING_PTR.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !43
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.k, %bb.l
  %i.bv = phi ptr [ %i.bu, %bb.l ], [ %i.bt, %bb.k ]
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43  ; 5 uses
  store i8 %i.bw, ptr %i.c, align 1, !tbaa !43
  %i.bx = load i64, ptr %i.bn, align 8, !tbaa !36
  %i.by = and i64 %i.bx, 8192
  %.not.i113 = icmp eq i64 %i.by, 0
  %i.bz = getelementptr i8, ptr %i.bn, i64 24     ; 2 uses
  br i1 %.not.i113, label %RSTRING_PTR.exit114, label %bb.m

bb.m:                                             ; preds = %RSTRING_PTR.exit
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  br label %RSTRING_PTR.exit114

RSTRING_PTR.exit114:                              ; preds = %RSTRING_PTR.exit, %bb.m
  %i.cb = phi ptr [ %i.ca, %bb.m ], [ %i.bz, %RSTRING_PTR.exit ]
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !43  ; 4 uses
  %i.cd = icmp sgt i8 %i.bw, %i.cc
  br i1 %i.cd, label %.thread, label %bb.n

bb.n:                                             ; preds = %RSTRING_PTR.exit114
  %.not96 = icmp eq i32 %2, 0                     ; 2 uses
  %i.ce = icmp ne i8 %i.bw, %i.cc
  %or.cond98.not = or i1 %.not96, %i.ce
  br i1 %or.cond98.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.n
  br i1 %.not96, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.o
  %i.cf = phi i8 [ %i.co, %bb.o ], [ %i.bw, %.preheader ] ; 2 uses
  %i.cg = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.ch = call fastcc noundef i64 @str_enc_new(i64 noundef %i.cg, ptr noundef nonnull readonly %i.c, i64 noundef 1, ptr noundef %i.o) ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !36
  %i.ck = and i64 %i.cj, -3145729
  %i.cl = or disjoint i64 %i.ck, 1048576
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !36
  %i.cm = call i32 %3(i64 noundef %i.ch, i64 noundef %4) #28
  %.not97.us = icmp ne i32 %i.cm, 0
  %i.cn = icmp eq i8 %i.cf, %i.cc
  %or.cond169.us = select i1 %.not97.us, i1 true, i1 %i.cn
  br i1 %or.cond169.us, label %.thread, label %bb.o

bb.o:                                             ; preds = %.preheader.split.us
  %i.co = add i8 %i.cf, 1                         ; 2 uses
  store i8 %i.co, ptr %i.c, align 1, !tbaa !43
  br label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.p
  %i.cp = phi i8 [ %i.cx, %bb.p ], [ %i.bw, %.preheader ]
  %i.cq = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.cr = call fastcc noundef i64 @str_enc_new(i64 noundef %i.cq, ptr noundef nonnull readonly %i.c, i64 noundef 1, ptr noundef %i.o) ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !36
  %i.cu = and i64 %i.ct, -3145729
  %i.cv = or disjoint i64 %i.cu, 1048576
  store i64 %i.cv, ptr %i.cs, align 8, !tbaa !36
  %i.cw = call i32 %3(i64 noundef %i.cr, i64 noundef %4) #28
  %.not97.not = icmp eq i32 %i.cw, 0
  br i1 %.not97.not, label %bb.p, label %.thread

bb.p:                                             ; preds = %.preheader.split
  %i.cx = add i8 %i.cp, 1                         ; 3 uses
  store i8 %i.cx, ptr %i.c, align 1, !tbaa !43
  %.not = icmp eq i8 %i.cx, %i.cc
  br i1 %.not, label %.thread, label %.preheader.split

.thread:                                          ; preds = %.preheader.split, %bb.p, %.preheader.split.us, %RSTRING_PTR.exit114, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.thread167

bb.q:                                             ; preds = %bb.j, %bb.i
  br i1 %i.bj, label %bb.r, label %all_digits_p.exit

bb.r:                                             ; preds = %bb.q
  %i.cy = load i64, ptr %i.p, align 8, !tbaa !36
  %i.cz = and i64 %i.cy, 8192
  %.not.i115 = icmp eq i64 %i.cz, 0               ; 2 uses
  %i.da = getelementptr i8, ptr %i.p, i64 24      ; 4 uses
  br i1 %.not.i115, label %RSTRING_PTR.exit116, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !43
  br label %RSTRING_PTR.exit116

RSTRING_PTR.exit116:                              ; preds = %bb.r, %bb.s
  %i.dc = phi ptr [ %i.db, %bb.s ], [ %i.da, %bb.r ]
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !43
  %7 = sext i8 %i.dd to i32
  %8 = add nsw i32 %7, -58
  %i.de = icmp ult i32 %8, -10
  br i1 %i.de, label %all_digits_p.exit, label %bb.t

bb.t:                                             ; preds = %RSTRING_PTR.exit116
  %i.df = inttoptr i64 %.0..0.141 to ptr          ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !36
  %i.dh = and i64 %i.dg, 8192
  %.not.i117 = icmp eq i64 %i.dh, 0               ; 2 uses
  %i.di = getelementptr i8, ptr %i.df, i64 24     ; 4 uses
  br i1 %.not.i117, label %RSTRING_PTR.exit118, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !43
  br label %RSTRING_PTR.exit118

RSTRING_PTR.exit118:                              ; preds = %bb.t, %bb.u
  %i.dk = phi ptr [ %i.dj, %bb.u ], [ %i.di, %bb.t ]
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !43
  %9 = sext i8 %i.dl to i32
  %10 = add nsw i32 %9, -58
  %i.dm = icmp ult i32 %10, -10
  br i1 %i.dm, label %all_digits_p.exit, label %bb.v

bb.v:                                             ; preds = %RSTRING_PTR.exit118
  br i1 %.not.i115, label %RSTRING_PTR.exit120, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !43
  br label %RSTRING_PTR.exit120

RSTRING_PTR.exit120:                              ; preds = %bb.v, %bb.w
  %i.do = phi ptr [ %i.dn, %bb.w ], [ %i.da, %bb.v ]
  %i.dp = icmp sgt i64 %i.bl, 0
  br i1 %i.dp, label %.lr.ph.i121, label %.loopexit174

bb.x:                                             ; preds = %.lr.ph.i121
  %i.dq = add nsw i64 %.in.i, -1
  %i.dr = getelementptr i8, ptr %.035.i, i64 1
  %i.ds = icmp sgt i64 %.in.i, 1
  br i1 %i.ds, label %.lr.ph.i121, label %.loopexit174, !llvm.loop !11

.lr.ph.i121:                                      ; preds = %RSTRING_PTR.exit120, %bb.x
  %.in.i = phi i64 [ %i.dq, %bb.x ], [ %i.bl, %RSTRING_PTR.exit120 ] ; 2 uses
  %.035.i = phi ptr [ %i.dr, %bb.x ], [ %i.do, %RSTRING_PTR.exit120 ] ; 2 uses
  %i.dt = load i8, ptr %.035.i, align 1, !tbaa !43
  %11 = sext i8 %i.dt to i32
  %12 = add nsw i32 %11, -58
  %i.du = icmp ult i32 %12, -10
  br i1 %i.du, label %all_digits_p.exit, label %bb.x

.loopexit174:                                     ; preds = %bb.x, %RSTRING_PTR.exit120
  br i1 %.not.i117, label %RSTRING_PTR.exit123, label %bb.y

bb.y:                                             ; preds = %.loopexit174
  %i.dv = load ptr, ptr %i.di, align 8, !tbaa !43
  br label %RSTRING_PTR.exit123

RSTRING_PTR.exit123:                              ; preds = %.loopexit174, %bb.y
  %i.dw = phi ptr [ %i.dv, %bb.y ], [ %i.di, %.loopexit174 ]
  %i.dx = getelementptr i8, ptr %i.df, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !38 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.i125, label %.loopexit

bb.z:                                             ; preds = %.lr.ph.i125
  %i.ea = add nsw i64 %.in.i126, -1
  %i.eb = getelementptr i8, ptr %.035.i127, i64 1
  %i.ec = icmp sgt i64 %.in.i126, 1
  br i1 %i.ec, label %.lr.ph.i125, label %.loopexit, !llvm.loop !11

.lr.ph.i125:                                      ; preds = %RSTRING_PTR.exit123, %bb.z
  %.in.i126 = phi i64 [ %i.ea, %bb.z ], [ %i.dy, %RSTRING_PTR.exit123 ] ; 2 uses
  %.035.i127 = phi ptr [ %i.eb, %bb.z ], [ %i.dw, %RSTRING_PTR.exit123 ] ; 2 uses
  %i.ed = load i8, ptr %.035.i127, align 1, !tbaa !43
  %13 = sext i8 %i.ed to i32
  %14 = add nsw i32 %13, -58
  %i.ee = icmp ult i32 %14, -10
  br i1 %i.ee, label %all_digits_p.exit, label %bb.z

.loopexit:                                        ; preds = %bb.z, %RSTRING_PTR.exit123
  %i.ef = add i64 %i.bl, 2147483648
  %.not.i.i = icmp ult i64 %i.ef, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  tail call void @rb_out_of_int(i64 noundef %i.bl) #29
  unreachable

RSTRING_LENINT.exit:                              ; preds = %.loopexit
  %i.eg = trunc nsw i64 %i.bl to i32              ; 2 uses
  %i.eh = tail call i64 @rb_str_to_inum(i64 noundef %0, i32 noundef 10, i32 noundef 0) #28 ; 4 uses
  %i.ei = tail call i64 @rb_str_to_inum(i64 noundef %.0..0.141, i32 noundef 10, i32 noundef 0) #28 ; 4 uses
  %i.ej = trunc i64 %i.eh to i1
  %i.ek = trunc i64 %i.ei to i1
  %or.cond170 = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond170, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %RSTRING_LENINT.exit
  %i.el = ashr i64 %i.eh, 1                       ; 4 uses
  %i.em = ashr i64 %i.ei, 1                       ; 5 uses
  %i.en = tail call nonnull ptr @rb_usascii_encoding() #28 ; 2 uses
  %.not93179 = icmp sgt i64 %i.el, %i.em
  br i1 %.not93179, label %.thread167, label %.lr.ph182

.lr.ph182:                                        ; preds = %bb.ab
  %.not94.not = icmp eq i32 %2, 0
  br i1 %.not94.not, label %.lr.ph182.split.us, label %.lr.ph182.split.preheader

.lr.ph182.split.preheader:                        ; preds = %.lr.ph182
  %i.eo = icmp eq i64 %i.el, %i.em
  br i1 %i.eo, label %.thread167, label %.lr.ph220

.lr.ph182.split.us:                               ; preds = %.lr.ph182, %.lr.ph182.split.us
  %.073180.us = phi i64 [ %i.er, %.lr.ph182.split.us ], [ %i.el, %.lr.ph182 ] ; 3 uses
  %i.ep = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.en, ptr noundef nonnull @.str.25, i32 noundef %i.eg, i64 noundef %.073180.us) #28
  %i.eq = tail call i32 %3(i64 noundef %i.ep, i64 noundef %4) #28
  %.not95.us = icmp ne i32 %i.eq, 0
  %i.er = add nsw i64 %.073180.us, 1
  %.not93.us = icmp sge i64 %.073180.us, %i.em
  %or.cond185 = select i1 %.not95.us, i1 true, i1 %.not93.us
  br i1 %or.cond185, label %.thread167, label %.lr.ph182.split.us, !llvm.loop !167

.lr.ph182.split:                                  ; preds = %.lr.ph220
  %i.es = add nsw i64 %.073180219, 1              ; 2 uses
  %i.et = icmp eq i64 %i.es, %i.em
  br i1 %i.et, label %.thread167, label %.lr.ph220, !llvm.loop !167

.lr.ph220:                                        ; preds = %.lr.ph182.split.preheader, %.lr.ph182.split
  %.073180219 = phi i64 [ %i.es, %.lr.ph182.split ], [ %i.el, %.lr.ph182.split.preheader ] ; 3 uses
  %i.eu = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.en, ptr noundef nonnull @.str.25, i32 noundef %i.eg, i64 noundef %.073180219) #28
  %i.ev = tail call i32 %3(i64 noundef %i.eu, i64 noundef %4) #28
  %.not95 = icmp ne i32 %i.ev, 0
  %.not93 = icmp sge i64 %.073180219, %i.em
  %or.cond186 = select i1 %.not95, i1 true, i1 %.not93
  br i1 %or.cond186, label %..thread167.loopexit216_crit_edge, label %.lr.ph182.split, !llvm.loop !167

bb.ac:                                            ; preds = %RSTRING_LENINT.exit
  %.not90 = icmp eq i32 %2, 0
  %i.ew = select i1 %.not90, i64 138, i64 60      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ex = ptrtoint ptr %6 to i64                  ; 2 uses
  store i64 3229622277, ptr %6, align 8, !tbaa !36
  %i.ey = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !48
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 4, ptr %i.fa, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.26, ptr %i.fb, align 8, !tbaa !43
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i64 4, ptr %i.fc, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i8 0, ptr %5, align 1, !tbaa !51
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %i.fd, align 1, !tbaa !52
  %i.fe = call fastcc i64 @str_do_hash(i64 noundef %i.ex)
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !43
  %i.ff = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull @fstring_table_obj, i64 noundef %i.ex, ptr noundef nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.fg = shl nsw i64 %i.bl, 1
  %i.fh = or disjoint i64 %i.fg, 1
  store i64 %i.fh, ptr %i.d, align 16, !tbaa !48
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fj = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.eh, i64 noundef %i.ew, i32 noundef 1, i64 noundef %i.ei) #28
  %.not91176 = icmp eq i64 %i.fj, 0
  br i1 %.not91176, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac, %bb.ad
  %.074177 = phi i64 [ %i.fm, %bb.ad ], [ %i.eh, %bb.ac ] ; 2 uses
  store i64 %.074177, ptr %i.fi, align 8, !tbaa !48
  %i.fk = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.d, i64 noundef %i.ff) #28
  %i.fl = call i32 %3(i64 noundef %i.fk, i64 noundef %4) #28
  %.not92 = icmp eq i32 %i.fl, 0
  br i1 %.not92, label %bb.ad, label %._crit_edge

bb.ad:                                            ; preds = %.lr.ph
  %i.fm = call i64 @rb_funcallv(i64 noundef %.074177, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28 ; 2 uses
  %i.fn = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.fm, i64 noundef %i.ew, i32 noundef 1, i64 noundef %i.ei) #28
  %.not91 = icmp eq i64 %i.fn, 0
  br i1 %.not91, label %._crit_edge, label %.lr.ph, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.ad, %.lr.ph, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.thread167

all_digits_p.exit:                                ; preds = %.lr.ph.i121, %.lr.ph.i125, %RSTRING_PTR.exit118, %RSTRING_PTR.exit116, %bb.q
  %i.fo = tail call i32 @rb_str_cmp(i64 noundef %0, i64 noundef %.0..0.141) ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.thread167, label %bb.ae

bb.ae:                                            ; preds = %all_digits_p.exit
  %i.fq = icmp ne i32 %2, 0                       ; 3 uses
  %i.fr = icmp eq i32 %i.fo, 0
  %or.cond3 = and i1 %i.fq, %i.fr
  br i1 %or.cond3, label %.thread167, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fs = tail call i64 @rb_funcallv(i64 noundef %.0..0.141, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28
  %i.ft = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.fu = tail call fastcc i64 @str_duplicate(i64 noundef %i.ft, i64 noundef %0)
  %i.fv = inttoptr i64 %.0..0.141 to ptr
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.am, %bb.af
  %.0..0.134 = phi i64 [ %.0..0.139, %bb.am ], [ %i.fu, %bb.af ] ; 5 uses
  %i.fx = tail call i64 @rb_str_equal(i64 noundef %.0..0.134, i64 noundef %i.fs)
  %.not86 = icmp eq i64 %i.fx, 0
  br i1 %.not86, label %bb.ah, label %.thread167

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.fq, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fy = tail call i64 @rb_str_equal(i64 noundef %.0..0.134, i64 noundef %.0..0.141)
  %.not87 = icmp eq i64 %i.fy, 0
  br i1 %.not87, label %bb.aj, label %.thread159

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.fz = tail call i64 @rb_funcallv(i64 noundef %.0..0.134, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28 ; 2 uses
  %i.ga = tail call i32 %3(i64 noundef %.0..0.134, i64 noundef %4) #28
  %.not88 = icmp ne i32 %i.ga, 0
  %i.gb = icmp eq i64 %i.fz, 4
  %or.cond171 = select i1 %.not88, i1 true, i1 %i.gb
  br i1 %or.cond171, label %.thread167, label %bb.ak

.thread159:                                       ; preds = %bb.ai
  %i.gc = tail call i32 %3(i64 noundef %.0..0.134, i64 noundef %4) #28 ; 0 uses
  br label %.thread167

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.fz, ptr %i.b, align 8, !tbaa !48
  %.0..0..0. = load volatile i64, ptr %i.b, align 8, !tbaa !48 ; 5 uses
  %i.gd = icmp eq i64 %.0..0..0., 0
  %i.ge = and i64 %.0..0..0., 7
  %i.gf = icmp ne i64 %i.ge, 0
  %i.gg = or i1 %i.gd, %i.gf
  br i1 %i.gg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i131, label %rbimpl_RB_TYPE_P_fastpath.exit.i130

rbimpl_RB_TYPE_P_fastpath.exit.i130:              ; preds = %bb.ak
  %i.gh = inttoptr i64 %.0..0..0. to ptr
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !36
  %i.gj = and i64 %i.gi, 31
  %i.gk = icmp eq i64 %i.gj, 5
  br i1 %i.gk, label %rb_string_value.exit133, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i131

rbimpl_RB_TYPE_P_fastpath.exit.thread.i131:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i130, %bb.ak
  %i.gl = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.gl, ptr %i.b, align 8, !tbaa !48
  br label %rb_string_value.exit133

rb_string_value.exit133:                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i130, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i131
  %.0..0.139 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i130 ], [ %i.gl, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i131 ] ; 3 uses
  br i1 %i.fq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %rb_string_value.exit133
  %i.gm = tail call i64 @rb_str_equal(i64 noundef %.0..0.139, i64 noundef %.0..0.141)
  %.not89 = icmp eq i64 %i.gm, 0
  br i1 %.not89, label %bb.am, label %.thread167

bb.am:                                            ; preds = %bb.al, %rb_string_value.exit133
  %i.gn = inttoptr i64 %.0..0.139 to ptr
  %i.go = getelementptr i8, ptr %i.gn, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !38 ; 2 uses
  %i.gq = load i64, ptr %i.fw, align 8, !tbaa !38
  %i.gr = icmp sgt i64 %i.gp, %i.gq
  %i.gs = icmp eq i64 %i.gp, 0
  %or.cond104 = or i1 %i.gs, %i.gr
  br i1 %or.cond104, label %.thread167, label %bb.ag

..thread167.loopexit216_crit_edge:                ; preds = %.lr.ph220
  br label %.thread167, !llvm.loop !167

.thread167:                                       ; preds = %.lr.ph182.split, %.lr.ph182.split.us, %bb.am, %bb.al, %bb.aj, %bb.ag, %.lr.ph182.split.preheader, %..thread167.loopexit216_crit_edge, %bb.ab, %.thread159, %all_digits_p.exit, %bb.ae, %._crit_edge, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %0
}

declare ptr @rb_enc_check(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_to_inum(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_enc_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_str_format(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_str_upto_endless_each(i64 noundef returned %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.fstr_create_arg, align 1    ; 5 uses
  %4 = alloca %struct.RString, align 8            ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.pr.i = load i64, ptr @rb_str_upto_endless_each.rbimpl_id, align 8, !tbaa !48 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 4) #28 ; 3 uses
  store i64 %i.c, ptr @rb_str_upto_endless_each.rbimpl_id, align 8, !tbaa !48
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !10

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = and i32 %i.f, 3145728                    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %is_ascii_string.exit

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.i = lshr i32 %i.f, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.c, label %get_encoding.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i.i

get_encoding.exit.i.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i) #28
  %i.n = load i64, ptr %i.d, align 8, !tbaa !36
  %i.o = and i64 %i.n, 8192
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i.i.i.i, label %enc_coderange_scan.exit.i.i, label %bb.d

bb.d:                                             ; preds = %get_encoding.exit.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  br label %enc_coderange_scan.exit.i.i

enc_coderange_scan.exit.i.i:                      ; preds = %bb.d, %get_encoding.exit.i.i
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.p, %get_encoding.exit.i.i ]
  %i.s = getelementptr i8, ptr %i.d, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  %i.u = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.r, i64 noundef %i.t, ptr noundef %i.m) ; 2 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !36
  %i.w = and i64 %i.v, -3145729
  %i.x = zext nneg i32 %i.u to i64
  %i.y = or i64 %i.w, %i.x                        ; 2 uses
  store i64 %i.y, ptr %i.d, align 8, !tbaa !36
  br label %is_ascii_string.exit

is_ascii_string.exit:                             ; preds = %rbimpl_intern_const.exit, %enc_coderange_scan.exit.i.i
  %i.z = phi i64 [ %i.y, %enc_coderange_scan.exit.i.i ], [ %i.e, %rbimpl_intern_const.exit ]
  %.0.i.i = phi i32 [ %i.u, %enc_coderange_scan.exit.i.i ], [ %i.g, %rbimpl_intern_const.exit ]
  %i.aa = icmp eq i32 %.0.i.i, 1048576
  br i1 %i.aa, label %bb.e, label %all_digits_p.exit

bb.e:                                             ; preds = %is_ascii_string.exit
  %i.ab = and i64 %i.z, 8192
  %.not.i36 = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr i8, ptr %i.d, i64 24      ; 3 uses
  br i1 %.not.i36, label %RSTRING_PTR.exit, label %RSTRING_PTR.exit.thread

RSTRING_PTR.exit:                                 ; preds = %bb.e
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !43
  %5 = sext i8 %i.ad to i32
  %6 = add nsw i32 %5, -58
  %i.ae = icmp ult i32 %6, -10
  br i1 %i.ae, label %all_digits_p.exit, label %RSTRING_PTR.exit38

RSTRING_PTR.exit.thread:                          ; preds = %bb.e
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43
  %7 = sext i8 %i.ag to i32
  %8 = add nsw i32 %7, -58
  %i.ah = icmp ult i32 %8, -10
  br i1 %i.ah, label %all_digits_p.exit, label %RSTRING_PTR.exit38

RSTRING_PTR.exit38:                               ; preds = %RSTRING_PTR.exit.thread, %RSTRING_PTR.exit
  %i.ai = phi ptr [ %i.ac, %RSTRING_PTR.exit ], [ %i.af, %RSTRING_PTR.exit.thread ]
  %i.aj = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i39, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i39
  %i.am = add nsw i64 %.in.i, -1
  %i.an = getelementptr i8, ptr %.035.i, i64 1
  %i.ao = icmp sgt i64 %.in.i, 1
  br i1 %i.ao, label %.lr.ph.i39, label %.loopexit, !llvm.loop !11

.lr.ph.i39:                                       ; preds = %RSTRING_PTR.exit38, %bb.f
  %.in.i = phi i64 [ %i.am, %bb.f ], [ %i.ak, %RSTRING_PTR.exit38 ] ; 2 uses
  %.035.i = phi ptr [ %i.an, %bb.f ], [ %i.ai, %RSTRING_PTR.exit38 ] ; 2 uses
  %i.ap = load i8, ptr %.035.i, align 1, !tbaa !43
  %9 = sext i8 %i.ap to i32
  %10 = add nsw i32 %9, -58
  %i.aq = icmp ult i32 %10, -10
  br i1 %i.aq, label %all_digits_p.exit, label %bb.f

.loopexit:                                        ; preds = %bb.f, %RSTRING_PTR.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ar = ptrtoint ptr %4 to i64                  ; 2 uses
  store i64 3229622277, ptr %4, align 8, !tbaa !36
  %i.as = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 4, ptr %i.au, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.26, ptr %i.av, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 4, ptr %i.aw, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i8 0, ptr %3, align 1, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.ax, align 1, !tbaa !52
  %i.ay = call fastcc i64 @str_do_hash(i64 noundef %i.ar)
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !43
  %i.az = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull @fstring_table_obj, i64 noundef %i.ar, ptr noundef nonnull %3) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ba = load i64, ptr %i.aj, align 8, !tbaa !38 ; 4 uses
  %i.bb = add i64 %i.ba, 2147483648
  %.not.i.i = icmp ult i64 %i.bb, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  call void @rb_out_of_int(i64 noundef %i.ba) #29
  unreachable

RSTRING_LENINT.exit:                              ; preds = %.loopexit
  %i.bc = trunc nsw i64 %i.ba to i32
  %i.bd = call i64 @rb_str_to_inum(i64 noundef %0, i32 noundef 10, i32 noundef 0) #28 ; 3 uses
  %i.be = trunc i64 %i.bd to i1
  br i1 %i.be, label %bb.h, label %rb_long2num_inline.exit

bb.h:                                             ; preds = %RSTRING_LENINT.exit
  %i.bf = ashr i64 %i.bd, 1
  %i.bg = call nonnull ptr @rb_usascii_encoding() #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %.03054 = phi i64 [ %i.bf, %bb.h ], [ %i.bj, %bb.j ] ; 3 uses
  %i.bh = call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.bg, ptr noundef nonnull @.str.25, i32 noundef %i.bc, i64 noundef %.03054) #28
  %i.bi = call i32 %1(i64 noundef %i.bh, i64 noundef %2) #28
  %.not33 = icmp eq i32 %i.bi, 0
  br i1 %.not33, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = add nsw i64 %.03054, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, 4611686018427387904
  br i1 %exitcond.not, label %.thread48, label %bb.i, !llvm.loop !169

bb.k:                                             ; preds = %bb.i
  %i.bk = shl nsw i64 %.03054, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %rb_long2num_inline.exit

.thread48:                                        ; preds = %bb.j
  %i.bm = call i64 @rb_int2big(i64 noundef 4611686018427387904) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %.thread48, %bb.k, %RSTRING_LENINT.exit
  %.031 = phi i64 [ %i.bd, %RSTRING_LENINT.exit ], [ %i.bl, %bb.k ], [ %i.bm, %.thread48 ] ; 2 uses
  %i.bn = shl i64 %i.ba, 1
  %i.bo = or disjoint i64 %i.bn, 1
  store i64 %i.bo, ptr %i.b, align 16, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %.031, ptr %i.bp, align 8, !tbaa !48
  %i.bq = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.b, i64 noundef %i.az) #28
  %i.br = call i32 %1(i64 noundef %i.bq, i64 noundef %2) #28
  %.not3455 = icmp eq i32 %i.br, 0
  br i1 %.not3455, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %rb_long2num_inline.exit, %.lr.ph
  %.156 = phi i64 [ %i.bs, %.lr.ph ], [ %.031, %rb_long2num_inline.exit ]
  %i.bs = call i64 @rb_funcallv(i64 noundef %.156, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28 ; 2 uses
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !48
  %i.bt = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.b, i64 noundef %i.az) #28
  %i.bu = call i32 %1(i64 noundef %i.bt, i64 noundef %2) #28
  %.not34 = icmp eq i32 %i.bu, 0
  br i1 %.not34, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %rb_long2num_inline.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %all_digits_p.exit

all_digits_p.exit:                                ; preds = %.lr.ph.i39, %RSTRING_PTR.exit.thread, %._crit_edge, %RSTRING_PTR.exit, %is_ascii_string.exit
  %i.bv = load i64, ptr @rb_cString, align 8, !tbaa !48
  %i.bw = call fastcc i64 @str_duplicate(i64 noundef %i.bv, i64 noundef %0)
  br label %bb.l

bb.l:                                             ; preds = %rb_string_value.exit, %all_digits_p.exit
  %.0..0.42 = phi i64 [ %.0..0.44, %rb_string_value.exit ], [ %i.bw, %all_digits_p.exit ] ; 2 uses
  %i.bx = call i64 @rb_funcallv(i64 noundef %.0..0.42, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28
  %i.by = call i32 %1(i64 noundef %.0..0.42, i64 noundef %2) #28
  %.not35 = icmp eq i32 %i.by, 0
  br i1 %.not35, label %bb.m, label %select.unfold

bb.m:                                             ; preds = %bb.l
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !48
  %.0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !48 ; 5 uses
  %i.bz = icmp eq i64 %.0..0..0., 0
  %i.ca = and i64 %.0..0..0., 7
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = or i1 %i.bz, %i.cb
  br i1 %i.cc, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.m
  %i.cd = inttoptr i64 %.0..0..0. to ptr          ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !36
  %i.cf = and i64 %i.ce, 31
  %i.cg = icmp eq i64 %i.cf, 5
  br i1 %i.cg, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.m
  %i.ch = call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.ch, ptr %i.a, align 8, !tbaa !48
  %.pre = inttoptr i64 %i.ch to ptr
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.pre-phi = phi ptr [ %i.cd, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %.0..0.44 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ch, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %i.ci = getelementptr i8, ptr %.pre-phi, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %select.unfold, label %bb.l

select.unfold:                                    ; preds = %rb_string_value.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_str_include_range_p(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !48
  %i.c = inttoptr i64 %0 to ptr
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = and i64 %i.d, 51200
  %i.f = icmp eq i64 %i.e, 2048
  br i1 %i.f, label %rb_str_new_frozen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_obj_class(i64 noundef %0) #28, !inline_history !55
  %i.h = tail call fastcc i64 @str_new_frozen_buffer(i64 noundef %i.g, i64 noundef %0, i32 noundef 1), !inline_history !12
  br label %rb_str_new_frozen.exit

rb_str_new_frozen.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %.0..0..0. = load volatile i64, ptr %i.a, align 8, !tbaa !48 ; 5 uses
  %i.i = icmp eq i64 %.0..0..0., 0
  %i.j = and i64 %.0..0..0., 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_str_new_frozen.exit
  %i.m = inttoptr i64 %.0..0..0. to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %rb_string_value.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rb_str_new_frozen.exit
  %i.q = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 3 uses
  store volatile i64 %i.q, ptr %i.a, align 8, !tbaa !48
  %.phi.trans.insert = inttoptr i64 %i.q to ptr
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %rb_string_value.exit

rb_string_value.exit:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.r = phi i64 [ %i.n, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  %.0..0.54 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ] ; 3 uses
  %i.s = and i64 %i.r, 51200
  %i.t = icmp eq i64 %i.s, 2048
  br i1 %i.t, label %rb_str_new_frozen.exit33, label %bb.c

bb.c:                                             ; preds = %rb_string_value.exit
  %i.u = tail call i64 @rb_obj_class(i64 noundef %.0..0.54) #28, !inline_history !55
  %i.v = tail call fastcc i64 @str_new_frozen_buffer(i64 noundef %i.u, i64 noundef %.0..0.54, i32 noundef 1), !inline_history !12
  br label %rb_str_new_frozen.exit33

rb_str_new_frozen.exit33:                         ; preds = %rb_string_value.exit, %bb.c
  %.0.i32 = phi i64 [ %i.v, %bb.c ], [ %.0..0.54, %rb_string_value.exit ] ; 3 uses
  %i.w = icmp eq i64 %2, 4
  br i1 %i.w, label %bb.u, label %bb.d

bb.d:                                             ; preds = %rb_str_new_frozen.exit33
  %i.x = tail call i64 @rb_check_convert_type_with_id(i64 noundef %2, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 4 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !48
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.u, label %bb.e
end_hunk_1
begin_hunk_2_@str_undump:bb.a

bb.q:                                             ; preds = %bb.p
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.az, %i.be
  %i.bg = icmp sgt i64 %i.bf, 4
  br i1 %i.bg, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bh = load i32, ptr %i.bc, align 1
  %i.bi = icmp ne i32 %i.bh, 1886741550
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = getelementptr i8, ptr %.060104, i64 5
  %spec.select = select i1 %i.bk, ptr %i.bl, ptr %i.bc ; 4 uses
  %.pre = ptrtoint ptr %spec.select to i64
  %.pre146 = sub i64 %i.az, %.pre
  %i.bm = icmp slt i64 %.pre146, 18
  br i1 %i.bm, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i128, ptr %spec.select, align 1
  %i.bo = xor i128 %i.bn, 53706165822922349142233056565091329582
  %i.bp = getelementptr i8, ptr %spec.select, i64 16
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i128
  %i.bs = xor i128 %i.br, 34
  %i.bt = or i128 %i.bo, %i.bs
  %i.bu = icmp ne i128 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not36 = icmp eq i32 %i.bv, 0
  br i1 %.not36, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr i8, ptr %spec.select, i64 17 ; 3 uses
  %i.bx = trunc nuw i8 %.053106 to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.by, ptr noundef nonnull @.str.232) #30
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bz = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.ca = sub i64 %i.az, %i.bz
  %i.cb = call ptr @memchr(ptr noundef %i.bw, i32 noundef 34, i64 noundef %i.ca) #32 ; 4 uses
  %i.cc = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cd = sub i64 %i.cc, %i.bz
  %.not37 = icmp ne ptr %i.cb, null
  %i.ce = sub i64 %i.az, %i.cc
  %.not38 = icmp eq i64 %i.ce, 2
  %or.cond = and i1 %.not37, %.not38
  br i1 %or.cond, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !43
  %.not39 = icmp eq i8 %i.cf, 34
  br i1 %.not39, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr i8, ptr %i.cb, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !43
  %.not40 = icmp eq i8 %i.ch, 41
  br i1 %.not40, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.ci = call i32 @rb_enc_find_index2(ptr noundef %i.bw, i64 noundef %i.cd) #28 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ck = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ck, ptr noundef nonnull @.str.233) #30
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cl = call i64 @rb_enc_associate_index(i64 noundef %i.q, i32 noundef %i.ci) #28 ; 0 uses
  br label %bb.cb

bb.ab:                                            ; preds = %bb.o
  %.not34 = icmp ult ptr %i.bc, %i.n
  br i1 %.not34, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cm, ptr noundef nonnull @.str.234) #30
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cn = load i8, ptr %i.bc, align 1, !tbaa !43
  switch i8 %i.cn, label %bb.by [
    i8 92, label %bb.ae
    i8 34, label %bb.ae
    i8 35, label %bb.ae
    i8 120, label %bb.bq
    i8 117, label %bb.am
    i8 110, label %unescape_ascii.exit.i
    i8 114, label %bb.af
    i8 116, label %bb.ag
    i8 102, label %bb.ah
    i8 118, label %bb.ai
    i8 98, label %bb.aj
    i8 97, label %bb.ak
    i8 101, label %bb.al
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad
  %i.co = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %i.bc, i64 noundef 1, i1 noundef zeroext false) ; 0 uses
  %i.cp = getelementptr i8, ptr %.060104, i64 2
  br label %undump_after_backslash.exit

bb.af:                                            ; preds = %bb.ad
  br label %unescape_ascii.exit.i

bb.ag:                                            ; preds = %bb.ad
  br label %unescape_ascii.exit.i

bb.ah:                                            ; preds = %bb.ad
  br label %unescape_ascii.exit.i

bb.ai:                                            ; preds = %bb.ad
  br label %unescape_ascii.exit.i

bb.aj:                                            ; preds = %bb.ad
  br label %unescape_ascii.exit.i

bb.ak:                                            ; preds = %bb.ad
  br label %unescape_ascii.exit.i

bb.al:                                            ; preds = %bb.ad
  br label %unescape_ascii.exit.i

unescape_ascii.exit.i:                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.0.i.i42 = phi i8 [ 27, %bb.al ], [ 13, %bb.af ], [ 9, %bb.ag ], [ 12, %bb.ah ], [ 11, %bb.ai ], [ 8, %bb.aj ], [ 7, %bb.ak ], [ 10, %bb.ad ]
  store i8 %.0.i.i42, ptr %i.b, align 1, !tbaa !43
  %i.cq = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, i1 noundef zeroext false) ; 0 uses
  %i.cr = getelementptr i8, ptr %.060104, i64 2
  br label %undump_after_backslash.exit

bb.am:                                            ; preds = %bb.ad
  br i1 %.0107, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cs = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cs, ptr noundef nonnull @.str.236) #30
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ct = getelementptr i8, ptr %.060104, i64 2   ; 4 uses
  %.not66.i = icmp ult ptr %i.ct, %i.n
  br i1 %.not66.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cu = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cu, ptr noundef nonnull @.str.237) #30
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cv = load ptr, ptr @undump_after_backslash.enc_utf8, align 8, !tbaa !194 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cx = call nonnull ptr @rb_utf8_encoding() #28 ; 2 uses
  store ptr %i.cx, ptr @undump_after_backslash.enc_utf8, align 8, !tbaa !194
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cy = phi ptr [ %i.cx, %bb.ar ], [ %i.cv, %bb.aq ] ; 3 uses
  %.not67.i = icmp eq ptr %.056105, %i.cy
  br i1 %.not67.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = call i64 @rb_enc_associate(i64 noundef %i.q, ptr noundef nonnull %i.cy) #28 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.258 = phi ptr [ %.056105, %bb.as ], [ %i.cy, %bb.at ] ; 6 uses
  %i.da = load i8, ptr %i.ct, align 1, !tbaa !43
  %i.db = icmp eq i8 %i.da, 123
  br i1 %i.db, label %bb.av, label %bb.bi

bb.av:                                            ; preds = %bb.au
  %i.dc = getelementptr i8, ptr %.060104, i64 3   ; 2 uses
  %.not6985.i = icmp ult ptr %i.dc, %i.n
  br i1 %.not6985.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.dd = getelementptr i8, ptr %.258, i64 48
  br label %bb.aw

._crit_edge.i:                                    ; preds = %bb.av, %.backedge.i
  %i.de = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.de, ptr noundef nonnull @.str.238) #30
  unreachable

bb.aw:                                            ; preds = %.backedge.i, %.lr.ph.i
  %.086.i = phi ptr [ %i.dc, %.lr.ph.i ], [ %i.dh, %.backedge.i ] ; 5 uses
  %i.df = load i8, ptr %.086.i, align 1, !tbaa !43 ; 3 uses
  %1 = icmp eq i8 %i.df, 125
  br i1 %1, label %bb.ax, label %2

bb.ax:                                            ; preds = %bb.aw
  %i.dg = getelementptr i8, ptr %.086.i, i64 1
  br label %undump_after_backslash.exit

2:                                                ; preds = %bb.aw
  %3 = sext i8 %i.df to i32
  %4 = icmp ne i8 %i.df, 32
  %5 = add nsw i32 %3, -14
  %6 = icmp ult i32 %5, -5
  %narrow.i.not.i = and i1 %4, %6
  br i1 %narrow.i.not.i, label %bb.ay, label %.backedge.i

.backedge.i:                                      ; preds = %rb_str_cat.exit.i, %2
  %.sink.i = phi i64 [ %i.ea, %rb_str_cat.exit.i ], [ 1, %2 ]
  %i.dh = getelementptr i8, ptr %.086.i, i64 %.sink.i ; 2 uses
  %.not69.i = icmp ult ptr %i.dh, %i.n
  br i1 %.not69.i, label %bb.aw, label %._crit_edge.i

bb.ay:                                            ; preds = %2
  %i.di = ptrtoint ptr %.086.i to i64
  %i.dj = sub i64 %i.az, %i.di
  %i.dk = call i64 @ruby_scan_hex(ptr noundef nonnull %.086.i, i64 noundef %i.dj, ptr noundef nonnull %i.a) #28
  %i.dl = trunc i64 %i.dk to i32                  ; 3 uses
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, -7
  %or.cond.i = icmp ult i64 %i.dn, -6
  br i1 %or.cond.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.do = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.do, ptr noundef nonnull @.str.237) #30
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.dp = icmp ugt i32 %i.dl, 1114111
  br i1 %i.dp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.dq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dq, ptr noundef nonnull @.str.239) #30
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.dr = and i32 %i.dl, 2095104
  %or.cond3.i = icmp eq i32 %i.dr, 55296
  br i1 %or.cond3.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ds = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ds, ptr noundef nonnull @.str.240) #30
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.dt = load ptr, ptr %i.dd, align 8, !tbaa !72
  %i.du = call i32 %i.dt(i32 noundef %i.dl, ptr noundef nonnull %i.b, ptr noundef %.258) #28, !inline_history !192 ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  br i1 %i.dw, label %rb_str_cat.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dx = icmp slt i32 %i.du, 0
  br i1 %i.dx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.dy = load i64, ptr @rb_eArgError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dy, ptr noundef nonnull @.str.17) #30
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.dz = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef %i.dv, i1 noundef zeroext false) ; 0 uses
  br label %rb_str_cat.exit.i

rb_str_cat.exit.i:                                ; preds = %bb.bh, %bb.be
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !48
  br label %.backedge.i

bb.bi:                                            ; preds = %bb.au
  %i.eb = call i64 @ruby_scan_hex(ptr noundef nonnull %i.ct, i64 noundef 4, ptr noundef nonnull %i.a) #28
  %i.ec = trunc i64 %i.eb to i32                  ; 2 uses
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !48
  %.not68.i = icmp eq i64 %i.ed, 4
  br i1 %.not68.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ee = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ee, ptr noundef nonnull @.str.237) #30
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.ef = and i32 %i.ec, -2048
  %or.cond5.i = icmp eq i32 %i.ef, 55296
  br i1 %or.cond5.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.eg = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eg, ptr noundef nonnull @.str.240) #30
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.eh = getelementptr i8, ptr %.258, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !72
  %i.ej = call i32 %i.ei(i32 noundef %i.ec, ptr noundef nonnull %i.b, ptr noundef %.258) #28, !inline_history !192 ; 3 uses
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = icmp eq i32 %i.ej, 0
  br i1 %i.el, label %rb_str_cat.exit74.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.em = icmp slt i32 %i.ej, 0
  br i1 %i.em, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.en = load i64, ptr @rb_eArgError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.en, ptr noundef nonnull @.str.17) #30
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.eo = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef %i.ek, i1 noundef zeroext false) ; 0 uses
  br label %rb_str_cat.exit74.i

rb_str_cat.exit74.i:                              ; preds = %bb.bp, %bb.bm
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !48
  %i.eq = getelementptr i8, ptr %i.ct, i64 %i.ep
  br label %undump_after_backslash.exit

bb.bq:                                            ; preds = %bb.ad
  %i.er = getelementptr i8, ptr %.060104, i64 2   ; 3 uses
  %.not.i43 = icmp ult ptr %i.er, %i.n
  br i1 %.not.i43, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.es = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.es, ptr noundef nonnull @.str.241) #30
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.et = call i64 @ruby_scan_hex(ptr noundef %i.er, i64 noundef 2, ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.eu = trunc i64 %i.et to i8
  store i8 %i.eu, ptr %i.b, align 1, !tbaa !43
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !48
  %.not64.i = icmp eq i64 %i.ev, 2
  br i1 %.not64.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ew = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ew, ptr noundef nonnull @.str.241) #30
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.ex = and i64 %i.et, 128
  %.not77.i = icmp eq i64 %i.ex, 0
  br i1 %.not77.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ey = trunc nuw i8 %.053106 to i1
  br i1 %i.ey, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ez = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ez, ptr noundef nonnull @.str.236) #30
  unreachable

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %.2 = phi i1 [ %.0107, %bb.bu ], [ true, %bb.bv ]
  %i.fa = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, i1 noundef zeroext false) ; 0 uses
  %i.fb = load i64, ptr %i.a, align 8, !tbaa !48
  %i.fc = getelementptr i8, ptr %i.er, i64 %i.fb
  br label %undump_after_backslash.exit

bb.by:                                            ; preds = %bb.ad
  %i.fd = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %.060104, i64 noundef 2, i1 noundef zeroext false) ; 0 uses
  %i.fe = getelementptr i8, ptr %.060104, i64 2
  br label %undump_after_backslash.exit

undump_after_backslash.exit:                      ; preds = %bb.ae, %unescape_ascii.exit.i, %bb.ax, %rb_str_cat.exit74.i, %bb.bx, %bb.by
  %.359 = phi ptr [ %.056105, %bb.by ], [ %.056105, %bb.ae ], [ %.056105, %bb.bx ], [ %.258, %bb.ax ], [ %.258, %rb_str_cat.exit74.i ], [ %.056105, %unescape_ascii.exit.i ]
  %.255 = phi i8 [ %.053106, %bb.by ], [ %.053106, %bb.ae ], [ %.053106, %bb.bx ], [ 1, %bb.ax ], [ 1, %rb_str_cat.exit74.i ], [ %.053106, %unescape_ascii.exit.i ]
  %.3 = phi i1 [ %.0107, %bb.by ], [ %.0107, %bb.ae ], [ %.2, %bb.bx ], [ false, %bb.ax ], [ false, %rb_str_cat.exit74.i ], [ %.0107, %unescape_ascii.exit.i ]
  %.1.i = phi ptr [ %i.fe, %bb.by ], [ %i.cp, %bb.ae ], [ %i.fc, %bb.bx ], [ %i.dg, %bb.ax ], [ %i.eq, %rb_str_cat.exit74.i ], [ %i.cr, %unescape_ascii.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ca

bb.bz:                                            ; preds = %bb.o
  %i.ff = call fastcc i64 @str_buf_cat4(i64 noundef %i.q, ptr noundef nonnull %.060104, i64 noundef 1, i1 noundef zeroext false) ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %undump_after_backslash.exit
  %.262 = phi ptr [ %i.bc, %bb.bz ], [ %.1.i, %undump_after_backslash.exit ] ; 2 uses
  %.157 = phi ptr [ %.056105, %bb.bz ], [ %.359, %undump_after_backslash.exit ]
  %.154 = phi i8 [ %.053106, %bb.bz ], [ %.255, %undump_after_backslash.exit ]
  %.1 = phi i1 [ %.0107, %bb.bz ], [ %.3, %undump_after_backslash.exit ]
  %.not33 = icmp ult ptr %.262, %i.n
  br i1 %.not33, label %bb.o, label %._crit_edge

bb.cb:                                            ; preds = %bb.aa, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store ptr %i.c, ptr %i.e, align 8, !tbaa !64
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #28, !srcloc !195
  %i.fg = load ptr, ptr %i.e, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.fh = load volatile i64, ptr %i.fg, align 8, !tbaa !48 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  ret i64 %i.q

.thread:                                          ; preds = %bb.q, %bb.x, %bb.w, %bb.v, %bb.r, %bb.s, %bb.m, %bb.l
  %i.fi = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !48
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fi, ptr noundef nonnull @.str.235) #30
  unreachable
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_str_upcase(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call fastcc i32 @check_case_options(i32 noundef %0, ptr noundef %1, i32 noundef 8192) ; 3 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !33
end_hunk_2
