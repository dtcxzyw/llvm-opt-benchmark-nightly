Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/arrayfuncs?download=true
inline.NumInlined: 302
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@array_get_slice:bb.a
  %i.cl = add nuw nsw i32 %i.ch, 23
  %i.cm = add nsw i32 %i.cl, %i.ck
  %i.cn = and i32 %i.cm, -8                       ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i32 %i.ch, 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cp = phi i32 [ %i.cn, %bb.o ], [ 0, %bb.p ]  ; 3 uses
  %.pn = phi i32 [ %i.cn, %bb.o ], [ %i.co, %bb.p ]
  %.0 = add i32 %.pn, %i.cg                       ; 2 uses
  %i.cq = sext i32 %.0 to i64
  %i.cr = call ptr @palloc0(i64 noundef %i.cq) #16 ; 8 uses
  %i.cs = shl i32 %.0, 2
  store i32 %i.cs, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.m, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cp, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %i.s, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr nonnull align 16 %i.e, i64 %i.p, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.p ; 8 uses
  %i.cy = icmp sgt i32 %i.m, 0
  br i1 %i.cy, label %.lr.ph140.preheader, label %._crit_edge141

.lr.ph140.preheader:                              ; preds = %bb.q
  %min.iters.check = icmp ult i32 %i.m, 8
  br i1 %min.iters.check, label %.lr.ph140, label %vector.body

vector.body:                                      ; preds = %.lr.ph140.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph140.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cz, align 4
  store <4 x i32> splat (i32 1), ptr %i.da, align 4
  %index.next = add nuw i64 %index, 8
  br label %vector.body, !llvm.loop !60

.lr.ph140:                                        ; preds = %.lr.ph140.preheader
  store i32 1, ptr %i.cx, align 4
  %exitcond153.not = icmp eq i32 %i.m, 1
  br i1 %exitcond153.not, label %._crit_edge141, label %.lr.ph140.1

.lr.ph140.1:                                      ; preds = %.lr.ph140
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 1, ptr %i.db, align 4
  %exitcond153.not.1 = icmp eq i32 %i.m, 2
  br i1 %exitcond153.not.1, label %._crit_edge141, label %.lr.ph140.2

.lr.ph140.2:                                      ; preds = %.lr.ph140.1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 1, ptr %i.dc, align 4
  %exitcond153.not.2 = icmp eq i32 %i.m, 3
  br i1 %exitcond153.not.2, label %._crit_edge141, label %.lr.ph140.3

.lr.ph140.3:                                      ; preds = %.lr.ph140.2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 1, ptr %i.dd, align 4
  %exitcond153.not.3 = icmp eq i32 %i.m, 4
  br i1 %exitcond153.not.3, label %._crit_edge141, label %.lr.ph140.4

.lr.ph140.4:                                      ; preds = %.lr.ph140.3
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 1, ptr %i.de, align 4
  %exitcond153.not.4 = icmp eq i32 %i.m, 5
  br i1 %exitcond153.not.4, label %._crit_edge141, label %.lr.ph140.5

.lr.ph140.5:                                      ; preds = %.lr.ph140.4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  store i32 1, ptr %i.df, align 4
  %exitcond153.not.5 = icmp eq i32 %i.m, 6
  br i1 %exitcond153.not.5, label %._crit_edge141, label %.lr.ph140.6

.lr.ph140.6:                                      ; preds = %.lr.ph140.5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i32 1, ptr %i.dg, align 4
  br label %._crit_edge141

._crit_edge141:                                   ; preds = %.lr.ph140, %.lr.ph140.1, %.lr.ph140.2, %.lr.ph140.3, %.lr.ph140.4, %.lr.ph140.5, %.lr.ph140.6, %bb.q
  %.not.i = icmp eq i32 %i.cp, 0                  ; 2 uses
  %i.dh = sext i32 %i.cp to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.w
  %i.dk = freeze ptr %i.dj                        ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cr, i64 %i.w
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %i.dn = select i1 %.not.i, ptr %i.dm, ptr %i.di ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.do = call i32 @ArrayGetOffset(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.q, ptr noundef %3) #16 ; 3 uses
  %i.dp = call fastcc ptr @array_seek(ptr noundef nonnull %i.z, i32 noundef 0, ptr noundef readonly %spec.select, i32 noundef %i.do, i32 noundef %7, i8 noundef signext %9) ; 2 uses
  call void @mda_get_prod(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a) #16
  call void @mda_get_range(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %2) #16
  call void @mda_get_offset_values(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.dq = shl nuw nsw i32 %i.m, 2
  %i.dr = zext nneg i32 %i.dq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 %i.dr, i1 false)
  %i.ds = add nsw i32 %i.m, -1                    ; 2 uses
  %.not69.i173 = icmp eq ptr %i.dk, null
  %.not69.i = or i1 %.not.i, %.not69.i173
  br i1 %.not69.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %._crit_edge141, %array_bitmap_copy.exit.us.i
  %.061.us.i = phi ptr [ %i.ee, %array_bitmap_copy.exit.us.i ], [ %i.dn, %._crit_edge141 ] ; 2 uses
  %.059.us.i = phi ptr [ %i.ef, %array_bitmap_copy.exit.us.i ], [ %i.dp, %._crit_edge141 ] ; 2 uses
  %.058.us.i = phi i32 [ %i.eg, %array_bitmap_copy.exit.us.i ], [ %i.do, %._crit_edge141 ] ; 3 uses
  %.0.us.i = phi i32 [ %i.eh, %array_bitmap_copy.exit.us.i ], [ %i.ds, %._crit_edge141 ]
  %i.dt = sext i32 %.0.us.i to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %.not68.us.i = icmp eq i32 %i.dv, 0
  br i1 %.not68.us.i, label %array_bitmap_copy.exit.us.i, label %bb.r

bb.r:                                             ; preds = %.split.us.i
  %i.dw = call fastcc ptr @array_seek(ptr noundef %.059.us.i, i32 noundef %.058.us.i, ptr noundef readonly %spec.select, i32 noundef %i.dv, i32 noundef %7, i8 noundef signext %9)
  %i.dx = load i32, ptr %i.du, align 4
  %i.dy = add i32 %i.dx, %.058.us.i
  br label %array_bitmap_copy.exit.us.i

array_bitmap_copy.exit.us.i:                      ; preds = %bb.r, %.split.us.i
  %.160.us.i = phi ptr [ %i.dw, %bb.r ], [ %.059.us.i, %.split.us.i ] ; 4 uses
  %.1.us.i = phi i32 [ %i.dy, %bb.r ], [ %.058.us.i, %.split.us.i ] ; 2 uses
  %i.dz = call fastcc ptr @array_seek(ptr noundef %.160.us.i, i32 noundef %.1.us.i, ptr noundef readonly %spec.select, i32 noundef 1, i32 noundef %7, i8 noundef signext %9)
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %.160.us.i to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %sext.i.us.i = shl i64 %i.ec, 32
  %i.ed = ashr exact i64 %sext.i.us.i, 32         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.061.us.i, ptr align 1 %.160.us.i, i64 %i.ed, i1 false)
  %i.ee = getelementptr inbounds i8, ptr %.061.us.i, i64 %i.ed
  %i.ef = getelementptr inbounds i8, ptr %.160.us.i, i64 %i.ed
  %i.eg = add i32 %.1.us.i, 1
  %i.eh = call i32 @mda_next_tuple(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not70.us.i = icmp eq i32 %i.eh, -1
  br i1 %.not70.us.i, label %array_extract_slice.exit, label %.split.us.i, !llvm.loop !63

.split.i:                                         ; preds = %._crit_edge141, %array_bitmap_copy.exit.i
  %.061.i = phi ptr [ %i.fn, %array_bitmap_copy.exit.i ], [ %i.dn, %._crit_edge141 ] ; 2 uses
  %.059.i = phi ptr [ %i.fo, %array_bitmap_copy.exit.i ], [ %i.dp, %._crit_edge141 ] ; 2 uses
  %.058.i = phi i32 [ %i.fp, %array_bitmap_copy.exit.i ], [ %i.do, %._crit_edge141 ] ; 3 uses
  %.057.i = phi i32 [ %i.fq, %array_bitmap_copy.exit.i ], [ 0, %._crit_edge141 ] ; 3 uses
  %.0.i = phi i32 [ %i.fr, %array_bitmap_copy.exit.i ], [ %i.ds, %._crit_edge141 ]
  %i.ei = sext i32 %.0.i to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4            ; 2 uses
  %.not68.i = icmp eq i32 %i.ek, 0
  br i1 %.not68.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.split.i
  %i.el = call fastcc ptr @array_seek(ptr noundef %.059.i, i32 noundef %.058.i, ptr noundef readonly %spec.select, i32 noundef %i.ek, i32 noundef %7, i8 noundef signext %9)
  %i.em = load i32, ptr %i.ej, align 4
  %i.en = add i32 %i.em, %.058.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.160.i = phi ptr [ %i.el, %bb.s ], [ %.059.i, %.split.i ] ; 4 uses
  %.1.i = phi i32 [ %i.en, %bb.s ], [ %.058.i, %.split.i ] ; 4 uses
  %i.eo = call fastcc ptr @array_seek(ptr noundef %.160.i, i32 noundef %.1.i, ptr noundef readonly %spec.select, i32 noundef 1, i32 noundef %7, i8 noundef signext %9)
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %.160.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  %sext.i.i = shl i64 %i.er, 32
  %i.es = ashr exact i64 %sext.i.i, 32            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.061.i, ptr align 1 %.160.i, i64 %i.es, i1 false)
  %i.et = sdiv i32 %.057.i, 8
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %i.dk, i64 %i.eu ; 2 uses
  %i.ew = and i32 %.057.i, 7
  %i.ex = shl nuw nsw i32 1, %i.ew                ; 3 uses
  %i.ey = load i8, ptr %i.ev, align 1
  %i.ez = zext i8 %i.ey to i32                    ; 3 uses
  br i1 %.not, label %.lr.ph94.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.fa = sdiv i32 %.1.i, 8
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.aa, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = zext i8 %i.fd to i32
  %i.ff = and i32 %.1.i, 7
  %i.fg = shl nuw nsw i32 1, %i.ff
  %i.fh = and i32 %i.fg, %i.fe
  %.not65.i.i = icmp eq i32 %i.fh, 0
  %i.fi = or i32 %i.ex, %i.ez
  %i.fj = xor i32 %i.ex, -1
  %i.fk = and i32 %i.ez, %i.fj
  %.145.i.i = select i1 %.not65.i.i, i32 %i.fk, i32 %i.fi
  br label %array_bitmap_copy.exit.i

.lr.ph94.i.i:                                     ; preds = %bb.t
  %i.fl = or i32 %i.ex, %i.ez
  br label %array_bitmap_copy.exit.i

array_bitmap_copy.exit.i:                         ; preds = %.lr.ph94.i.i, %.lr.ph.preheader.i.i
  %.145.i.sink.i = phi i32 [ %i.fl, %.lr.ph94.i.i ], [ %.145.i.i, %.lr.ph.preheader.i.i ]
  %i.fm = trunc nuw i32 %.145.i.sink.i to i8
  store i8 %i.fm, ptr %i.ev, align 1
  %i.fn = getelementptr inbounds i8, ptr %.061.i, i64 %i.es
  %i.fo = getelementptr inbounds i8, ptr %.160.i, i64 %i.es
  %i.fp = add i32 %.1.i, 1
  %i.fq = add i32 %.057.i, 1
  %i.fr = call i32 @mda_next_tuple(i32 noundef range(i32 1, 7) %i.m, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not70.i = icmp eq i32 %i.fr, -1
  br i1 %.not70.i, label %array_extract_slice.exit, label %.split.i, !llvm.loop !63

array_extract_slice.exit:                         ; preds = %array_bitmap_copy.exit.i, %array_bitmap_copy.exit.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.u

bb.u:                                             ; preds = %array_extract_slice.exit, %bb.n, %bb.k, %bb.d
  %.0124.in = phi ptr [ %i.af, %bb.d ], [ %i.bo, %bb.k ], [ %i.cc, %bb.n ], [ %i.cr, %array_extract_slice.exit ]
  %.0124 = ptrtoint ptr %.0124.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  ret i64 %.0124
}

declare void @mda_get_range(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @array_slice_size(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 1, 7) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i8 noundef signext %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 8 uses
  %i.b = alloca [6 x i32], align 16               ; 4 uses
  %i.c = alloca [6 x i32], align 16               ; 6 uses
  %i.d = alloca [6 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %switch.tableidx = add i8 %8, -99               ; 3 uses
  %i.e = icmp ult i8 %switch.tableidx, 17
  br i1 %i.e, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.f = sext i8 %8 to i32
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.47, i32 noundef %i.f) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.48, i32 noundef 322, ptr noundef nonnull @__func__.typalign_to_alignby) #16
  unreachable

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 65603, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.array_replace_internal, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  call void @mda_get_range(i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef %5, ptr noundef %6) #16
  %i.j = icmp slt i32 %7, 1
  %i.k = icmp ne ptr %1, null
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup
  %i.l = call i32 @ArrayGetNItems(i32 noundef %2, ptr noundef nonnull %i.a) #16
  %i.m = zext nneg i8 %switch.load to i32         ; 2 uses
  %i.n = add nsw i32 %7, -1
  %i.o = add nuw i32 %i.n, %i.m
  %i.p = sub nsw i32 0, %i.m
  %i.q = and i32 %i.o, %i.p
  %i.r = mul i32 %i.l, %i.q
  br label %.loopexit

bb.d:                                             ; preds = %switch.lookup
  %i.s = call i32 @ArrayGetOffset(i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #16 ; 4 uses
  %i.t = call fastcc ptr @array_seek(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %i.s, i32 noundef %7, i8 noundef signext %8) ; 3 uses
  call void @mda_get_prod(i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.b) #16
  call void @mda_get_offset_values(i32 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #16
  %i.u = shl nuw nsw i32 %2, 2
  %i.v = zext nneg i32 %i.u to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 %i.v, i1 false)
  %i.w = add nsw i32 %2, -1                       ; 3 uses
  %i.x = icmp eq ptr %1, null                     ; 3 uses
  %i.y = icmp sgt i32 %7, 0
  %i.z = zext nneg i8 %switch.load to i64         ; 3 uses
  %i.aa = add nuw nsw i64 %i.z, 4294967295        ; 2 uses
  %i.ab = sub nsw i64 0, %i.z                     ; 3 uses
  br i1 %i.y, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.d
  %i.ac = zext nneg i32 %7 to i64
  %i.ad = add nuw nsw i64 %i.aa, %i.ac
  %i.ae = and i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  %sext.us = shl i64 %i.ae, 32
  %i.ag = ashr exact i64 %sext.us, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.split.us
  %.060.us = phi i32 [ %i.s, %.split.us ], [ %i.ax, %bb.h ] ; 3 uses
  %.058.us = phi ptr [ %i.t, %.split.us ], [ %.2.us, %bb.h ] ; 2 uses
  %.056.us = phi i32 [ %i.w, %.split.us ], [ %i.ay, %bb.h ]
  %.0.us = phi i32 [ 0, %.split.us ], [ %.1.us, %bb.h ] ; 2 uses
  %i.ah = sext i32 %.056.us to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %.not.us = icmp eq i32 %i.aj, 0
  br i1 %.not.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = call fastcc ptr @array_seek(ptr noundef %.058.us, i32 noundef %.060.us, ptr noundef %1, i32 noundef %i.aj, i32 noundef %7, i8 noundef signext %8)
  %i.al = load i32, ptr %i.ai, align 4
  %i.am = add i32 %i.al, %.060.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.161.us = phi i32 [ %i.am, %bb.f ], [ %.060.us, %bb.e ] ; 3 uses
  %.159.us = phi ptr [ %i.ak, %bb.f ], [ %.058.us, %bb.e ] ; 2 uses
  br i1 %i.x, label %array_get_isnull.exit.thread.us, label %array_get_isnull.exit.us

array_get_isnull.exit.us:                         ; preds = %bb.g
  %i.an = sdiv i32 %.161.us, 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = and i32 %.161.us, 7
  %i.at = shl nuw nsw i32 1, %i.as
  %i.au = and i32 %i.at, %i.ar
  %.not.i.us = icmp eq i32 %i.au, 0
  br i1 %.not.i.us, label %bb.h, label %array_get_isnull.exit.thread.us

array_get_isnull.exit.thread.us:                  ; preds = %array_get_isnull.exit.us, %bb.g
  %i.av = getelementptr inbounds i8, ptr %.159.us, i64 %i.ag
  %i.aw = add i32 %.0.us, %i.af
  br label %bb.h

bb.h:                                             ; preds = %array_get_isnull.exit.thread.us, %array_get_isnull.exit.us
  %.2.us = phi ptr [ %.159.us, %array_get_isnull.exit.us ], [ %i.av, %array_get_isnull.exit.thread.us ]
  %.1.us = phi i32 [ %.0.us, %array_get_isnull.exit.us ], [ %i.aw, %array_get_isnull.exit.thread.us ] ; 2 uses
  %i.ax = add i32 %.161.us, 1
  %i.ay = call i32 @mda_next_tuple(i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not69.us = icmp eq i32 %i.ay, -1
  br i1 %.not69.us, label %.loopexit, label %bb.e, !llvm.loop !64

.split:                                           ; preds = %bb.d
  %i.az = icmp eq i32 %7, -1
  br i1 %i.az, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %bb.o
  %.060.us75 = phi i32 [ %i.ci, %bb.o ], [ %i.s, %.split ] ; 3 uses
  %.058.us76 = phi ptr [ %.2.us87, %bb.o ], [ %i.t, %.split ] ; 2 uses
  %.056.us77 = phi i32 [ %i.cj, %bb.o ], [ %i.w, %.split ]
  %.0.us78 = phi i32 [ %.1.us88, %bb.o ], [ 0, %.split ] ; 2 uses
  %i.ba = sext i32 %.056.us77 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %.not.us79 = icmp eq i32 %i.bc, 0
  br i1 %.not.us79, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split.split.us
  %i.bd = call fastcc ptr @array_seek(ptr noundef %.058.us76, i32 noundef %.060.us75, ptr noundef %1, i32 noundef %i.bc, i32 noundef -1, i8 noundef signext %8)
  %i.be = load i32, ptr %i.bb, align 4
  %i.bf = add i32 %i.be, %.060.us75
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split.split.us
  %.161.us80 = phi i32 [ %i.bf, %bb.i ], [ %.060.us75, %.split.split.us ] ; 3 uses
  %.159.us81 = phi ptr [ %i.bd, %bb.i ], [ %.058.us76, %.split.split.us ] ; 5 uses
  br i1 %i.x, label %array_get_isnull.exit.thread.us84, label %array_get_isnull.exit.us82

array_get_isnull.exit.us82:                       ; preds = %bb.j
  %i.bg = sdiv i32 %.161.us80, 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = and i32 %.161.us80, 7
  %i.bm = shl nuw nsw i32 1, %i.bl
  %i.bn = and i32 %i.bm, %i.bk
  %.not.i.us83 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.us83, label %bb.o, label %array_get_isnull.exit.thread.us84

array_get_isnull.exit.thread.us84:                ; preds = %array_get_isnull.exit.us82, %bb.j
  %i.bo = load i8, ptr %.159.us81, align 1        ; 2 uses
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = icmp eq i8 %i.bo, 1
  br i1 %i.bq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %array_get_isnull.exit.thread.us84
  %i.br = and i32 %i.bp, 1
  %.not.i71.us = icmp eq i32 %i.br, 0
  br i1 %.not.i71.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = lshr i32 %i.bp, 1
  %i.bt = zext nneg i32 %i.bs to i64
  br label %VARSIZE_ANY.exit.us85

end_hunk_0
begin_hunk_1_@array_set_slice:bb.a
  %.0124.i = phi ptr [ %i.ly, %array_bitmap_copy.exit.i ], [ %i.qu, %array_bitmap_copy.exit221.i ] ; 5 uses
  %.0123.i = phi ptr [ %i.la, %array_bitmap_copy.exit.i ], [ %i.qr, %array_bitmap_copy.exit221.i ] ; 4 uses
  %.0121.i = phi i32 [ %i.lr, %array_bitmap_copy.exit.i ], [ %i.qs, %array_bitmap_copy.exit221.i ] ; 4 uses
  %.0120.i = phi i32 [ %i.lr, %array_bitmap_copy.exit.i ], [ %i.qv, %array_bitmap_copy.exit221.i ] ; 5 uses
  %.0119.i = phi i32 [ 0, %array_bitmap_copy.exit.i ], [ %i.qt, %array_bitmap_copy.exit221.i ] ; 4 uses
  %.0.i = phi i32 [ %i.nm, %array_bitmap_copy.exit.i ], [ %i.qw, %array_bitmap_copy.exit221.i ]
  %i.nn = sext i32 %.0.i to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.nn ; 3 uses
  %i.np = load i32, ptr %i.no, align 4            ; 2 uses
  %.not142.i = icmp eq i32 %i.np, 0
  br i1 %.not142.i, label %bb.cj, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nq = call fastcc ptr @array_seek(ptr noundef %.0124.i, i32 noundef %.0120.i, ptr noundef readonly %i.lj, i32 noundef %i.np, i32 noundef %9, i8 noundef signext %11)
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = ptrtoint ptr %.0124.i to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %sext.i144.i = shl i64 %i.nt, 32
  %i.nu = ashr exact i64 %sext.i144.i, 32         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0126.i, ptr align 1 %.0124.i, i64 %i.nu, i1 false)
  %i.nv = getelementptr inbounds i8, ptr %.0126.i, i64 %i.nu
  %i.nw = getelementptr inbounds i8, ptr %.0124.i, i64 %i.nu
  br i1 %.not.i, label %array_bitmap_copy.exit182.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nx = load i32, ptr %i.no, align 4            ; 3 uses
  %i.ny = icmp slt i32 %i.nx, 1
  br i1 %i.ny, label %array_bitmap_copy.exit182.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nz = sdiv i32 %.0121.i, 8
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds i8, ptr %i.le, i64 %i.oa ; 3 uses
  %i.oc = and i32 %.0121.i, 7
  %i.od = shl nuw nsw i32 1, %i.oc                ; 2 uses
  %i.oe = load i8, ptr %i.ob, align 1
  %i.of = zext i8 %i.oe to i32                    ; 2 uses
  br i1 %.not.i145.i, label %.lr.ph94.i171.outer.i, label %.lr.ph.preheader.i146.i

.lr.ph.preheader.i146.i:                          ; preds = %bb.cb
  %i.og = sdiv i32 %.0120.i, 8
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds i8, ptr %i.lj, i64 %i.oh ; 2 uses
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = zext i8 %i.oj to i32
  %i.ol = and i32 %.0120.i, 7
  %i.om = shl nuw nsw i32 1, %i.ol
  br label %.lr.ph.i147.i

.lr.ph.i147.i:                                    ; preds = %.thread75.i160.i, %.lr.ph.preheader.i146.i
  %.in.i148.i = phi i32 [ %i.on, %.thread75.i160.i ], [ %i.nx, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.088.i149.i = phi i32 [ %.1.i163.i, %.thread75.i160.i ], [ %i.ok, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04287.i150.i = phi i32 [ %.143.i162.i, %.thread75.i160.i ], [ %i.om, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04486.i151.i = phi i32 [ %.2.i159.i, %.thread75.i160.i ], [ %i.of, %.lr.ph.preheader.i146.i ] ; 2 uses
  %.04685.i152.i = phi i32 [ %.147.i158.i, %.thread75.i160.i ], [ %i.od, %.lr.ph.preheader.i146.i ] ; 3 uses
  %.05284.i153.i = phi ptr [ %.153.i157.i, %.thread75.i160.i ], [ %i.ob, %.lr.ph.preheader.i146.i ] ; 3 uses
  %.05683.i154.i = phi ptr [ %.157.i161.i, %.thread75.i160.i ], [ %i.oi, %.lr.ph.preheader.i146.i ] ; 2 uses
  %i.on = add nsw i32 %.in.i148.i, -1             ; 3 uses
  %i.oo = and i32 %.04287.i150.i, %.088.i149.i
  %.not65.i155.i = icmp eq i32 %i.oo, 0
  %i.op = or i32 %.04685.i152.i, %.04486.i151.i
  %i.oq = xor i32 %.04685.i152.i, -1
  %i.or = and i32 %.04486.i151.i, %i.oq
  %.145.i156.i = select i1 %.not65.i155.i, i32 %i.or, i32 %i.op ; 2 uses
  %i.os = shl i32 %.04685.i152.i, 1               ; 2 uses
  %i.ot = icmp eq i32 %i.os, 256
  br i1 %i.ot, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %.lr.ph.i147.i
  %i.ou = trunc i32 %.145.i156.i to i8
  store i8 %i.ou, ptr %.05284.i153.i, align 1
  %.not80.i170.i = icmp eq i32 %i.on, 0
  br i1 %.not80.i170.i, label %array_bitmap_copy.exit182.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ov = getelementptr inbounds nuw i8, ptr %.05284.i153.i, i64 1 ; 2 uses
  %i.ow = load i8, ptr %i.ov, align 1
  %i.ox = zext i8 %i.ow to i32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph.i147.i
  %.153.i157.i = phi ptr [ %i.ov, %bb.cd ], [ %.05284.i153.i, %.lr.ph.i147.i ] ; 2 uses
  %.147.i158.i = phi i32 [ 1, %bb.cd ], [ %i.os, %.lr.ph.i147.i ] ; 2 uses
  %.2.i159.i = phi i32 [ %i.ox, %bb.cd ], [ %.145.i156.i, %.lr.ph.i147.i ] ; 2 uses
  %i.oy = shl i32 %.04287.i150.i, 1               ; 2 uses
  %i.oz = icmp eq i32 %i.oy, 256
  br i1 %i.oz, label %bb.cf, label %.thread75.i160.i

bb.cf:                                            ; preds = %bb.ce
  %.not81.i169.i = icmp eq i32 %i.on, 0
  br i1 %.not81.i169.i, label %._crit_edge.i164.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pa = getelementptr inbounds nuw i8, ptr %.05683.i154.i, i64 1 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = zext i8 %i.pb to i32
  br label %.thread75.i160.i

.thread75.i160.i:                                 ; preds = %bb.cg, %bb.ce
  %.157.i161.i = phi ptr [ %i.pa, %bb.cg ], [ %.05683.i154.i, %bb.ce ]
  %.143.i162.i = phi i32 [ 1, %bb.cg ], [ %i.oy, %bb.ce ]
  %.1.i163.i = phi i32 [ %i.pc, %bb.cg ], [ %.088.i149.i, %bb.ce ]
  %i.pd = icmp samesign ugt i32 %.in.i148.i, 1
  br i1 %i.pd, label %.lr.ph.i147.i, label %._crit_edge.i164.i, !llvm.loop !73

._crit_edge.i164.i:                               ; preds = %.thread75.i160.i, %bb.cf
  %.not64.i165.i = icmp eq i32 %.147.i158.i, 1
  br i1 %.not64.i165.i, label %array_bitmap_copy.exit182.i, label %._crit_edge95.thread.sink.split.i166.i

.lr.ph94.i171.i:                                  ; preds = %.lr.ph94.i171.outer.i, %bb.ci
  %.in99.i172.i = phi i32 [ %i.pe, %bb.ci ], [ %.in99.i172.ph.i, %.lr.ph94.i171.outer.i ] ; 2 uses
  %.393.i173.i = phi i32 [ %i.pf, %bb.ci ], [ %.393.i173.ph.i, %.lr.ph94.i171.outer.i ]
  %.24892.i174.i = phi i32 [ %i.pg, %bb.ci ], [ %.24892.i174.ph.i, %.lr.ph94.i171.outer.i ] ; 2 uses
  %i.pe = add nsw i32 %.in99.i172.i, -1           ; 3 uses
  %i.pf = or i32 %.24892.i174.i, %.393.i173.i     ; 3 uses
  %i.pg = shl i32 %.24892.i174.i, 1               ; 2 uses
  %i.ph = icmp eq i32 %i.pg, 256
  br i1 %i.ph, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph94.i171.i
  %i.pi = trunc i32 %i.pf to i8
  store i8 %i.pi, ptr %.25491.i175.ph.i, align 1
  %.not82.i181.i = icmp eq i32 %i.pe, 0
  br i1 %.not82.i181.i, label %array_bitmap_copy.exit182.i, label %.thread271.i

bb.ci:                                            ; preds = %.lr.ph94.i171.i
  %i.pj = icmp samesign ugt i32 %.in99.i172.i, 1
  br i1 %i.pj, label %.lr.ph94.i171.i, label %._crit_edge95.thread.sink.split.i166.i, !llvm.loop !74

.thread271.i:                                     ; preds = %bb.ch
  %i.pk = getelementptr inbounds nuw i8, ptr %.25491.i175.ph.i, i64 1 ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 1
  %i.pm = zext i8 %i.pl to i32
  br label %.lr.ph94.i171.outer.i, !llvm.loop !74

.lr.ph94.i171.outer.i:                            ; preds = %bb.cb, %.thread271.i
  %.in99.i172.ph.i = phi i32 [ %i.pe, %.thread271.i ], [ %i.nx, %bb.cb ]
  %.393.i173.ph.i = phi i32 [ %i.pm, %.thread271.i ], [ %i.of, %bb.cb ]
  %.24892.i174.ph.i = phi i32 [ 1, %.thread271.i ], [ %i.od, %bb.cb ]
  %.25491.i175.ph.i = phi ptr [ %i.pk, %.thread271.i ], [ %i.ob, %bb.cb ] ; 3 uses
  br label %.lr.ph94.i171.i

._crit_edge95.thread.sink.split.i166.i:           ; preds = %bb.ci, %._crit_edge.i164.i
  %.273110.sink.i167.i = phi i32 [ %.2.i159.i, %._crit_edge.i164.i ], [ %i.pf, %bb.ci ]
  %.15369112.sink.i168.i = phi ptr [ %.153.i157.i, %._crit_edge.i164.i ], [ %.25491.i175.ph.i, %bb.ci ]
  %i.pn = trunc i32 %.273110.sink.i167.i to i8
  store i8 %i.pn, ptr %.15369112.sink.i168.i, align 1
  br label %array_bitmap_copy.exit182.i

array_bitmap_copy.exit182.i:                      ; preds = %bb.cc, %bb.ch, %._crit_edge95.thread.sink.split.i166.i, %._crit_edge.i164.i, %bb.ca, %bb.bz
  %i.po = load i32, ptr %i.no, align 4            ; 2 uses
  %i.pp = add i32 %i.po, %.0121.i
  %i.pq = add i32 %i.po, %.0120.i
  br label %bb.cj

bb.cj:                                            ; preds = %array_bitmap_copy.exit182.i, %bb.by
  %.1127.i = phi ptr [ %i.nv, %array_bitmap_copy.exit182.i ], [ %.0126.i, %bb.by ] ; 2 uses
  %.1125.i = phi ptr [ %i.nw, %array_bitmap_copy.exit182.i ], [ %.0124.i, %bb.by ]
  %.1122.i = phi i32 [ %i.pp, %array_bitmap_copy.exit182.i ], [ %.0121.i, %bb.by ] ; 3 uses
  %.1.i = phi i32 [ %i.pq, %array_bitmap_copy.exit182.i ], [ %.0120.i, %bb.by ] ; 2 uses
  %i.pr = call fastcc ptr @array_seek(ptr noundef %.0123.i, i32 noundef %.0119.i, ptr noundef readonly %i.lo, i32 noundef 1, i32 noundef %9, i8 noundef signext %11)
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = ptrtoint ptr %.0123.i to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %sext.i183.i = shl i64 %i.pu, 32
  %i.pv = ashr exact i64 %sext.i183.i, 32         ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1127.i, ptr align 1 %.0123.i, i64 %i.pv, i1 false)
  br i1 %.not.i, label %array_bitmap_copy.exit221.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pw = sdiv i32 %.1122.i, 8
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds i8, ptr %i.le, i64 %i.px ; 2 uses
  %i.pz = and i32 %.1122.i, 7
  %i.qa = shl nuw nsw i32 1, %i.pz                ; 3 uses
  %i.qb = load i8, ptr %i.py, align 1
  %i.qc = zext i8 %i.qb to i32                    ; 3 uses
  br i1 %.not.i184.i, label %.lr.ph94.i210.i, label %.lr.ph.preheader.i185.i

.lr.ph.preheader.i185.i:                          ; preds = %bb.ck
  %i.qd = sdiv i32 %.0119.i, 8
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds i8, ptr %i.lo, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = zext i8 %i.qg to i32
  %i.qi = and i32 %.0119.i, 7
  %i.qj = shl nuw nsw i32 1, %i.qi
  %i.qk = and i32 %i.qj, %i.qh
  %.not65.i194.i = icmp eq i32 %i.qk, 0
  %i.ql = or i32 %i.qa, %i.qc
  %i.qm = xor i32 %i.qa, -1
  %i.qn = and i32 %i.qc, %i.qm
  %.145.i195.i = select i1 %.not65.i194.i, i32 %i.qn, i32 %i.ql
  br label %array_bitmap_copy.exit221.sink.split.i

.lr.ph94.i210.i:                                  ; preds = %bb.ck
  %i.qo = or i32 %i.qa, %i.qc
  br label %array_bitmap_copy.exit221.sink.split.i

array_bitmap_copy.exit221.sink.split.i:           ; preds = %.lr.ph94.i210.i, %.lr.ph.preheader.i185.i
  %.145.i195.sink.i = phi i32 [ %i.qo, %.lr.ph94.i210.i ], [ %.145.i195.i, %.lr.ph.preheader.i185.i ]
  %i.qp = trunc nuw i32 %.145.i195.sink.i to i8
  store i8 %i.qp, ptr %i.py, align 1
  br label %array_bitmap_copy.exit221.i

array_bitmap_copy.exit221.i:                      ; preds = %array_bitmap_copy.exit221.sink.split.i, %bb.cj
  %i.qq = getelementptr inbounds i8, ptr %.1127.i, i64 %i.pv ; 2 uses
  %i.qr = getelementptr inbounds i8, ptr %.0123.i, i64 %i.pv
  %i.qs = add i32 %.1122.i, 1                     ; 3 uses
  %i.qt = add i32 %.0119.i, 1
  %i.qu = call fastcc ptr @array_seek(ptr noundef %.1125.i, i32 noundef %.1.i, ptr noundef %i.lj, i32 noundef 1, i32 noundef %9, i8 noundef signext %11) ; 4 uses
  %i.qv = add i32 %.1.i, 1                        ; 5 uses
  %i.qw = call i32 @mda_next_tuple(i32 noundef range(i32 2, 7) %i.t, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not143.i = icmp eq i32 %i.qw, -1
  br i1 %.not143.i, label %bb.cl, label %bb.by, !llvm.loop !79

bb.cl:                                            ; preds = %array_bitmap_copy.exit221.i
  %i.qx = sub i32 %i.lq, %i.qv                    ; 4 uses
  %i.qy = call fastcc ptr @array_seek(ptr noundef %i.qu, i32 noundef %i.qv, ptr noundef readonly %i.lj, i32 noundef %i.qx, i32 noundef %9, i8 noundef signext %11)
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qu to i64
  %i.rb = sub i64 %i.qz, %i.ra
  %sext.i222.i = shl i64 %i.rb, 32
  %i.rc = ashr exact i64 %sext.i222.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qq, ptr align 1 %i.qu, i64 %i.rc, i1 false)
  %i.rd = icmp slt i32 %i.qx, 1
  %or.cond304.i = or i1 %.not.i, %i.rd
  br i1 %or.cond304.i, label %array_insert_slice.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.re = sdiv i32 %i.qs, 8
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds i8, ptr %i.le, i64 %i.rf ; 3 uses
  %i.rh = and i32 %i.qs, 7
  %i.ri = shl nuw nsw i32 1, %i.rh                ; 2 uses
  %i.rj = load i8, ptr %i.rg, align 1
  %i.rk = zext i8 %i.rj to i32                    ; 2 uses
  br i1 %.not.i145.i, label %.lr.ph94.i249.outer.i, label %.lr.ph.preheader.i224.i

.lr.ph.preheader.i224.i:                          ; preds = %bb.cm
  %i.rl = sdiv i32 %i.qv, 8
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds i8, ptr %i.lj, i64 %i.rm ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1
  %i.rp = zext i8 %i.ro to i32
  %i.rq = and i32 %i.qv, 7
  %i.rr = shl nuw nsw i32 1, %i.rq
  br label %.lr.ph.i225.i

.lr.ph.i225.i:                                    ; preds = %.thread75.i238.i, %.lr.ph.preheader.i224.i
  %.in.i226.i = phi i32 [ %i.rs, %.thread75.i238.i ], [ %i.qx, %.lr.ph.preheader.i224.i ] ; 2 uses
  %.088.i227.i = phi i32 [ %.1.i241.i, %.thread75.i238.i ], [ %i.rp, %.lr.ph.preheader.i224.i ] ; 2 uses
  %.04287.i228.i = phi i32 [ %.143.i240.i, %.thread75.i238.i ], [ %i.rr, %.lr.ph.preheader.i224.i ] ; 2 uses
  %.04486.i229.i = phi i32 [ %.2.i237.i, %.thread75.i238.i ], [ %i.rk, %.lr.ph.preheader.i224.i ] ; 2 uses
  %.04685.i230.i = phi i32 [ %.147.i236.i, %.thread75.i238.i ], [ %i.ri, %.lr.ph.preheader.i224.i ] ; 3 uses
  %.05284.i231.i = phi ptr [ %.153.i235.i, %.thread75.i238.i ], [ %i.rg, %.lr.ph.preheader.i224.i ] ; 3 uses
  %.05683.i232.i = phi ptr [ %.157.i239.i, %.thread75.i238.i ], [ %i.rn, %.lr.ph.preheader.i224.i ] ; 2 uses
  %i.rs = add nsw i32 %.in.i226.i, -1             ; 3 uses
  %i.rt = and i32 %.04287.i228.i, %.088.i227.i
  %.not65.i233.i = icmp eq i32 %i.rt, 0
  %i.ru = or i32 %.04685.i230.i, %.04486.i229.i
  %i.rv = xor i32 %.04685.i230.i, -1
  %i.rw = and i32 %.04486.i229.i, %i.rv
  %.145.i234.i = select i1 %.not65.i233.i, i32 %i.rw, i32 %i.ru ; 2 uses
  %i.rx = shl i32 %.04685.i230.i, 1               ; 2 uses
  %i.ry = icmp eq i32 %i.rx, 256
  br i1 %i.ry, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %.lr.ph.i225.i
  %i.rz = trunc i32 %.145.i234.i to i8
  store i8 %i.rz, ptr %.05284.i231.i, align 1
  %.not80.i248.i = icmp eq i32 %i.rs, 0
  br i1 %.not80.i248.i, label %array_insert_slice.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sa = getelementptr inbounds nuw i8, ptr %.05284.i231.i, i64 1 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1
  %i.sc = zext i8 %i.sb to i32
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph.i225.i
  %.153.i235.i = phi ptr [ %i.sa, %bb.co ], [ %.05284.i231.i, %.lr.ph.i225.i ] ; 2 uses
  %.147.i236.i = phi i32 [ 1, %bb.co ], [ %i.rx, %.lr.ph.i225.i ] ; 2 uses
  %.2.i237.i = phi i32 [ %i.sc, %bb.co ], [ %.145.i234.i, %.lr.ph.i225.i ] ; 2 uses
  %i.sd = shl i32 %.04287.i228.i, 1               ; 2 uses
  %i.se = icmp eq i32 %i.sd, 256
  br i1 %i.se, label %bb.cq, label %.thread75.i238.i

bb.cq:                                            ; preds = %bb.cp
  %.not81.i247.i = icmp eq i32 %i.rs, 0
  br i1 %.not81.i247.i, label %._crit_edge.i242.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.sf = getelementptr inbounds nuw i8, ptr %.05683.i232.i, i64 1 ; 2 uses
  %i.sg = load i8, ptr %i.sf, align 1
  %i.sh = zext i8 %i.sg to i32
  br label %.thread75.i238.i

.thread75.i238.i:                                 ; preds = %bb.cr, %bb.cp
  %.157.i239.i = phi ptr [ %i.sf, %bb.cr ], [ %.05683.i232.i, %bb.cp ]
  %.143.i240.i = phi i32 [ 1, %bb.cr ], [ %i.sd, %bb.cp ]
  %.1.i241.i = phi i32 [ %i.sh, %bb.cr ], [ %.088.i227.i, %bb.cp ]
  %i.si = icmp samesign ugt i32 %.in.i226.i, 1
  br i1 %i.si, label %.lr.ph.i225.i, label %._crit_edge.i242.i, !llvm.loop !73

._crit_edge.i242.i:                               ; preds = %.thread75.i238.i, %bb.cq
  %.not64.i243.i = icmp eq i32 %.147.i236.i, 1
  br i1 %.not64.i243.i, label %array_insert_slice.exit, label %._crit_edge95.thread.sink.split.i244.i

.lr.ph94.i249.i:                                  ; preds = %.lr.ph94.i249.outer.i, %bb.ct
  %.in99.i250.i = phi i32 [ %i.sj, %bb.ct ], [ %.in99.i250.ph.i, %.lr.ph94.i249.outer.i ] ; 2 uses
  %.393.i251.i = phi i32 [ %i.sk, %bb.ct ], [ %.393.i251.ph.i, %.lr.ph94.i249.outer.i ]
  %.24892.i252.i = phi i32 [ %i.sl, %bb.ct ], [ %.24892.i252.ph.i, %.lr.ph94.i249.outer.i ] ; 2 uses
  %i.sj = add nsw i32 %.in99.i250.i, -1           ; 3 uses
  %i.sk = or i32 %.24892.i252.i, %.393.i251.i     ; 3 uses
  %i.sl = shl i32 %.24892.i252.i, 1               ; 2 uses
  %i.sm = icmp eq i32 %i.sl, 256
  br i1 %i.sm, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph94.i249.i
  %i.sn = trunc i32 %i.sk to i8
  store i8 %i.sn, ptr %.25491.i253.ph.i, align 1
  %.not82.i259.i = icmp eq i32 %i.sj, 0
  br i1 %.not82.i259.i, label %array_insert_slice.exit, label %.thread293.i

bb.ct:                                            ; preds = %.lr.ph94.i249.i
  %i.so = icmp samesign ugt i32 %.in99.i250.i, 1
  br i1 %i.so, label %.lr.ph94.i249.i, label %._crit_edge95.thread.sink.split.i244.i, !llvm.loop !74

.thread293.i:                                     ; preds = %bb.cs
  %i.sp = getelementptr inbounds nuw i8, ptr %.25491.i253.ph.i, i64 1 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 1
  %i.sr = zext i8 %i.sq to i32
  br label %.lr.ph94.i249.outer.i, !llvm.loop !74

.lr.ph94.i249.outer.i:                            ; preds = %bb.cm, %.thread293.i
  %.in99.i250.ph.i = phi i32 [ %i.sj, %.thread293.i ], [ %i.qx, %bb.cm ]
  %.393.i251.ph.i = phi i32 [ %i.sr, %.thread293.i ], [ %i.rk, %bb.cm ]
  %.24892.i252.ph.i = phi i32 [ 1, %.thread293.i ], [ %i.ri, %bb.cm ]
  %.25491.i253.ph.i = phi ptr [ %i.sp, %.thread293.i ], [ %i.rg, %bb.cm ] ; 3 uses
  br label %.lr.ph94.i249.i

._crit_edge95.thread.sink.split.i244.i:           ; preds = %bb.ct, %._crit_edge.i242.i
  %.273110.sink.i245.i = phi i32 [ %.2.i237.i, %._crit_edge.i242.i ], [ %i.sk, %bb.ct ]
  %.15369112.sink.i246.i = phi ptr [ %.153.i235.i, %._crit_edge.i242.i ], [ %.25491.i253.ph.i, %bb.ct ]
  %i.ss = trunc i32 %.273110.sink.i245.i to i8
  store i8 %i.ss, ptr %.15369112.sink.i246.i, align 1
  br label %array_insert_slice.exit

array_insert_slice.exit:                          ; preds = %bb.cn, %bb.cs, %bb.cl, %._crit_edge.i242.i, %._crit_edge95.thread.sink.split.i244.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %array_bitmap_copy.exit394

bb.cu:                                            ; preds = %bb.bf
  %i.st = sext i32 %.0273 to i64
  %i.su = getelementptr inbounds i8, ptr %i.jx, i64 %i.st ; 2 uses
  %i.sv = getelementptr inbounds i8, ptr %i.p, i64 %i.js ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.su, ptr align 1 %i.sv, i64 %.0272, i1 false)
  %i.sw = getelementptr inbounds i8, ptr %i.su, i64 %.0272 ; 2 uses
  %i.sx = load i32, ptr %i.gg, align 4            ; 2 uses
  %.not312 = icmp eq i32 %i.sx, 0
  br i1 %.not312, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sy = sext i32 %i.sx to i64
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.sz = load i32, ptr %i.fq, align 4
  %i.ta = sext i32 %i.sz to i64
  %i.tb = shl nsw i64 %i.ta, 3
  %i.tc = add nsw i64 %i.tb, 16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.td = phi i64 [ %i.sy, %bb.cv ], [ %i.tc, %bb.cw ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.td
  %sext442 = shl i64 %i.gy, 32
  %i.tf = ashr exact i64 %sext442, 32             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sw, ptr align 1 %i.te, i64 %i.tf, i1 false)
  %i.tg = getelementptr inbounds i8, ptr %i.sw, i64 %i.tf
  %i.th = getelementptr inbounds i8, ptr %i.sv, i64 %.0272
  %i.ti = sext i32 %.1275 to i64
  %i.tj = getelementptr inbounds i8, ptr %i.th, i64 %i.ti
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tg, ptr align 1 %i.tj, i64 %.0271, i1 false)
  br i1 %.1277, label %bb.cy, label %array_bitmap_copy.exit394

bb.cy:                                            ; preds = %bb.cx
  %i.tk = load i32, ptr %i.ka, align 4
  %.not313 = icmp eq i32 %i.tk, 0
  br i1 %.not313, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tl = load i32, ptr %i.jz, align 4
  %i.tm = sext i32 %i.tl to i64
  %i.tn = shl nsw i64 %i.tm, 3
  %i.to = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.tn
  br label %bb.da
end_hunk_1
