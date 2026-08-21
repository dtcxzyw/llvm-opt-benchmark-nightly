inline.NumInlined: 2336
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@rb_str_eql:bb.a
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = load i64, ptr @rb_cString, align 8, !tbaa !27
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %rb_enc_str_coderange.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !tbaa !11
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
  %i.o = load i64, ptr %i.d, align 8, !tbaa !11
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.d, i64 24       ; 11 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %get_encoding.exit
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
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
  %.0135.ph = phi ptr [ %.us-phi227, %bb.ac ], [ %i.t, %RSTRING_PTR.exit ]
  %.0133.ph = phi ptr [ %.us-phi227, %bb.ac ], [ null, %RSTRING_PTR.exit ] ; 2 uses
  %.not149 = phi i1 [ false, %bb.ac ], [ true, %RSTRING_PTR.exit ]
  %.0128.ph = phi i64 [ %i.dq, %bb.ac ], [ 0, %RSTRING_PTR.exit ] ; 3 uses
  %.0125.ph = phi i64 [ %i.av, %bb.ac ], [ 1, %RSTRING_PTR.exit ] ; 3 uses
  %i.aa = icmp ne ptr %.0133.ph, null
  br label %.outer192

.outer192:                                        ; preds = %.outer, %enc_succ_alnum_char.exit
  %.0135.ph193 = phi ptr [ %.0135.ph, %.outer ], [ %.us-phi227, %enc_succ_alnum_char.exit ] ; 2 uses
  %or.cond = phi i1 [ false, %.outer ], [ %i.aa, %enc_succ_alnum_char.exit ]
  br i1 %or.cond, label %.outer192.split.us, label %.outer192.split

.outer192.split.us:                               ; preds = %.outer192, %bb.i
  %.0135.us = phi ptr [ %i.ab, %bb.i ], [ %.0135.ph193, %.outer192 ]
  %i.ab = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0135.us, ptr noundef %i.t) #28 ; 6 uses
  %.not.us = icmp eq ptr %i.ab, null
  br i1 %.not.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %.outer192.split.us
  %i.ac = load i8, ptr %.0133.ph, align 1, !tbaa !20
  %i.ad = sext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, -33
  %i.af = add nsw i32 %i.ae, -91
  %narrow.i.us = icmp ult i32 %i.af, -26
  br i1 %narrow.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.ah = sext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -58
  %i.aj = icmp ult i32 %i.ai, -10
  br i1 %i.aj, label %bb.i, label %.split.us

bb.g:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.ad, -58
  %i.al = icmp ult i32 %i.ak, -10
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.ab, align 1, !tbaa !20
  %i.an = and i8 %i.am, -33
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -91
  %narrow.i153.us = icmp ult i32 %i.ap, -26
  br i1 %narrow.i153.us, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.ab, ptr noundef %i.t, ptr noundef %i.n) #28 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.split224.us, label %.outer192.split.us, !llvm.loop !109

.outer192.split:                                  ; preds = %.outer192, %bb.j
  %.0135 = phi ptr [ %i.as, %bb.j ], [ %.0135.ph193, %.outer192 ]
  %i.as = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0135, ptr noundef %i.t) #28 ; 4 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.outer192.split
  %i.at = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.as, ptr noundef %i.t, ptr noundef %i.n) #28 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.split224.us, label %.outer192.split, !llvm.loop !109

.split224.us:                                     ; preds = %bb.j, %bb.i
  %.us-phi225 = phi i32 [ %i.aq, %bb.i ], [ %i.at, %bb.j ] ; 4 uses
  %.us-phi227 = phi ptr [ %i.ab, %bb.i ], [ %i.as, %bb.j ] ; 29 uses
  %i.av = zext nneg i32 %.us-phi225 to i64        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.aw = getelementptr i8, ptr %.us-phi227, i64 %i.av ; 9 uses
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.ay = call i32 %i.ax(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef %i.n) #28, !inline_history !111 ; 2 uses
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.ba = call i32 %i.az(i32 noundef %i.ay, i32 noundef 4, ptr noundef %i.n) #28, !inline_history !113
  %.not.i154 = icmp eq i32 %i.ba, 0               ; 2 uses
  br i1 %.not.i154, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split224.us
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.bc = call i32 %i.bb(i32 noundef %i.ay, i32 noundef 1, ptr noundef nonnull %i.n) #28, !inline_history !113
  %.not65.i = icmp eq i32 %i.bc, 0
  br i1 %.not65.i, label %enc_succ_alnum_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split224.us
  %.055.i = phi i32 [ 4, %.split224.us ], [ 1, %bb.k ] ; 3 uses
  %i.bd = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %.us-phi227, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28, !alias.scope !114 ; 0 uses
  %i.be = call fastcc i32 @enc_succ_char(ptr noundef nonnull %.us-phi227, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n)
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.bh = call i32 %i.bg(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !111
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.bj = call i32 %i.bi(i32 noundef %i.bh, i32 noundef range(i32 1, 5) %.055.i, ptr noundef nonnull %i.n) #28, !inline_history !113
  %.not67.i = icmp eq i32 %i.bj, 0
  br i1 %.not67.i, label %bb.n, label %enc_succ_alnum_char.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bk = call fastcc i32 @enc_succ_char(ptr noundef nonnull %.us-phi227, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n)
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.bn = call i32 %i.bm(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !111
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.bp = call i32 %i.bo(i32 noundef %i.bn, i32 noundef range(i32 1, 5) %.055.i, ptr noundef nonnull %i.n) #28, !inline_history !113
  %.not67.1.i = icmp eq i32 %i.bp, 0
  br i1 %.not67.1.i, label %bb.p, label %enc_succ_alnum_char.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.us-phi227, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 noundef range(i64 1, 2147483648) %i.av, i1 noundef false) #28
  %i.bq = add nsw i64 %i.av, -1                   ; 9 uses
  %.not188 = icmp eq i32 %.us-phi225, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.z, %bb.p
  %.054.i = phi i32 [ 1, %bb.p ], [ %i.dl, %bb.z ] ; 2 uses
  %i.br = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %.us-phi227, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28, !alias.scope !118 ; 0 uses
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !16
  %i.bs = icmp sgt i32 %.val.i.i, 1
  br i1 %i.bs, label %bb.v, label %.preheader74.i.i.a

.preheader74.i.i.a:                               ; preds = %bb.q
  br i1 %.not188, label %.preheader74.split.i.i, label %.preheader74.split.us.i.i

.preheader74.split.us.i.i:                        ; preds = %.preheader74.i.i.a, %.preheader74.split.us.i.i.backedge
  %.06377.us.i.i = phi i64 [ %.06377.us.i.i.be, %.preheader74.split.us.i.i.backedge ], [ %i.bq, %.preheader74.i.i.a ] ; 4 uses
  %i.bt = getelementptr i8, ptr %.us-phi227, i64 %.06377.us.i.i ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !20  ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %.critedge.us.i.i

bb.r:                                             ; preds = %.preheader74.split.us.i.i
  store i8 -1, ptr %i.bt, align 1, !tbaa !20
  %i.bw = add nsw i64 %.06377.us.i.i, -1
  %i.bx = icmp sgt i64 %.06377.us.i.i, 0
  br i1 %i.bx, label %.preheader74.split.us.i.i.backedge, label %enc_pred_char.exit.thread.i

.preheader74.split.us.i.i.backedge:               ; preds = %bb.r, %.thread.us.i.i, %._crit_edge.us.i.i, %bb.s
  %.06377.us.i.i.be = phi i64 [ %i.bw, %bb.r ], [ %i.bq, %bb.s ], [ %i.bq, %.thread.us.i.i ], [ %i.bq, %._crit_edge.us.i.i ]
  br label %.preheader74.split.us.i.i, !llvm.loop !122

.critedge.us.i.i:                                 ; preds = %.preheader74.split.us.i.i
  %i.by = add i8 %i.bu, -1
  store i8 %i.by, ptr %i.bt, align 1, !tbaa !20
  %i.bz = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28 ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge.us.i.i
  %i.cb = icmp eq i32 %i.bz, -1
  %i.cc = icmp slt i64 %.06377.us.i.i, %i.bq
  %or.cond.us.i.i = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond.us.i.i, label %.preheader.us.i.i, label %.preheader74.split.us.i.i.backedge

.preheader.us.i.i:                                ; preds = %bb.s, %bb.t
  %.078.us.i.i = phi i64 [ %i.cg, %bb.t ], [ %i.bq, %bb.s ] ; 4 uses
  %i.cd = getelementptr i8, ptr %.us-phi227, i64 %.078.us.i.i
  %i.ce = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi227, ptr noundef %i.cd, ptr noundef nonnull %i.n) #28
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.t, label %._crit_edge.us.i.i

bb.t:                                             ; preds = %.preheader.us.i.i
  %i.cg = add nsw i64 %.078.us.i.i, -1
  %i.ch = icmp sgt i64 %.078.us.i.i, 1
  br i1 %i.ch, label %.preheader.us.i.i, label %._crit_edge.us.i.i, !llvm.loop !123

._crit_edge.us.i.i:                               ; preds = %bb.t, %.preheader.us.i.i
  %.0.lcssa.us.i.i = phi i64 [ %.078.us.i.i, %.preheader.us.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.us-phi227, i64 %.0.lcssa.us.i.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  %.neg.us.i.i = xor i64 %.0.lcssa.us.i.i, -1
  %i.ck = add i64 %.neg.us.i.i, %i.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cj, i8 noundef 0, i64 noundef %i.ck, i1 noundef false) #28
  br label %.preheader74.split.us.i.i.backedge

bb.u:                                             ; preds = %.critedge.us.i.i
  %i.cl = icmp eq i32 %.us-phi225, %i.bz
  br i1 %i.cl, label %enc_pred_char.exit.thread63.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %bb.u
  %i.cm = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cn = getelementptr i8, ptr %.us-phi227, i64 %i.cm
  %i.co = sub nsw i64 %i.av, %i.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cn, i8 noundef 0, i64 noundef %i.co, i1 noundef false) #28
  br label %.preheader74.split.us.i.i.backedge

bb.v:                                             ; preds = %bb.q
  %i.cp = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.w, label %enc_pred_char.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.cs = call i32 %i.cr(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !124 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i, label %enc_pred_char.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  %i.cu = load ptr, ptr %i.x, align 8, !tbaa !125
  %i.cv = call i32 %i.cu(i32 noundef %i.ct, ptr noundef nonnull %i.n) #28, !inline_history !126
  %.not72.i.i = icmp eq i32 %.us-phi225, %i.cv
  br i1 %.not72.i.i, label %enc_pred_char.exit.i, label %enc_pred_char.exit.thread.i

.preheader74.split.i.i:                           ; preds = %.preheader74.i.i.a, %.preheader74.split.i.i.backedge
  %.06377.i.i = phi i64 [ %.06377.i.i.be, %.preheader74.split.i.i.backedge ], [ %i.bq, %.preheader74.i.i.a ] ; 3 uses
  %1 = getelementptr i8, ptr %.us-phi227, i64 %.06377.i.i ; 3 uses
  %2 = load i8, ptr %1, align 1, !tbaa !20        ; 2 uses
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %.critedge.i.i

4:                                                ; preds = %.preheader74.split.i.i
  store i8 -1, ptr %1, align 1, !tbaa !20
  %5 = add nsw i64 %.06377.i.i, -1
  %6 = icmp sgt i64 %.06377.i.i, 0
  br i1 %6, label %.preheader74.split.i.i.backedge, label %enc_pred_char.exit.thread.i

.preheader74.split.i.i.backedge:                  ; preds = %4, %.thread.i.i, %.critedge.i.i
  %.06377.i.i.be = phi i64 [ %5, %4 ], [ %i.bq, %.critedge.i.i ], [ %i.bq, %.thread.i.i ]
  br label %.preheader74.split.i.i, !llvm.loop !122

.critedge.i.i:                                    ; preds = %.preheader74.split.i.i
  %i.cw = add i8 %2, -1
  store i8 %i.cw, ptr %1, align 1, !tbaa !20
  %i.cx = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.y, label %.preheader74.split.i.i.backedge

bb.y:                                             ; preds = %.critedge.i.i
  %i.cz = icmp eq i32 %i.cx, 1
  br i1 %i.cz, label %enc_pred_char.exit.thread63.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.y
  %i.da = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.db = getelementptr i8, ptr %.us-phi227, i64 %i.da
  %i.dc = sub nsw i64 1, %i.da
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.db, i8 noundef 0, i64 noundef %i.dc, i1 noundef false) #28
  br label %.preheader74.split.i.i.backedge

enc_pred_char.exit.i:                             ; preds = %bb.x
  %i.dd = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.de = call i32 %i.dd(i32 noundef %i.ct, ptr noundef nonnull %.us-phi227, ptr noundef nonnull %i.n) #28, !inline_history !127 ; 0 uses
  %i.df = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %enc_pred_char.exit.thread63.i, label %enc_pred_char.exit.thread.i

enc_pred_char.exit.thread63.i:                    ; preds = %bb.u, %bb.y, %enc_pred_char.exit.i
  %i.dh = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.di = call i32 %i.dh(ptr noundef nonnull %.us-phi227, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !111
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.dk = call i32 %i.dj(i32 noundef %i.di, i32 noundef range(i32 1, 5) %.055.i, ptr noundef nonnull %i.n) #28, !inline_history !113
  %.not66.i = icmp eq i32 %i.dk, 0
  br i1 %.not66.i, label %enc_pred_char.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %enc_pred_char.exit.thread63.i
  %i.dl = add i32 %.054.i, 1
  br label %bb.q

enc_pred_char.exit.thread.i:                      ; preds = %enc_pred_char.exit.thread63.i, %enc_pred_char.exit.i, %bb.x, %bb.w, %bb.v, %bb.r, %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.us-phi227, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 noundef range(i64 1, 2147483648) %i.av, i1 noundef false) #28
  %i.dm = icmp eq i32 %.054.i, 1
  br i1 %i.dm, label %enc_succ_alnum_char.exit, label %bb.aa

bb.aa:                                            ; preds = %enc_pred_char.exit.thread.i
  %i.dn = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %.us-phi227, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28 ; 0 uses
  br i1 %.not.i154, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = call fastcc i32 @enc_succ_char(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.ac

enc_succ_alnum_char.exit.thread:                  ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %rb_enc_str_coderange.exit

enc_succ_alnum_char.exit:                         ; preds = %bb.k, %enc_pred_char.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.outer192

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dp = ptrtoint ptr %.us-phi227 to i64
  %i.dq = sub i64 %i.dp, %i.z
  br label %.outer, !llvm.loop !109

.split.us:                                        ; preds = %.outer192.split, %.outer192.split.us, %bb.f, %bb.h
  br i1 %.not149, label %.preheader, label %.split.us._crit_edge

.split.us._crit_edge:                             ; preds = %.split.us
  %.pre = load i64, ptr %i.d, align 8, !tbaa !11
  br label %bb.ai

.preheader:                                       ; preds = %.split.us
  %i.dr = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.t) #28 ; 2 uses
  %.not150234 = icmp eq ptr %i.dr, null
  br i1 %.not150234, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.ah
  %i.ds = phi ptr [ %i.ef, %bb.ah ], [ %i.dr, %.preheader ] ; 10 uses
  %.1126236 = phi i64 [ %.3, %bb.ah ], [ %.0125.ph, %.preheader ] ; 2 uses
  %.1129235 = phi i64 [ %.2130, %bb.ah ], [ %.0128.ph, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.dt = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.ds, ptr noundef %i.t, ptr noundef %i.n) #28 ; 3 uses
  %i.du = sext i32 %i.dt to i64                   ; 8 uses
  %i.dv = icmp sgt i32 %i.dt, 0
  br i1 %i.dv, label %ruby_nonempty_memcpy.exit, label %bb.ah, !llvm.loop !128

ruby_nonempty_memcpy.exit:                        ; preds = %.lr.ph
  %i.dw = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.ds, i64 noundef range(i64 1, 0) %i.du, i64 noundef 7) #28, !alias.scope !129 ; 0 uses
  %i.dx = call fastcc i32 @enc_succ_char(ptr noundef %i.c, i64 noundef %i.du, ptr noundef %i.n)
  switch i32 %i.dx, label %bb.ad [
    i32 1, label %.thread
    i32 2, label %ruby_nonempty_memcpy.exit161
  ]

.thread:                                          ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ds, ptr noundef nonnull readonly align 1 %i.c, i64 noundef range(i64 1, 0) %i.du, i1 noundef false) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %rb_enc_str_coderange.exit

ruby_nonempty_memcpy.exit161:                     ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ds, ptr noundef nonnull readonly align 1 %i.c, i64 noundef range(i64 1, 0) %i.du, i1 noundef false) #28
  br label %bb.ad

bb.ad:                                            ; preds = %ruby_nonempty_memcpy.exit161, %ruby_nonempty_memcpy.exit
  %i.dy = getelementptr i8, ptr %i.ds, i64 %i.du
  %i.dz = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.ds, ptr noundef %i.dy, ptr noundef %i.n) #28
  %.not151 = icmp eq i32 %i.dz, %i.dt
  br i1 %.not151, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = call fastcc i32 @enc_succ_char(ptr noundef %i.ds, i64 noundef %i.du, ptr noundef %i.n) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.val.i = load i32, ptr %i.w, align 4, !tbaa !16
  %.not.i162 = icmp eq i32 %.val.i, 1
  br i1 %.not.i162, label %rb_enc_asciicompat.exit, label %ruby_nonempty_memcpy.exit166

rb_enc_asciicompat.exit:                          ; preds = %bb.af
  %i.eb = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.n) #32
  %.not3.i = icmp eq i32 %i.eb, 0
  br i1 %.not3.i, label %bb.ag, label %ruby_nonempty_memcpy.exit166

ruby_nonempty_memcpy.exit166:                     ; preds = %bb.af, %rb_enc_asciicompat.exit
  %i.ec = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.ds, i64 noundef range(i64 1, 0) %i.du, i64 noundef 7) #28, !alias.scope !133 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %ruby_nonempty_memcpy.exit166, %rb_enc_asciicompat.exit
  %.2127 = phi i64 [ %.1126236, %rb_enc_asciicompat.exit ], [ %i.du, %ruby_nonempty_memcpy.exit166 ]
  %i.ed = ptrtoint ptr %i.ds to i64
  %i.ee = sub i64 %i.ed, %i.z
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.ag
  %.2130 = phi i64 [ %i.ee, %bb.ag ], [ %.1129235, %.lr.ph ] ; 2 uses
  %.3 = phi i64 [ %.2127, %bb.ag ], [ %.1126236, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ef = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef nonnull %i.ds, ptr noundef %i.t) #28 ; 2 uses
  %.not150 = icmp eq ptr %i.ef, null
  br i1 %.not150, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  %.1129.lcssa = phi i64 [ %.0128.ph, %.preheader ], [ %.2130, %bb.ah ]
  %.1126.lcssa = phi i64 [ %.0125.ph, %.preheader ], [ %.3, %bb.ah ]
  %i.eg = load i64, ptr %i.d, align 8, !tbaa !11
  %i.eh = and i64 %i.eg, -3145729                 ; 2 uses
  store i64 %i.eh, ptr %i.d, align 8, !tbaa !11
  br label %bb.ai

bb.ai:                                            ; preds = %.split.us._crit_edge, %._crit_edge
  %i.ei = phi i64 [ %.pre, %.split.us._crit_edge ], [ %i.eh, %._crit_edge ] ; 3 uses
  %.3131 = phi i64 [ %.0128.ph, %.split.us._crit_edge ], [ %.1129.lcssa, %._crit_edge ] ; 2 uses
  %.4 = phi i64 [ %.0125.ph, %.split.us._crit_edge ], [ %.1126.lcssa, %._crit_edge ] ; 5 uses
  %i.ej = and i64 %i.ei, 532676608
  %switch.i.i = icmp samesign ult i64 %i.ej, 12582912
  br i1 %switch.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ek = trunc i64 %i.ei to i32
  %i.el = lshr i32 %i.ek, 22
  %i.em = and i32 %i.el, 127                      ; 2 uses
  %i.en = icmp eq i32 %i.em, 127
  br i1 %i.en, label %bb.ak, label %RB_ENCODING_GET.exit

bb.ak:                                            ; preds = %bb.aj
  %i.eo = call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %bb.aj, %bb.ak
  %.0.i167 = phi i32 [ %i.eo, %bb.ak ], [ %i.em, %bb.aj ]
  %i.ep = call ptr @rb_enc_from_index(i32 noundef %.0.i167) #28
  %i.eq = getelementptr i8, ptr %i.ep, i64 20
  %.val152 = load i32, ptr %i.eq, align 4, !tbaa !16
  %i.er = sext i32 %.val152 to i64
  %.pre278 = load i64, ptr %i.d, align 8, !tbaa !11
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %RB_ENCODING_GET.exit
  %i.es = phi i64 [ %.pre278, %RB_ENCODING_GET.exit ], [ %i.ei, %bb.ai ]
  %i.et = phi i64 [ %i.er, %RB_ENCODING_GET.exit ], [ 1, %bb.ai ] ; 2 uses
  %i.eu = and i64 %i.es, 8192
  %.not.i168 = icmp eq i64 %i.eu, 0
  br i1 %.not.i168, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ev = call i64 @rb_gc_obj_slot_size(i64 noundef %0) #28
  %i.ew = add i64 %i.ev, -24
  %i.ex = add i64 %.4, %i.f                       ; 3 uses
  %i.ey = add i64 %i.et, %i.ex                    ; 2 uses
  %i.ez = icmp slt i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.fa = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ey, i64 noundef 1) #33 ; 2 uses
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.fc = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.fd = and i64 %i.fc, 8192
  %.not.i169 = icmp eq i64 %i.fd, 0
  br i1 %.not.i169, label %RSTRING_PTR.exit170, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = load ptr, ptr %i.q, align 8, !tbaa !20
  br label %RSTRING_PTR.exit170

RSTRING_PTR.exit170:                              ; preds = %bb.an, %bb.ao
  %i.ff = phi ptr [ %i.fe, %bb.ao ], [ %i.q, %bb.an ]
  %.not.i171 = icmp eq i64 %i.fb, 0
  br i1 %.not.i171, label %ruby_nonempty_memcpy.exit173, label %bb.ap

bb.ap:                                            ; preds = %RSTRING_PTR.exit170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.fa, ptr noundef nonnull readonly align 1 %i.ff, i64 noundef range(i64 1, 0) %i.fb, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit173

ruby_nonempty_memcpy.exit173:                     ; preds = %RSTRING_PTR.exit170, %bb.ap
  store ptr %i.fa, ptr %i.q, align 8, !tbaa !20
  %i.fg = icmp ne i64 %0, 0
  %i.fh = and i64 %0, 7
  %i.fi = icmp eq i64 %i.fh, 0
  %.not4.i = and i1 %i.fg, %i.fi
  br i1 %.not4.i, label %bb.aq, label %.sink.split

bb.aq:                                            ; preds = %ruby_nonempty_memcpy.exit173
  %i.fj = and i64 %i.fc, -405505
  %i.fk = or disjoint i64 %i.fj, 8192
  store i64 %i.fk, ptr %i.d, align 8, !tbaa !11
  br label %.sink.split

bb.ar:                                            ; preds = %bb.al
  %i.fl = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.fm = add i64 %.4, %i.f                       ; 2 uses
  %i.fn = add i64 %i.et, %i.fm
  %i.fo = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.fl, i64 noundef %i.fn, i64 noundef 1) #31
  store ptr %i.fo, ptr %i.q, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %ruby_nonempty_memcpy.exit173, %bb.ar
  %.sink = phi i64 [ %i.fm, %bb.ar ], [ %i.ex, %ruby_nonempty_memcpy.exit173 ], [ %i.ex, %bb.aq ]
  %i.fp = getelementptr i8, ptr %i.d, i64 32
end_hunk_0
