Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@char_column_width:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !48
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 6
  %i.am = or disjoint i32 %i.al, %i.ag            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !48
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.am, %i.aq            ; 8 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %utf8_char_width.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = icmp samesign ult i32 %i.ar, 32
  %i.au = add nsw i32 %i.ar, -127
  %or.cond.i32.i = icmp ult i32 %i.au, 33
  %or.cond10.i33.i = select i1 %i.at, i1 true, i1 %or.cond.i32.i
  br i1 %or.cond10.i33.i, label %utf8_char_width.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond15.i34.i = icmp samesign ult i32 %i.ar, 173
  br i1 %or.cond15.i34.i, label %utf8_char_width.exit, label %.preheader.i.i35.i

.preheader.i.i35.i:                               ; preds = %bb.o, %bb.s
  %.022.i.i36.i = phi i32 [ %.1.i.i40.i, %bb.s ], [ 0, %bb.o ] ; 2 uses
  %.01721.i.i37.i = phi i32 [ %.118.i.i39.i, %bb.s ], [ 310, %bb.o ] ; 2 uses
  %i.av = add nsw i32 %.01721.i.i37.i, %.022.i.i36.i
  %i.aw = sdiv i32 %i.av, 2                       ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr @mk_wcwidth.combining, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !373
  %i.bb = icmp sgt i32 %i.ar, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i.i35.i
  %i.bc = add nsw i32 %i.aw, 1
  br label %bb.s

bb.q:                                             ; preds = %.preheader.i.i35.i
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !374
  %i.be = icmp slt i32 %i.ar, %i.bd
  br i1 %i.be, label %bb.r, label %utf8_char_width.exit

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i32 %i.aw, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.118.i.i39.i = phi i32 [ %.01721.i.i37.i, %bb.p ], [ %i.bf, %bb.r ] ; 2 uses
  %.1.i.i40.i = phi i32 [ %i.bc, %bb.p ], [ %.022.i.i36.i, %bb.r ] ; 2 uses
  %.not.i.i41.i = icmp slt i32 %.118.i.i39.i, %.1.i.i40.i
  br i1 %.not.i.i41.i, label %bb.t, label %.preheader.i.i35.i, !llvm.loop !371

bb.t:                                             ; preds = %bb.s
  %or.cond.i.i42.i = icmp samesign ult i32 %i.am, 4352
  br i1 %or.cond.i.i42.i, label %utf8_char_width.exit, label %.preheader.i.i.i43.i

.preheader.i.i.i43.i:                             ; preds = %bb.t, %bb.x
  %.022.i.i.i44.i = phi i32 [ %.1.i.i.i47.i, %bb.x ], [ 0, %bb.t ] ; 2 uses
  %.01721.i.i.i45.i = phi i32 [ %.118.i.i.i46.i, %bb.x ], [ 90, %bb.t ] ; 2 uses
  %i.bg = add nsw i32 %.01721.i.i.i45.i, %.022.i.i.i44.i
  %i.bh = sdiv i32 %i.bg, 2                       ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr @mk_is_wide_char.wide, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !373
  %i.bm = icmp sgt i32 %i.ar, %i.bl
  br i1 %i.bm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader.i.i.i43.i
  %i.bn = add nsw i32 %i.bh, 1
  br label %bb.x

bb.v:                                             ; preds = %.preheader.i.i.i43.i
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !374
  %i.bp = icmp slt i32 %i.ar, %i.bo
  br i1 %i.bp, label %bb.w, label %utf8_char_width.exit

bb.w:                                             ; preds = %bb.v
  %i.bq = add nsw i32 %i.bh, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.118.i.i.i46.i = phi i32 [ %.01721.i.i.i45.i, %bb.u ], [ %i.bq, %bb.w ] ; 2 uses
  %.1.i.i.i47.i = phi i32 [ %i.bn, %bb.u ], [ %.022.i.i.i44.i, %bb.w ] ; 2 uses
  %.not.i.i.i48.i = icmp slt i32 %.118.i.i.i46.i, %.1.i.i.i47.i
  br i1 %.not.i.i.i48.i, label %utf8_char_width.exit, label %.preheader.i.i.i43.i, !llvm.loop !371

bb.y:                                             ; preds = %bb.l
  %i.br = icmp samesign ult i8 %i.c, -11
  %i.bs = icmp samesign ugt i64 %1, 3
  %or.cond5.i = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond5.i, label %bb.z, label %utf8_char_width.exit

bb.z:                                             ; preds = %bb.y
  %i.bt = shl nuw nsw i32 %i.e, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !48
  %i.bx = and i8 %i.bw, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 12
  %i.ca = or disjoint i32 %i.bz, %i.bu
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !48
  %i.cd = and i8 %i.cc, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 6
  %i.cg = or disjoint i32 %i.ca, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !48
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.cg, %i.ck            ; 9 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %utf8_char_width.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = icmp samesign ult i32 %i.cl, 32
  %i.co = add nsw i32 %i.cl, -127
  %or.cond.i50.i = icmp ult i32 %i.co, 33
  %or.cond10.i51.i = select i1 %i.cn, i1 true, i1 %or.cond.i50.i
  br i1 %or.cond10.i51.i, label %utf8_char_width.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = add nsw i32 %i.cl, -918000
  %or.cond15.i52.i = icmp ult i32 %i.cp, -917827
  br i1 %or.cond15.i52.i, label %utf8_char_width.exit, label %.preheader.i.i53.i

.preheader.i.i53.i:                               ; preds = %bb.ab, %bb.af
  %.022.i.i54.i = phi i32 [ %.1.i.i58.i, %bb.af ], [ 0, %bb.ab ] ; 2 uses
  %.01721.i.i55.i = phi i32 [ %.118.i.i57.i, %bb.af ], [ 310, %bb.ab ] ; 2 uses
  %i.cq = add nsw i32 %.01721.i.i55.i, %.022.i.i54.i
  %i.cr = sdiv i32 %i.cq, 2                       ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr @mk_wcwidth.combining, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !373
  %i.cw = icmp sgt i32 %i.cl, %i.cv
  br i1 %i.cw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i.i53.i
  %i.cx = add nsw i32 %i.cr, 1
  br label %bb.af

bb.ad:                                            ; preds = %.preheader.i.i53.i
  %i.cy = load i32, ptr %i.ct, align 8, !tbaa !374
  %i.cz = icmp slt i32 %i.cl, %i.cy
  br i1 %i.cz, label %bb.ae, label %utf8_char_width.exit

bb.ae:                                            ; preds = %bb.ad
  %i.da = add nsw i32 %i.cr, -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.118.i.i57.i = phi i32 [ %.01721.i.i55.i, %bb.ac ], [ %i.da, %bb.ae ] ; 2 uses
  %.1.i.i58.i = phi i32 [ %i.cx, %bb.ac ], [ %.022.i.i54.i, %bb.ae ] ; 2 uses
  %.not.i.i59.i = icmp slt i32 %.118.i.i57.i, %.1.i.i58.i
  br i1 %.not.i.i59.i, label %bb.ag, label %.preheader.i.i53.i, !llvm.loop !371

bb.ag:                                            ; preds = %bb.af
  %i.db = add nsw i32 %i.cl, -262142
  %or.cond.i.i60.i = icmp ult i32 %i.db, -257790
  br i1 %or.cond.i.i60.i, label %utf8_char_width.exit, label %.preheader.i.i.i61.i

.preheader.i.i.i61.i:                             ; preds = %bb.ag, %bb.ak
  %.022.i.i.i62.i = phi i32 [ %.1.i.i.i65.i, %bb.ak ], [ 0, %bb.ag ] ; 2 uses
  %.01721.i.i.i63.i = phi i32 [ %.118.i.i.i64.i, %bb.ak ], [ 90, %bb.ag ] ; 2 uses
  %i.dc = add nsw i32 %.01721.i.i.i63.i, %.022.i.i.i62.i
  %i.dd = sdiv i32 %i.dc, 2                       ; 3 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr @mk_is_wide_char.wide, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !373
  %i.di = icmp sgt i32 %i.cl, %i.dh
  br i1 %i.di, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i.i.i61.i
  %i.dj = add nsw i32 %i.dd, 1
  br label %bb.ak

bb.ai:                                            ; preds = %.preheader.i.i.i61.i
  %i.dk = load i32, ptr %i.df, align 8, !tbaa !374
  %i.dl = icmp slt i32 %i.cl, %i.dk
  br i1 %i.dl, label %bb.aj, label %utf8_char_width.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dm = add nsw i32 %i.dd, -1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.118.i.i.i64.i = phi i32 [ %.01721.i.i.i63.i, %bb.ah ], [ %i.dm, %bb.aj ] ; 2 uses
  %.1.i.i.i65.i = phi i32 [ %i.dj, %bb.ah ], [ %.022.i.i.i62.i, %bb.aj ] ; 2 uses
  %.not.i.i.i66.i = icmp slt i32 %.118.i.i.i64.i, %.1.i.i.i65.i
  br i1 %.not.i.i.i66.i, label %utf8_char_width.exit, label %.preheader.i.i.i61.i, !llvm.loop !371

utf8_char_width.exit:                             ; preds = %bb.ad, %bb.ak, %bb.ai, %bb.q, %bb.x, %bb.v, %bb.k, %bb.i, %bb.ag, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.t, %bb.o, %bb.n, %bb.m, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.y ], [ 0, %bb.q ], [ 1, %bb.c ], [ -1, %bb.aa ], [ 1, %bb.ag ], [ 1, %bb.k ], [ 0, %bb.e ], [ -1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.ab ], [ 0, %bb.m ], [ -1, %bb.n ], [ 1, %bb.t ], [ 1, %bb.o ], [ 2, %bb.v ], [ 1, %bb.ak ], [ 0, %bb.z ], [ 0, %bb.i ], [ 1, %bb.x ], [ 2, %bb.ai ], [ 0, %bb.ad ]
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @edit_line(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.rowcol_s, align 8           ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.rowcol_s, align 8           ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct.rowcol_s, align 8           ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.rowcol_s, align 8           ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.editor_s, align 8           ; 141 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i64 128, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 30 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !216
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = tail call ptr %.val.i(i64 noundef 32) #28, !inline_history !2 ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null              ; 2 uses
  br i1 %.not.i.i, label %sbuf_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.k, ptr %i.n, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br label %sbuf_new.exit

sbuf_new.exit:                                    ; preds = %bb.a, %bb.b
  store ptr %i.m, ptr %6, align 8, !tbaa !217
  %i.o = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %.val.i111 = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.p = tail call ptr %.val.i111(i64 noundef 32) #28, !inline_history !2 ; 4 uses
  %.not.i.i112 = icmp eq ptr %i.p, null           ; 2 uses
  br i1 %.not.i.i112, label %sbuf_new.exit113, label %bb.c

bb.c:                                             ; preds = %sbuf_new.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.o, ptr %i.q, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %sbuf_new.exit113

sbuf_new.exit113:                                 ; preds = %sbuf_new.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !218
  %i.s = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %.val.i114 = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.t = tail call ptr %.val.i114(i64 noundef 32) #28, !inline_history !2 ; 4 uses
  %.not.i.i115 = icmp eq ptr %i.t, null           ; 2 uses
  br i1 %.not.i.i115, label %sbuf_new.exit116, label %bb.d

bb.d:                                             ; preds = %sbuf_new.exit113
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.s, ptr %i.u, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  br label %sbuf_new.exit116

sbuf_new.exit116:                                 ; preds = %sbuf_new.exit113, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.t, ptr %i.v, align 8, !tbaa !219
  %i.w = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %.val.i117 = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.x = tail call ptr %.val.i117(i64 noundef 32) #28, !inline_history !2 ; 4 uses
  %.not.i.i118 = icmp eq ptr %i.x, null           ; 2 uses
  br i1 %.not.i.i118, label %sbuf_new.exit119, label %bb.e

bb.e:                                             ; preds = %sbuf_new.exit116
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.w, ptr %i.y, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br label %sbuf_new.exit119

sbuf_new.exit119:                                 ; preds = %sbuf_new.exit116, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !220
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !143
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val = load i64, ptr %i.ac, align 8, !tbaa !203
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i64 %.val, ptr %i.ad, align 8, !tbaa !221
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 68 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !222
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 1, ptr %i.af, align 8, !tbaa !223
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.ag, align 8, !tbaa !224
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 17 uses
  store i8 0, ptr %i.ah, align 8, !tbaa !225
  %.not103 = icmp eq ptr %1, null
  %i.ai = select i1 %.not103, ptr @.str.3, ptr %1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 8 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !226
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 34 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 50 uses
  %or.cond = or i1 %.not.i.i, %.not.i.i112
  %or.cond5 = or i1 %or.cond, %.not.i.i115
  %or.cond8 = or i1 %.not.i.i118, %or.cond5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %or.cond8, label %bb.lz, label %bb.f

bb.f:                                             ; preds = %sbuf_new.exit119
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !178, !range !136, !noundef !137
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !180, !range !136, !noundef !137
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %.val.i120 = load ptr, ptr %i.at, align 8, !tbaa !70
  %i.au = tail call ptr %.val.i120(i64 noundef 32) #28, !inline_history !0 ; 6 uses
  %.not.i.i121 = icmp eq ptr %i.au, null
  br i1 %.not.i.i121, label %attrbuf_new.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.au, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.at, ptr %i.av, align 8, !tbaa !73
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %.val.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.ax = tail call ptr %.val.i.i.i(ptr noundef null, i64 noundef 1920) #28, !inline_history !1 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not22.i.i.i, label %attrbuf_new.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !75
  store i64 240, ptr %i.ay, align 8, !tbaa !76
  br label %attrbuf_new.exit

attrbuf_new.exit:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr %i.au, ptr %i.az, align 8, !tbaa !227
  %i.ba = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %.val.i122 = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bb = tail call ptr %.val.i122(i64 noundef 32) #28, !inline_history !0 ; 6 uses
  %.not.i.i123 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i123, label %attrbuf_new.exit126, label %bb.k

bb.k:                                             ; preds = %attrbuf_new.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bb, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !73
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i124 = load ptr, ptr %i.bd, align 8, !tbaa !74
  %i.be = tail call ptr %.val.i.i.i124(ptr noundef null, i64 noundef 1920) #28, !inline_history !1 ; 2 uses
  %.not22.i.i.i125 = icmp eq ptr %i.be, null
  br i1 %.not22.i.i.i125, label %attrbuf_new.exit126, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !75
  store i64 240, ptr %i.bf, align 8, !tbaa !76
  br label %attrbuf_new.exit126

attrbuf_new.exit126:                              ; preds = %attrbuf_new.exit, %bb.k, %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr %i.bb, ptr %i.bg, align 8, !tbaa !228
  br label %bb.m

bb.m:                                             ; preds = %attrbuf_new.exit126, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !148
  tail call fastcc void @bbcode_style_open(ptr noundef %i.bi, ptr noundef nonnull @.str.250)
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !148
  tail call fastcc void @bbcode_print(ptr noundef %i.bj, ptr noundef nonnull %i.ai)
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !148
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.bl = load ptr, ptr %.in.i, align 8, !tbaa !87
  tail call fastcc void @bbcode_print(ptr noundef %i.bk, ptr noundef %i.bl)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !148 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !83 ; 2 uses
  %i.bp = icmp slt i64 %i.bo, 1
  br i1 %i.bp, label %edit_write_prompt.exit, label %bbcode_tag_pop.exit.us.i.i
end_hunk_0
