inline.NumInlined: 2336
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@rb_str_succ:bb.a
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

.outer:                                           ; preds = %bb.ab, %RSTRING_PTR.exit
  %.0133.ph = phi i64 [ %i.dr, %bb.ab ], [ 0, %RSTRING_PTR.exit ] ; 3 uses
  %.0130.ph = phi i64 [ %i.av, %bb.ab ], [ 1, %RSTRING_PTR.exit ] ; 3 uses
  %.not149 = phi i1 [ false, %bb.ab ], [ true, %RSTRING_PTR.exit ]
  %.0125.ph = phi ptr [ %.us-phi230, %bb.ab ], [ null, %RSTRING_PTR.exit ] ; 2 uses
  %.0123.ph = phi ptr [ %.us-phi230, %bb.ab ], [ %i.t, %RSTRING_PTR.exit ]
  %i.aa = icmp ne ptr %.0125.ph, null
  br label %.outer193

.outer193:                                        ; preds = %.outer, %enc_succ_alnum_char.exit
  %or.cond = phi i1 [ false, %.outer ], [ %i.aa, %enc_succ_alnum_char.exit ]
  %.0123.ph197 = phi ptr [ %.0123.ph, %.outer ], [ %.us-phi230, %enc_succ_alnum_char.exit ] ; 2 uses
  br i1 %or.cond, label %.outer193.split.us, label %.outer193.split

.outer193.split.us:                               ; preds = %.outer193, %bb.i
  %.0123.us = phi ptr [ %i.ab, %bb.i ], [ %.0123.ph197, %.outer193 ]
  %i.ab = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0123.us, ptr noundef %i.t) #28 ; 6 uses
  %.not.us = icmp eq ptr %i.ab, null
  br i1 %.not.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %.outer193.split.us
  %i.ac = load i8, ptr %.0125.ph, align 1, !tbaa !20
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
  br i1 %i.ar, label %.split227.us, label %.outer193.split.us, !llvm.loop !109

.outer193.split:                                  ; preds = %.outer193, %bb.j
  %.0123 = phi ptr [ %i.as, %bb.j ], [ %.0123.ph197, %.outer193 ]
  %i.as = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0123, ptr noundef %i.t) #28 ; 4 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.outer193.split
  %i.at = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.as, ptr noundef %i.t, ptr noundef %i.n) #28 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.split227.us, label %.outer193.split, !llvm.loop !109

.split227.us:                                     ; preds = %bb.j, %bb.i
  %.us-phi228 = phi i32 [ %i.aq, %bb.i ], [ %i.at, %bb.j ] ; 4 uses
  %.us-phi230 = phi ptr [ %i.ab, %bb.i ], [ %i.as, %bb.j ] ; 29 uses
  %i.av = zext nneg i32 %.us-phi228 to i64        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.aw = getelementptr i8, ptr %.us-phi230, i64 %i.av ; 9 uses
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.ay = call i32 %i.ax(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef %i.n) #28, !inline_history !111 ; 2 uses
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.ba = call i32 %i.az(i32 noundef %i.ay, i32 noundef 4, ptr noundef %i.n) #28, !inline_history !113
  %.not.i154 = icmp eq i32 %i.ba, 0               ; 2 uses
  br i1 %.not.i154, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split227.us
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.bc = call i32 %i.bb(i32 noundef %i.ay, i32 noundef 1, ptr noundef nonnull %i.n) #28, !inline_history !113
  %.not65.i = icmp eq i32 %i.bc, 0
  br i1 %.not65.i, label %enc_succ_alnum_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split227.us
  %.056.i = phi i32 [ 4, %.split227.us ], [ 1, %bb.k ] ; 3 uses
  %i.bd = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %.us-phi230, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28, !alias.scope !114 ; 0 uses
  %i.be = call fastcc i32 @enc_succ_char(ptr noundef nonnull %.us-phi230, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n)
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.bh = call i32 %i.bg(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !111
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.bj = call i32 %i.bi(i32 noundef %i.bh, i32 noundef range(i32 1, 5) %.056.i, ptr noundef nonnull %i.n) #28, !inline_history !113
  %.not67.i = icmp eq i32 %i.bj, 0
  br i1 %.not67.i, label %bb.n, label %enc_succ_alnum_char.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bk = call fastcc i32 @enc_succ_char(ptr noundef nonnull %.us-phi230, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n)
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.bn = call i32 %i.bm(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !111
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.bp = call i32 %i.bo(i32 noundef %i.bn, i32 noundef range(i32 1, 5) %.056.i, ptr noundef nonnull %i.n) #28, !inline_history !113
  %.not67.1.i = icmp eq i32 %i.bp, 0
  br i1 %.not67.1.i, label %bb.p, label %enc_succ_alnum_char.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.us-phi230, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 noundef range(i64 1, 2147483648) %i.av, i1 noundef false) #28
  %i.bq = add nsw i64 %i.av, -1                   ; 9 uses
  %.not189 = icmp eq i32 %.us-phi228, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.y, %bb.p
  %.055.i = phi i32 [ 1, %bb.p ], [ %i.dm, %bb.y ] ; 2 uses
  %i.br = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %.us-phi230, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28, !alias.scope !118 ; 0 uses
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !16
  %i.bs = icmp sgt i32 %.val.i.i, 1
  br i1 %i.bs, label %bb.t, label %.preheader74.i.i

.preheader74.i.i:                                 ; preds = %bb.q
  br i1 %.not189, label %.preheader74.split.i.i, label %.preheader74.split.us.i.i

.preheader74.split.us.i.i:                        ; preds = %.preheader74.i.i, %.preheader74.split.us.i.i.backedge
  %.06477.us.i.i = phi i64 [ %.06477.us.i.i.be, %.preheader74.split.us.i.i.backedge ], [ %i.bq, %.preheader74.i.i ] ; 4 uses
  %i.bt = getelementptr i8, ptr %.us-phi230, i64 %.06477.us.i.i ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !20  ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %4, label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %.preheader74.split.us.i.i
  %i.bw = add i8 %i.bu, -1
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !20
  %i.bx = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28 ; 4 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge.us.i.i
  %i.bz = icmp eq i32 %i.bx, -1
  %i.ca = icmp slt i64 %.06477.us.i.i, %i.bq
  %or.cond.us.i.i = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond.us.i.i, label %.preheader.us.i.i, label %.preheader74.split.us.i.i.backedge

.preheader.us.i.i:                                ; preds = %bb.r, %1
  %.06278.us.i.i = phi i64 [ %2, %1 ], [ %i.bq, %bb.r ] ; 4 uses
  %i.cb = getelementptr i8, ptr %.us-phi230, i64 %.06278.us.i.i
  %i.cc = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi230, ptr noundef %i.cb, ptr noundef nonnull %i.n) #28
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %1, label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %1, %.preheader.us.i.i
  %.062.lcssa.us.i.i = phi i64 [ %.06278.us.i.i, %.preheader.us.i.i ], [ 0, %1 ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.us-phi230, i64 %.062.lcssa.us.i.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 1
  %.neg.us.i.i = xor i64 %.062.lcssa.us.i.i, -1
  %i.cg = add i64 %.neg.us.i.i, %i.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cf, i8 noundef 0, i64 noundef %i.cg, i1 noundef false) #28
  br label %.preheader74.split.us.i.i.backedge

1:                                                ; preds = %.preheader.us.i.i
  %2 = add nsw i64 %.06278.us.i.i, -1
  %3 = icmp sgt i64 %.06278.us.i.i, 1
  br i1 %3, label %.preheader.us.i.i, label %._crit_edge.us.i.i, !llvm.loop !122

bb.s:                                             ; preds = %.critedge.us.i.i
  %i.ch = icmp eq i32 %.us-phi228, %i.bx
  br i1 %i.ch, label %enc_pred_char.exit.thread63.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %bb.s
  %i.ci = zext nneg i32 %i.bx to i64              ; 2 uses
  %i.cj = getelementptr i8, ptr %.us-phi230, i64 %i.ci
  %i.ck = sub nsw i64 %i.av, %i.ci
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cj, i8 noundef 0, i64 noundef %i.ck, i1 noundef false) #28
  br label %.preheader74.split.us.i.i.backedge

4:                                                ; preds = %.preheader74.split.us.i.i
  store i8 -1, ptr %i.bt, align 1, !tbaa !20
  %5 = add nsw i64 %.06477.us.i.i, -1
  %6 = icmp sgt i64 %.06477.us.i.i, 0
  br i1 %6, label %.preheader74.split.us.i.i.backedge, label %enc_pred_char.exit.thread.i

.preheader74.split.us.i.i.backedge:               ; preds = %4, %.thread.us.i.i, %._crit_edge.us.i.i, %bb.r
  %.06477.us.i.i.be = phi i64 [ %5, %4 ], [ %i.bq, %bb.r ], [ %i.bq, %.thread.us.i.i ], [ %i.bq, %._crit_edge.us.i.i ]
  br label %.preheader74.split.us.i.i, !llvm.loop !123

bb.t:                                             ; preds = %bb.q
  %i.cl = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.u, label %enc_pred_char.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.co = call i32 %i.cn(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !124 ; 2 uses
  %.not.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i, label %enc_pred_char.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  %i.cq = load ptr, ptr %i.x, align 8, !tbaa !125
  %i.cr = call i32 %i.cq(i32 noundef %i.cp, ptr noundef nonnull %i.n) #28, !inline_history !126
  %.not72.i.i = icmp eq i32 %.us-phi228, %i.cr
  br i1 %.not72.i.i, label %enc_pred_char.exit.i, label %enc_pred_char.exit.thread.i

.preheader74.split.i.i:                           ; preds = %.preheader74.i.i, %.preheader74.split.i.i.backedge
  %.06477.i.i = phi i64 [ %.06477.i.i.be, %.preheader74.split.i.i.backedge ], [ %i.bq, %.preheader74.i.i ] ; 3 uses
  %i.cs = getelementptr i8, ptr %.us-phi230, i64 %.06477.i.i ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !20  ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.w, label %.critedge.i.i

bb.w:                                             ; preds = %.preheader74.split.i.i
  store i8 -1, ptr %i.cs, align 1, !tbaa !20
  %i.cv = add nsw i64 %.06477.i.i, -1
  %i.cw = icmp sgt i64 %.06477.i.i, 0
  br i1 %i.cw, label %.preheader74.split.i.i.backedge, label %enc_pred_char.exit.thread.i

.preheader74.split.i.i.backedge:                  ; preds = %bb.w, %.thread.i.i, %.critedge.i.i
  %.06477.i.i.be = phi i64 [ %i.cv, %bb.w ], [ %i.bq, %.critedge.i.i ], [ %i.bq, %.thread.i.i ]
  br label %.preheader74.split.i.i, !llvm.loop !123

.critedge.i.i:                                    ; preds = %.preheader74.split.i.i
  %i.cx = add i8 %i.ct, -1
  store i8 %i.cx, ptr %i.cs, align 1, !tbaa !20
  %i.cy = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.x, label %.preheader74.split.i.i.backedge

bb.x:                                             ; preds = %.critedge.i.i
  %i.da = icmp eq i32 %i.cy, 1
  br i1 %i.da, label %enc_pred_char.exit.thread63.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.x
  %i.db = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.dc = getelementptr i8, ptr %.us-phi230, i64 %i.db
  %i.dd = sub nsw i64 1, %i.db
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.dc, i8 noundef 0, i64 noundef %i.dd, i1 noundef false) #28
  br label %.preheader74.split.i.i.backedge

enc_pred_char.exit.i:                             ; preds = %bb.v
  %i.de = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.df = call i32 %i.de(i32 noundef %i.cp, ptr noundef nonnull %.us-phi230, ptr noundef nonnull %i.n) #28, !inline_history !127 ; 0 uses
  %i.dg = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %enc_pred_char.exit.thread63.i, label %enc_pred_char.exit.thread.i

enc_pred_char.exit.thread63.i:                    ; preds = %bb.s, %bb.x, %enc_pred_char.exit.i
  %i.di = load ptr, ptr %i.u, align 8, !tbaa !110
  %i.dj = call i32 %i.di(ptr noundef nonnull %.us-phi230, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !111
  %i.dk = load ptr, ptr %i.v, align 8, !tbaa !112
  %i.dl = call i32 %i.dk(i32 noundef %i.dj, i32 noundef range(i32 1, 5) %.056.i, ptr noundef nonnull %i.n) #28, !inline_history !113
  %.not66.i = icmp eq i32 %i.dl, 0
  br i1 %.not66.i, label %enc_pred_char.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %enc_pred_char.exit.thread63.i
  %i.dm = add i32 %.055.i, 1
  br label %bb.q

enc_pred_char.exit.thread.i:                      ; preds = %enc_pred_char.exit.thread63.i, %enc_pred_char.exit.i, %bb.v, %bb.u, %bb.t, %4, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.us-phi230, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 noundef range(i64 1, 2147483648) %i.av, i1 noundef false) #28
  %i.dn = icmp eq i32 %.055.i, 1
  br i1 %i.dn, label %enc_succ_alnum_char.exit, label %bb.z

bb.z:                                             ; preds = %enc_pred_char.exit.thread.i
  %i.do = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %.us-phi230, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28 ; 0 uses
  br i1 %.not.i154, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = call fastcc i32 @enc_succ_char(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.ab

enc_succ_alnum_char.exit.thread:                  ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %rb_enc_str_coderange.exit

enc_succ_alnum_char.exit:                         ; preds = %bb.k, %enc_pred_char.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.outer193

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dq = ptrtoint ptr %.us-phi230 to i64
  %i.dr = sub i64 %i.dq, %i.z
  br label %.outer, !llvm.loop !109

.split.us:                                        ; preds = %.outer193.split, %.outer193.split.us, %bb.f, %bb.h
  br i1 %.not149, label %.preheader, label %.split.us._crit_edge

.split.us._crit_edge:                             ; preds = %.split.us
  %.pre = load i64, ptr %i.d, align 8, !tbaa !11
  br label %bb.ah

.preheader:                                       ; preds = %.split.us
  %i.ds = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.t) #28 ; 2 uses
  %.not150237 = icmp eq ptr %i.ds, null
  br i1 %.not150237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.ag
  %i.dt = phi ptr [ %i.eg, %bb.ag ], [ %i.ds, %.preheader ] ; 10 uses
  %.1131239 = phi i64 [ %.3, %bb.ag ], [ %.0130.ph, %.preheader ] ; 2 uses
  %.1134238 = phi i64 [ %.2135, %bb.ag ], [ %.0133.ph, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.du = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.dt, ptr noundef %i.t, ptr noundef %i.n) #28 ; 3 uses
  %i.dv = sext i32 %i.du to i64                   ; 8 uses
  %i.dw = icmp sgt i32 %i.du, 0
  br i1 %i.dw, label %ruby_nonempty_memcpy.exit, label %bb.ag, !llvm.loop !128

ruby_nonempty_memcpy.exit:                        ; preds = %.lr.ph
  %i.dx = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.dt, i64 noundef range(i64 1, 0) %i.dv, i64 noundef 7) #28, !alias.scope !129 ; 0 uses
  %i.dy = call fastcc i32 @enc_succ_char(ptr noundef %i.c, i64 noundef %i.dv, ptr noundef %i.n)
  switch i32 %i.dy, label %bb.ac [
    i32 1, label %.thread
    i32 2, label %ruby_nonempty_memcpy.exit162
  ]

.thread:                                          ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.dt, ptr noundef nonnull readonly align 1 %i.c, i64 noundef range(i64 1, 0) %i.dv, i1 noundef false) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %rb_enc_str_coderange.exit

ruby_nonempty_memcpy.exit162:                     ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.dt, ptr noundef nonnull readonly align 1 %i.c, i64 noundef range(i64 1, 0) %i.dv, i1 noundef false) #28
  br label %bb.ac

bb.ac:                                            ; preds = %ruby_nonempty_memcpy.exit162, %ruby_nonempty_memcpy.exit
  %i.dz = getelementptr i8, ptr %i.dt, i64 %i.dv
  %i.ea = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.dt, ptr noundef %i.dz, ptr noundef %i.n) #28
  %.not151 = icmp eq i32 %i.ea, %i.du
  br i1 %.not151, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = call fastcc i32 @enc_succ_char(ptr noundef %i.dt, i64 noundef %i.dv, ptr noundef %i.n) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.val.i = load i32, ptr %i.w, align 4, !tbaa !16
  %.not.i163 = icmp eq i32 %.val.i, 1
  br i1 %.not.i163, label %rb_enc_asciicompat.exit, label %ruby_nonempty_memcpy.exit167

rb_enc_asciicompat.exit:                          ; preds = %bb.ae
  %i.ec = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.n) #32
  %.not3.i = icmp eq i32 %i.ec, 0
  br i1 %.not3.i, label %bb.af, label %ruby_nonempty_memcpy.exit167

ruby_nonempty_memcpy.exit167:                     ; preds = %bb.ae, %rb_enc_asciicompat.exit
  %i.ed = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.dt, i64 noundef range(i64 1, 0) %i.dv, i64 noundef 7) #28, !alias.scope !133 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %ruby_nonempty_memcpy.exit167, %rb_enc_asciicompat.exit
  %.2132 = phi i64 [ %.1131239, %rb_enc_asciicompat.exit ], [ %i.dv, %ruby_nonempty_memcpy.exit167 ]
  %i.ee = ptrtoint ptr %i.dt to i64
  %i.ef = sub i64 %i.ee, %i.z
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.af
  %.2135 = phi i64 [ %i.ef, %bb.af ], [ %.1134238, %.lr.ph ] ; 2 uses
  %.3 = phi i64 [ %.2132, %bb.af ], [ %.1131239, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.eg = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef nonnull %i.dt, ptr noundef %i.t) #28 ; 2 uses
  %.not150 = icmp eq ptr %i.eg, null
  br i1 %.not150, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ag, %.preheader
  %.1134.lcssa = phi i64 [ %.0133.ph, %.preheader ], [ %.2135, %bb.ag ]
  %.1131.lcssa = phi i64 [ %.0130.ph, %.preheader ], [ %.3, %bb.ag ]
  %i.eh = load i64, ptr %i.d, align 8, !tbaa !11
  %i.ei = and i64 %i.eh, -3145729                 ; 2 uses
  store i64 %i.ei, ptr %i.d, align 8, !tbaa !11
  br label %bb.ah

bb.ah:                                            ; preds = %.split.us._crit_edge, %._crit_edge
  %i.ej = phi i64 [ %.pre, %.split.us._crit_edge ], [ %i.ei, %._crit_edge ] ; 3 uses
  %.3136 = phi i64 [ %.0133.ph, %.split.us._crit_edge ], [ %.1134.lcssa, %._crit_edge ] ; 2 uses
  %.4 = phi i64 [ %.0130.ph, %.split.us._crit_edge ], [ %.1131.lcssa, %._crit_edge ] ; 5 uses
  %i.ek = and i64 %i.ej, 532676608
  %switch.i.i = icmp samesign ult i64 %i.ek, 12582912
  br i1 %switch.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = trunc i64 %i.ej to i32
  %i.em = lshr i32 %i.el, 22
  %i.en = and i32 %i.em, 127                      ; 2 uses
  %i.eo = icmp eq i32 %i.en, 127
  br i1 %i.eo, label %bb.aj, label %RB_ENCODING_GET.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ep = call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %bb.ai, %bb.aj
  %.0.i168 = phi i32 [ %i.ep, %bb.aj ], [ %i.en, %bb.ai ]
  %i.eq = call ptr @rb_enc_from_index(i32 noundef %.0.i168) #28
  %i.er = getelementptr i8, ptr %i.eq, i64 20
  %.val152 = load i32, ptr %i.er, align 4, !tbaa !16
  %i.es = sext i32 %.val152 to i64
  %.pre281 = load i64, ptr %i.d, align 8, !tbaa !11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %RB_ENCODING_GET.exit
  %i.et = phi i64 [ %.pre281, %RB_ENCODING_GET.exit ], [ %i.ej, %bb.ah ]
  %i.eu = phi i64 [ %i.es, %RB_ENCODING_GET.exit ], [ 1, %bb.ah ] ; 2 uses
  %i.ev = and i64 %i.et, 8192
  %.not.i169 = icmp eq i64 %i.ev, 0
  br i1 %.not.i169, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ew = call i64 @rb_gc_obj_slot_size(i64 noundef %0) #28
  %i.ex = add i64 %i.ew, -24
  %i.ey = add i64 %.4, %i.f                       ; 3 uses
  %i.ez = add i64 %i.eu, %i.ey                    ; 2 uses
  %i.fa = icmp slt i64 %i.ex, %i.ez
  br i1 %i.fa, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.fb = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ez, i64 noundef 1) #33 ; 2 uses
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.fd = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.fe = and i64 %i.fd, 8192
  %.not.i170 = icmp eq i64 %i.fe, 0
  br i1 %.not.i170, label %RSTRING_PTR.exit171, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !20
  br label %RSTRING_PTR.exit171

RSTRING_PTR.exit171:                              ; preds = %bb.am, %bb.an
  %i.fg = phi ptr [ %i.ff, %bb.an ], [ %i.q, %bb.am ]
  %.not.i172 = icmp eq i64 %i.fc, 0
  br i1 %.not.i172, label %ruby_nonempty_memcpy.exit174, label %bb.ao

bb.ao:                                            ; preds = %RSTRING_PTR.exit171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.fb, ptr noundef nonnull readonly align 1 %i.fg, i64 noundef range(i64 1, 0) %i.fc, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit174

ruby_nonempty_memcpy.exit174:                     ; preds = %RSTRING_PTR.exit171, %bb.ao
  store ptr %i.fb, ptr %i.q, align 8, !tbaa !20
  %i.fh = icmp ne i64 %0, 0
  %i.fi = and i64 %0, 7
  %i.fj = icmp eq i64 %i.fi, 0
  %.not4.i = and i1 %i.fh, %i.fj
  br i1 %.not4.i, label %bb.ap, label %.sink.split

bb.ap:                                            ; preds = %ruby_nonempty_memcpy.exit174
  %i.fk = and i64 %i.fd, -405505
  %i.fl = or disjoint i64 %i.fk, 8192
  store i64 %i.fl, ptr %i.d, align 8, !tbaa !11
  br label %.sink.split

bb.aq:                                            ; preds = %bb.ak
  %i.fm = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.fn = add i64 %.4, %i.f                       ; 2 uses
  %i.fo = add i64 %i.eu, %i.fn
  %i.fp = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.fm, i64 noundef %i.fo, i64 noundef 1) #31
  store ptr %i.fp, ptr %i.q, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ap, %ruby_nonempty_memcpy.exit174, %bb.aq
  %.sink = phi i64 [ %i.fn, %bb.aq ], [ %i.ey, %ruby_nonempty_memcpy.exit174 ], [ %i.ey, %bb.ap ]
  %i.fq = getelementptr i8, ptr %i.d, i64 32
end_hunk_0
begin_hunk_1_@coderange_scan:bb.a
  br label %search_nonascii.exit77

bb.ae:                                            ; preds = %.lr.ph.i74
  %i.bx = getelementptr i8, ptr %.02639.i75, i64 8 ; 3 uses
  %i.by = icmp ult ptr %i.bx, %i.ag
  br i1 %i.by, label %.lr.ph.i74, label %._crit_edge.i64, !llvm.loop !37

._crit_edge.i64:                                  ; preds = %bb.ae, %bb.ac
  %.026.lcssa.i65 = phi ptr [ %i.bp, %bb.ac ], [ %i.bx, %bb.ae ]
  %i.bz = ptrtoint ptr %.026.lcssa.i65 to i64
  %i.ca = sub i64 %i.bf, %i.bz
  switch i64 %i.ca, label %bb.af [
    i64 7, label %bb.ag
    i64 6, label %bb.ah
    i64 5, label %bb.ai
    i64 4, label %bb.aj
    i64 3, label %bb.ak
    i64 2, label %bb.al
    i64 1, label %bb.am
    i64 0, label %search_nonascii.exit63.thread
  ]

bb.af:                                            ; preds = %._crit_edge.i64
  unreachable

bb.ag:                                            ; preds = %._crit_edge.i64
  %i.cb = load i8, ptr %i.ag, align 1, !tbaa !20
  %.not.i73 = icmp sgt i8 %i.cb, -1
  br i1 %.not.i73, label %bb.ah, label %search_nonascii.exit77

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i64
  %i.cc = load i8, ptr %i.bg, align 1, !tbaa !20
  %.not29.i72 = icmp sgt i8 %i.cc, -1
  br i1 %.not29.i72, label %bb.ai, label %search_nonascii.exit77

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i64
  %i.cd = load i8, ptr %i.bh, align 1, !tbaa !20
  %.not30.i71 = icmp sgt i8 %i.cd, -1
  br i1 %.not30.i71, label %bb.aj, label %search_nonascii.exit77

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i64
  %i.ce = load i8, ptr %i.bi, align 1, !tbaa !20
  %.not31.i70 = icmp sgt i8 %i.ce, -1
  br i1 %.not31.i70, label %bb.ak, label %search_nonascii.exit77

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i64
  %i.cf = load i8, ptr %i.bj, align 1, !tbaa !20
  %.not32.i69 = icmp sgt i8 %i.cf, -1
  br i1 %.not32.i69, label %bb.al, label %search_nonascii.exit77

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i64
  %i.cg = load i8, ptr %i.bk, align 1, !tbaa !20
  %.not33.i68 = icmp sgt i8 %i.cg, -1
  br i1 %.not33.i68, label %bb.am, label %search_nonascii.exit77

bb.am:                                            ; preds = %bb.al, %._crit_edge.i64
  %i.ch = load i8, ptr %i.bl, align 1, !tbaa !20
  %.not34.i67 = icmp sgt i8 %i.ch, -1
  br i1 %.not34.i67, label %search_nonascii.exit63.thread, label %search_nonascii.exit77

search_nonascii.exit77:                           ; preds = %bb.ad, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am
  %.2.i66 = phi ptr [ %i.bw, %bb.ad ], [ %i.bl, %bb.am ], [ %i.ag, %bb.ag ], [ %i.bg, %bb.ah ], [ %i.bh, %bb.ai ], [ %i.bi, %bb.aj ], [ %i.bj, %bb.ak ], [ %i.bk, %bb.al ] ; 2 uses
  %.not46 = icmp eq ptr %.2.i66, null
  br i1 %.not46, label %search_nonascii.exit63.thread, label %bb.aa

rb_enc_asciicompat.exit:                          ; preds = %rb_enc_asciicompat.exit.preheader, %bb.an
  %.233 = phi ptr [ %i.cm, %bb.an ], [ %0, %rb_enc_asciicompat.exit.preheader ] ; 3 uses
  %i.ci = icmp ult ptr %.233, %i.a
  br i1 %i.ci, label %bb.an, label %search_nonascii.exit63.thread

bb.an:                                            ; preds = %rb_enc_asciicompat.exit
  %i.cj = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.233, ptr noundef nonnull %i.a, ptr noundef %2) #28 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = getelementptr i8, ptr %.233, i64 %i.cl
  br i1 %i.ck, label %rb_enc_asciicompat.exit, label %search_nonascii.exit63.thread, !llvm.loop !231

search_nonascii.exit63.thread:                    ; preds = %rb_enc_asciicompat.exit, %bb.an, %bb.am, %._crit_edge.i64, %search_nonascii.exit77, %bb.ab, %bb.aa, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c, %bb.z, %._crit_edge.i50, %search_nonascii.exit63
  %.4 = phi i32 [ 2097152, %bb.h ], [ 1048576, %bb.z ], [ 2097152, %bb.g ], [ 2097152, %bb.am ], [ 1048576, %search_nonascii.exit63 ], [ 2097152, %bb.i ], [ 1048576, %._crit_edge.i50 ], [ 2097152, %bb.j ], [ 2097152, %bb.k ], [ 2097152, %bb.l ], [ %i.l, %bb.c ], [ 1048576, %bb.m ], [ 2097152, %bb.f ], [ 2097152, %._crit_edge.i64 ], [ 2097152, %search_nonascii.exit77 ], [ 2097152, %bb.ab ], [ 3145728, %bb.aa ], [ 3145728, %bb.an ], [ 2097152, %rb_enc_asciicompat.exit ]
  ret i32 %.4
}

declare ptr @rb_enc_get_from_index(i32 noundef) local_unnamed_addr #3

declare void @rb_enc_raw_set(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_obj_alloc(i64 noundef) local_unnamed_addr #3

declare ptr @rb_econv_open_opts(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @rb_econv_convert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rb_econv_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_fatal(ptr noundef, ...) local_unnamed_addr #10

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @rb_gc_size_allocatable_p(i64 noundef) local_unnamed_addr #3

declare i32 @rb_enc_fast_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rb_enc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #3

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #3

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @CHILLED_STRING_MUTATED(i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, -49153
  store i64 %i.c, ptr %i.a, align 8, !tbaa !11
  %i.d = trunc i64 %i.b to i16
  %trunc = and i16 %i.d, -16384
  switch i16 %trunc, label %bb.d [
    i16 -32768, label %bb.b
    i16 16384, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @rb_warn_unchilled_symbol_to_s(i64 noundef %0) #28
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @rb_warn_unchilled_literal(i64 noundef %0) #28
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.198) #29
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @rb_warn_unchilled_symbol_to_s(i64 noundef) local_unnamed_addr #3

declare void @rb_warn_unchilled_literal(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #10

declare ptr @rb_enc_inspect_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_ascii8bit_encindex() local_unnamed_addr #18

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_memhash(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 3) i32 @enc_succ_char(ptr noundef nonnull %0, i64 noundef range(i64 1, 2147483648) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 20
  %.val = load i32, ptr %i.a, align 4, !tbaa !16
  %i.b = icmp sgt i32 %.val, 1
  br i1 %i.b, label %bb.d, label %.preheader70

.preheader70:                                     ; preds = %bb.a
  %i.c = add nsw i64 %1, -1                       ; 9 uses
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.e = icmp samesign ugt i64 %1, 1
  br i1 %i.e, label %.preheader70.split.us, label %.preheader70.split

.preheader70.split.us:                            ; preds = %.preheader70, %.preheader70.split.us.backedge
  %.06173.us = phi i64 [ %.06173.us.be, %.preheader70.split.us.backedge ], [ %i.c, %.preheader70 ] ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 %.06173.us ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20    ; 2 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %6, label %.critedge.us

.critedge.us:                                     ; preds = %.preheader70.split.us
  %i.i = add nuw i8 %i.g, 1
  store i8 %i.i, ptr %i.f, align 1, !tbaa !20
  %i.j = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %2) #28 ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge.us
  %i.l = icmp eq i32 %i.j, -1
  %i.m = icmp slt i64 %.06173.us, %i.c
  %or.cond.us = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.us, label %.preheader.us, label %.preheader70.split.us.backedge

.preheader.us:                                    ; preds = %bb.b, %3
  %.06074.us = phi i64 [ %4, %3 ], [ %i.c, %bb.b ] ; 4 uses
  %i.n = getelementptr i8, ptr %0, i64 %.06074.us
  %i.o = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef %2) #28
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %3, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %3, %.preheader.us
  %.060.lcssa.us = phi i64 [ %.06074.us, %.preheader.us ], [ 0, %3 ] ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %.060.lcssa.us
  %i.r = getelementptr i8, ptr %i.q, i64 1
  %.neg.us = xor i64 %.060.lcssa.us, -1
  %i.s = add i64 %1, %.neg.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.r, i8 noundef -1, i64 noundef %i.s, i1 noundef false) #28
  br label %.preheader70.split.us.backedge

3:                                                ; preds = %.preheader.us
  %4 = add nsw i64 %.06074.us, -1
  %5 = icmp sgt i64 %.06074.us, 1
  br i1 %5, label %.preheader.us, label %._crit_edge.us, !llvm.loop !232

bb.c:                                             ; preds = %.critedge.us
  %i.t = zext nneg i32 %i.j to i64                ; 3 uses
  %i.u = icmp eq i64 %1, %i.t
  br i1 %i.u, label %.critedge.thread, label %.thread.us

.thread.us:                                       ; preds = %bb.c
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  %i.w = sub nsw i64 %1, %i.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.v, i8 noundef -1, i64 noundef %i.w, i1 noundef false) #28
  br label %.preheader70.split.us.backedge

6:                                                ; preds = %.preheader70.split.us
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %7 = add nsw i64 %.06173.us, -1
  %8 = icmp sgt i64 %.06173.us, 0
  br i1 %8, label %.preheader70.split.us.backedge, label %.critedge.thread

.preheader70.split.us.backedge:                   ; preds = %6, %.thread.us, %._crit_edge.us, %bb.b
  %.06173.us.be = phi i64 [ %7, %6 ], [ %i.c, %bb.b ], [ %i.c, %.thread.us ], [ %i.c, %._crit_edge.us ]
  br label %.preheader70.split.us, !llvm.loop !233

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %0, i64 %1         ; 3 uses
  %i.y = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.x, ptr noundef nonnull %2) #28
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %2, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %0, ptr noundef %i.x, ptr noundef nonnull %2) #28, !inline_history !145
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  %i.ae = getelementptr i8, ptr %2, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125
  %i.ag = tail call i32 %i.af(i32 noundef %i.ad, ptr noundef nonnull %2) #28, !inline_history !234 ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sext i32 %i.ag to i64
  %.not68 = icmp eq i64 %1, %i.ah
  br i1 %.not68, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %2, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !93
  %i.ak = tail call i32 %i.aj(i32 noundef %i.ad, ptr noundef nonnull %0, ptr noundef nonnull %2) #28, !inline_history !94 ; 0 uses
  %i.al = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.x, ptr noundef nonnull %2) #28
  %i.am = icmp sgt i32 %i.al, 0
  %. = zext i1 %i.am to i32
  br label %.critedge.thread

.preheader70.split:                               ; preds = %.preheader70, %.preheader70.split.backedge
  %.06173 = phi i64 [ %.06173.be, %.preheader70.split.backedge ], [ %i.c, %.preheader70 ] ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 %.06173   ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20  ; 2 uses
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.preheader70.split
  store i8 0, ptr %i.an, align 1, !tbaa !20
  %i.aq = add nsw i64 %.06173, -1
  %i.ar = icmp sgt i64 %.06173, 0
  br i1 %i.ar, label %.preheader70.split.backedge, label %.critedge.thread

.preheader70.split.backedge:                      ; preds = %bb.h, %.thread, %.critedge
  %.06173.be = phi i64 [ %i.aq, %bb.h ], [ %i.c, %.critedge ], [ %i.c, %.thread ]
  br label %.preheader70.split, !llvm.loop !233

.critedge:                                        ; preds = %.preheader70.split
  %i.as = add nuw i8 %i.ao, 1
  store i8 %i.as, ptr %i.an, align 1, !tbaa !20
  %i.at = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %2) #28 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %.preheader70.split.backedge

bb.i:                                             ; preds = %.critedge
  %i.av = icmp eq i32 %i.at, 1
  br i1 %i.av, label %.critedge.thread, label %.thread

.thread:                                          ; preds = %bb.i
  %i.aw = zext nneg i32 %i.at to i64              ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw
  %i.ay = sub nsw i64 1, %i.aw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ax, i8 noundef -1, i64 noundef %i.ay, i1 noundef false) #28
  br label %.preheader70.split.backedge

.critedge.thread:                                 ; preds = %bb.i, %bb.h, %bb.c, %6, %bb.d, %bb.e, %bb.f, %bb.g
  %.1 = phi i32 [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 2, %bb.f ], [ %., %bb.g ], [ 2, %6 ], [ 2, %bb.h ], [ 1, %bb.i ]
  ret i32 %.1
}

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_str_update_1(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = sub i64 0, %2
  %i.b = or i64 %5, %1
  %or.cond = icmp eq i64 %i.b, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_str_drop_bytes(i64 noundef %0, i64 noundef %2) ; 0 uses
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @str_modify_keep_cr(i64 noundef %0)
  %i.d = inttoptr i64 %0 to ptr                   ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 9 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  %i.j = getelementptr i8, ptr %i.d, i64 16       ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 5 uses
  %i.l = icmp slt i64 %2, %5
  br i1 %i.l, label %bb.e, label %RSTRING_PTR.exit103

bb.e:                                             ; preds = %RSTRING_PTR.exit
  %i.m = and i64 %i.e, 532676608
  %switch.i.i = icmp samesign ult i64 %i.m, 12582912
  br i1 %switch.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = trunc i64 %i.e to i32
  %i.o = lshr i32 %i.n, 22
  %i.p = and i32 %i.o, 127                        ; 2 uses
  %i.q = icmp eq i32 %i.p, 127
  br i1 %i.q, label %bb.g, label %RB_ENCODING_GET.exit

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.r, %bb.g ], [ %i.p, %bb.f ]
  %i.s = tail call ptr @rb_enc_from_index(i32 noundef %.0.i) #28
  %i.t = getelementptr i8, ptr %i.s, i64 20
  %.val95 = load i32, ptr %i.t, align 4, !tbaa !16
  %i.u = sext i32 %.val95 to i64
  %.pre = load i64, ptr %i.d, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %RB_ENCODING_GET.exit
  %i.v = phi i64 [ %.pre, %RB_ENCODING_GET.exit ], [ %i.e, %bb.e ]
  %i.w = phi i64 [ %i.u, %RB_ENCODING_GET.exit ], [ 1, %bb.e ] ; 2 uses
  %i.x = and i64 %i.v, 8192
  %.not.i96 = icmp eq i64 %i.x, 0
  br i1 %.not.i96, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #28
  %i.z = add i64 %i.y, -24
  %i.aa = sub i64 %5, %2
  %i.ab = add i64 %i.aa, %i.k                     ; 3 uses
  %i.ac = add i64 %i.w, %i.ab                     ; 2 uses
  %i.ad = icmp slt i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ac, i64 noundef 1) #33 ; 2 uses
  %i.af = load i64, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.ah = and i64 %i.ag, 8192
  %.not.i97 = icmp eq i64 %i.ah, 0
  br i1 %.not.i97, label %RSTRING_PTR.exit98, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %RSTRING_PTR.exit98

RSTRING_PTR.exit98:                               ; preds = %bb.j, %bb.k
  %i.aj = phi ptr [ %i.ai, %bb.k ], [ %i.g, %bb.j ]
  %.not.i99 = icmp eq i64 %i.af, 0
  br i1 %.not.i99, label %ruby_nonempty_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %RSTRING_PTR.exit98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull readonly align 1 %i.aj, i64 noundef range(i64 1, 0) %i.af, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit98, %bb.l
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !20
  %i.ak = icmp ne i64 %0, 0
  %i.al = and i64 %0, 7
  %i.am = icmp eq i64 %i.al, 0
  %.not4.i = and i1 %i.ak, %i.am
  br i1 %.not4.i, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.an = and i64 %i.ag, -405505
  %i.ao = or disjoint i64 %i.an, 8192
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !11
  br label %.sink.split

bb.n:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.aq = sub i64 %5, %2
  %i.ar = add i64 %i.aq, %i.k                     ; 2 uses
  %i.as = add i64 %i.w, %i.ar
  %i.at = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ap, i64 noundef %i.as, i64 noundef 1) #31
  store ptr %i.at, ptr %i.g, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %ruby_nonempty_memcpy.exit, %bb.n
  %.sink = phi i64 [ %i.ar, %bb.n ], [ %i.ab, %ruby_nonempty_memcpy.exit ], [ %i.ab, %bb.m ]
  %i.au = getelementptr i8, ptr %i.d, i64 32
  store i64 %.sink, ptr %i.au, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.i
  %i.av = load i64, ptr %i.d, align 8, !tbaa !11  ; 3 uses
  %i.aw = and i64 %i.av, 8192
  %.not.i102 = icmp eq i64 %i.aw, 0
  br i1 %.not.i102, label %RSTRING_PTR.exit103, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %RSTRING_PTR.exit103

RSTRING_PTR.exit103:                              ; preds = %bb.p, %bb.o, %RSTRING_PTR.exit
  %i.ay = phi i64 [ %i.e, %RSTRING_PTR.exit ], [ %i.av, %bb.p ], [ %i.av, %bb.o ]
  %.0 = phi ptr [ %i.i, %RSTRING_PTR.exit ], [ %i.ax, %bb.p ], [ %i.g, %bb.o ] ; 4 uses
  %i.az = and i64 %i.ay, 3145728
  %i.ba = icmp eq i64 %i.az, 1048576
  br i1 %i.ba, label %bb.q, label %rb_enc_str_coderange.exit

bb.q:                                             ; preds = %RSTRING_PTR.exit103
  %i.bb = inttoptr i64 %3 to ptr                  ; 6 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = and i32 %i.bd, 3145728                  ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.r, label %rb_enc_str_coderange.exit

bb.r:                                             ; preds = %bb.q
  %i.bg = lshr i32 %i.bd, 22
  %i.bh = and i32 %i.bg, 127                      ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 127
  br i1 %i.bi, label %bb.s, label %get_encoding.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call i32 @rb_enc_get_index(i64 noundef %3) #28
  br label %get_encoding.exit.i

get_encoding.exit.i:                              ; preds = %bb.s, %bb.r
  %.0.i.i.i = phi i32 [ %i.bj, %bb.s ], [ %i.bh, %bb.r ]
  %i.bk = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i) #28
  %i.bl = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bm = and i64 %i.bl, 8192
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = getelementptr i8, ptr %i.bb, i64 24     ; 2 uses
  br i1 %.not.i.i.i, label %enc_coderange_scan.exit.i, label %bb.t

bb.t:                                             ; preds = %get_encoding.exit.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i

enc_coderange_scan.exit.i:                        ; preds = %bb.t, %get_encoding.exit.i
  %i.bp = phi ptr [ %i.bo, %bb.t ], [ %i.bn, %get_encoding.exit.i ]
  %i.bq = getelementptr i8, ptr %i.bb, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.bs = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.bp, i64 noundef %i.br, ptr noundef %i.bk) ; 2 uses
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bu = and i64 %i.bt, -3145729
  %i.bv = zext nneg i32 %i.bs to i64
  %i.bw = or i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.bb, align 8, !tbaa !11
  br label %rb_enc_str_coderange.exit

rb_enc_str_coderange.exit:                        ; preds = %enc_coderange_scan.exit.i, %bb.q, %RSTRING_PTR.exit103
  %.088 = phi i32 [ 0, %RSTRING_PTR.exit103 ], [ %i.bs, %enc_coderange_scan.exit.i ], [ %i.be, %bb.q ]
  %.not = icmp eq i64 %5, %2
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %rb_enc_str_coderange.exit
  %i.bx = getelementptr i8, ptr %.0, i64 %1       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 %5
  %i.bz = getelementptr i8, ptr %i.bx, i64 %2
  %i.ca = add i64 %2, %1
  %i.cb = sub i64 %i.k, %i.ca
end_hunk_1
