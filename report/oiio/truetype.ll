inline.NumInlined: 294
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@tt_face_load_cvt:bb.a
  %.not28 = icmp eq i64 %i.s, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.027 = phi ptr [ %i.x, %.lr.ph ], [ %i.r, %bb.e ] ; 2 uses
  %i.u = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #22
  %i.v = sext i16 %i.u to i32
  %i.w = shl nsw i32 %i.v, 6
  store i32 %i.w, ptr %.027, align 4, !tbaa !3
  %i.x = getelementptr inbounds nuw i8, ptr %.027, i64 4 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.t
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !648

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1209
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !491
  %.not26 = icmp eq i8 %i.aa, 0
  br i1 %.not26, label %._crit_edge._crit_edge, label %bb.f

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ab = call fastcc i32 @tt_face_vary_cvt(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge._crit_edge, %bb.f, %bb.d, %bb.c, %bb.b
  %i.ac = phi i32 [ %.pre, %._crit_edge._crit_edge ], [ %i.ab, %bb.f ], [ %i.q, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_vary_cvt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %.thread219

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99
  %.not198 = icmp eq ptr %i.j, null
  br i1 %.not198, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %.thread219

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !496
  %i.m = call i32 %i.l(ptr noundef nonnull %0, i64 noundef 1668702578, ptr noundef nonnull %1, ptr noundef nonnull %i.b) #22
  %.not199 = icmp eq i32 %i.m, 0
  br i1 %.not199, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %.thread219

bb.g:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.b, align 8, !tbaa !223
  %i.o = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.n) #22 ; 2 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !3
  %.not200 = icmp eq i32 %i.o, 0
  br i1 %.not200, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %.thread219

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !649
  %i.r = load ptr, ptr %1, align 8, !tbaa !650
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = call i32 @FT_Stream_GetULong(ptr noundef nonnull %1) #22
  %.not201 = icmp eq i32 %i.v, 65536
  br i1 %.not201, label %bb.j, label %.thread236.sink.split

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.h, align 8, !tbaa !329
  %i.x = zext i32 %i.w to i64
  %i.y = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.x, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 9 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !3
  %.not202 = icmp eq i32 %i.z, 0
  br i1 %.not202, label %bb.k, label %.thread236

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !329
  %i.ab = zext i32 %i.aa to i64
  %i.ac = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.ab, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 7 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !3
  %.not203 = icmp eq i32 %i.ad, 0
  br i1 %.not203, label %bb.l, label %.thread236

bb.l:                                             ; preds = %bb.k
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !329
  %i.af = zext i32 %i.ae to i64
  %i.ag = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.af, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 6 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3
  %.not204 = icmp eq i32 %i.ah, 0
  br i1 %.not204, label %bb.m, label %.thread236

bb.m:                                             ; preds = %bb.l
  %i.ai = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #22 ; 2 uses
  %i.aj = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #22
  %i.ak = zext i16 %i.aj to i64                   ; 2 uses
  %i.al = and i16 %i.ai, 4095                     ; 2 uses
  %i.am = zext nneg i16 %i.al to i32              ; 2 uses
  %i.an = shl nuw nsw i32 %i.am, 2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, %i.ak
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !223 ; 2 uses
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  br i1 %i.ar, label %.thread236.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add i64 %i.u, %i.ak                     ; 3 uses
  %.not205 = icmp sgt i16 %i.ai, -1
  br i1 %.not205, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !649
  %i.au = load ptr, ptr %1, align 8, !tbaa !650   ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !651 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = icmp ult i64 %i.as, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  %i.be = select i1 %i.bc, ptr %i.bd, ptr %i.az
  store ptr %i.be, ptr %i.p, align 8, !tbaa !649
  %i.bf = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %1, i64 noundef %i.aq, ptr noundef %i.d)
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !649
  %i.bh = load ptr, ptr %1, align 8, !tbaa !650   ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !651 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.bj
  %i.bo = icmp ult i64 %i.ax, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ax
  %i.bq = select i1 %i.bo, ptr %i.bp, ptr %i.bl
  store ptr %i.bq, ptr %i.p, align 8, !tbaa !649
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0179 = phi ptr [ %i.bf, %bb.o ], [ null, %bb.n ] ; 3 uses
  %.0166 = phi i64 [ %i.bk, %bb.o ], [ %i.as, %bb.n ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 6 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !214
  %i.bt = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.bs, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 6 uses
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !3
  %.not206 = icmp eq i32 %i.bu, 0
  br i1 %.not206, label %.preheader256, label %.thread

.preheader256:                                    ; preds = %bb.p
  %.not271 = icmp eq i16 %i.al, 0
  br i1 %.not271, label %.preheader, label %.lr.ph268

.lr.ph268:                                        ; preds = %.preheader256
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.by = load i32, ptr %i.d, align 4             ; 2 uses
  br label %bb.q

.preheader:                                       ; preds = %bb.af, %.preheader256
  %i.bz = load i64, ptr %i.br, align 8, !tbaa !214 ; 6 uses
  %.not277 = icmp eq i64 %i.bz, 0
  br i1 %.not277, label %.thread, label %.lr.ph270

.lr.ph270:                                        ; preds = %.preheader
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !99  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph270
  %i.cb = add i64 %i.bz, -1                       ; 2 uses
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp eq i64 %i.cc, 4294967295
  %i.ce = icmp ugt i64 %i.cb, 4294967295
  %i.cf = or i1 %i.cd, %i.ce
  br i1 %i.cf, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bz, 8589934588              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load = load <2 x i64>, ptr %i.cg, align 8, !tbaa !223
  %wide.load303 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !223
  %i.ci = add nsw <2 x i64> %wide.load, splat (i64 512)
  %i.cj = add nsw <2 x i64> %wide.load303, splat (i64 512)
  %i.ck = lshr <2 x i64> %i.ci, splat (i64 10)
  %i.cl = lshr <2 x i64> %i.cj, splat (i64 10)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %wide.load304 = load <2 x i32>, ptr %i.cm, align 4, !tbaa !3
  %wide.load305 = load <2 x i32>, ptr %i.cn, align 4, !tbaa !3
  %i.co = trunc <2 x i64> %i.ck to <2 x i32>
  %i.cp = trunc <2 x i64> %i.cl to <2 x i32>
  %i.cq = add <2 x i32> %wide.load304, %i.co
  %i.cr = add <2 x i32> %wide.load305, %i.cp
  store <2 x i32> %i.cq, ptr %i.cm, align 4, !tbaa !3
  store <2 x i32> %i.cr, ptr %i.cn, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph270, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph270 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.q:                                             ; preds = %.lr.ph268, %bb.af
  %.1267 = phi i64 [ %.0166, %.lr.ph268 ], [ %.2, %bb.af ] ; 3 uses
  %.0168266 = phi i32 [ 0, %.lr.ph268 ], [ %i.gw, %bb.af ]
  %i.ct = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #22
  %i.cu = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #22 ; 3 uses
  %i.cv = zext i16 %i.cu to i32                   ; 3 uses
  %.not207 = icmp sgt i16 %i.cu, -1
  br i1 %.not207, label %bb.r, label %.preheader254

.preheader254:                                    ; preds = %bb.q
  %i.cw = load i32, ptr %i.h, align 8, !tbaa !329
  %.not272 = icmp eq i32 %i.cw, 0
  br i1 %.not272, label %.loopexit255, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader254, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader254 ] ; 2 uses
  %i.cx = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #22
  %i.cy = sext i16 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 2
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !223
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i32, ptr %i.h, align 8, !tbaa !329
  %i.dc = zext i32 %i.db to i64
  %i.dd = icmp samesign ult i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %.lr.ph, label %.loopexit255, !llvm.loop !653

bb.r:                                             ; preds = %bb.q
  %i.de = and i32 %i.cv, 4095                     ; 2 uses
  %i.df = load i32, ptr %i.bv, align 8, !tbaa !631
  %.not208 = icmp ult i32 %i.de, %i.df
  br i1 %.not208, label %bb.s, label %.thread.sink.split

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.bw, align 8, !tbaa !612 ; 2 uses
  %.not209 = icmp eq ptr %i.dg, null
  br i1 %.not209, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = load i32, ptr %i.h, align 8, !tbaa !329 ; 2 uses
  %i.di = mul i32 %i.dh, %i.de
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = zext i32 %i.dh to i64
  %i.dm = shl nuw nsw i64 %i.dl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.dk, i64 %i.dm, i1 false)
  br label %.loopexit255

.loopexit255:                                     ; preds = %.lr.ph, %.preheader254, %bb.t
  %i.dn = and i32 %i.cv, 16384
  %.not210 = icmp eq i32 %i.dn, 0
  br i1 %.not210, label %.loopexit252, label %.preheader253

.preheader253:                                    ; preds = %.loopexit255
  %i.do = load i32, ptr %i.h, align 8, !tbaa !329
  %.not273 = icmp eq i32 %i.do, 0
  br i1 %.not273, label %.loopexit252, label %.lr.ph259

.preheader251:                                    ; preds = %.lr.ph259
  %i.dp = icmp eq i32 %i.du, 0
  br i1 %i.dp, label %.loopexit252, label %.lr.ph261

.lr.ph259:                                        ; preds = %.preheader253, %.lr.ph259
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %.lr.ph259 ], [ 0, %.preheader253 ] ; 2 uses
  %i.dq = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #22
  %i.dr = sext i16 %i.dq to i64
  %i.ds = shl nsw i64 %i.dr, 2
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv280
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !223
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.du = load i32, ptr %i.h, align 8, !tbaa !329 ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = icmp samesign ult i64 %indvars.iv.next281, %i.dv
  br i1 %i.dw, label %.lr.ph259, label %.preheader251, !llvm.loop !654

.lr.ph261:                                        ; preds = %.preheader251, %.lr.ph261
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph261 ], [ 0, %.preheader251 ] ; 2 uses
  %i.dx = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #22
  %i.dy = sext i16 %i.dx to i64
  %i.dz = shl nsw i64 %i.dy, 2
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv283
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !223
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.eb = load i32, ptr %i.h, align 8, !tbaa !329
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp samesign ult i64 %indvars.iv.next284, %i.ec
  br i1 %i.ed, label %.lr.ph261, label %.loopexit252, !llvm.loop !655

.loopexit252:                                     ; preds = %.lr.ph261, %.preheader253, %.preheader251, %.loopexit255
  %i.ee = call fastcc i64 @ft_var_apply_tuple(ptr noundef %i.h, i16 noundef zeroext %i.cu, ptr noundef %i.y, ptr noundef %i.ac, ptr noundef %i.ag) ; 3 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.af, label %bb.u

bb.u:                                             ; preds = %.loopexit252
  %i.eg = load ptr, ptr %i.p, align 8, !tbaa !649
  %i.eh = load ptr, ptr %1, align 8, !tbaa !650   ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = load ptr, ptr %i.bx, align 8, !tbaa !651 ; 2 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.ej
  %i.eo = icmp ult i64 %.1267, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.1267
  %i.eq = select i1 %i.eo, ptr %i.ep, ptr %i.el
  store ptr %i.eq, ptr %i.p, align 8, !tbaa !649
  %i.er = and i32 %i.cv, 8192
  %.not211 = icmp eq i32 %i.er, 0
  br i1 %.not211, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = load i64, ptr %i.b, align 8, !tbaa !223
  %i.et = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %1, i64 noundef %i.es, ptr noundef %i.c) ; 2 uses
  %.pr = load i32, ptr %i.c, align 4, !tbaa !3
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i32 %i.by, ptr %i.c, align 4, !tbaa !3
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.eu = phi i32 [ %i.by, %bb.w ], [ %.pr, %bb.v ] ; 3 uses
  %.0178 = phi ptr [ null, %bb.w ], [ %i.et, %bb.v ] ; 3 uses
  %.0177 = phi ptr [ %.0179, %bb.w ], [ %i.et, %bb.v ] ; 2 uses
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !223
  %i.ew = icmp eq i32 %i.eu, 0                    ; 2 uses
  br i1 %i.ew, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ex = load i64, ptr %i.br, align 8, !tbaa !214
  %i.ey = trunc i64 %i.ex to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ez = phi i32 [ %i.ey, %bb.y ], [ %i.eu, %bb.x ]
  %i.fa = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %1, i64 noundef %i.ev, i32 noundef %i.ez) ; 4 uses
  %i.fb = icmp ne ptr %.0177, null
  %i.fc = icmp ne ptr %i.fa, null
  %or.cond = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.fd = icmp eq ptr %.0178, inttoptr (i64 -1 to ptr)
  br i1 %i.fd, label %.preheader248, label %.preheader249

.preheader249:                                    ; preds = %bb.aa
  br i1 %i.ew, label %.loopexit.thread301, label %.lr.ph263

.lr.ph263:                                        ; preds = %.preheader249
  %sext243 = shl i64 %i.ee, 32
  %i.fe = ashr exact i64 %sext243, 32
  %wide.trip.count = zext i32 %i.eu to i64
  br label %bb.ac

.preheader248:                                    ; preds = %bb.aa
  %i.ff = load i64, ptr %i.br, align 8, !tbaa !214
  %.not276 = icmp eq i64 %i.ff, 0
  br i1 %.not276, label %.loopexit.thread, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader248
  %sext246 = shl i64 %i.ee, 32
  %i.fg = ashr exact i64 %sext246, 32
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph265, %bb.ab
  %i.fh = phi i64 [ 0, %.lr.ph265 ], [ %i.fv, %bb.ab ] ; 2 uses
  %.3264 = phi i32 [ 0, %.lr.ph265 ], [ %i.fu, %bb.ab ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.fh ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !223
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fh
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !223
  %sext245 = shl i64 %i.fl, 32
  %i.fm = ashr exact i64 %sext245, 32
  %i.fn = mul nsw i64 %i.fm, %i.fg                ; 2 uses
  %i.fo = ashr i64 %i.fn, 63
  %i.fp = add nsw i64 %i.fn, 32768
  %i.fq = add nsw i64 %i.fp, %i.fo
  %i.fr = shl i64 %i.fq, 16
  %i.fs = ashr i64 %i.fr, 32
  %i.ft = add nsw i64 %i.fs, %i.fj
  store i64 %i.ft, ptr %i.fi, align 8, !tbaa !223
  %i.fu = add i32 %.3264, 1                       ; 2 uses
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = load i64, ptr %i.br, align 8, !tbaa !214
  %i.fx = icmp ugt i64 %i.fw, %i.fv
  br i1 %i.fx, label %bb.ab, label %.loopexit.thread, !llvm.loop !656

bb.ac:                                            ; preds = %.lr.ph263, %bb.ae
  %indvars.iv286 = phi i64 [ 0, %.lr.ph263 ], [ %indvars.iv.next287, %bb.ae ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.0177, i64 %indvars.iv286
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !135
  %i.ga = zext i16 %i.fz to i64                   ; 2 uses
  %i.gb = load i64, ptr %i.br, align 8, !tbaa !214
  %.not212 = icmp ugt i64 %i.gb, %i.ga
  br i1 %.not212, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ga ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !223
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv286
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !223
  %sext = shl i64 %i.gf, 32
  %i.gg = ashr exact i64 %sext, 32
  %i.gh = mul nsw i64 %i.gg, %i.fe                ; 2 uses
  %i.gi = ashr i64 %i.gh, 63
  %i.gj = add nsw i64 %i.gh, 32768
  %i.gk = add nsw i64 %i.gj, %i.gi
  %i.gl = shl i64 %i.gk, 16
  %i.gm = ashr i64 %i.gl, 32
  %i.gn = add nsw i64 %i.gm, %i.gd
  store i64 %i.gn, ptr %i.gc, align 8, !tbaa !223
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.ac, !llvm.loop !657

.loopexit:                                        ; preds = %bb.ae, %bb.z
  %.not213 = icmp eq ptr %.0178, inttoptr (i64 -1 to ptr)
  br i1 %.not213, label %.loopexit.thread, label %.loopexit.thread301

.loopexit.thread301:                              ; preds = %.preheader249, %.loopexit
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.0178) #22
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ab, %.preheader248, %.loopexit, %.loopexit.thread301
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.fa) #22
  %i.go = load ptr, ptr %i.bx, align 8, !tbaa !651 ; 2 uses
  %i.gp = load ptr, ptr %1, align 8, !tbaa !650   ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp ult i64 %i.ek, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.ek
  %i.gv = select i1 %i.gt, ptr %i.gu, ptr %i.go
  store ptr %i.gv, ptr %i.p, align 8, !tbaa !649
  br label %bb.af

bb.af:                                            ; preds = %.loopexit252, %.loopexit.thread
  %.pn = zext i16 %i.ct to i64
  %.2 = add i64 %.1267, %.pn
  %i.gw = add nuw nsw i32 %.0168266, 1            ; 2 uses
  %exitcond289.not = icmp eq i32 %i.gw, %i.am
  br i1 %exitcond289.not, label %.preheader, label %bb.q, !llvm.loop !658

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.gx = phi i64 [ %indvars.iv.next291, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !223
  %i.ha = add nsw i64 %i.gz, 512
  %i.hb = lshr i64 %i.ha, 10
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.gx ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = trunc i64 %i.hb to i32
  %i.hf = add i32 %i.hd, %i.he
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !3
  %indvars.iv.next291 = add i64 %i.gx, 1          ; 2 uses
  %2 = and i64 %indvars.iv.next291, 4294967295
  %i.hg = icmp ugt i64 %i.bz, %2
  br i1 %i.hg, label %scalar.ph, label %.thread, !llvm.loop !659

.thread236.sink.split:                            ; preds = %bb.m, %bb.i
  %.sink = phi i32 [ 0, %bb.i ], [ 8, %bb.m ]
  %.0184.ph.ph = phi ptr [ null, %bb.i ], [ %i.ag, %bb.m ]
  %.0182.ph.ph = phi ptr [ null, %bb.i ], [ %i.ac, %bb.m ]
  %.0173.ph.ph = phi ptr [ null, %bb.i ], [ %i.y, %bb.m ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !3
  br label %.thread236

.thread236:                                       ; preds = %.thread236.sink.split, %bb.j, %bb.k, %bb.l
  %.0184.ph = phi ptr [ null, %bb.j ], [ %i.ag, %bb.l ], [ null, %bb.k ], [ %.0184.ph.ph, %.thread236.sink.split ]
  %.0182.ph = phi ptr [ null, %bb.j ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ %.0182.ph.ph, %.thread236.sink.split ]
  %.0173.ph = phi ptr [ %i.y, %bb.j ], [ %i.y, %bb.l ], [ %i.y, %bb.k ], [ %.0173.ph.ph, %.thread236.sink.split ]
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #22
  br label %.thread219

.thread.sink.split:                               ; preds = %bb.s, %bb.r
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %scalar.ph, %middle.block, %.thread.sink.split, %.preheader, %bb.p
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #22
  %.not214 = icmp eq ptr %.0179, inttoptr (i64 -1 to ptr)
  br i1 %.not214, label %bb.ag, label %.thread219

.thread219:                                       ; preds = %bb.b, %bb.d, %bb.h, %bb.f, %.thread236, %.thread
  %.1174233 = phi ptr [ %.0173.ph, %.thread236 ], [ %i.y, %.thread ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.b ]
  %.1176231 = phi ptr [ null, %.thread236 ], [ %i.bt, %.thread ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.b ]
  %.2181230 = phi ptr [ null, %.thread236 ], [ %.0179, %.thread ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.b ]
  %.1183228 = phi ptr [ %.0182.ph, %.thread236 ], [ %i.ac, %.thread ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.b ]
  %.1185226 = phi ptr [ %.0184.ph, %.thread236 ], [ %i.ag, %.thread ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.d ], [ null, %bb.b ]
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.2181230) #22
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %.thread219
  %.1174234 = phi ptr [ %i.y, %.thread ], [ %.1174233, %.thread219 ]
  %.1176232 = phi ptr [ %i.bt, %.thread ], [ %.1176231, %.thread219 ]
  %.1183229 = phi ptr [ %i.ac, %.thread ], [ %.1183228, %.thread219 ]
  %.1185227 = phi ptr [ %i.ag, %.thread ], [ %.1185226, %.thread219 ]
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.1174234) #22
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.1183229) #22
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.1185227) #22
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.1176232) #22
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hi = call i32 @FT_List_Iterate(ptr noundef nonnull %i.hh, ptr noundef nonnull @tt_cvt_ready_iterator, ptr noundef null) #22 ; 0 uses
  %i.hj = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %i.hj
}

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_GetULong(ptr noundef) local_unnamed_addr #4

declare hidden zeroext i16 @FT_Stream_GetUShort(ptr noundef) local_unnamed_addr #4

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ft_var_readpackedpoints(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %2, align 4, !tbaa !3
  %i.d = tail call zeroext i8 @FT_Stream_GetByte(ptr noundef %0) #22 ; 3 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = icmp eq i8 %i.d, 0
  br i1 %i.f, label %.loopexit71, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw nsw i32 %i.e, 8
  %i.h = and i32 %i.g, 32512
  %i.i = tail call zeroext i8 @FT_Stream_GetByte(ptr noundef nonnull %0) #22
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.h, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.058 = phi i32 [ %i.k, %bb.c ], [ %i.e, %bb.b ] ; 7 uses
  %i.l = zext nneg i32 %.058 to i64
  %i.m = icmp ult i64 %1, %i.l
  br i1 %i.m, label %.loopexit71, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw nsw i32 %.058, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 2, i64 noundef 0, i64 noundef %i.o, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 5 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !3
  %.not64 = icmp eq i32 %i.q, 0
  br i1 %.not64, label %bb.f, label %.loopexit71

bb.f:                                             ; preds = %bb.e
  store i32 %.058, ptr %2, align 4, !tbaa !3
  %.not92 = icmp eq i32 %.058, 0
  br i1 %.not92, label %.loopexit71, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.f, %.loopexit
  %.05189 = phi i16 [ %.3, %.loopexit ], [ 0, %bb.f ] ; 2 uses
  %.05488 = phi i32 [ %.357, %.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.r = call zeroext i8 @FT_Stream_GetByte(ptr noundef %0) #22 ; 3 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.not65 = icmp sgt i8 %i.r, -1
  %i.t = add nuw nsw i32 %.05488, 1               ; 4 uses
  %i.u = zext nneg i32 %.05488 to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.u ; 2 uses
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph90
  %i.w = and i32 %i.s, 127                        ; 2 uses
  %i.x = call zeroext i16 @FT_Stream_GetUShort(ptr noundef %0) #22
  %i.y = add i16 %i.x, %.05189                    ; 3 uses
  store i16 %i.y, ptr %i.v, align 2, !tbaa !135
  %.not93 = icmp eq i32 %i.w, 0
  br i1 %.not93, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.174 = phi i16 [ %i.aa, %.lr.ph ], [ %i.y, %bb.g ]
  %.05273 = phi i32 [ %i.ae, %.lr.ph ], [ 0, %bb.g ]
  %.15572 = phi i32 [ %i.ab, %.lr.ph ], [ %i.t, %bb.g ] ; 2 uses
  %i.z = call zeroext i16 @FT_Stream_GetUShort(ptr noundef %0) #22
  %i.aa = add i16 %i.z, %.174                     ; 3 uses
  %i.ab = add i32 %.15572, 1                      ; 3 uses
  %i.ac = zext i32 %.15572 to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.ac
  store i16 %i.aa, ptr %i.ad, align 2, !tbaa !135
  %.not67 = icmp ult i32 %i.ab, %.058
  %i.ae = add nuw nsw i32 %.05273, 1              ; 2 uses
  %i.af = icmp samesign ult i32 %i.ae, %i.w
  %or.cond = select i1 %.not67, i1 %i.af, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !660

bb.h:                                             ; preds = %.lr.ph90
  %i.ag = call zeroext i8 @FT_Stream_GetByte(ptr noundef %0) #22
  %i.ah = zext i8 %i.ag to i16
  %i.ai = add i16 %.05189, %i.ah                  ; 3 uses
  store i16 %i.ai, ptr %i.v, align 2, !tbaa !135
  %.not94 = icmp eq i8 %i.r, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.h, %.lr.ph82
  %.281 = phi i16 [ %i.al, %.lr.ph82 ], [ %i.ai, %bb.h ]
  %.15380 = phi i32 [ %i.ap, %.lr.ph82 ], [ 0, %bb.h ]
  %.25679 = phi i32 [ %i.am, %.lr.ph82 ], [ %i.t, %bb.h ] ; 2 uses
  %i.aj = call zeroext i8 @FT_Stream_GetByte(ptr noundef %0) #22
  %i.ak = zext i8 %i.aj to i16
  %i.al = add i16 %.281, %i.ak                    ; 3 uses
  %i.am = add i32 %.25679, 1                      ; 3 uses
  %i.an = zext i32 %.25679 to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.an
  store i16 %i.al, ptr %i.ao, align 2, !tbaa !135
  %.not66 = icmp ult i32 %i.am, %.058
  %i.ap = add nuw nsw i32 %.15380, 1              ; 2 uses
  %i.aq = icmp samesign ult i32 %i.ap, %i.s
  %or.cond91 = select i1 %.not66, i1 %i.aq, i1 false
  br i1 %or.cond91, label %.lr.ph82, label %.loopexit, !llvm.loop !661

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph82, %bb.g, %bb.h
  %.357 = phi i32 [ %i.t, %bb.g ], [ %i.am, %.lr.ph82 ], [ %i.t, %bb.h ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.3 = phi i16 [ %i.y, %bb.g ], [ %i.al, %.lr.ph82 ], [ %i.ai, %bb.h ], [ %i.aa, %.lr.ph ]
  %i.ar = icmp ult i32 %.357, %.058
  br i1 %i.ar, label %.lr.ph90, label %.loopexit71, !llvm.loop !662

.loopexit71:                                      ; preds = %.loopexit, %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.e ], [ inttoptr (i64 -1 to ptr), %bb.a ], [ null, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ft_var_apply_tuple(ptr nofree noundef nonnull readonly captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !329    ; 2 uses
  %.not80 = icmp eq i32 %i.b, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = and i16 %1, 16384
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
end_hunk_0
begin_hunk_1_@tt_check_trickyness:bb.a
bb.f:                                             ; preds = %bb.e
  %i.am = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 40)) #23
  %.not.2.i = icmp eq ptr %i.am, null
  br i1 %.not.2.i, label %bb.g, label %tt_check_trickyness_family.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.an = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 60)) #23
  %.not.3.i = icmp eq ptr %i.an, null
  br i1 %.not.3.i, label %bb.h, label %tt_check_trickyness_family.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 80)) #23
  %.not.4.i = icmp eq ptr %i.ao, null
  br i1 %.not.4.i, label %bb.i, label %tt_check_trickyness_family.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 100)) #23
  %.not.5.i = icmp eq ptr %i.ap, null
  br i1 %.not.5.i, label %bb.j, label %tt_check_trickyness_family.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 120)) #23
  %.not.6.i = icmp eq ptr %i.aq, null
  br i1 %.not.6.i, label %bb.k, label %tt_check_trickyness_family.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 140)) #23
  %.not.7.i = icmp eq ptr %i.ar, null
  br i1 %.not.7.i, label %bb.l, label %tt_check_trickyness_family.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 160)) #23
  %.not.8.i = icmp eq ptr %i.as, null
  br i1 %.not.8.i, label %bb.m, label %tt_check_trickyness_family.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.at = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 180)) #23
  %.not.9.i = icmp eq ptr %i.at, null
  br i1 %.not.9.i, label %bb.n, label %tt_check_trickyness_family.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.au = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 200)) #23
  %.not.10.i = icmp eq ptr %i.au, null
  br i1 %.not.10.i, label %bb.o, label %tt_check_trickyness_family.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.av = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 220)) #23
  %.not.11.i = icmp eq ptr %i.av, null
  br i1 %.not.11.i, label %bb.p, label %tt_check_trickyness_family.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 240)) #23
  %.not.12.i = icmp eq ptr %i.aw, null
  br i1 %.not.12.i, label %bb.q, label %tt_check_trickyness_family.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 260)) #23
  %.not.13.i = icmp eq ptr %i.ax, null
  br i1 %.not.13.i, label %bb.r, label %tt_check_trickyness_family.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 280)) #23
  %.not.14.i = icmp eq ptr %i.ay, null
  br i1 %.not.14.i, label %bb.s, label %tt_check_trickyness_family.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.az = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 300)) #23
  %.not.15.i = icmp eq ptr %i.az, null
  br i1 %.not.15.i, label %bb.t, label %tt_check_trickyness_family.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 320)) #23
  %.not.16.i = icmp eq ptr %i.ba, null
  br i1 %.not.16.i, label %bb.u, label %tt_check_trickyness_family.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 340)) #23
  %.not.17.i = icmp eq ptr %i.bb, null
  br i1 %.not.17.i, label %bb.v, label %tt_check_trickyness_family.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bc = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 360)) #23
  %.not.18.i = icmp eq ptr %i.bc, null
  br i1 %.not.18.i, label %tt_check_trickyness_family.exit, label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_family.exit:                  ; preds = %bb.v
  %i.bd = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.09.i.i, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @tt_check_trickyness_family.trick_names, i64 380)) #23
  %.not.19.i.not = icmp eq ptr %i.bd, null
  br i1 %.not.19.i.not, label %bb.w, label %tt_check_trickyness_family.exit.thread

bb.w:                                             ; preds = %tt_check_trickyness_family.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(124) %i.a, i8 0, i64 124, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !892 ; 2 uses
  %.not61.i = icmp eq i16 %i.bf, 0
  br i1 %.not61.i, label %.preheader.split.i.preheader, label %.lr.ph.i

.preheader.split.i.preheader:                     ; preds = %.preheader.i, %bb.w
  br label %.preheader.split.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br label %bb.x

.preheader.i:                                     ; preds = %.loopexit51.i
  %i.bj = icmp eq i8 %.240.i, 0
  br i1 %i.bj, label %.preheader.split.i.preheader, label %tt_check_trickyness_sfnt_ids.exit

bb.x:                                             ; preds = %.loopexit51.i, %.lr.ph.i
  %i.bk = phi i16 [ %i.bf, %.lr.ph.i ], [ %i.cz, %.loopexit51.i ]
  %indvars.iv68.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next69.i, %.loopexit51.i ] ; 4 uses
  %.03858.i = phi i8 [ 0, %.lr.ph.i ], [ %.240.i, %.loopexit51.i ] ; 3 uses
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !893
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %indvars.iv68.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !894
  switch i64 %i.bn, label %.loopexit51.i [
    i64 1668707360, label %bb.aa
    i64 1718642541, label %bb.y
    i64 1886545264, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.139.i = phi i8 [ %.03858.i, %bb.z ], [ %.03858.i, %bb.y ], [ 1, %bb.x ]
  %.0.i9 = phi i64 [ 2, %bb.z ], [ 1, %bb.y ], [ 0, %bb.x ]
  %invariant.gep.i = getelementptr inbounds nuw [16 x i8], ptr @tt_check_trickyness_sfnt_ids.sfnt_id, i64 %.0.i9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %bb.aa
  %indvars.iv.i = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i, %bb.ah ] ; 3 uses
  %.04156.i = phi i64 [ 0, %bb.aa ], [ %.243.i, %bb.ah ] ; 3 uses
  %i.bo = load ptr, ptr %i.bg, align 8, !tbaa !893
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv68.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !896
  %gep.i = getelementptr inbounds nuw [48 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !897
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %.not50.i = icmp eq i64 %.04156.i, 0
  br i1 %.not50.i, label %bb.ad, label %tt_get_sfnt_checksum.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.bv = load ptr, ptr %i.bh, align 8, !tbaa !496 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i11, label %tt_get_sfnt_checksum.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load i64, ptr %i.bp, align 8, !tbaa !894
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.by = tail call i32 %i.bv(ptr noundef nonnull %0, i64 noundef %i.bw, ptr noundef %i.bx, ptr noundef null) #22, !inline_history !899
  %.not10.i.i = icmp eq i32 %i.by, 0
  br i1 %.not10.i.i, label %bb.af, label %tt_get_sfnt_checksum.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.bz = load ptr, ptr %i.bi, align 8, !tbaa !46 ; 4 uses
  %i.ca = load ptr, ptr %i.bg, align 8, !tbaa !893
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %indvars.iv68.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !896 ; 4 uses
  %i.ce = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.bz, i64 noundef %i.cd) #22
  %.not.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i, label %.preheader19.i.i.i, label %tt_get_sfnt_checksum.exit.i

.preheader19.i.i.i:                               ; preds = %bb.af
  %i.cf = icmp ugt i64 %i.cd, 3
  br i1 %i.cf, label %.lr.ph.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %.preheader19.i.i.i
  %.016.lcssa.i.i.i = phi i64 [ %i.cd, %.preheader19.i.i.i ], [ %i.ci, %.lr.ph.i.i.i ] ; 2 uses
  %.014.lcssa.i.i.i = phi i32 [ 0, %.preheader19.i.i.i ], [ %i.ch, %.lr.ph.i.i.i ] ; 2 uses
  %.not1823.i.i.i = icmp eq i64 %.016.lcssa.i.i.i, 0
  br i1 %.not1823.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph27.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader19.i.i.i, %.lr.ph.i.i.i
  %.01421.i.i.i = phi i32 [ %i.ch, %.lr.ph.i.i.i ], [ 0, %.preheader19.i.i.i ]
  %.01620.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i ], [ %i.cd, %.preheader19.i.i.i ]
  %i.cg = tail call i32 @FT_Stream_GetULong(ptr noundef %i.bz) #22
  %i.ch = add i32 %i.cg, %.01421.i.i.i            ; 2 uses
  %i.ci = add i64 %.01620.i.i.i, -4               ; 3 uses
  %i.cj = icmp ugt i64 %i.ci, 3
  br i1 %i.cj, label %.lr.ph.i.i.i, label %.preheader.i.i.i, !llvm.loop !900

.lr.ph27.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph27.i.i.i
  %.026.i.i.i = phi i32 [ %i.cq, %.lr.ph27.i.i.i ], [ 3, %.preheader.i.i.i ] ; 2 uses
  %.125.i.i.i = phi i32 [ %i.co, %.lr.ph27.i.i.i ], [ %.014.lcssa.i.i.i, %.preheader.i.i.i ]
  %.11724.i.i.i = phi i64 [ %i.cp, %.lr.ph27.i.i.i ], [ %.016.lcssa.i.i.i, %.preheader.i.i.i ]
  %i.ck = tail call zeroext i8 @FT_Stream_GetByte(ptr noundef %i.bz) #22
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %.026.i.i.i, 3
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = add i32 %i.cn, %.125.i.i.i              ; 2 uses
  %i.cp = add nsw i64 %.11724.i.i.i, -1           ; 2 uses
  %i.cq = add nsw i32 %.026.i.i.i, -1
  %.not18.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph27.i.i.i, !llvm.loop !901

._crit_edge.i.i.i:                                ; preds = %.lr.ph27.i.i.i, %.preheader.i.i.i
  %.1.lcssa.i.i.i = phi i32 [ %.014.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.co, %.lr.ph27.i.i.i ]
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.bz) #22
  %i.cr = zext i32 %.1.lcssa.i.i.i to i64
  br label %tt_get_sfnt_checksum.exit.i

tt_get_sfnt_checksum.exit.i:                      ; preds = %._crit_edge.i.i.i, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.142.i = phi i64 [ %.04156.i, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ %i.cr, %._crit_edge.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.cs = load i64, ptr %gep.i, align 16, !tbaa !902
  %i.ct = icmp eq i64 %i.cs, %.142.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3  ; 2 uses
  br i1 %i.ct, label %bb.ag, label %tt_get_sfnt_checksum.exit._crit_edge.i

bb.ag:                                            ; preds = %tt_get_sfnt_checksum.exit.i
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !3
  br label %tt_get_sfnt_checksum.exit._crit_edge.i

tt_get_sfnt_checksum.exit._crit_edge.i:           ; preds = %bb.ag, %tt_get_sfnt_checksum.exit.i
  %i.cx = phi i32 [ %i.cw, %bb.ag ], [ %i.cv, %tt_get_sfnt_checksum.exit.i ]
  %i.cy = icmp eq i32 %i.cx, 3
  br i1 %i.cy, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %tt_get_sfnt_checksum.exit._crit_edge.i, %bb.ab
  %.243.i = phi i64 [ %.142.i, %tt_get_sfnt_checksum.exit._crit_edge.i ], [ %.04156.i, %bb.ab ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 31
  br i1 %exitcond.not.i, label %.loopexit51.loopexit.i, label %bb.ab, !llvm.loop !903

.loopexit51.loopexit.i:                           ; preds = %bb.ah
  %.pre78.i = load i16, ptr %i.be, align 8, !tbaa !892
  br label %.loopexit51.i

.loopexit51.i:                                    ; preds = %.loopexit51.loopexit.i, %bb.x
  %i.cz = phi i16 [ %i.bk, %bb.x ], [ %.pre78.i, %.loopexit51.loopexit.i ] ; 2 uses
  %.240.i = phi i8 [ %.03858.i, %bb.x ], [ %.139.i, %.loopexit51.loopexit.i ] ; 2 uses
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.da = zext i16 %i.cz to i64
  %i.db = icmp samesign ult i64 %indvars.iv.next69.i, %i.da
  br i1 %i.db, label %bb.x, label %.preheader.i, !llvm.loop !904

bb.ai:                                            ; preds = %.preheader.split._crit_edge.i
  %exitcond77.not.i = icmp eq i64 %indvars.iv74.i, 30
  br i1 %exitcond77.not.i, label %tt_check_trickyness_sfnt_ids.exit.thread17, label %.preheader.split.i.1

.preheader.split.i.1:                             ; preds = %bb.ai
  %i.dc = trunc i64 %indvars.iv74.i to i32
  %i.dd = add nsw i32 %i.dc, -16
  %.not45.i.1 = icmp ult i32 %i.dd, 12
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv74.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3  ; 2 uses
  br i1 %.not45.i.1, label %bb.aj, label %.preheader.split._crit_edge.i.1

bb.aj:                                            ; preds = %.preheader.split.i.1
  %i.dh = add nsw i32 %i.dg, 1                    ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !3
  br label %.preheader.split._crit_edge.i.1

.preheader.split._crit_edge.i.1:                  ; preds = %bb.aj, %.preheader.split.i.1
  %i.di = phi i32 [ %i.dh, %bb.aj ], [ %i.dg, %.preheader.split.i.1 ]
  %i.dj = icmp eq i32 %i.di, 3
  br i1 %i.dj, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.preheader.split._crit_edge.i.1
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2
  br label %.preheader.split.i

tt_check_trickyness_sfnt_ids.exit.thread17:       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.am

.preheader.split.i:                               ; preds = %bb.ak, %.preheader.split.i.preheader
  %indvars.iv74.i = phi i64 [ 0, %.preheader.split.i.preheader ], [ %indvars.iv.next75.i.1, %bb.ak ] ; 6 uses
  %i.dk = trunc i64 %indvars.iv74.i to i32
  %i.dl = add nsw i32 %i.dk, -16
  %.not45.i = icmp ult i32 %i.dl, 12
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv74.i ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !3  ; 2 uses
  br i1 %.not45.i, label %bb.al, label %.preheader.split._crit_edge.i

bb.al:                                            ; preds = %.preheader.split.i
  %i.do = add nsw i32 %i.dn, 1                    ; 2 uses
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !3
  br label %.preheader.split._crit_edge.i

.preheader.split._crit_edge.i:                    ; preds = %bb.al, %.preheader.split.i
  %i.dp = phi i32 [ %i.do, %bb.al ], [ %i.dn, %.preheader.split.i ]
  %i.dq = icmp eq i32 %i.dp, 3
  br i1 %i.dq, label %tt_check_trickyness_sfnt_ids.exit.thread, label %bb.ai

tt_check_trickyness_sfnt_ids.exit.thread:         ; preds = %tt_get_sfnt_checksum.exit._crit_edge.i, %.preheader.split._crit_edge.i, %.preheader.split._crit_edge.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_sfnt_ids.exit:                ; preds = %.preheader.i
  %i.dr = load <16 x i32>, ptr %i.a, align 16
  %.fr = freeze <16 x i32> %i.dr
  %i.ds = icmp ne <16 x i32> %.fr, splat (i32 3)  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.du = load <8 x i32>, ptr %i.dt, align 16
  %.fr54 = freeze <8 x i32> %i.du
  %i.dv = icmp ne <8 x i32> %.fr54, splat (i32 3)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dx = load <4 x i32>, ptr %i.dw, align 16
  %.fr55 = freeze <4 x i32> %i.dx
  %i.dy = icmp ne <4 x i32> %.fr55, splat (i32 3)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ea = load i32, ptr %i.dz, align 16
  %i.eb = icmp ne i32 %i.ea, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.ed = load i32, ptr %i.ec, align 4
  %.fr56 = freeze i32 %i.ed
  %i.ee = icmp ne i32 %.fr56, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.eg = load i32, ptr %i.ef, align 8
  %.fr58 = freeze i32 %i.eg
  %i.eh = icmp ne i32 %.fr58, 3
  %i.ei = shufflevector <16 x i1> %i.ds, <16 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = and <8 x i1> %i.ei, %i.dv             ; 2 uses
  %i.ej = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <16 x i1> %i.ej, <16 x i1> %i.ds, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.el = shufflevector <8 x i1> %rdx.op, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op51 = and <4 x i1> %i.el, %i.dy
  %i.em = shufflevector <4 x i1> %rdx.op51, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <16 x i1> %i.em, <16 x i1> %i.ek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.eo = bitcast <16 x i1> %i.en to i16
  %i.ep = icmp eq i16 %i.eo, -1
  %op.rdx = select i1 %i.ep, i1 %i.eb, i1 false
  %i.eq = freeze i1 %op.rdx
  %i.er = and i1 %i.eq, %i.ee
  %op.rdx53 = and i1 %i.er, %i.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %op.rdx53, label %bb.am, label %tt_check_trickyness_family.exit.thread

bb.am:                                            ; preds = %tt_check_trickyness_sfnt_ids.exit.thread17, %tt_check_trickyness_sfnt_ids.exit
  br label %tt_check_trickyness_family.exit.thread

tt_check_trickyness_family.exit.thread:           ; preds = %bb.s, %bb.m, %bb.p, %bb.l, %bb.t, %bb.k, %bb.r, %bb.j, %bb.u, %bb.i, %bb.o, %bb.h, %bb.v, %bb.g, %bb.q, %bb.f, %bb.e, %bb.n, %tt_skip_pdffont_random_tag.exit.i, %bb.am, %tt_check_trickyness_sfnt_ids.exit, %tt_check_trickyness_sfnt_ids.exit.thread, %tt_check_trickyness_family.exit, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %tt_check_trickyness_sfnt_ids.exit.thread ], [ 1, %tt_check_trickyness_family.exit ], [ 0, %bb.am ], [ 1, %tt_check_trickyness_sfnt_ids.exit ], [ 1, %tt_skip_pdffont_random_tag.exit.i ], [ 1, %bb.n ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.q ], [ 1, %bb.g ], [ 1, %bb.v ], [ 1, %bb.h ], [ 1, %bb.o ], [ 1, %bb.i ], [ 1, %bb.u ], [ 1, %bb.j ], [ 1, %bb.r ], [ 1, %bb.k ], [ 1, %bb.t ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %bb.s ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_load_hdmx(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !496
  %i.g = call i32 %i.f(ptr noundef %0, i64 noundef 1751412088, ptr noundef %1, ptr noundef nonnull %i.b) #22
  %i.h = icmp ne i32 %i.g, 0
  %i.i = load i64, ptr %i.b, align 8              ; 2 uses
  %i.j = icmp ult i64 %i.i, 8
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 3 uses
  %i.l = call i32 @FT_Stream_ExtractFrame(ptr noundef nonnull %1, i64 noundef %i.i, ptr noundef nonnull %i.k) #22 ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !905  ; 8 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !224   ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !224   ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = or disjoint i32 %i.s, %i.v               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !224
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !224
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 16
  %i.ag = or disjoint i64 %i.af, %i.ab            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !224
end_hunk_1
