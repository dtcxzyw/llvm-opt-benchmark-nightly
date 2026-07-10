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
  %min.iters.check = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph270
  %i.cb = add i64 %i.bz, -1                       ; 2 uses
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp eq i64 %i.cc, 4294967295
  %i.ce = icmp ugt i64 %i.cb, 4294967295
  %i.cf = or i1 %i.cd, %i.ce
  br i1 %i.cf, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bz, 8589934588              ; 4 uses
  %2 = trunc i64 %n.vec to i32
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
  %.1169269.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph270 ], [ %2, %middle.block ]
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
  %i.gx = phi i64 [ %4, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.1169269 = phi i32 [ %3, %scalar.ph ], [ %.1169269.ph, %scalar.ph.preheader ]
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !223
  %i.ha = add nsw i64 %i.gz, 512
  %i.hb = lshr i64 %i.ha, 10
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.gx ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = trunc i64 %i.hb to i32
  %i.hf = add i32 %i.hd, %i.he
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !3
  %3 = add i32 %.1169269, 1                       ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.hg = icmp ugt i64 %i.bz, %4
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
