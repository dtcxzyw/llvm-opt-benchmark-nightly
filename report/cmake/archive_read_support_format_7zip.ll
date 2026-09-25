Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_7zip?download=true
inline.NumInlined: 63
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@extract_pack_stream:bb.a
decompress.exit.thread154:                        ; preds = %bb.ab, %bb.ac, %bb.v, %decompress.exit
  %.11315.i161 = phi i32 [ %.11.i, %decompress.exit ], [ %spec.select.i, %bb.v ], [ 0, %bb.ab ], [ %spec.select339.i, %bb.ac ]
  %.3160 = phi i64 [ %.3, %decompress.exit ], [ %i.eg, %bb.v ], [ %i.es, %bb.ab ], [ %i.es, %bb.ac ]
  %.0148159 = phi i64 [ %i.gy, %decompress.exit ], [ 0, %bb.v ], [ 0, %bb.ab ], [ 0, %bb.ac ] ; 3 uses
  %i.rz = load i64, ptr %i.bi, align 8, !tbaa !134 ; 2 uses
  %i.sa = sub i64 %i.rz, %.0148159
  store i64 %i.sa, ptr %i.bi, align 8, !tbaa !134
  %i.sb = load i64, ptr %i.bm, align 8, !tbaa !75 ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %.3160, i64 %i.sb)
  %i.sc = icmp ne i32 %.11315.i161, 0
  %.pre220 = load i64, ptr %i.bg, align 8, !tbaa !77
  %.pre221 = load i64, ptr %i.bh, align 8, !tbaa !217
  %i.sd = icmp eq i64 %i.rz, %.0148159
  br label %bb.cw

bb.cw:                                            ; preds = %decompress.exit.thread154, %decompress.exit.thread154.thread
  %i.se = phi i64 [ %i.dj, %decompress.exit.thread154.thread ], [ %.pre221, %decompress.exit.thread154 ] ; 2 uses
  %i.sf = phi i64 [ %i.dh, %decompress.exit.thread154.thread ], [ %.pre220, %decompress.exit.thread154 ]
  %i.sg = phi i64 [ %i.dr, %decompress.exit.thread154.thread ], [ %i.sb, %decompress.exit.thread154 ] ; 3 uses
  %i.sh = phi i1 [ false, %decompress.exit.thread154.thread ], [ %i.sd, %decompress.exit.thread154 ] ; 2 uses
  %.0148159170 = phi i64 [ 0, %decompress.exit.thread154.thread ], [ %.0148159, %decompress.exit.thread154 ] ; 2 uses
  %.11315.i161169 = phi i1 [ false, %decompress.exit.thread154.thread ], [ %i.sc, %decompress.exit.thread154 ]
  %.0 = phi i64 [ 0, %decompress.exit.thread154.thread ], [ %spec.select, %decompress.exit.thread154 ] ; 5 uses
  %i.si = sub i64 %i.sg, %.0
  store i64 %i.si, ptr %i.bm, align 8, !tbaa !75
  %i.sj = add i64 %i.sf, %.0                      ; 4 uses
  store i64 %i.sj, ptr %i.bg, align 8, !tbaa !77
  store i64 %.0148159170, ptr %i.dd, align 8, !tbaa !74
  %i.sk = icmp eq i64 %i.sj, %i.se
  br i1 %i.sk, label %bb.de, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sl = load i64, ptr %i.bj, align 8, !tbaa !154
  %i.sm = icmp eq i64 %i.sl, 50528515
  br i1 %i.sm, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.sn = load i64, ptr %i.bk, align 8, !tbaa !138
  %.not113 = icmp ne i64 %i.sn, 0
  %i.so = add i64 %i.sj, 5
  %i.sp = icmp ugt i64 %i.so, %i.se
  %or.cond117 = and i1 %i.sp, %.not113
  %i.sq = icmp eq i64 %i.sg, %.0
  %or.cond171 = select i1 %i.sh, i1 %i.sq, i1 false
  %or.cond293 = select i1 %or.cond117, i1 true, i1 %or.cond171
  br i1 %or.cond293, label %bb.de, label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %.old = icmp eq i64 %i.sg, %.0
  %or.cond171.old = select i1 %i.sh, i1 %.old, i1 false
  br i1 %or.cond171.old, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.sr = or i64 %.0, %.0148159170
  %or.cond4 = icmp eq i64 %i.sr, 0
  %or.cond172 = select i1 %.11315.i161169, i1 true, i1 %or.cond4
  br i1 %or.cond172, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.19) #18
  br label %.critedge

bb.dc:                                            ; preds = %bb.da
  %i.ss = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !60 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 288 ; 3 uses
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !74 ; 2 uses
  %.not.i118 = icmp eq i64 %i.sv, 0
  br i1 %.not.i118, label %read_consume.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sw = call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.sv) #18 ; 0 uses
  %i.sx = load i64, ptr %i.su, align 8, !tbaa !74
  %i.sy = getelementptr inbounds nuw i8, ptr %i.st, i64 248 ; 2 uses
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !63
  %i.ta = add i64 %i.sz, %i.sx
  store i64 %i.ta, ptr %i.sy, align 8, !tbaa !63
  store i64 0, ptr %i.su, align 8, !tbaa !74
  br label %read_consume.exit

read_consume.exit:                                ; preds = %bb.dd, %bb.dc
  %i.tb = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 1, ptr noundef nonnull %i.a) #18
  %i.tc = load i64, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.td = icmp slt i64 %i.tc, 1
  br i1 %i.td, label %._crit_edge, label %bb.r

bb.de:                                            ; preds = %bb.cz, %bb.cw, %bb.cy
  %i.te = icmp ult i64 %i.sj, %1
  br i1 %i.te, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.19) #18
  br label %.critedge

bb.dg:                                            ; preds = %bb.de
  %i.tf = load ptr, ptr %i.w, align 8, !tbaa !114
  store ptr %i.tf, ptr %i.bc, align 8, !tbaa !155
  br label %.critedge

.critedge:                                        ; preds = %decompress.exit, %bb.bi, %bb.bd, %bb.bb, %bb.ay, %bb.z, %bb.av, %bb.as, %bb.an, %bb.ap, %bb.aj, %bb.cv, %bb.bk, %bb.bn, %bb.db, %._crit_edge, %.thread, %bb.dg, %bb.df, %bb.h, %bb.e, %bb.d
  %.6 = phi i64 [ -30, %bb.d ], [ 0, %bb.e ], [ -30, %bb.h ], [ -30, %.thread ], [ -30, %bb.df ], [ 0, %bb.dg ], [ -30, %._crit_edge ], [ -30, %bb.bi ], [ -30, %bb.db ], [ -30, %bb.bn ], [ -30, %bb.bk ], [ -30, %bb.cv ], [ -30, %bb.aj ], [ -30, %bb.ap ], [ -30, %bb.an ], [ -30, %bb.as ], [ -30, %bb.av ], [ -30, %bb.z ], [ -30, %bb.ay ], [ -30, %bb.bb ], [ -30, %bb.bd ], [ -30, %decompress.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @get_uncompressed_data(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.f = load i64, ptr %i.e, align 8, !tbaa !153
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.i = load i64, ptr %i.h, align 8, !tbaa !154
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef %3, ptr noundef nonnull %i.a) #18 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !102
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.34) #18
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.o = load i64, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.m, i64 %i.o)
  %i.p = call i64 @llvm.umin.i64(i64 %spec.select, i64 %2) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store i64 %i.p, ptr %i.q, align 8, !tbaa !74
  br label %bb.k

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 224 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.19) #18
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 240 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77   ; 2 uses
  %i.w = icmp ugt i64 %3, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = tail call fastcc i64 @extract_pack_stream(ptr noundef nonnull %0, i64 noundef %3)
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i64, ptr %i.u, align 8, !tbaa !77
  %.pre31 = load ptr, ptr %i.r, align 8, !tbaa !155
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.h
  %i.z = phi ptr [ %.pre31, %._crit_edge ], [ %i.s, %bb.h ]
  %i.aa = phi i64 [ %.pre, %._crit_edge ], [ %i.v, %bb.h ] ; 2 uses
  %. = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.aa) ; 2 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !102
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !155
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !155
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.ad = phi i64 [ %i.aa, %bb.j ], [ %i.o, %bb.e ]
  %i.ae = phi i64 [ %., %bb.j ], [ %i.p, %bb.e ]  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.ag = sub i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !77
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.g, %bb.d
  %.0 = phi i64 [ -30, %bb.d ], [ %i.ae, %bb.k ], [ -30, %bb.g ], [ -30, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @Bcj2_Decode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20136 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !156  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20128
  %i.g = load i64, ptr %i.f, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = sub i64 0, %i.c
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20088 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20040
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20064
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = sub i64 0, %i.l
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20096 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20048
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !115
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20072
  %i.y = load i64, ptr %i.x, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = sub i64 0, %i.u
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20104 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !42 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20056
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !115
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20080
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 4 uses
  %i.aj = sub i64 0, %i.ad
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 19996 ; 5 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !166
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %iter.check, label %bb.f

iter.check:                                       ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20660
  store i8 0, ptr %i.ao, align 4, !tbaa !244
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20144
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20160
  store <8 x i16> splat (i16 1024), ptr %i.ap, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.aq, align 8, !tbaa !245
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20176
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20192
  store <8 x i16> splat (i16 1024), ptr %i.ar, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.as, align 8, !tbaa !245
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20208
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20224
  store <8 x i16> splat (i16 1024), ptr %i.at, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.au, align 8, !tbaa !245
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20240
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20256
  store <8 x i16> splat (i16 1024), ptr %i.av, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.aw, align 8, !tbaa !245
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20272
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20288
  store <8 x i16> splat (i16 1024), ptr %i.ax, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.ay, align 8, !tbaa !245
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20304
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20320
  store <8 x i16> splat (i16 1024), ptr %i.az, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.ba, align 8, !tbaa !245
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20336
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20352
  store <8 x i16> splat (i16 1024), ptr %i.bb, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bc, align 8, !tbaa !245
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20368
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20384
  store <8 x i16> splat (i16 1024), ptr %i.bd, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.be, align 8, !tbaa !245
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20400
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20416
  store <8 x i16> splat (i16 1024), ptr %i.bf, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bg, align 8, !tbaa !245
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20432
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20448
  store <8 x i16> splat (i16 1024), ptr %i.bh, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bi, align 8, !tbaa !245
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20464
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20480
  store <8 x i16> splat (i16 1024), ptr %i.bj, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bk, align 8, !tbaa !245
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20496
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20512
  store <8 x i16> splat (i16 1024), ptr %i.bl, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bm, align 8, !tbaa !245
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20528
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20544
  store <8 x i16> splat (i16 1024), ptr %i.bn, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bo, align 8, !tbaa !245
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20560
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20576
  store <8 x i16> splat (i16 1024), ptr %i.bp, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bq, align 8, !tbaa !245
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20592
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20608
  store <8 x i16> splat (i16 1024), ptr %i.br, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bs, align 8, !tbaa !245
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20624
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20640
  store <8 x i16> splat (i16 1024), ptr %i.bt, align 8, !tbaa !245
  store <8 x i16> splat (i16 1024), ptr %i.bu, align 8, !tbaa !245
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20656
  store <2 x i16> splat (i16 1024), ptr %i.bv, align 8, !tbaa !245
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20668 ; 6 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !246
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 20664
  store i32 -1, ptr %i.bx, align 8, !tbaa !247
  %i.by = icmp eq i64 %i.ad, 0
  br i1 %i.by, label %.thread279, label %bb.b

bb.b:                                             ; preds = %iter.check
  %i.bz = load i8, ptr %i.ak, align 1, !tbaa !41
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !246
  %i.cb = icmp eq i64 %i.ad, 1
  br i1 %i.cb, label %.thread279, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.cd = shl nuw nsw i32 %i.ca, 8
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !41
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 2 uses
  store i32 %i.cg, ptr %i.bw, align 4, !tbaa !246
  %i.ch = icmp eq i64 %i.ad, 2
  br i1 %i.ch, label %.thread279, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.cj = shl nuw nsw i32 %i.cg, 8
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !41
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl            ; 2 uses
  store i32 %i.cm, ptr %i.bw, align 4, !tbaa !246
  %i.cn = icmp eq i64 %i.ad, 3
  br i1 %i.cn, label %.thread279, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 3
  %i.cp = shl nuw i32 %i.cm, 8
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !41
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  store i32 %i.cs, ptr %i.bw, align 4, !tbaa !246
  %i.ct = icmp eq i64 %i.ad, 4
  br i1 %i.ct, label %.thread279, label %.critedge

.critedge:                                        ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.cv = shl i32 %i.cs, 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ak, i64 5
  %i.cx = load i8, ptr %i.cu, align 1, !tbaa !41
  %i.cy = zext i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cv, %i.cy
  store i32 %i.cz, ptr %i.bw, align 4, !tbaa !246
  store i32 1, ptr %i.al, align 4, !tbaa !166
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.a
  %.1183 = phi ptr [ %i.cw, %.critedge ], [ %i.ak, %bb.a ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 20000 ; 4 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !138
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = icmp ne i64 %2, 0
  %i.de = and i1 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 20008
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0206310 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.g ] ; 3 uses
  %i.dg = and i64 %.0206310, 4294967295
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !41
  %i.dj = add nuw i64 %.0206310, 1                ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %.0206310
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !41
  %i.dl = load i64, ptr %i.da, align 8, !tbaa !138
  %i.dm = add i64 %i.dl, -1                       ; 2 uses
  store i64 %i.dm, ptr %i.da, align 8, !tbaa !138
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp ult i64 %i.dj, %2
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %i.dp, label %bb.g, label %.preheader291, !llvm.loop !243

._crit_edge:                                      ; preds = %bb.f
  %i.dq = icmp eq i64 %2, 0
  br i1 %i.dq, label %.thread279, label %.preheader291

.preheader291:                                    ; preds = %bb.g, %._crit_edge
  %.0206.lcssa367 = phi i64 [ 0, %._crit_edge ], [ %i.dj, %bb.g ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 20660 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 20144
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 20664 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 20668 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 20672 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.dw = getelementptr i8, ptr %0, i64 20008
  br label %.outer

.outer:                                           ; preds = %bb.ad, %.preheader291
  %.0214.ph = phi i64 [ %i.er, %bb.ad ], [ 0, %.preheader291 ]
  %.1207.ph = phi i64 [ %.lcssa481, %bb.ad ], [ %.0206.lcssa367, %.preheader291 ]
  %.0201.ph = phi ptr [ %.1202, %bb.ad ], [ %i.s, %.preheader291 ] ; 3 uses
  %.0196.ph = phi ptr [ %.1197, %bb.ad ], [ %i.ab, %.preheader291 ] ; 3 uses
  %.0191.ph = phi i64 [ %.1192, %bb.ad ], [ %i.l, %.preheader291 ] ; 5 uses
  %.0186.ph = phi i64 [ %.1187, %bb.ad ], [ %i.u, %.preheader291 ] ; 5 uses
  %.2184.ph = phi ptr [ %.4, %bb.ad ], [ %.1183, %.preheader291 ]
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.t
  %.0214 = phi i64 [ %i.er, %bb.t ], [ %.0214.ph, %.outer ] ; 3 uses
  %.1207 = phi i64 [ %.3209, %bb.t ], [ %.1207.ph, %.outer ] ; 3 uses
  %.2184 = phi ptr [ %.3185, %bb.t ], [ %.2184.ph, %.outer ] ; 10 uses
  %i.dx = sub i64 %i.c, %.0214
  %i.dy = sub i64 %2, %.1207
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.dx) ; 3 uses
  %i.dz = load i32, ptr %i.al, align 4, !tbaa !166
  %i.ea = icmp eq i32 %i.dz, 1
  %i.eb = icmp ne i64 %spec.select, 0
  %or.cond = and i1 %i.eb, %i.ea
  br i1 %or.cond, label %.preheader, label %bb.l

bb.i:                                             ; preds = %bb.j
  %i.ec = add i64 %.1215, 1                       ; 2 uses
  store i8 %i.ef, ptr %i.dr, align 4, !tbaa !244
  %i.ed = add i64 %.1, -1                         ; 2 uses
  %.old2.not = icmp eq i64 %i.ed, 0
  br i1 %.old2.not, label %.thread265, label %.preheader

.preheader:                                       ; preds = %bb.h, %bb.i
  %.1215 = phi i64 [ %i.ec, %bb.i ], [ %.0214, %bb.h ] ; 3 uses
  %.2208 = phi i64 [ %i.eg, %bb.i ], [ %.1207, %bb.h ] ; 2 uses
  %.1 = phi i64 [ %i.ed, %bb.i ], [ %spec.select, %bb.h ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 %.1215
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !41  ; 3 uses
  %i.eg = add i64 %.2208, 1                       ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %.2208
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !41
  %i.ei = zext i8 %i.ef to i32                    ; 2 uses
  %i.ej = and i32 %i.ei, 254
  %i.ek = icmp eq i32 %i.ej, 232
  br i1 %i.ek, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.el = load i8, ptr %i.dr, align 4, !tbaa !244
  %i.em = icmp eq i8 %i.el, 15
  %i.en = and i32 %i.ei, 240
  %i.eo = icmp eq i32 %i.en, 128
  %or.cond236 = and i1 %i.eo, %i.em
  br i1 %or.cond236, label %bb.k, label %bb.i

bb.k:                                             ; preds = %.preheader, %bb.j
  store i32 2, ptr %i.al, align 4, !tbaa !166
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.3217 = phi i64 [ %.0214, %bb.h ], [ %.1215, %bb.k ] ; 3 uses
  %.3209 = phi i64 [ %.1207, %bb.h ], [ %i.eg, %bb.k ] ; 12 uses
  %.3 = phi i64 [ %spec.select, %bb.h ], [ 1, %bb.k ]
  %i.ep = icmp eq i64 %.3, 0
  %i.eq = icmp eq i64 %.3209, %2
  %or.cond237 = or i1 %i.eq, %i.ep
  br i1 %or.cond237, label %.thread265, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.al, align 4, !tbaa !166
  %i.er = add i64 %.3217, 1                       ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 %.3217
  %i.et = load i8, ptr %i.es, align 1, !tbaa !41  ; 3 uses
  %i.eu = icmp eq i8 %i.et, -24                   ; 2 uses
  br i1 %i.eu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ev = load i8, ptr %i.dr, align 4, !tbaa !244
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.ew
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ey = icmp eq i8 %i.et, -23
  %..v = select i1 %i.ey, i64 20656, i64 20658
  %. = getelementptr inbounds nuw i8, ptr %0, i64 %..v
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0172 = phi ptr [ %i.ex, %bb.n ], [ %., %bb.o ] ; 3 uses
  %i.ez = load i16, ptr %.0172, align 2, !tbaa !245 ; 4 uses
  %i.fa = zext i16 %i.ez to i32                   ; 2 uses
  %i.fb = load i32, ptr %i.dt, align 8, !tbaa !247 ; 2 uses
  %i.fc = lshr i32 %i.fb, 11
  %i.fd = mul i32 %i.fc, %i.fa                    ; 6 uses
  %i.fe = load i32, ptr %i.du, align 4, !tbaa !246 ; 3 uses
  %i.ff = icmp ult i32 %i.fe, %i.fd
  br i1 %i.ff, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  store i32 %i.fd, ptr %i.dt, align 8, !tbaa !247
  %i.fg = sub nsw i32 2048, %i.fa
  %i.fh = lshr i32 %i.fg, 5
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = add i16 %i.ez, %i.fi
  store i16 %i.fj, ptr %.0172, align 2, !tbaa !245
  %i.fk = icmp ult i32 %i.fd, 16777216
  br i1 %i.fk, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fl = icmp eq ptr %.2184, %i.ai
  br i1 %i.fl, label %.thread279, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fm = shl nuw i32 %i.fd, 8
  store i32 %i.fm, ptr %i.dt, align 8, !tbaa !247
  %i.fn = shl nuw i32 %i.fe, 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.2184, i64 1
  %i.fp = load i8, ptr %.2184, align 1, !tbaa !41
  %i.fq = zext i8 %i.fp to i32
  %i.fr = or disjoint i32 %i.fn, %i.fq
  store i32 %i.fr, ptr %i.du, align 4, !tbaa !246
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.3185 = phi ptr [ %i.fo, %bb.s ], [ %.2184, %bb.q ]
  store i8 %i.et, ptr %i.dr, align 4, !tbaa !244
  br label %bb.h

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.fs = sub i32 %i.fb, %i.fd                    ; 3 uses
  store i32 %i.fs, ptr %i.dt, align 8, !tbaa !247
  %i.ft = sub nuw i32 %i.fe, %i.fd                ; 2 uses
  store i32 %i.ft, ptr %i.du, align 4, !tbaa !246
  %i.fu = lshr i16 %i.ez, 5
  %i.fv = sub nuw i16 %i.ez, %i.fu
  store i16 %i.fv, ptr %.0172, align 2, !tbaa !245
  %i.fw = icmp ult i32 %i.fs, 16777216
  br i1 %i.fw, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fx = icmp eq ptr %.2184, %i.ai
  br i1 %i.fx, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fy = shl nuw i32 %i.fs, 8
  store i32 %i.fy, ptr %i.dt, align 8, !tbaa !247
  %i.fz = shl i32 %i.ft, 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.2184, i64 1
  %i.gb = load i8, ptr %.2184, align 1, !tbaa !41
  %i.gc = zext i8 %i.gb to i32
  %i.gd = or disjoint i32 %i.fz, %i.gc
  store i32 %i.gd, ptr %i.du, align 4, !tbaa !246
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.4 = phi ptr [ %i.ga, %bb.w ], [ %.2184, %bb.u ] ; 2 uses
  br i1 %i.eu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ge = icmp ult i64 %.0191.ph, 4
  br i1 %i.ge, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr %.0201.ph, i64 4
  %i.gg = add i64 %.0191.ph, -4
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.gh = icmp ult i64 %.0186.ph, 4
  br i1 %i.gh, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gi = getelementptr inbounds nuw i8, ptr %.0196.ph, i64 4
  %i.gj = add i64 %.0186.ph, -4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.1202 = phi ptr [ %i.gf, %bb.z ], [ %.0201.ph, %bb.ab ]
  %.1197 = phi ptr [ %.0196.ph, %bb.z ], [ %i.gi, %bb.ab ]
  %.1192 = phi i64 [ %i.gg, %bb.z ], [ %.0191.ph, %bb.ab ] ; 2 uses
  %.1187 = phi i64 [ %.0186.ph, %bb.z ], [ %i.gj, %bb.ab ] ; 2 uses
  %.0 = phi ptr [ %.0201.ph, %bb.z ], [ %.0196.ph, %bb.ab ] ; 4 uses
  %6 = load i8, ptr %.0, align 1, !tbaa !41
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !41
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or disjoint i32 %12, %8
  %14 = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !41
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or disjoint i32 %13, %17
  %19 = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !41
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %18, %21
  %i.gk = load i64, ptr %i.dv, align 8, !tbaa !139
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = trunc i64 %.3209 to i32
  %i.gn = add i32 %i.gm, %i.gl
  %reass.sub = sub i32 %22, %i.gn
  %i.go = add i32 %reass.sub, -4                  ; 4 uses
  %23 = trunc i32 %i.go to i8
  store i8 %23, ptr %i.a, align 1, !tbaa !41
  %24 = lshr i32 %i.go, 8
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %3, align 1, !tbaa !41
  %26 = lshr i32 %i.go, 16
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %4, align 1, !tbaa !41
  %i.gp = lshr i32 %i.go, 24
  %i.gq = trunc nuw i32 %i.gp to i8               ; 2 uses
  store i8 %i.gq, ptr %i.dr, align 4, !tbaa !244
  store i8 %i.gq, ptr %5, align 1, !tbaa !41
  %i.gr = icmp ult i64 %.3209, %2
  br i1 %i.gr, label %.lr.ph316.preheader, label %._crit_edge317.thread

.lr.ph316.preheader:                              ; preds = %bb.ac
  %scevgep = getelementptr i8, ptr %1, i64 %.3209
  %i.gs = xor i64 %.3209, -1
  %i.gt = add i64 %2, %i.gs
  %umin = tail call i64 @llvm.umin.i64(i64 %i.gt, i64 3)
  %i.gu = add nuw nsw i64 %umin, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.gu, i1 false), !tbaa !41
  %i.gv = add nuw i64 %.3209, 1                   ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %2
  br i1 %i.gw, label %.lr.ph316.1, label %._crit_edge317

.lr.ph316.1:                                      ; preds = %.lr.ph316.preheader
  %i.gx = add nuw i64 %.3209, 2                   ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %2
  br i1 %i.gy, label %.lr.ph316.2, label %._crit_edge317

.lr.ph316.2:                                      ; preds = %.lr.ph316.1
  %i.gz = add nuw i64 %.3209, 3                   ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %2
  br i1 %i.ha, label %.lr.ph316.3, label %._crit_edge317

.lr.ph316.3:                                      ; preds = %.lr.ph316.2
  %i.hb = add nuw i64 %.3209, 4
  br label %._crit_edge317

._crit_edge317:                                   ; preds = %.lr.ph316.3, %.lr.ph316.2, %.lr.ph316.1, %.lr.ph316.preheader
  %.lcssa481 = phi i64 [ %i.gv, %.lr.ph316.preheader ], [ %i.gx, %.lr.ph316.1 ], [ %i.gz, %.lr.ph316.2 ], [ %i.hb, %.lr.ph316.3 ] ; 2 uses
  %indvars.iv.next345.lcssa = phi i32 [ 1, %.lr.ph316.preheader ], [ 2, %.lr.ph316.1 ], [ 3, %.lr.ph316.2 ], [ 4, %.lr.ph316.3 ]
  %.lcssa480 = phi i1 [ true, %.lr.ph316.preheader ], [ true, %.lr.ph316.1 ], [ true, %.lr.ph316.2 ], [ false, %.lr.ph316.3 ]
  br i1 %.lcssa480, label %._crit_edge317.thread, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.outer

._crit_edge317.thread:                            ; preds = %bb.ac, %._crit_edge317
  %.2180.lcssa372 = phi i32 [ %indvars.iv.next345.lcssa, %._crit_edge317 ], [ 0, %bb.ac ] ; 3 uses
  %.4210.lcssa371 = phi i64 [ %.lcssa481, %._crit_edge317 ], [ %.3209, %bb.ac ]
  %i.hc = sub nuw nsw i32 4, %.2180.lcssa372
  %i.hd = zext nneg i32 %i.hc to i64
  store i64 %i.hd, ptr %i.da, align 8, !tbaa !138
  %i.he = zext nneg i32 %.2180.lcssa372 to i64
  %scevgep347 = getelementptr i8, ptr %i.a, i64 %i.he
  %narrow = sub nuw nsw i32 4, %.2180.lcssa372
  %i.hf = zext nneg i32 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dw, ptr align 1 %scevgep347, i64 %i.hf, i1 false), !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread265

bb.ae:                                            ; preds = %bb.y, %bb.aa, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread279

.thread265:                                       ; preds = %bb.l, %bb.i, %._crit_edge317.thread
  %.7278 = phi ptr [ %.4, %._crit_edge317.thread ], [ %.2184, %bb.i ], [ %.2184, %bb.l ]
  %.4190277 = phi i64 [ %.1187, %._crit_edge317.thread ], [ %.0186.ph, %bb.i ], [ %.0186.ph, %bb.l ]
  %.4195276 = phi i64 [ %.1192, %._crit_edge317.thread ], [ %.0191.ph, %bb.i ], [ %.0191.ph, %bb.l ]
  %.7213275 = phi i64 [ %.4210.lcssa371, %._crit_edge317.thread ], [ %i.eg, %bb.i ], [ %.3209, %bb.l ] ; 2 uses
  %.4218274 = phi i64 [ %i.er, %._crit_edge317.thread ], [ %i.ec, %bb.i ], [ %.3217, %bb.l ]
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !156
  %i.hh = sub i64 %i.hg, %.4218274
  store i64 %i.hh, ptr %i.b, align 8, !tbaa !156
  store i64 %.4195276, ptr %i.k, align 8, !tbaa !42
  store i64 %.4190277, ptr %i.t, align 8, !tbaa !42
  %i.hi = ptrtoint ptr %i.ai to i64
  %i.hj = ptrtoint ptr %.7278 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  store i64 %i.hk, ptr %i.ac, align 8, !tbaa !42
  %i.hl = load i64, ptr %i.dv, align 8, !tbaa !139
  %i.hm = add i64 %i.hl, %.7213275
  store i64 %i.hm, ptr %i.dv, align 8, !tbaa !139
  br label %.thread279

.thread279:                                       ; preds = %bb.r, %._crit_edge, %iter.check, %bb.b, %bb.c, %bb.d, %bb.e, %bb.ae, %.thread265
  %.6225 = phi i64 [ 0, %._crit_edge ], [ -25, %iter.check ], [ %.7213275, %.thread265 ], [ -25, %bb.ae ], [ -25, %bb.b ], [ -25, %bb.e ], [ -25, %bb.d ], [ -25, %bb.c ], [ -25, %bb.r ]
  ret i64 %.6225
}

; Function Attrs: nounwind
declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @lzma_end(ptr noundef) local_unnamed_addr #14

declare i32 @BZ2_bzDecompress(ptr noundef) local_unnamed_addr #2

declare i32 @BZ2_bzDecompressEnd(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @ZSTD_decompressStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ZSTD_isError(i64 noundef) local_unnamed_addr #2

declare ptr @ZSTD_getErrorName(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ppmd_read(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !248    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2072
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 19928 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 19936 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !159  ; 2 uses
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 19952 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !160
  %i.l = add i64 %i.k, 1
  %i.m = call ptr @__archive_read_ahead(ptr noundef nonnull %i.b, i64 noundef %i.l, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !42
  %i.p = load i64, ptr %i.j, align 8, !tbaa !160  ; 3 uses
  %.not = icmp sgt i64 %i.o, %i.p
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.b, i32 noundef 84, ptr noundef nonnull @.str.33) #18
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 19984
  store i32 1, ptr %i.q, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !158
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.f, align 8, !tbaa !158
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.pre = load i64, ptr %i.g, align 8, !tbaa !159
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !158  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.f, align 8, !tbaa !158
  %i.x = load i8, ptr %i.v, align 1, !tbaa !41
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 19952
  %.pre22 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.y = phi i64 [ %i.p, %bb.d ], [ %.pre22, %bb.e ]
  %i.z = phi i64 [ %.pre, %bb.d ], [ %i.h, %bb.e ]
  %.1 = phi i8 [ %i.u, %bb.d ], [ %i.x, %bb.e ]
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 19944 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !167
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !167
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 19952
  %i.af = add nsw i64 %i.y, 1
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %.120 = phi i8 [ %.1, %bb.f ], [ 0, %.critedge ]
  ret i8 %.120
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_StreamsInfo(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 104)) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._7z_digests, align 8        ; 11 uses
  %3 = alloca %struct._7z_digests, align 8        ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 104, i1 false)
  %i.d = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 1, !tbaa !41    ; 2 uses
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.h = tail call fastcc i32 @parse_7zip_uint64(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.k = tail call fastcc i32 @parse_7zip_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.j, align 8, !tbaa !271
  %i.n = add i64 %i.m, -100000001
  %or.cond47.i = icmp ult i64 %i.n, -100000000
  br i1 %or.cond47.i, label %.critedge, label %bb.f
end_hunk_0
