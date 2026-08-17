inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@png_image_read_direct:bb.a
bb.az:                                            ; preds = %png_read_update_info.exit
  br i1 %.1155, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @png_error(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.55) #14
  unreachable

bb.bb:                                            ; preds = %bb.ay, %bb.az, %bb.ax
  %.1172 = phi i32 [ %spec.select224, %bb.az ], [ %spec.select231, %bb.ay ], [ %spec.select224, %bb.ax ]
  %i.cc = and i32 %.3, 64
  %spec.select227 = or i32 %.1172, %i.cc          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !171
  %i.cf = icmp eq i8 %i.ce, 16
  %i.cg = or i32 %spec.select227, 4
  %.3174 = select i1 %i.cf, i32 %i.cg, i32 %spec.select227
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !42 ; 3 uses
  %i.cj = shl i32 %i.ci, 4
  %i.ck = and i32 %i.cj, 16
  %.4175 = or i32 %i.ck, %.3174                   ; 2 uses
  %i.cl = and i32 %.3, 32
  %.not216 = icmp eq i32 %i.cl, 0
  %or.cond229 = select i1 %i.bq, i1 true, i1 %.not216
  %i.cm = or i32 %.4175, 32                       ; 3 uses
  %.5176 = select i1 %or.cond229, i32 %.4175, i32 %i.cm ; 2 uses
  %i.cn = and i32 %i.ci, 131072
  %.not217 = icmp eq i32 %i.cn, 0
  br i1 %.not217, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.co = and i32 %i.ci, 16777216
  %.not218 = icmp eq i32 %i.co, 0
  br i1 %.not218, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cp = load i32, ptr %i.bs, align 8, !tbaa !25
  %i.cq = and i32 %i.cp, 128
  %i.cr = icmp ne i32 %i.cq, 0                    ; 2 uses
  %brmerge = or i1 %i.cr, %i.bq
  %.5176.mux = select i1 %i.cr, i32 %.5176, i32 %i.cm
  br i1 %brmerge, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bb
  br i1 %i.bq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  call void @png_error(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.56) #14
  unreachable

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bc
  %.6177 = phi i32 [ %.5176, %bb.bc ], [ %.5176.mux, %bb.bd ], [ %i.cm, %bb.be ]
  %.not219 = icmp eq i32 %.6177, %.3
  br i1 %.not219, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @png_error(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.57) #14
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !141 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !142 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %.lobit234 = lshr exact i32 %i.i, 2
  %i.cx = zext nneg i32 %.lobit234 to i64
  %spec.select230 = shl nsw i64 %i.cw, %i.cx      ; 3 uses
  %i.cy = icmp slt i32 %i.cv, 0
  br i1 %i.cy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !138
  %i.db = add i32 %i.da, -1
  %i.dc = zext i32 %i.db to i64
  %i.dd = mul i64 %spec.select230, %i.dc
  %i.de = sub i64 0, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.de
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0170 = phi ptr [ %i.df, %bb.bj ], [ %i.ct, %bb.bi ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %.0170, ptr %i.dg, align 8, !tbaa !173
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %spec.select230, ptr %i.dh, align 8, !tbaa !174
  %brmerge246.not = and i1 %.1155, %i.bq
  br i1 %brmerge246.not, label %.preheader, label %.loopexit235.sink.split

.preheader:                                       ; preds = %bb.bk
  %i.di = icmp sgt i32 %.0160, 0
  br i1 %i.di, label %.lr.ph239, label %.loopexit235

.lr.ph239:                                        ; preds = %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !138 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.loopexit235, label %.lr.ph239.split

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph239.split
  %i.dm = icmp samesign ugt i32 %.in, 1
  br i1 %i.dm, label %.lr.ph239.splitthread-pre-split, label %.loopexit235, !llvm.loop !187

.lr.ph239.splitthread-pre-split:                  ; preds = %.loopexit
  %.pr = load i32, ptr %i.dj, align 8, !tbaa !138
  br label %.lr.ph239.split

.lr.ph239.split:                                  ; preds = %.lr.ph239, %.lr.ph239.splitthread-pre-split
  %i.dn = phi i32 [ %.pr, %.lr.ph239.splitthread-pre-split ], [ %i.dk, %.lr.ph239 ] ; 2 uses
  %.in = phi i32 [ %i.do, %.lr.ph239.splitthread-pre-split ], [ %.0160, %.lr.ph239 ] ; 2 uses
  %i.do = add nsw i32 %.in, -1
  %.not221236 = icmp eq i32 %i.dn, 0
  br i1 %.not221236, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph239.split
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !173
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0238 = phi ptr [ %i.dq, %.lr.ph ], [ %i.dp, %.lr.ph.preheader ] ; 2 uses
  %.0151237 = phi i32 [ %i.dr, %.lr.ph ], [ %i.dn, %.lr.ph.preheader ]
  call void @png_read_row(ptr noundef nonnull %i.d, ptr noundef %.0238, ptr noundef null)
  %i.dq = getelementptr inbounds nuw i8, ptr %.0238, i64 %spec.select230
  %i.dr = add i32 %.0151237, -1                   ; 2 uses
  %.not221 = icmp eq i32 %i.dr, 0
  br i1 %.not221, label %.loopexit, label %.lr.ph, !llvm.loop !188

.loopexit235.sink.split:                          ; preds = %bb.bk
  %png_image_read_composite.mux = select i1 %.1155, ptr @png_image_read_background, ptr @png_image_read_composite
  %i.ds = call i64 @png_get_rowbytes(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #13
  %i.dt = call noalias ptr @png_malloc(ptr noundef nonnull %i.d, i64 noundef %i.ds) #13 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !175
  %i.dv = call i32 @png_safe_execute(ptr noundef nonnull %i.b, ptr noundef nonnull %png_image_read_composite.mux, ptr noundef nonnull %0) #13
  store ptr null, ptr %i.du, align 8, !tbaa !175
  call void @png_free(ptr noundef nonnull %i.d, ptr noundef %i.dt) #13
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit, %.loopexit235.sink.split, %.lr.ph239, %.preheader
  %.0152 = phi i32 [ 1, %.lr.ph239 ], [ %i.dv, %.loopexit235.sink.split ], [ 1, %.preheader ], [ 1, %.loopexit ]
  ret i32 %.0152
}

declare void @png_image_free(ptr noundef) local_unnamed_addr #2

declare void @png_destroy_gamma_table(ptr noundef) local_unnamed_addr #2

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_zfree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @png_safe_error(ptr noundef, ptr noundef) #3

declare void @png_safe_warning(ptr noundef, ptr noundef) #2

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #2

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @png_set_benign_errors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @png_create_colormap_entry(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 65536) %5, i32 noundef range(i32 1, 4) %6) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !119  ; 2 uses
  %i.d = and i32 %i.c, 4
  %i.e = icmp ne i32 %i.d, 0                      ; 6 uses
  %i.f = select i1 %i.e, i32 2, i32 1
  %i.g = and i32 %i.c, 2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ne i32 %2, %3
  %i.j = icmp ne i32 %3, %4
  %i.k = or i1 %i.i, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ] ; 3 uses
  %i.m = icmp ugt i32 %1, 255
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  tail call void @png_error(ptr noundef %i.o, ptr noundef nonnull @.str.48) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %6, 3
  br i1 %i.p, label %bb.f, label %set_file_encoding.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !189  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %set_file_encoding.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109  ; 2 uses
  %i.v = tail call i32 @png_resolve_file_gamma(ptr noundef %i.u) #13 ; 5 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @png_error(ptr noundef %i.u, ptr noundef nonnull @.str.50) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = tail call i32 @png_gamma_significant(i32 noundef %i.v) #13
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add i32 %i.v, -10000001
  %or.cond.i.i = icmp ult i32 %i.y, -9999001
  br i1 %or.cond.i.i, label %bb.k, label %png_gamma_not_sRGB.exit.i

png_gamma_not_sRGB.exit.i:                        ; preds = %bb.j
  %i.z = mul nuw nsw i32 %i.v, 11
  %i.aa = add nuw nsw i32 %i.z, 2
  %i.ab = udiv i32 %i.aa, 5
  %i.ac = tail call i32 @png_gamma_significant(i32 noundef %i.ab) #13
  %.not10.i = icmp eq i32 %i.ac, 0
  br i1 %.not10.i, label %bb.k, label %7

7:                                                ; preds = %png_gamma_not_sRGB.exit.i
  store i32 3, ptr %i.q, align 8, !tbaa !189
  %8 = tail call i32 @png_reciprocal(i32 noundef %i.v) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %png_gamma_not_sRGB.exit.i, %7
  %.sink14.i = phi i64 [ 68, %7 ], [ 64, %png_gamma_not_sRGB.exit.i ], [ 64, %bb.j ], [ 64, %bb.i ]
  %.sink.i = phi i32 [ %8, %7 ], [ 1, %png_gamma_not_sRGB.exit.i ], [ 1, %bb.j ], [ 4, %bb.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sink14.i
  store i32 %.sink.i, ptr %i.ad, align 4, !tbaa !3
  %.pre = load i32, ptr %i.q, align 8, !tbaa !189
  br label %set_file_encoding.exit

set_file_encoding.exit:                           ; preds = %bb.f, %bb.k, %bb.e
  %.0154 = phi i32 [ %6, %bb.e ], [ %.pre, %bb.k ], [ %i.r, %bb.f ] ; 2 uses
  switch i32 %.0154, label %.thread178 [
    i32 3, label %bb.l
    i32 4, label %bb.o
    i32 1, label %bb.p
    i32 2, label %.thread
  ]

bb.l:                                             ; preds = %set_file_encoding.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !190 ; 3 uses
  %i.ag = mul i32 %2, 257
  %i.ah = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %i.ag, i32 noundef %i.af) #13
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = mul i32 %3, 257
  %i.ak = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %i.aj, i32 noundef %i.af) #13
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = mul i32 %4, 257
  %i.an = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %i.am, i32 noundef %i.af) #13
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %or.cond = or i1 %i.e, %i.l
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = mul nuw nsw i32 %5, 257
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.aq = mul nuw nsw i32 %i.ai, 255              ; 2 uses
  %i.ar = lshr i32 %i.aq, 15
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !153
  %i.av = zext i16 %i.au to i32
  %i.aw = and i32 %i.aq, 32767
  %i.ax = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.as
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !46
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.aw, %i.az
  %i.bb = lshr i32 %i.ba, 12
  %i.bc = add nuw nsw i32 %i.bb, %i.av
  %i.bd = lshr i32 %i.bc, 8
  %i.be = and i32 %i.bd, 255
  %i.bf = mul nuw nsw i32 %i.al, 255              ; 2 uses
  %i.bg = lshr i32 %i.bf, 15
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !153
  %i.bk = zext i16 %i.bj to i32
  %i.bl = and i32 %i.bf, 32767
  %i.bm = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.bh
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !46
  %i.bo = zext i8 %i.bn to i32
  %i.bp = mul nuw nsw i32 %i.bl, %i.bo
  %i.bq = lshr i32 %i.bp, 12
  %i.br = add nuw nsw i32 %i.bq, %i.bk
  %i.bs = lshr i32 %i.br, 8
  %i.bt = and i32 %i.bs, 255
  %i.bu = mul nuw nsw i32 %i.ao, 255              ; 2 uses
  %i.bv = lshr i32 %i.bu, 15
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !153
  %i.bz = zext i16 %i.by to i32
  %i.ca = and i32 %i.bu, 32767
  %i.cb = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.bw
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !46
  %i.cd = zext i8 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.ca, %i.cd
  %i.cf = lshr i32 %i.ce, 12
  %i.cg = add nuw nsw i32 %i.cf, %i.bz
  %i.ch = lshr i32 %i.cg, 8
  %i.ci = and i32 %i.ch, 255
  br label %.thread178

bb.o:                                             ; preds = %set_file_encoding.exit
  %i.cj = mul i32 %2, 257
  %i.ck = mul i32 %3, 257
  %i.cl = mul i32 %4, 257
  %i.cm = mul nuw nsw i32 %5, 257
  br label %.thread

bb.p:                                             ; preds = %set_file_encoding.exit
  %or.cond3 = or i1 %i.e, %i.l
  br i1 %or.cond3, label %bb.q, label %.thread178

bb.q:                                             ; preds = %bb.p
  %i.cn = zext i32 %2 to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !153
  %i.cq = zext i16 %i.cp to i32
  %i.cr = zext i32 %3 to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !153
  %i.cu = zext i16 %i.ct to i32
  %i.cv = zext i32 %4 to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !153
  %i.cy = zext i16 %i.cx to i32
  %i.cz = mul nuw nsw i32 %5, 257
  br label %.thread

.thread:                                          ; preds = %set_file_encoding.exit, %bb.m, %bb.q, %bb.o
  %.1173 = phi i32 [ %2, %set_file_encoding.exit ], [ %i.ai, %bb.m ], [ %i.cq, %bb.q ], [ %i.cj, %bb.o ] ; 3 uses
  %.1142172 = phi i32 [ %3, %set_file_encoding.exit ], [ %i.al, %bb.m ], [ %i.cu, %bb.q ], [ %i.ck, %bb.o ] ; 3 uses
  %.1147171 = phi i32 [ %4, %set_file_encoding.exit ], [ %i.ao, %bb.m ], [ %i.cy, %bb.q ], [ %i.cl, %bb.o ] ; 3 uses
  %.1151170 = phi i32 [ %5, %set_file_encoding.exit ], [ %i.ap, %bb.m ], [ %i.cz, %bb.q ], [ %i.cm, %bb.o ] ; 4 uses
  br i1 %i.l, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.thread
  %i.da = mul i32 %.1173, 6968
  %i.db = mul i32 %.1142172, 23434
  %i.dc = add i32 %i.db, %i.da
  %i.dd = mul i32 %.1147171, 2366
  %i.de = add i32 %i.dc, %i.dd                    ; 2 uses
  br i1 %i.e, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = add i32 %i.de, 16384
  %i.dg = lshr i32 %i.df, 15                      ; 3 uses
  br label %.thread178

bb.t:                                             ; preds = %bb.r
  %i.dh = add i32 %i.de, 128
  %i.di = lshr i32 %i.dh, 8
  %i.dj = mul nuw i32 %i.di, 255
  %i.dk = add nuw i32 %i.dj, 64                   ; 2 uses
  %i.dl = lshr i32 %i.dk, 7
  %i.dm = lshr i32 %i.dk, 22
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !153
  %i.dq = zext i16 %i.dp to i32
  %i.dr = and i32 %i.dl, 32767
  %i.ds = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.dn
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !46
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nuw nsw i32 %i.dr, %i.du
  %i.dw = lshr i32 %i.dv, 12
  %i.dx = add nuw nsw i32 %i.dw, %i.dq
  %i.dy = lshr i32 %i.dx, 8
  %i.dz = and i32 %i.dy, 255                      ; 3 uses
  %i.ea = mul nuw i32 %.1151170, 255
  %i.eb = add nuw i32 %i.ea, 32895
  %i.ec = lshr i32 %i.eb, 16
  br label %.thread178

bb.u:                                             ; preds = %.thread
  br i1 %i.e, label %.thread178, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = mul i32 %.1173, 255                     ; 2 uses
  %i.ee = lshr i32 %i.ed, 15
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !153
  %i.ei = zext i16 %i.eh to i32
  %i.ej = and i32 %i.ed, 32767
  %i.ek = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ef
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !46
  %i.em = zext i8 %i.el to i32
  %i.en = mul nuw nsw i32 %i.ej, %i.em
  %i.eo = lshr i32 %i.en, 12
  %i.ep = add nuw nsw i32 %i.eo, %i.ei
  %i.eq = lshr i32 %i.ep, 8
  %i.er = and i32 %i.eq, 255
  %i.es = mul i32 %.1142172, 255                  ; 2 uses
  %i.et = lshr i32 %i.es, 15
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !153
  %i.ex = zext i16 %i.ew to i32
  %i.ey = and i32 %i.es, 32767
  %i.ez = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.eu
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !46
  %i.fb = zext i8 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.ey, %i.fb
  %i.fd = lshr i32 %i.fc, 12
  %i.fe = add nuw nsw i32 %i.fd, %i.ex
  %i.ff = lshr i32 %i.fe, 8
  %i.fg = and i32 %i.ff, 255
  %i.fh = mul i32 %.1147171, 255                  ; 2 uses
  %i.fi = lshr i32 %i.fh, 15
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !153
  %i.fm = zext i16 %i.fl to i32
  %i.fn = and i32 %i.fh, 32767
  %i.fo = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.fj
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !46
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nuw nsw i32 %i.fn, %i.fq
  %i.fs = lshr i32 %i.fr, 12
  %i.ft = add nuw nsw i32 %i.fs, %i.fm
  %i.fu = lshr i32 %i.ft, 8
  %i.fv = and i32 %i.fu, 255
  %i.fw = mul nuw i32 %.1151170, 255
  %i.fx = add nuw i32 %i.fw, 32895
  %i.fy = lshr i32 %i.fx, 16
  br label %.thread178

.thread178:                                       ; preds = %set_file_encoding.exit, %bb.n, %bb.p, %bb.s, %bb.t, %bb.v, %bb.u
  %.4158 = phi i32 [ %.0154, %set_file_encoding.exit ], [ 1, %bb.v ], [ 2, %bb.u ], [ 2, %bb.s ], [ 1, %bb.t ], [ 1, %bb.p ], [ 1, %bb.n ]
  %.3153 = phi i32 [ %5, %set_file_encoding.exit ], [ %i.fy, %bb.v ], [ %.1151170, %bb.u ], [ %.1151170, %bb.s ], [ %i.ec, %bb.t ], [ %5, %bb.p ], [ %5, %bb.n ] ; 12 uses
  %.2148 = phi i32 [ %4, %set_file_encoding.exit ], [ %i.fv, %bb.v ], [ %.1147171, %bb.u ], [ %i.dg, %bb.s ], [ %i.dz, %bb.t ], [ %4, %bb.p ], [ %i.ci, %bb.n ] ; 3 uses
  %.2143 = phi i32 [ %3, %set_file_encoding.exit ], [ %i.fg, %bb.v ], [ %.1142172, %bb.u ], [ %i.dg, %bb.s ], [ %i.dz, %bb.t ], [ %3, %bb.p ], [ %i.bt, %bb.n ] ; 6 uses
  %.2 = phi i32 [ %2, %set_file_encoding.exit ], [ %i.er, %bb.v ], [ %.1173, %bb.u ], [ %i.dg, %bb.s ], [ %i.dz, %bb.t ], [ %2, %bb.p ], [ %i.be, %bb.n ] ; 3 uses
  %.not = icmp eq i32 %.4158, %i.f
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread178
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !109
  tail call void @png_error(ptr noundef %i.ga, ptr noundef nonnull @.str.49) #14
  unreachable

bb.x:                                             ; preds = %.thread178
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !119 ; 3 uses
  %i.gc = and i32 %i.gb, 33
  %spec.select = icmp eq i32 %i.gc, 33            ; 7 uses
  %i.gd = zext i1 %spec.select to i32             ; 4 uses
  %i.ge = lshr i32 %i.gb, 3
  %i.gf = and i32 %i.ge, 2                        ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !143 ; 2 uses
  %i.gi = and i32 %i.gb, 3
  %i.gj = add nuw nsw i32 %i.gi, 1                ; 3 uses
  %i.gk = mul nuw nsw i32 %i.gj, %1
  %i.gl = zext nneg i32 %i.gk to i64              ; 2 uses
  br i1 %i.e, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.gl ; 6 uses
  switch i32 %i.gj, label %default.unreachable187 [
    i32 4, label %bb.z
    i32 3, label %bb.aa
    i32 2, label %bb.ae
    i32 1, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %i.gn = trunc i32 %.3153 to i16
  %i.go = select i1 %spec.select, i64 0, i64 3
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.go
  store i16 %i.gn, ptr %i.gp, align 2, !tbaa !153
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gq = icmp samesign ult i32 %.3153, 65535
  br i1 %i.gq, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not164 = icmp eq i32 %.3153, 0
  br i1 %.not164, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gr = mul i32 %.2148, %.3153
  %i.gs = add i32 %i.gr, 32767
  %i.gt = udiv i32 %i.gs, 65535
  %i.gu = mul i32 %.2143, %.3153
  %i.gv = add i32 %i.gu, 32767
  %i.gw = udiv i32 %i.gv, 65535
  %i.gx = mul i32 %.2, %.3153
  %i.gy = add i32 %i.gx, 32767
  %i.gz = udiv i32 %i.gy, 65535
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.3149 = phi i32 [ %i.gt, %bb.ac ], [ %.2148, %bb.aa ], [ 0, %bb.ab ]
  %.3144 = phi i32 [ %i.gw, %bb.ac ], [ %.2143, %bb.aa ], [ 0, %bb.ab ]
  %.3 = phi i32 [ %i.gz, %bb.ac ], [ %.2, %bb.aa ], [ 0, %bb.ab ]
  %i.ha = trunc i32 %.3149 to i16
  %i.hb = or disjoint i32 %i.gf, %i.gd            ; 2 uses
  %i.hc = xor i32 %i.hb, 2
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.hd
  store i16 %i.ha, ptr %i.he, align 2, !tbaa !153
  %i.hf = trunc i32 %.3144 to i16
  %i.hg = select i1 %spec.select, i64 2, i64 1
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.hg
  store i16 %i.hf, ptr %i.hh, align 2, !tbaa !153
  %i.hi = trunc i32 %.3 to i16
  %i.hj = zext nneg i32 %i.hb to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.hj
  store i16 %i.hi, ptr %i.hk, align 2, !tbaa !153
  br label %bb.ao

bb.ae:                                            ; preds = %bb.y
  %i.hl = trunc i32 %.3153 to i16
  %i.hm = xor i32 %i.gd, 1
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.hn
  store i16 %i.hl, ptr %i.ho, align 2, !tbaa !153
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %i.hp = icmp samesign ult i32 %.3153, 65535
  br i1 %i.hp, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.not163 = icmp eq i32 %.3153, 0
  br i1 %.not163, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hq = mul i32 %.2143, %.3153
  %i.hr = add i32 %i.hq, 32767
  %i.hs = udiv i32 %i.hr, 65535
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.4 = phi i32 [ %i.hs, %bb.ah ], [ %.2143, %bb.af ], [ 0, %bb.ag ]
  %i.ht = trunc i32 %.4 to i16
  %i.hu = zext i1 %spec.select to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.hu
  store i16 %i.ht, ptr %i.hv, align 2, !tbaa !153
  br label %bb.ao

default.unreachable187:                           ; preds = %bb.aj, %bb.y
  unreachable

bb.aj:                                            ; preds = %bb.x
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gl ; 6 uses
  switch i32 %i.gj, label %default.unreachable187 [
    i32 4, label %bb.ak
    i32 3, label %bb.al
    i32 2, label %bb.am
    i32 1, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.hx = trunc i32 %.3153 to i8
  %i.hy = select i1 %spec.select, i64 0, i64 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hy
  store i8 %i.hx, ptr %i.hz, align 1, !tbaa !46
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ia = trunc i32 %.2148 to i8
  %i.ib = or disjoint i32 %i.gf, %i.gd            ; 2 uses
  %i.ic = xor i32 %i.ib, 2
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.id
  store i8 %i.ia, ptr %i.ie, align 1, !tbaa !46
  %i.if = trunc i32 %.2143 to i8
  %i.ig = select i1 %spec.select, i64 2, i64 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ig
  store i8 %i.if, ptr %i.ih, align 1, !tbaa !46
  %i.ii = trunc i32 %.2 to i8
  %i.ij = zext nneg i32 %i.ib to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ij
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !46
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.il = trunc i32 %.3153 to i8
  %i.im = xor i32 %i.gd, 1
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.in
  store i8 %i.il, ptr %i.io, align 1, !tbaa !46
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %i.ip = trunc i32 %.2143 to i8
  %i.iq = zext i1 %spec.select to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.iq
  store i8 %i.ip, ptr %i.ir, align 1, !tbaa !46
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.an, %bb.ad, %bb.ai
  ret void
}

declare void @png_set_background_fixed(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @make_ga_colormap(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.01921 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %.019.tr = trunc nuw nsw i32 %.01921 to i16
  %i.a = shl nuw i16 %.019.tr, 8
  %.lhs.trunc = or disjoint i16 %i.a, 115
  %i.b = udiv i16 %.lhs.trunc, 231
  %.zext = zext nneg i16 %i.b to i32              ; 3 uses
  %i.c = add nuw nsw i32 %.01921, 1               ; 2 uses
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %.01921, i32 noundef %.zext, i32 noundef %.zext, i32 noundef %.zext, i32 noundef 255, i32 noundef 1)
  %exitcond.not = icmp eq i32 %i.c, 231
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !191

.preheader:                                       ; preds = %bb.b
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 231, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 232, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 233, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 234, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 235, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 236, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 237, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 51, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 238, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 239, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 240, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 241, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 242, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 243, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 102, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 244, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 245, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 246, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 247, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 248, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 249, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 153, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 250, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 251, i32 noundef 51, i32 noundef 51, i32 noundef 51, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 252, i32 noundef 102, i32 noundef 102, i32 noundef 102, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 253, i32 noundef 153, i32 noundef 153, i32 noundef 153, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 254, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 204, i32 noundef 1)
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 255, i32 noundef 204, i32 noundef 1)
  ret i32 256
}

declare void @png_set_rgb_to_gray_fixed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @png_resolve_file_gamma(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @png_gamma_16bit_correct(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @make_rgb_colormap(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %.preheader14

.preheader14:                                     ; preds = %bb.a, %bb.b
  %.01220 = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %.01319 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  %i.a = mul nuw nsw i32 %.01220, 51              ; 6 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader14, %.preheader
  %.01118 = phi i32 [ 0, %.preheader14 ], [ %i.i, %.preheader ] ; 2 uses
  %.117 = phi i32 [ %.01319, %.preheader14 ], [ %i.h, %.preheader ] ; 7 uses
  %i.b = mul nuw nsw i32 %.01118, 51              ; 6 uses
  %i.c = add i32 %.117, 1
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %.117, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 0, i32 noundef 255, i32 noundef 1)
  %i.d = add i32 %.117, 2
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 51, i32 noundef 255, i32 noundef 1)
  %i.e = add i32 %.117, 3
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.d, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 102, i32 noundef 255, i32 noundef 1)
  %i.f = add i32 %.117, 4
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 153, i32 noundef 255, i32 noundef 1)
  %i.g = add i32 %.117, 5
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 204, i32 noundef 255, i32 noundef 1)
  %i.h = add i32 %.117, 6                         ; 3 uses
  tail call fastcc void @png_create_colormap_entry(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 255, i32 noundef 255, i32 noundef 1)
  %i.i = add nuw nsw i32 %.01118, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, 6
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !192

bb.b:                                             ; preds = %.preheader
  %i.j = add nuw nsw i32 %.01220, 1               ; 2 uses
  %exitcond21.not = icmp eq i32 %i.j, 6
  br i1 %exitcond21.not, label %bb.c, label %.preheader14, !llvm.loop !193

bb.c:                                             ; preds = %bb.b
  ret i32 %i.h
}

declare void @png_set_tRNS_to_alpha(ptr noundef) local_unnamed_addr #2

declare void @png_set_alpha_mode_fixed(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @png_gamma_significant(i32 noundef) local_unnamed_addr #2

declare i32 @png_reciprocal(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 16842496) i32 @decode_gamma(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef range(i32 1, 4) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 3
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !189  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !139
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %i.h = tail call i32 @png_resolve_file_gamma(ptr noundef %i.g) #13 ; 5 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef %i.g, ptr noundef nonnull @.str.50) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @png_gamma_significant(i32 noundef %i.h) #13
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %i.h, -10000001
  %or.cond.i.i = icmp ult i32 %i.k, -9999001
  br i1 %or.cond.i.i, label %bb.g, label %png_gamma_not_sRGB.exit.i

png_gamma_not_sRGB.exit.i:                        ; preds = %bb.f
  %i.l = mul nuw nsw i32 %i.h, 11
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = udiv i32 %i.m, 5
  %i.o = tail call i32 @png_gamma_significant(i32 noundef %i.n) #13
  %.not10.i = icmp eq i32 %i.o, 0
  br i1 %.not10.i, label %bb.g, label %3

3:                                                ; preds = %png_gamma_not_sRGB.exit.i
  store i32 3, ptr %i.b, align 8, !tbaa !189
  %4 = tail call i32 @png_reciprocal(i32 noundef %i.h) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %png_gamma_not_sRGB.exit.i, %3
  %.sink14.i = phi i64 [ 68, %3 ], [ 64, %png_gamma_not_sRGB.exit.i ], [ 64, %bb.f ], [ 64, %bb.e ]
  %.sink.i = phi i32 [ %4, %3 ], [ 1, %png_gamma_not_sRGB.exit.i ], [ 1, %bb.f ], [ 4, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.sink14.i
  store i32 %.sink.i, ptr %i.p, align 4, !tbaa !3
  %.pre = load i32, ptr %i.b, align 8, !tbaa !189
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.g, %bb.b
  %.1 = phi i32 [ %.pre, %bb.g ], [ %i.c, %bb.b ], [ %2, %bb.a ]
  switch i32 %.1, label %bb.k [
    i32 3, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 4, label %bb.j
  ]

bb.h:                                             ; preds = %.thread
  %i.q = mul nuw nsw i32 %1, 257
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !190
  %i.t = tail call zeroext i16 @png_gamma_16bit_correct(i32 noundef %i.q, i32 noundef %i.s) #13
  %i.u = zext i16 %i.t to i32
  br label %bb.l

bb.i:                                             ; preds = %.thread
  %i.v = zext nneg i32 %1 to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_table, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !153
  %i.y = zext i16 %i.x to i32
  br label %bb.l

bb.j:                                             ; preds = %.thread
  %i.z = mul nuw nsw i32 %1, 257
  br label %bb.l

bb.k:                                             ; preds = %.thread
  %i.aa = load ptr, ptr %0, align 8, !tbaa !139
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  tail call void @png_error(ptr noundef %i.ac, ptr noundef nonnull @.str.51) #14
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %.thread
  %.011 = phi i32 [ %i.u, %bb.h ], [ %i.y, %bb.i ], [ %1, %.thread ], [ %i.z, %bb.j ]
  ret i32 %.011
}

declare i64 @png_get_rowbytes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_image_read_and_map(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 620 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !41
  switch i8 %i.e, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.53) #14
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.0103 = phi i32 [ 7, %bb.b ], [ 1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !138  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !137  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !173  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !174  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.q = zext i32 %i.i to i64                     ; 8 uses
  %.fr = freeze i32 %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit133
  %.0104153 = phi i32 [ 0, %bb.d ], [ %i.fn, %.loopexit133 ] ; 8 uses
  %i.r = load i8, ptr %i.d, align 4, !tbaa !41
  %i.s = icmp eq i8 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ugt i32 %.0104153, 1
  %i.u = sub nuw nsw i32 7, %.0104153
  %i.v = lshr i32 %i.u, 1                         ; 2 uses
  %i.w = select i1 %i.t, i32 %i.v, i32 3          ; 2 uses
  %notmask = shl nsw i32 -1, %i.w
  %i.x = xor i32 %notmask, -1
  %i.y = and i32 %.0104153, 1                     ; 2 uses
  %i.z = add nuw nsw i32 %.0104153, 1
  %i.aa = lshr i32 %i.z, 1
  %i.ab = sub nsw i32 3, %i.aa
  %i.ac = shl nuw nsw i32 %i.y, %i.ab
  %i.ad = and i32 %i.ac, 7                        ; 2 uses
  %i.ae = add i32 %i.i, %i.x
  %i.af = sub i32 %i.ae, %i.ad
  %i.ag = lshr i32 %i.af, %i.w
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit133, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = shl nuw nsw i32 1, %i.v
  %i.aj = xor i32 %i.y, 1
  %i.ak = lshr i32 %.0104153, 1
  %i.al = sub nsw i32 3, %i.ak
  %i.am = shl nuw nsw i32 %i.aj, %i.al
  %i.an = and i32 %i.am, 7
  %i.ao = icmp samesign ugt i32 %.0104153, 2
  %i.ap = add nsw i32 %.0104153, -1
  %i.aq = ashr i32 %i.ap, 1
  %i.ar = lshr i32 8, %i.aq
  %i.as = select i1 %i.ao, i32 %i.ar, i32 8
  %i.at = zext nneg i32 %i.ad to i64
  %i.au = zext nneg i32 %i.ai to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.0109 = phi i32 [ %i.an, %bb.g ], [ 0, %bb.e ] ; 6 uses
  %.0108 = phi i32 [ %i.as, %bb.g ], [ 1, %bb.e ] ; 5 uses
  %.0107 = phi i64 [ %i.au, %bb.g ], [ 1, %bb.e ] ; 4 uses
  %.0105 = phi i64 [ %i.at, %bb.g ], [ 0, %bb.e ] ; 8 uses
  %i.av = icmp ult i32 %.0109, %i.g
  br i1 %i.av, label %.lr.ph146, label %.loopexit133

.lr.ph146:                                        ; preds = %bb.h
  switch i32 %.fr, label %.lr.ph146.split [
    i32 1, label %.preheader.us.preheader
    i32 2, label %.preheader127.us.preheader
    i32 3, label %.preheader129.us.preheader
    i32 4, label %.preheader131.us.preheader
  ]

.preheader131.us.preheader:                       ; preds = %.lr.ph146
  %i.aw = icmp samesign ult i64 %.0105, %i.q
  br label %.preheader131.us

.preheader129.us.preheader:                       ; preds = %.lr.ph146
  %i.ax = icmp samesign ult i64 %.0105, %i.q
  br label %.preheader129.us

.preheader127.us.preheader:                       ; preds = %.lr.ph146
  %i.ay = icmp samesign ult i64 %.0105, %i.q
  br label %.preheader127.us

.preheader.us.preheader:                          ; preds = %.lr.ph146
  %i.az = icmp samesign ult i64 %.0105, %i.q
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit.us
  %.1110145.us = phi i32 [ %i.cd, %.loopexit.us ], [ %.0109, %.preheader.us.preheader ] ; 2 uses
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !175 ; 2 uses
  %i.bb = zext i32 %.1110145.us to i64
  %i.bc = mul nsw i64 %i.o, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.m, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.q
  tail call void @png_read_row(ptr noundef %i.c, ptr noundef %i.ba, ptr noundef null)
  br i1 %i.az, label %.lr.ph144.us.preheader, label %.loopexit.us

.lr.ph144.us.preheader:                           ; preds = %.preheader.us
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0105
  br label %.lr.ph144.us

.lr.ph144.us:                                     ; preds = %.lr.ph144.us.preheader, %bb.l
  %.0111143.us = phi ptr [ %i.cb, %bb.l ], [ %i.bf, %.lr.ph144.us.preheader ] ; 2 uses
  %.0115142.us = phi ptr [ %i.bj, %bb.l ], [ %i.ba, %.lr.ph144.us.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0115142.us, i64 1
  %i.bh = load i8, ptr %.0115142.us, align 1, !tbaa !46
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0115142.us, i64 2
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !46  ; 3 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = icmp ugt i8 %i.bk, -27
  br i1 %i.bm, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph144.us
  %i.bn = icmp ult i8 %i.bk, 26
  br i1 %i.bn, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = mul nuw nsw i32 %i.bl, 5
  %i.bp = add nuw nsw i32 %i.bo, 130
  %i.bq = lshr i32 %i.bp, 8
  %i.br = mul nuw nsw i32 %i.bq, 6
  %i.bs = mul nuw nsw i32 %i.bi, 5
  %i.bt = add nuw nsw i32 %i.bs, 130
  %i.bu = lshr i32 %i.bt, 8
  %i.bv = add nuw nsw i32 %i.bu, 226
  %i.bw = add nuw nsw i32 %i.bv, %i.br
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph144.us
  %i.bx = mul nuw nsw i32 %i.bi, 231
  %i.by = add nuw nsw i32 %i.bx, 128
  %i.bz = lshr i32 %i.by, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.0106.us = phi i32 [ %i.bz, %bb.k ], [ %i.bw, %bb.j ], [ 231, %bb.i ]
  %i.ca = trunc nuw i32 %.0106.us to i8
  store i8 %i.ca, ptr %.0111143.us, align 1, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %.0111143.us, i64 %.0107 ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.be
  br i1 %i.cc, label %.lr.ph144.us, label %.loopexit.us, !llvm.loop !194

.loopexit.us:                                     ; preds = %bb.l, %.preheader.us
  %i.cd = add i32 %.1110145.us, %.0108            ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %i.g
  br i1 %i.ce, label %.preheader.us, label %.loopexit133, !llvm.loop !195

.preheader127.us:                                 ; preds = %.preheader127.us.preheader, %.loopexit128.us
  %.1110145.us148 = phi i32 [ %i.cs, %.loopexit128.us ], [ %.0109, %.preheader127.us.preheader ] ; 2 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !175 ; 2 uses
  %i.cg = zext i32 %.1110145.us148 to i64
  %i.ch = mul nsw i64 %i.o, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.m, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.q
  tail call void @png_read_row(ptr noundef %i.c, ptr noundef %i.cf, ptr noundef null)
  br i1 %i.ay, label %.lr.ph141.us.preheader, label %.loopexit128.us

.lr.ph141.us.preheader:                           ; preds = %.preheader127.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0105
end_hunk_0
