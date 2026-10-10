Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/string?download=true
inline.NumInlined: 2338
inline.NumDeleted: 197
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@rb_str_eql:bb.a

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
  %.0128.ph = phi i64 [ %i.du, %bb.ac ], [ 0, %RSTRING_PTR.exit ] ; 3 uses
  %.0125.ph = phi i64 [ %i.av, %bb.ac ], [ 1, %RSTRING_PTR.exit ] ; 3 uses
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
  %i.ah = sext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -58
  %i.aj = icmp ult i32 %i.ai, -10
  br i1 %i.aj, label %bb.i, label %.split.us

bb.g:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %i.ad, -58
  %i.al = icmp ult i32 %i.ak, -10
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.ab, align 1, !tbaa !43
  %i.an = and i8 %i.am, -33
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -91
  %narrow.i153.us = icmp ult i32 %i.ap, -26
  br i1 %narrow.i153.us, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.ab, ptr noundef %i.t, ptr noundef %i.n) #28 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.split218.us, label %.outer191.split.us, !llvm.loop !142

.outer191.split:                                  ; preds = %.outer191, %bb.j
  %.0135 = phi ptr [ %i.as, %bb.j ], [ %.0135.ph192, %.outer191 ]
  %i.as = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %.0135, ptr noundef %i.t) #28 ; 4 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.outer191.split
  %i.at = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.as, ptr noundef %i.t, ptr noundef %i.n) #28 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.split218.us, label %.outer191.split, !llvm.loop !142

.split218.us:                                     ; preds = %bb.j, %bb.i
  %.us-phi219 = phi i32 [ %i.aq, %bb.i ], [ %i.at, %bb.j ] ; 4 uses
  %.us-phi221 = phi ptr [ %i.ab, %bb.i ], [ %i.as, %bb.j ] ; 29 uses
  %i.av = zext nneg i32 %.us-phi219 to i64        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.aw = getelementptr i8, ptr %.us-phi221, i64 %i.av ; 9 uses
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.ay = call i32 %i.ax(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef %i.n) #28, !inline_history !143 ; 2 uses
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.ba = call i32 %i.az(i32 noundef %i.ay, i32 noundef 4, ptr noundef %i.n) #28, !inline_history !144
  %.not.i154 = icmp eq i32 %i.ba, 0               ; 2 uses
  br i1 %.not.i154, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split218.us
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.bc = call i32 %i.bb(i32 noundef %i.ay, i32 noundef 1, ptr noundef nonnull %i.n) #28, !inline_history !144
  %.not65.i = icmp eq i32 %i.bc, 0
  br i1 %.not65.i, label %enc_succ_alnum_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split218.us
  %.055.i = phi i32 [ 4, %.split218.us ], [ 1, %bb.k ] ; 3 uses
  %i.bd = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28, !alias.scope !163 ; 0 uses
  %i.be = call fastcc i32 @enc_succ_char(ptr noundef nonnull %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n)
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.bh = call i32 %i.bg(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !143
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.bj = call i32 %i.bi(i32 noundef %i.bh, i32 noundef range(i32 1, 5) %.055.i, ptr noundef nonnull %i.n) #28, !inline_history !144
  %.not67.i = icmp eq i32 %i.bj, 0
  br i1 %.not67.i, label %bb.n, label %enc_succ_alnum_char.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bk = call fastcc i32 @enc_succ_char(ptr noundef nonnull %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n)
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.bn = call i32 %i.bm(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !143
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.bp = call i32 %i.bo(i32 noundef %i.bn, i32 noundef range(i32 1, 5) %.055.i, ptr noundef nonnull %i.n) #28, !inline_history !144
  %.not67.1.i = icmp eq i32 %i.bp, 0
  br i1 %.not67.1.i, label %bb.p, label %enc_succ_alnum_char.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.us-phi221, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 noundef range(i64 1, 2147483648) %i.av, i1 noundef false) #28
  %i.bq = add nsw i64 %i.av, -1                   ; 7 uses
  %.not188 = icmp eq i32 %.us-phi219, 1
  %i.br = getelementptr i8, ptr %.us-phi221, i64 %i.bq ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.z, %bb.p
  %.054.i = phi i32 [ 1, %bb.p ], [ %i.dp, %bb.z ] ; 2 uses
  %i.bs = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28, !alias.scope !164 ; 0 uses
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !42
  %i.bt = icmp sgt i32 %.val.i.i, 1
  br i1 %i.bt, label %bb.v, label %.preheader74.split.i.i.preheader

.preheader74.split.i.i.preheader:                 ; preds = %bb.q
  br i1 %.not188, label %.preheader74.split.i.i, label %.preheader74.split.us.i.i

.preheader74.split.us.i.i:                        ; preds = %.preheader74.split.i.i.preheader, %.preheader74.split.us.i.i.backedge
  %.06377.us.i.i = phi i64 [ %.06377.us.i.i.be, %.preheader74.split.us.i.i.backedge ], [ %i.bq, %.preheader74.split.i.i.preheader ] ; 4 uses
  %i.bu = getelementptr i8, ptr %.us-phi221, i64 %.06377.us.i.i ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !43  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %.critedge.us.i.i

bb.r:                                             ; preds = %.preheader74.split.us.i.i
  store i8 -1, ptr %i.bu, align 1, !tbaa !43
  %i.bx = add nsw i64 %.06377.us.i.i, -1
  %i.by = icmp sgt i64 %.06377.us.i.i, 0
  br i1 %i.by, label %.preheader74.split.us.i.i.backedge, label %enc_pred_char.exit.thread.i

.preheader74.split.us.i.i.backedge:               ; preds = %bb.r, %.thread.us.i.i, %._crit_edge.us.i.i, %bb.s
  %.06377.us.i.i.be = phi i64 [ %i.bx, %bb.r ], [ %i.bq, %bb.s ], [ %i.bq, %.thread.us.i.i ], [ %i.bq, %._crit_edge.us.i.i ]
  br label %.preheader74.split.us.i.i, !llvm.loop !151

.critedge.us.i.i:                                 ; preds = %.preheader74.split.us.i.i
  %i.bz = add i8 %i.bv, -1
  store i8 %i.bz, ptr %i.bu, align 1, !tbaa !43
  %i.ca = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28 ; 4 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge.us.i.i
  %i.cc = icmp eq i32 %i.ca, -1
  %i.cd = icmp slt i64 %.06377.us.i.i, %i.bq
  %or.cond.us.i.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.us.i.i, label %.preheader.us.i.i, label %.preheader74.split.us.i.i.backedge

.preheader.us.i.i:                                ; preds = %bb.s, %bb.t
  %.078.us.i.i = phi i64 [ %i.ch, %bb.t ], [ %i.bq, %bb.s ] ; 4 uses
  %i.ce = getelementptr i8, ptr %.us-phi221, i64 %.078.us.i.i
  %i.cf = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.ce, ptr noundef nonnull %i.n) #28
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.t, label %._crit_edge.us.i.i

bb.t:                                             ; preds = %.preheader.us.i.i
  %i.ch = add nsw i64 %.078.us.i.i, -1
  %i.ci = icmp sgt i64 %.078.us.i.i, 1
  br i1 %i.ci, label %.preheader.us.i.i, label %._crit_edge.us.i.i, !llvm.loop !152

._crit_edge.us.i.i:                               ; preds = %bb.t, %.preheader.us.i.i
  %.0.lcssa.us.i.i = phi i64 [ %.078.us.i.i, %.preheader.us.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.cj = getelementptr i8, ptr %.us-phi221, i64 %.0.lcssa.us.i.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  %.neg.us.i.i = xor i64 %.0.lcssa.us.i.i, -1
  %i.cl = add i64 %.neg.us.i.i, %i.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ck, i8 noundef 0, i64 noundef %i.cl, i1 noundef false) #28
  br label %.preheader74.split.us.i.i.backedge

bb.u:                                             ; preds = %.critedge.us.i.i
  %i.cm = icmp eq i32 %.us-phi219, %i.ca
  br i1 %i.cm, label %enc_pred_char.exit.thread63.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %bb.u
  %i.cn = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.co = getelementptr i8, ptr %.us-phi221, i64 %i.cn
  %i.cp = sub nsw i64 %i.av, %i.cn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.co, i8 noundef 0, i64 noundef %i.cp, i1 noundef false) #28
  br label %.preheader74.split.us.i.i.backedge

.preheader74.split.i.i:                           ; preds = %.preheader74.split.i.i.preheader
  %1 = load i8, ptr %i.br, align 1, !tbaa !43     ; 2 uses
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %enc_pred_char.exit.thread.loopexit68.i, label %.critedge.i.i

bb.v:                                             ; preds = %bb.q
  %i.cq = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.w, label %enc_pred_char.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.cs = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.ct = call i32 %i.cs(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !153 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i, label %enc_pred_char.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = add i32 %i.ct, -1                       ; 2 uses
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.cw = call i32 %i.cv(i32 noundef %i.cu, ptr noundef nonnull %i.n) #28, !inline_history !154
  %.not72.i.i = icmp eq i32 %.us-phi219, %i.cw
  br i1 %.not72.i.i, label %enc_pred_char.exit.i, label %enc_pred_char.exit.thread.i

enc_pred_char.exit.thread.loopexit68.i:           ; preds = %.preheader74.split.i.i, %.preheader74.split.i.i.a
  store i8 -1, ptr %i.br, align 1, !tbaa !43
  br label %enc_pred_char.exit.thread.i

.critedge.i.i:                                    ; preds = %.preheader74.split.i.i, %.preheader74.split.i.i.a
  %i.cx = phi i8 [ %i.df, %.preheader74.split.i.i.a ], [ %1, %.preheader74.split.i.i ]
  %i.cy = add i8 %i.cx, -1
  store i8 %i.cy, ptr %i.br, align 1, !tbaa !43
  %i.cz = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %bb.y, label %.preheader74.split.i.i.a

bb.y:                                             ; preds = %.critedge.i.i
  %i.db = icmp eq i32 %i.cz, 1
  br i1 %i.db, label %enc_pred_char.exit.thread63.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.y
  %i.dc = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.dd = getelementptr i8, ptr %.us-phi221, i64 %i.dc
  %i.de = sub nsw i64 1, %i.dc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.dd, i8 noundef 0, i64 noundef %i.de, i1 noundef false) #28
  br label %.preheader74.split.i.i.a

.preheader74.split.i.i.a:                         ; preds = %.thread.i.i, %.critedge.i.i
  %i.df = load i8, ptr %i.br, align 1, !tbaa !43  ; 2 uses
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %enc_pred_char.exit.thread.loopexit68.i, label %.critedge.i.i

enc_pred_char.exit.i:                             ; preds = %bb.x
  %i.dh = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.di = call i32 %i.dh(i32 noundef %i.cu, ptr noundef nonnull %.us-phi221, ptr noundef nonnull %i.n) #28, !inline_history !155 ; 0 uses
  %i.dj = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %enc_pred_char.exit.thread63.i, label %enc_pred_char.exit.thread.i

enc_pred_char.exit.thread63.i:                    ; preds = %bb.u, %bb.y, %enc_pred_char.exit.i
  %i.dl = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.dm = call i32 %i.dl(ptr noundef nonnull %.us-phi221, ptr noundef %i.aw, ptr noundef nonnull %i.n) #28, !inline_history !143
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.do = call i32 %i.dn(i32 noundef %i.dm, i32 noundef range(i32 1, 5) %.055.i, ptr noundef nonnull %i.n) #28, !inline_history !144
  %.not66.i = icmp eq i32 %i.do, 0
  br i1 %.not66.i, label %enc_pred_char.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %enc_pred_char.exit.thread63.i
  %i.dp = add i32 %.054.i, 1
  br label %bb.q

enc_pred_char.exit.thread.i:                      ; preds = %enc_pred_char.exit.thread63.i, %enc_pred_char.exit.i, %bb.x, %bb.w, %bb.v, %bb.r, %enc_pred_char.exit.thread.loopexit68.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.us-phi221, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 noundef range(i64 1, 2147483648) %i.av, i1 noundef false) #28
  %i.dq = icmp eq i32 %.054.i, 1
  br i1 %i.dq, label %enc_succ_alnum_char.exit, label %bb.aa

bb.aa:                                            ; preds = %enc_pred_char.exit.thread.i
  %i.dr = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %.us-phi221, i64 noundef range(i64 1, 2147483648) %i.av, i64 noundef 7) #28 ; 0 uses
  br i1 %.not.i154, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = call fastcc i32 @enc_succ_char(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 2147483648) %i.av, ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.ac

enc_succ_alnum_char.exit.thread:                  ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %rb_enc_str_coderange.exit

enc_succ_alnum_char.exit:                         ; preds = %bb.k, %enc_pred_char.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.outer191

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dt = ptrtoint ptr %.us-phi221 to i64
  %i.du = sub i64 %i.dt, %i.z
  br label %.outer, !llvm.loop !142

.split.us:                                        ; preds = %.outer191.split, %.outer191.split.us, %bb.f, %bb.h
  br i1 %.not149, label %.preheader, label %.split.us._crit_edge

.split.us._crit_edge:                             ; preds = %.split.us
  %.pre = load i64, ptr %i.d, align 8, !tbaa !36
  br label %bb.ai

.preheader:                                       ; preds = %.split.us
  %i.dv = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.t) #28 ; 2 uses
  %.not150229 = icmp eq ptr %i.dv, null
  br i1 %.not150229, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.ah
  %i.dw = phi ptr [ %i.ej, %bb.ah ], [ %i.dv, %.preheader ] ; 10 uses
  %.1126231 = phi i64 [ %.3, %bb.ah ], [ %.0125.ph, %.preheader ] ; 2 uses
  %.1129230 = phi i64 [ %.2130, %bb.ah ], [ %.0128.ph, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.dx = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.dw, ptr noundef %i.t, ptr noundef %i.n) #28 ; 3 uses
  %i.dy = sext i32 %i.dx to i64                   ; 8 uses
  %i.dz = icmp sgt i32 %i.dx, 0
  br i1 %i.dz, label %ruby_nonempty_memcpy.exit, label %bb.ah, !llvm.loop !156

ruby_nonempty_memcpy.exit:                        ; preds = %.lr.ph
  %i.ea = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.dw, i64 noundef range(i64 1, 0) %i.dy, i64 noundef 7) #28, !alias.scope !165 ; 0 uses
  %i.eb = call fastcc i32 @enc_succ_char(ptr noundef %i.c, i64 noundef %i.dy, ptr noundef %i.n)
  switch i32 %i.eb, label %bb.ad [
    i32 1, label %.thread
    i32 2, label %ruby_nonempty_memcpy.exit161
  ]

.thread:                                          ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.dw, ptr noundef nonnull readonly align 1 %i.c, i64 noundef range(i64 1, 0) %i.dy, i1 noundef false) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %rb_enc_str_coderange.exit

ruby_nonempty_memcpy.exit161:                     ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.dw, ptr noundef nonnull readonly align 1 %i.c, i64 noundef range(i64 1, 0) %i.dy, i1 noundef false) #28
  br label %bb.ad

bb.ad:                                            ; preds = %ruby_nonempty_memcpy.exit161, %ruby_nonempty_memcpy.exit
  %i.ec = getelementptr i8, ptr %i.dw, i64 %i.dy
  %i.ed = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.dw, ptr noundef %i.ec, ptr noundef %i.n) #28
  %.not151 = icmp eq i32 %i.ed, %i.dx
  br i1 %.not151, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = call fastcc i32 @enc_succ_char(ptr noundef %i.dw, i64 noundef %i.dy, ptr noundef %i.n) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.val.i = load i32, ptr %i.w, align 4, !tbaa !42
  %.not.i162 = icmp eq i32 %.val.i, 1
  br i1 %.not.i162, label %rb_enc_asciicompat.exit, label %ruby_nonempty_memcpy.exit166

rb_enc_asciicompat.exit:                          ; preds = %bb.af
  %i.ef = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.n) #32
  %.not3.i = icmp eq i32 %i.ef, 0
  br i1 %.not3.i, label %bb.ag, label %ruby_nonempty_memcpy.exit166

ruby_nonempty_memcpy.exit166:                     ; preds = %bb.af, %rb_enc_asciicompat.exit
  %i.eg = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.dw, i64 noundef range(i64 1, 0) %i.dy, i64 noundef 7) #28, !alias.scope !166 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %ruby_nonempty_memcpy.exit166, %rb_enc_asciicompat.exit
  %.2127 = phi i64 [ %.1126231, %rb_enc_asciicompat.exit ], [ %i.dy, %ruby_nonempty_memcpy.exit166 ]
  %i.eh = ptrtoint ptr %i.dw to i64
  %i.ei = sub i64 %i.eh, %i.z
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.ag
  %.2130 = phi i64 [ %i.ei, %bb.ag ], [ %.1129230, %.lr.ph ] ; 2 uses
  %.3 = phi i64 [ %.2127, %bb.ag ], [ %.1126231, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.ej = call ptr @onigenc_get_prev_char_head(ptr noundef %i.n, ptr noundef %i.s, ptr noundef nonnull %i.dw, ptr noundef %i.t) #28 ; 2 uses
  %.not150 = icmp eq ptr %i.ej, null
  br i1 %.not150, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  %.1129.lcssa = phi i64 [ %.0128.ph, %.preheader ], [ %.2130, %bb.ah ]
  %.1126.lcssa = phi i64 [ %.0125.ph, %.preheader ], [ %.3, %bb.ah ]
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !36
  %i.el = and i64 %i.ek, -3145729                 ; 2 uses
  store i64 %i.el, ptr %i.d, align 8, !tbaa !36
  br label %bb.ai

bb.ai:                                            ; preds = %.split.us._crit_edge, %._crit_edge
  %i.em = phi i64 [ %.pre, %.split.us._crit_edge ], [ %i.el, %._crit_edge ] ; 3 uses
  %.3131 = phi i64 [ %.0128.ph, %.split.us._crit_edge ], [ %.1129.lcssa, %._crit_edge ] ; 2 uses
  %.4 = phi i64 [ %.0125.ph, %.split.us._crit_edge ], [ %.1126.lcssa, %._crit_edge ] ; 5 uses
  %i.en = and i64 %i.em, 532676608
  %switch.i.i = icmp samesign ult i64 %i.en, 12582912
  br i1 %switch.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = trunc i64 %i.em to i32
  %i.ep = lshr i32 %i.eo, 22
  %i.eq = and i32 %i.ep, 127                      ; 2 uses
  %i.er = icmp eq i32 %i.eq, 127
  br i1 %i.er, label %bb.ak, label %RB_ENCODING_GET.exit

bb.ak:                                            ; preds = %bb.aj
  %i.es = call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %bb.aj, %bb.ak
  %.0.i167 = phi i32 [ %i.es, %bb.ak ], [ %i.eq, %bb.aj ]
  %i.et = call ptr @rb_enc_from_index(i32 noundef %.0.i167) #28
  %i.eu = getelementptr i8, ptr %i.et, i64 20
  %.val152 = load i32, ptr %i.eu, align 4, !tbaa !42
  %i.ev = sext i32 %.val152 to i64
  %.pre271 = load i64, ptr %i.d, align 8, !tbaa !36
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %RB_ENCODING_GET.exit
  %i.ew = phi i64 [ %.pre271, %RB_ENCODING_GET.exit ], [ %i.em, %bb.ai ]
  %i.ex = phi i64 [ %i.ev, %RB_ENCODING_GET.exit ], [ 1, %bb.ai ] ; 2 uses
  %i.ey = and i64 %i.ew, 8192
  %.not.i168 = icmp eq i64 %i.ey, 0
  br i1 %.not.i168, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ez = call i64 @rb_gc_obj_slot_size(i64 noundef %0) #28
  %i.fa = add i64 %i.ez, -24
  %i.fb = add i64 %.4, %i.f                       ; 3 uses
  %i.fc = add i64 %i.ex, %i.fb                    ; 2 uses
  %i.fd = icmp slt i64 %i.fa, %i.fc
  br i1 %i.fd, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.fe = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.fc, i64 noundef 1) #33 ; 2 uses
  %i.ff = load i64, ptr %i.e, align 8, !tbaa !38  ; 2 uses
  %i.fg = load i64, ptr %i.d, align 8, !tbaa !36  ; 2 uses
end_hunk_0
begin_hunk_1_@coderange_scan:bb.a
  %.02539.i75 = phi ptr [ %i.bx, %bb.ad ], [ %i.bp, %bb.ab ] ; 3 uses
  %i.bs = load i64, ptr %.02539.i75, align 1
  %i.bt = and i64 %i.bs, -9187201950435737472     ; 2 uses
  %.not35.i76 = icmp eq i64 %i.bt, 0
  br i1 %.not35.i76, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i74
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, -9187201950435737471) %i.bt, i1 true)
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = getelementptr i8, ptr %.02539.i75, i64 %i.bv
  br label %search_nonascii.exit77

bb.ad:                                            ; preds = %.lr.ph.i74
  %i.bx = getelementptr i8, ptr %.02539.i75, i64 8 ; 3 uses
  %i.by = icmp ult ptr %i.bx, %i.ag
  br i1 %i.by, label %.lr.ph.i74, label %._crit_edge.i64, !llvm.loop !1

._crit_edge.i64:                                  ; preds = %bb.ad, %bb.ab
  %.025.lcssa.i65 = phi ptr [ %i.bp, %bb.ab ], [ %i.bx, %bb.ad ]
  %i.bz = ptrtoint ptr %.025.lcssa.i65 to i64
  %i.ca = sub i64 %i.bf, %i.bz
  switch i64 %i.ca, label %bb.ae [
    i64 7, label %bb.af
    i64 6, label %bb.ag
    i64 5, label %bb.ah
    i64 4, label %bb.ai
    i64 3, label %bb.aj
    i64 2, label %bb.ak
    i64 1, label %bb.al
    i64 0, label %search_nonascii.exit63.thread
  ]

bb.ae:                                            ; preds = %._crit_edge.i64
  unreachable

bb.af:                                            ; preds = %._crit_edge.i64
  %i.cb = load i8, ptr %i.ag, align 1, !tbaa !43
  %.not.i73 = icmp sgt i8 %i.cb, -1
  br i1 %.not.i73, label %bb.ag, label %search_nonascii.exit77

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i64
  %i.cc = load i8, ptr %i.bg, align 1, !tbaa !43
  %.not29.i72 = icmp sgt i8 %i.cc, -1
  br i1 %.not29.i72, label %bb.ah, label %search_nonascii.exit77

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i64
  %i.cd = load i8, ptr %i.bh, align 1, !tbaa !43
  %.not30.i71 = icmp sgt i8 %i.cd, -1
  br i1 %.not30.i71, label %bb.ai, label %search_nonascii.exit77

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i64
  %i.ce = load i8, ptr %i.bi, align 1, !tbaa !43
  %.not31.i70 = icmp sgt i8 %i.ce, -1
  br i1 %.not31.i70, label %bb.aj, label %search_nonascii.exit77

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i64
  %i.cf = load i8, ptr %i.bj, align 1, !tbaa !43
  %.not32.i69 = icmp sgt i8 %i.cf, -1
  br i1 %.not32.i69, label %bb.ak, label %search_nonascii.exit77

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i64
  %i.cg = load i8, ptr %i.bk, align 1, !tbaa !43
  %.not33.i68 = icmp sgt i8 %i.cg, -1
  br i1 %.not33.i68, label %bb.al, label %search_nonascii.exit77

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i64
  %i.ch = load i8, ptr %i.bl, align 1, !tbaa !43
  %.not34.i67 = icmp sgt i8 %i.ch, -1
  br i1 %.not34.i67, label %search_nonascii.exit63.thread, label %search_nonascii.exit77

search_nonascii.exit77:                           ; preds = %bb.ac, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al
  %.2.i66 = phi ptr [ %i.bw, %bb.ac ], [ %i.bl, %bb.al ], [ %i.ag, %bb.af ], [ %i.bg, %bb.ag ], [ %i.bh, %bb.ah ], [ %i.bi, %bb.ai ], [ %i.bj, %bb.aj ], [ %i.bk, %bb.ak ] ; 2 uses
  %.not46 = icmp eq ptr %.2.i66, null
  br i1 %.not46, label %search_nonascii.exit63.thread, label %bb.z

rb_enc_asciicompat.exit:                          ; preds = %rb_enc_asciicompat.exit.preheader, %bb.am
  %.235 = phi ptr [ %i.cm, %bb.am ], [ %0, %rb_enc_asciicompat.exit.preheader ] ; 3 uses
  %i.ci = icmp ult ptr %.235, %i.a
  br i1 %i.ci, label %bb.am, label %search_nonascii.exit63.thread

bb.am:                                            ; preds = %rb_enc_asciicompat.exit
  %i.cj = tail call i32 @rb_enc_precise_mbclen(ptr noundef %.235, ptr noundef nonnull %i.a, ptr noundef %2) #28 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = getelementptr i8, ptr %.235, i64 %i.cl
  br i1 %i.ck, label %rb_enc_asciicompat.exit, label %search_nonascii.exit63.thread, !llvm.loop !242

search_nonascii.exit63.thread:                    ; preds = %rb_enc_asciicompat.exit, %bb.am, %bb.al, %._crit_edge.i64, %search_nonascii.exit77, %bb.aa, %bb.z, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c, %bb.y, %._crit_edge.i50, %search_nonascii.exit63
  %.4 = phi i32 [ 2097152, %bb.h ], [ 1048576, %bb.y ], [ 2097152, %bb.g ], [ 2097152, %bb.al ], [ 1048576, %search_nonascii.exit63 ], [ 2097152, %bb.i ], [ 1048576, %._crit_edge.i50 ], [ 2097152, %bb.j ], [ 2097152, %bb.k ], [ 2097152, %bb.l ], [ %i.l, %bb.c ], [ 1048576, %bb.m ], [ 2097152, %bb.f ], [ 2097152, %._crit_edge.i64 ], [ 2097152, %search_nonascii.exit77 ], [ 2097152, %bb.aa ], [ 3145728, %bb.z ], [ 3145728, %bb.am ], [ 2097152, %rb_enc_asciicompat.exit ]
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = and i64 %i.b, -49153
  store i64 %i.c, ptr %i.a, align 8, !tbaa !36
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
  %.val = load i32, ptr %i.a, align 4, !tbaa !42
  %i.b = icmp sgt i32 %.val, 1
  br i1 %i.b, label %bb.f, label %.preheader70

.preheader70:                                     ; preds = %bb.a
  %i.c = add nsw i64 %1, -1                       ; 7 uses
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.e = icmp samesign ugt i64 %1, 1
  br i1 %i.e, label %.preheader70.split.us, label %.preheader70.split

.preheader70.split.us:                            ; preds = %.preheader70, %.preheader70.split.us.backedge
  %.06173.us = phi i64 [ %.06173.us.be, %.preheader70.split.us.backedge ], [ %i.c, %.preheader70 ] ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 %.06173.us ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !43    ; 2 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %.critedge.us

bb.b:                                             ; preds = %.preheader70.split.us
  store i8 0, ptr %i.f, align 1, !tbaa !43
  %i.i = add nsw i64 %.06173.us, -1
  %i.j = icmp sgt i64 %.06173.us, 0
  br i1 %i.j, label %.preheader70.split.us.backedge, label %.critedge.thread

.preheader70.split.us.backedge:                   ; preds = %bb.b, %.thread.us, %._crit_edge.us, %bb.c
  %.06173.us.be = phi i64 [ %i.i, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %.thread.us ], [ %i.c, %._crit_edge.us ]
  br label %.preheader70.split.us, !llvm.loop !243

.critedge.us:                                     ; preds = %.preheader70.split.us
  %i.k = add nuw i8 %i.g, 1
  store i8 %i.k, ptr %i.f, align 1, !tbaa !43
  %i.l = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %2) #28 ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge.us
  %i.n = icmp eq i32 %i.l, -1
  %i.o = icmp slt i64 %.06173.us, %i.c
  %or.cond.us = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.us, label %.preheader.us, label %.preheader70.split.us.backedge

.preheader.us:                                    ; preds = %bb.c, %bb.d
  %.074.us = phi i64 [ %i.s, %bb.d ], [ %i.c, %bb.c ] ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 %.074.us
  %i.q = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %2) #28
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %._crit_edge.us

bb.d:                                             ; preds = %.preheader.us
  %i.s = add nsw i64 %.074.us, -1
  %i.t = icmp sgt i64 %.074.us, 1
  br i1 %i.t, label %.preheader.us, label %._crit_edge.us, !llvm.loop !244

._crit_edge.us:                                   ; preds = %bb.d, %.preheader.us
  %.0.lcssa.us = phi i64 [ %.074.us, %.preheader.us ], [ 0, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.0.lcssa.us
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %.neg.us = xor i64 %.0.lcssa.us, -1
  %i.w = add i64 %1, %.neg.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.v, i8 noundef -1, i64 noundef %i.w, i1 noundef false) #28
  br label %.preheader70.split.us.backedge

bb.e:                                             ; preds = %.critedge.us
  %i.x = zext nneg i32 %i.l to i64                ; 3 uses
  %i.y = icmp eq i64 %1, %i.x
  br i1 %i.y, label %.critedge.thread, label %.thread.us

.thread.us:                                       ; preds = %bb.e
  %i.z = getelementptr i8, ptr %0, i64 %i.x
  %i.aa = sub nsw i64 %1, %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.z, i8 noundef -1, i64 noundef %i.aa, i1 noundef false) #28
  br label %.preheader70.split.us.backedge

.preheader70.split:                               ; preds = %.preheader70
  %scevgep = getelementptr i8, ptr %0, i64 %i.c   ; 4 uses
  %3 = load i8, ptr %scevgep, align 1, !tbaa !43  ; 2 uses
  %4 = icmp eq i8 %3, -1
  br i1 %4, label %.preheader70.split.backedge, label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %0, i64 %1        ; 3 uses
  %i.ac = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.ab, ptr noundef nonnull %2) #28
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %2, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %0, ptr noundef %i.ab, ptr noundef nonnull %2) #28, !inline_history !13
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  %i.ai = getelementptr i8, ptr %2, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76
  %i.ak = tail call i32 %i.aj(i32 noundef %i.ah, ptr noundef nonnull %2) #28, !inline_history !245 ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = sext i32 %i.ak to i64
  %.not68 = icmp eq i64 %1, %i.al
  br i1 %.not68, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %2, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !72
  %i.ao = tail call i32 %i.an(i32 noundef %i.ah, ptr noundef nonnull %0, ptr noundef nonnull %2) #28, !inline_history !9 ; 0 uses
  %i.ap = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.ab, ptr noundef nonnull %2) #28
  %i.aq = icmp sgt i32 %i.ap, 0
  %. = zext i1 %i.aq to i32
  br label %.critedge.thread

.preheader70.split.backedge:                      ; preds = %6, %.preheader70.split
  store i8 0, ptr %scevgep, align 1, !tbaa !43
  br label %.critedge.thread

.critedge:                                        ; preds = %.preheader70.split, %6
  %5 = phi i8 [ %7, %6 ], [ %3, %.preheader70.split ]
  %i.ar = add nuw i8 %5, 1
  store i8 %i.ar, ptr %scevgep, align 1, !tbaa !43
  %i.as = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %2) #28 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %6

bb.j:                                             ; preds = %.critedge
  %i.au = icmp eq i32 %i.as, 1
  br i1 %i.au, label %.critedge.thread, label %.thread

.thread:                                          ; preds = %bb.j
  %i.av = zext nneg i32 %i.as to i64              ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 %i.av
  %i.ax = sub nsw i64 1, %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.aw, i8 noundef -1, i64 noundef %i.ax, i1 noundef false) #28
  br label %6

6:                                                ; preds = %.critedge, %.thread
  %7 = load i8, ptr %scevgep, align 1, !tbaa !43  ; 2 uses
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %.preheader70.split.backedge, label %.critedge

.critedge.thread:                                 ; preds = %bb.j, %bb.e, %bb.b, %.preheader70.split.backedge, %bb.f, %bb.g, %bb.h, %bb.i
  %.1 = phi i32 [ 2, %.preheader70.split.backedge ], [ 0, %bb.f ], [ 0, %bb.g ], [ 2, %bb.h ], [ %., %bb.i ], [ 1, %bb.e ], [ 2, %bb.b ], [ 1, %bb.j ]
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 5 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 9 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  %i.j = getelementptr i8, ptr %i.d, i64 16       ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !38   ; 5 uses
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
  %.val95 = load i32, ptr %i.t, align 4, !tbaa !42
  %i.u = sext i32 %.val95 to i64
  %.pre = load i64, ptr %i.d, align 8, !tbaa !36
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
  %i.af = load i64, ptr %i.j, align 8, !tbaa !38  ; 2 uses
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %i.ah = and i64 %i.ag, 8192
  %.not.i97 = icmp eq i64 %i.ah, 0
  br i1 %.not.i97, label %RSTRING_PTR.exit98, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %RSTRING_PTR.exit98

RSTRING_PTR.exit98:                               ; preds = %bb.j, %bb.k
  %i.aj = phi ptr [ %i.ai, %bb.k ], [ %i.g, %bb.j ]
  %.not.i99 = icmp eq i64 %i.af, 0
  br i1 %.not.i99, label %ruby_nonempty_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %RSTRING_PTR.exit98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull readonly align 1 %i.aj, i64 noundef range(i64 1, 0) %i.af, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit98, %bb.l
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !43
  %i.ak = icmp ne i64 %0, 0
  %i.al = and i64 %0, 7
  %i.am = icmp eq i64 %i.al, 0
  %.not4.i = and i1 %i.ak, %i.am
  br i1 %.not4.i, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.an = and i64 %i.ag, -405505
  %i.ao = or disjoint i64 %i.an, 8192
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !36
  br label %.sink.split

bb.n:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.aq = sub i64 %5, %2
  %i.ar = add i64 %i.aq, %i.k                     ; 2 uses
  %i.as = add i64 %i.w, %i.ar
  %i.at = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ap, i64 noundef %i.as, i64 noundef 1) #31
  store ptr %i.at, ptr %i.g, align 8, !tbaa !43
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %ruby_nonempty_memcpy.exit, %bb.n
  %.sink = phi i64 [ %i.ar, %bb.n ], [ %i.ab, %ruby_nonempty_memcpy.exit ], [ %i.ab, %bb.m ]
  %i.au = getelementptr i8, ptr %i.d, i64 32
  store i64 %.sink, ptr %i.au, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.i
  %i.av = load i64, ptr %i.d, align 8, !tbaa !36  ; 3 uses
  %i.aw = and i64 %i.av, 8192
  %.not.i102 = icmp eq i64 %i.aw, 0
  br i1 %.not.i102, label %RSTRING_PTR.exit103, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !43
  br label %RSTRING_PTR.exit103

RSTRING_PTR.exit103:                              ; preds = %bb.p, %bb.o, %RSTRING_PTR.exit
  %i.ay = phi i64 [ %i.e, %RSTRING_PTR.exit ], [ %i.av, %bb.p ], [ %i.av, %bb.o ]
  %.0 = phi ptr [ %i.i, %RSTRING_PTR.exit ], [ %i.ax, %bb.p ], [ %i.g, %bb.o ] ; 4 uses
  %i.az = and i64 %i.ay, 3145728
  %i.ba = icmp eq i64 %i.az, 1048576
  br i1 %i.ba, label %bb.q, label %rb_enc_str_coderange.exit

bb.q:                                             ; preds = %RSTRING_PTR.exit103
  %i.bb = inttoptr i64 %3 to ptr                  ; 6 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !36
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
  %i.bl = load i64, ptr %i.bb, align 8, !tbaa !36
  %i.bm = and i64 %i.bl, 8192
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  %i.bn = getelementptr i8, ptr %i.bb, i64 24     ; 2 uses
  br i1 %.not.i.i.i, label %enc_coderange_scan.exit.i, label %bb.t

bb.t:                                             ; preds = %get_encoding.exit.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !43
  br label %enc_coderange_scan.exit.i

enc_coderange_scan.exit.i:                        ; preds = %bb.t, %get_encoding.exit.i
  %i.bp = phi ptr [ %i.bo, %bb.t ], [ %i.bn, %get_encoding.exit.i ]
  %i.bq = getelementptr i8, ptr %i.bb, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !38
  %i.bs = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.bp, i64 noundef %i.br, ptr noundef %i.bk) ; 2 uses
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !36
  %i.bu = and i64 %i.bt, -3145729
  %i.bv = zext nneg i32 %i.bs to i64
  %i.bw = or i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.bb, align 8, !tbaa !36
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
