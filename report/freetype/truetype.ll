inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@tt_face_load_cvt:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !101
  %i.n = load i32, ptr %i.a, align 4, !tbaa !187  ; 2 uses
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.k, align 8, !tbaa !213
  %i.p = shl i64 %i.o, 1
  %i.q = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.p) #21 ; 3 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !187
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  %i.s = load i64, ptr %i.k, align 8, !tbaa !213  ; 2 uses
  %.idx = shl nuw nsw i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not28 = icmp eq i64 %i.s, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.027 = phi ptr [ %i.x, %.lr.ph ], [ %i.r, %bb.e ] ; 2 uses
  %i.u = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.v = sext i16 %i.u to i32
  %i.w = shl nsw i32 %i.v, 6
  store i32 %i.w, ptr %.027, align 4, !tbaa !187
  %i.x = getelementptr inbounds nuw i8, ptr %.027, i64 4 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.t
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !651

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1201
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !487
  %.not26 = icmp eq i8 %i.aa, 0
  br i1 %.not26, label %._crit_edge._crit_edge, label %bb.f

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 4, !tbaa !187
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ab = call fastcc i32 @tt_face_vary_cvt(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge._crit_edge, %bb.f, %bb.d, %bb.c, %bb.b
  %i.ac = phi i32 [ %.pre, %._crit_edge._crit_edge ], [ %i.ab, %bb.f ], [ %i.q, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_vary_cvt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !187
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %.not183 = icmp eq ptr %i.j, null
  br i1 %.not183, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !492
  %i.m = call i32 %i.l(ptr noundef nonnull %0, i64 noundef 1668702578, ptr noundef nonnull %1, ptr noundef nonnull %i.b) #21
  %.not184 = icmp eq i32 %i.m, 0
  br i1 %.not184, label %bb.d, label %bb.ah

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !tbaa !226
  %i.o = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.n) #21 ; 2 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !187
  %.not185 = icmp eq i32 %i.o, 0
  br i1 %.not185, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !560
  %i.r = load ptr, ptr %1, align 8, !tbaa !652
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = call i32 @FT_Stream_GetULong(ptr noundef nonnull %1) #21
  %.not186 = icmp eq i32 %i.v, 65536
  br i1 %.not186, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !tbaa !187
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.w = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21 ; 2 uses
  %i.x = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.y = zext i16 %i.x to i64                     ; 2 uses
  %i.z = and i16 %i.w, 4095                       ; 2 uses
  %i.aa = zext nneg i16 %i.z to i32               ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 2
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, %i.y
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !226
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.ag = add i64 %i.u, %i.y                      ; 3 uses
  %.not187 = icmp sgt i16 %i.w, -1
  br i1 %.not187, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !560
  %i.ai = load ptr, ptr %1, align 8, !tbaa !652   ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !624 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.ak
  %i.aq = icmp ult i64 %i.ag, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  %i.as = select i1 %i.aq, ptr %i.ar, ptr %i.an
  store ptr %i.as, ptr %i.p, align 8, !tbaa !560
  %i.at = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %1, ptr noundef %i.d)
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !560
  %i.av = load ptr, ptr %1, align 8, !tbaa !652   ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !624 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.ax
  %i.bc = icmp ult i64 %i.al, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.al
  %i.be = select i1 %i.bc, ptr %i.bd, ptr %i.az
  store ptr %i.be, ptr %i.p, align 8, !tbaa !560
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0169 = phi i64 [ %i.ay, %bb.j ], [ %i.ag, %bb.i ]
  %.0164 = phi ptr [ %i.at, %bb.j ], [ null, %bb.i ] ; 3 uses
  %i.bf = load i32, ptr %i.h, align 8, !tbaa !466
  %i.bg = mul i32 %i.bf, 3
  %i.bh = zext i32 %i.bg to i64
  %i.bi = call ptr @ft_mem_qrealloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.bh, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 5 uses
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !187
  %.not188 = icmp eq i32 %i.bj, 0
  br i1 %.not188, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 6 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !213
  %i.bm = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.bl, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 7 uses
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !187
  %.not189 = icmp eq i32 %i.bn, 0
  br i1 %.not189, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.h, align 8, !tbaa !466
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp ; 2 uses
  %.not221 = icmp eq i16 %i.z, 0
  br i1 %.not221, label %.preheader, label %.lr.ph218

.lr.ph218:                                        ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bv = load i32, ptr %i.d, align 4             ; 2 uses
  br label %bb.n

.preheader:                                       ; preds = %bb.ac, %bb.m
  %i.bw = load i64, ptr %i.bk, align 8, !tbaa !213 ; 6 uses
  %.not227 = icmp eq i64 %i.bw, 0
  br i1 %.not227, label %._crit_edge, label %.lr.ph220

.lr.ph220:                                        ; preds = %.preheader
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !101 ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph220
  %i.by = add i64 %i.bw, -1                       ; 2 uses
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = icmp eq i64 %i.bz, 4294967295
  %i.cb = icmp ugt i64 %i.by, 4294967295
  %i.cc = or i1 %i.ca, %i.cb
  br i1 %i.cc, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bw, 8589934588              ; 4 uses
  %2 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x i64>, ptr %i.cd, align 8, !tbaa !226
  %wide.load265 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !226
  %i.cf = add nsw <2 x i64> %wide.load, splat (i64 512)
  %i.cg = add nsw <2 x i64> %wide.load265, splat (i64 512)
  %i.ch = lshr <2 x i64> %i.cf, splat (i64 10)
  %i.ci = lshr <2 x i64> %i.cg, splat (i64 10)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %wide.load266 = load <2 x i32>, ptr %i.cj, align 4, !tbaa !187
  %wide.load267 = load <2 x i32>, ptr %i.ck, align 4, !tbaa !187
  %i.cl = trunc <2 x i64> %i.ch to <2 x i32>
  %i.cm = trunc <2 x i64> %i.ci to <2 x i32>
  %i.cn = add <2 x i32> %wide.load266, %i.cl
  %i.co = add <2 x i32> %wide.load267, %i.cm
  store <2 x i32> %i.cn, ptr %i.cj, align 4, !tbaa !187
  store <2 x i32> %i.co, ptr %i.ck, align 4, !tbaa !187
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !653

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph220, %middle.block
  %indvars.iv240.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph220 ], [ %n.vec, %middle.block ]
  %.1168219.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph220 ], [ %2, %middle.block ]
  br label %scalar.ph

bb.n:                                             ; preds = %.lr.ph218, %bb.ac
  %.0167217 = phi i32 [ 0, %.lr.ph218 ], [ %i.gk, %bb.ac ]
  %.1170216 = phi i64 [ %.0169, %.lr.ph218 ], [ %.2171.ph, %bb.ac ] ; 3 uses
  %i.cq = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.cr = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21 ; 3 uses
  %i.cs = zext i16 %i.cr to i32                   ; 3 uses
  %.not190 = icmp sgt i16 %i.cr, -1
  br i1 %.not190, label %bb.o, label %.preheader205

.preheader205:                                    ; preds = %bb.n
  %i.ct = load i32, ptr %i.h, align 8, !tbaa !466
  %.not222 = icmp eq i32 %i.ct, 0
  br i1 %.not222, label %.loopexit203, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader205, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader205 ] ; 2 uses
  %i.cu = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.cv = sext i16 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !226
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.h, align 8, !tbaa !466 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %.lr.ph, label %.loopexit206, !llvm.loop !654

bb.o:                                             ; preds = %bb.n
  %i.db = and i32 %i.cs, 4095                     ; 2 uses
  %i.dc = load i32, ptr %i.bs, align 8, !tbaa !631
  %i.dd = icmp ult i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.p, label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.de = load ptr, ptr %i.bt, align 8, !tbaa !610
  %i.df = load i32, ptr %i.h, align 8, !tbaa !466 ; 2 uses
  %i.dg = mul i32 %i.df, %i.db
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  br label %.loopexit206

.loopexit206:                                     ; preds = %.lr.ph, %bb.p
  %i.dj = phi i32 [ %i.df, %bb.p ], [ %i.cy, %.lr.ph ]
  %.0165 = phi ptr [ %i.di, %bb.p ], [ %i.bi, %.lr.ph ] ; 3 uses
  %i.dk = and i32 %i.cs, 16384
  %.not191 = icmp eq i32 %i.dk, 0
  %.not223 = icmp eq i32 %i.dj, 0
  %or.cond262 = select i1 %.not191, i1 true, i1 %.not223
  br i1 %or.cond262, label %.loopexit203, label %.lr.ph209

.preheader202:                                    ; preds = %.lr.ph209
  %i.dl = icmp eq i32 %i.dq, 0
  br i1 %i.dl, label %.loopexit203, label %.lr.ph211

.lr.ph209:                                        ; preds = %.loopexit206, %.lr.ph209
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %.lr.ph209 ], [ 0, %.loopexit206 ] ; 2 uses
  %i.dm = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.dn = sext i16 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 2
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv230
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !226
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.dq = load i32, ptr %i.h, align 8, !tbaa !466 ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = icmp samesign ult i64 %indvars.iv.next231, %i.dr
  br i1 %i.ds, label %.lr.ph209, label %.preheader202, !llvm.loop !655

.lr.ph211:                                        ; preds = %.preheader202, %.lr.ph211
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %.lr.ph211 ], [ 0, %.preheader202 ] ; 2 uses
  %i.dt = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.du = sext i16 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 2
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv233
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !226
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.dx = load i32, ptr %i.h, align 8, !tbaa !466
  %i.dy = zext i32 %i.dx to i64
  %i.dz = icmp samesign ult i64 %indvars.iv.next234, %i.dy
  br i1 %i.dz, label %.lr.ph211, label %.loopexit203, !llvm.loop !656

.loopexit203:                                     ; preds = %.lr.ph211, %.preheader205, %.preheader202, %.loopexit206
  %.0165254 = phi ptr [ %.0165, %.loopexit206 ], [ %i.bi, %.preheader205 ], [ %.0165, %.preheader202 ], [ %.0165, %.lr.ph211 ]
  %i.ea = call fastcc i64 @ft_var_apply_tuple(ptr noundef %i.h, i16 noundef zeroext %i.cr, ptr noundef %.0165254, ptr noundef %i.bq, ptr noundef %i.br) ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %.loopexit203
  %i.ec = load ptr, ptr %i.p, align 8, !tbaa !560
  %i.ed = load ptr, ptr %1, align 8, !tbaa !652   ; 2 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = load ptr, ptr %i.bu, align 8, !tbaa !624 ; 2 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.ef
  %i.ek = icmp ult i64 %.1170216, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.1170216
  %i.em = select i1 %i.ek, ptr %i.el, ptr %i.eh
  store ptr %i.em, ptr %i.p, align 8, !tbaa !560
  %i.en = and i32 %i.cs, 8192
  %.not192 = icmp eq i32 %i.en, 0
  br i1 %.not192, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eo = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %1, ptr noundef %i.c) ; 2 uses
  %.pr = load i32, ptr %i.c, align 4, !tbaa !187
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i32 %i.bv, ptr %i.c, align 4, !tbaa !187
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ep = phi i32 [ %i.bv, %bb.s ], [ %.pr, %bb.r ] ; 3 uses
  %.0163 = phi ptr [ null, %bb.s ], [ %i.eo, %bb.r ] ; 2 uses
  %.0162 = phi ptr [ %.0164, %bb.s ], [ %i.eo, %bb.r ] ; 3 uses
  %i.eq = icmp eq i32 %i.ep, 0                    ; 2 uses
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.er = load i64, ptr %i.bk, align 8, !tbaa !213
  %i.es = trunc i64 %i.er to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.et = phi i32 [ %i.es, %bb.u ], [ %i.ep, %bb.t ]
  %i.eu = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %1, i32 noundef %i.et) ; 4 uses
  %i.ev = icmp ne ptr %.0162, null
  %i.ew = icmp ne ptr %i.eu, null
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.ex = icmp eq ptr %.0162, inttoptr (i64 -1 to ptr)
  br i1 %i.ex, label %.preheader199, label %.preheader200

.preheader200:                                    ; preds = %bb.w
  br i1 %i.eq, label %.loopexit, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %.preheader200
  %wide.trip.count = zext i32 %i.ep to i64
  br label %.lr.ph213

.preheader199:                                    ; preds = %bb.w
  %i.ey = load i64, ptr %i.bk, align 8, !tbaa !213
  %.not226 = icmp eq i64 %i.ey, 0
  br i1 %.not226, label %.loopexit, label %.lr.ph215

.lr.ph215:                                        ; preds = %.preheader199, %.lr.ph215
  %i.ez = phi i64 [ %i.fl, %.lr.ph215 ], [ 0, %.preheader199 ] ; 2 uses
  %.3214 = phi i32 [ %i.fk, %.lr.ph215 ], [ 0, %.preheader199 ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !226
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ez
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !226
  %i.fe = mul i64 %i.fd, %i.ea                    ; 2 uses
  %i.ff = ashr i64 %i.fe, 63
  %i.fg = add i64 %i.fe, 32768
  %i.fh = add i64 %i.fg, %i.ff
  %i.fi = ashr i64 %i.fh, 16
  %i.fj = add nsw i64 %i.fi, %i.fb
  store i64 %i.fj, ptr %i.fa, align 8, !tbaa !226
  %i.fk = add i32 %.3214, 1                       ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = load i64, ptr %i.bk, align 8, !tbaa !213
  %i.fn = icmp ugt i64 %i.fm, %i.fl
  br i1 %i.fn, label %.lr.ph215, label %.loopexit, !llvm.loop !657

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.y
  %indvars.iv236 = phi i64 [ 0, %.lr.ph213.preheader ], [ %indvars.iv.next237, %bb.y ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.0162, i64 %indvars.iv236
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !155
  %i.fq = zext i16 %i.fp to i64                   ; 2 uses
  %i.fr = load i64, ptr %i.bk, align 8, !tbaa !213
  %.not193 = icmp ugt i64 %i.fr, %i.fq
  br i1 %.not193, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph213
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.fq ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !226
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv236
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !226
  %i.fw = mul i64 %i.fv, %i.ea                    ; 2 uses
  %i.fx = ashr i64 %i.fw, 63
  %i.fy = add i64 %i.fw, 32768
  %i.fz = add i64 %i.fy, %i.fx
  %i.ga = ashr i64 %i.fz, 16
  %i.gb = add nsw i64 %i.ga, %i.ft
  store i64 %i.gb, ptr %i.fs, align 8, !tbaa !226
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph213, %bb.x
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph213, !llvm.loop !658

.loopexit:                                        ; preds = %bb.y, %.lr.ph215, %.preheader200, %.preheader199, %bb.v
  %.not194 = icmp eq ptr %.0163, inttoptr (i64 -1 to ptr)
  br i1 %.not194, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.0163) #21
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %bb.z
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.eu) #21
  %i.gc = load ptr, ptr %i.bu, align 8, !tbaa !624 ; 2 uses
  %i.gd = load ptr, ptr %1, align 8, !tbaa !652   ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = icmp ult i64 %i.eg, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.eg
  %i.gj = select i1 %i.gh, ptr %i.gi, ptr %i.gc
  store ptr %i.gj, ptr %i.p, align 8, !tbaa !560
  br label %bb.ac

bb.ab:                                            ; preds = %bb.o
  store i32 8, ptr %i.a, align 4, !tbaa !187
  br label %bb.ad

bb.ac:                                            ; preds = %.loopexit203, %bb.aa
  %.pn = zext i16 %i.cq to i64
  %.2171.ph = add i64 %.1170216, %.pn
  %i.gk = add nuw nsw i32 %.0167217, 1            ; 2 uses
  %exitcond239.not = icmp eq i32 %i.gk, %i.aa
  br i1 %exitcond239.not, label %.preheader, label %bb.n, !llvm.loop !659

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv240 = phi i64 [ %4, %scalar.ph ], [ %indvars.iv240.ph, %scalar.ph.preheader ] ; 2 uses
  %.1168219 = phi i32 [ %3, %scalar.ph ], [ %.1168219.ph, %scalar.ph.preheader ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv240
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !226
  %i.gn = add nsw i64 %i.gm, 512
  %i.go = lshr i64 %i.gn, 10
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv240 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !187
  %i.gr = trunc i64 %i.go to i32
  %i.gs = add i32 %i.gq, %i.gr
  store i32 %i.gs, ptr %i.gp, align 4, !tbaa !187
  %3 = add i32 %.1168219, 1                       ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.gt = icmp ugt i64 %i.bw, %4
  br i1 %i.gt, label %scalar.ph, label %._crit_edge, !llvm.loop !660

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gv = call i32 @FT_List_Iterate(ptr noundef nonnull %i.gu, ptr noundef nonnull @tt_cvt_ready_iterator, ptr noundef null) #21 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.k, %bb.l, %._crit_edge
  %.0161 = phi ptr [ null, %bb.k ], [ %i.bm, %bb.l ], [ %i.bm, %bb.ab ], [ %i.bm, %._crit_edge ]
  %.not195 = icmp eq ptr %.0164, inttoptr (i64 -1 to ptr)
  br i1 %.not195, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.0164) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.0161) #21
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.bi) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.h, %bb.f
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #21
  %i.gw = load i32, ptr %i.a, align 4, !tbaa !187
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.ag
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.gw, %bb.ag ], [ 0, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #4

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare hidden zeroext i16 @FT_Stream_GetUShort(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_GetULong(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ft_var_readpackedpoints(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %1, align 4, !tbaa !187
  %i.d = tail call zeroext i8 @FT_Stream_GetByte(ptr noundef %0) #21 ; 3 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = icmp eq i8 %i.d, 0
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw nsw i32 %i.e, 8
  %i.h = and i32 %i.g, 32512
  %i.i = tail call zeroext i8 @FT_Stream_GetByte(ptr noundef nonnull %0) #21
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.h, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.067 = phi i32 [ %i.k, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  %i.l = zext nneg i32 %.067 to i64
  %i.m = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 2, i64 noundef 0, i64 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 10 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !187
  %.not72 = icmp eq i32 %i.n, 0
  br i1 %.not72, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !560  ; 2 uses
  %.not98 = icmp eq i32 %.067, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !624  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph96, %.loopexit
  %.095 = phi ptr [ %i.p, %.lr.ph96 ], [ %.3, %.loopexit ] ; 5 uses
  %.05694 = phi i16 [ 0, %.lr.ph96 ], [ %.359, %.loopexit ] ; 6 uses
  %.06293 = phi i32 [ 0, %.lr.ph96 ], [ %.365, %.loopexit ] ; 10 uses
  %.not73 = icmp ult ptr %.095, %i.r
  br i1 %.not73, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.095, i64 1 ; 8 uses
  %i.u = load i8, ptr %.095, align 1, !tbaa !227  ; 2 uses
  %i.v = and i8 %i.u, 127
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = add nuw nsw i32 %i.w, 1
  %i.y = sub nsw i32 %.067, %.06293               ; 2 uses
  %.not74 = icmp ugt i32 %i.y, %i.w
  %spec.select = select i1 %.not74, i32 %i.x, i32 %i.y ; 10 uses
  %.not75 = icmp sgt i8 %i.u, -1
  br i1 %.not75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = shl nuw nsw i32 %spec.select, 1
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = sub i64 %i.s, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp ugt i32 %i.z, %i.ac
  br i1 %i.ad, label %bb.j, label %.preheader76

.preheader76:                                     ; preds = %bb.h
  %.not99 = icmp eq i32 %spec.select, 0
  br i1 %.not99, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader76
  %i.ae = add nsw i32 %spec.select, %.06293       ; 3 uses
  %xtraiter = and i32 %spec.select, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.095, i64 3 ; 2 uses
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !227
  %i.ah = zext i8 %i.ag to i16
  %i.ai = shl nuw i16 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.095, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !227
  %i.al = zext i8 %i.ak to i16
  %i.am = or disjoint i16 %i.ai, %i.al
  %i.an = add i16 %i.am, %.05694                  ; 3 uses
  %i.ao = add i32 %.06293, 1
  %i.ap = zext i32 %.06293 to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ap
  store i16 %i.an, ptr %i.aq, align 2, !tbaa !155
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa119.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.lcssa.unr = phi i16 [ poison, %.lr.ph.preheader ], [ %i.an, %.lr.ph.prol ]
  %.182.unr = phi ptr [ %i.t, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.15781.unr = phi i16 [ %.05694, %.lr.ph.preheader ], [ %i.an, %.lr.ph.prol ]
  %.16379.unr = phi i32 [ %.06293, %.lr.ph.preheader ], [ %i.ao, %.lr.ph.prol ]
  %i.ar = icmp eq i32 %spec.select, 1
  br i1 %i.ar, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.182 = phi ptr [ %i.be, %.lr.ph ], [ %.182.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.15781 = phi i16 [ %i.bm, %.lr.ph ], [ %.15781.unr, %.lr.ph.prol.loopexit ]
  %.16379 = phi i32 [ %i.bn, %.lr.ph ], [ %.16379.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.182, i64 2
  %i.at = load i8, ptr %.182, align 1, !tbaa !227
  %i.au = zext i8 %i.at to i16
  %i.av = shl nuw i16 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.182, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !227
  %i.ay = zext i8 %i.ax to i16
  %i.az = or disjoint i16 %i.av, %i.ay
  %i.ba = add i16 %i.az, %.15781                  ; 2 uses
  %i.bb = add i32 %.16379, 1
  %i.bc = zext i32 %.16379 to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bc
  store i16 %i.ba, ptr %i.bd, align 2, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.182, i64 4 ; 2 uses
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !227
  %i.bg = zext i8 %i.bf to i16
  %i.bh = shl nuw i16 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.182, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !227
  %i.bk = zext i8 %i.bj to i16
  %i.bl = or disjoint i16 %i.bh, %i.bk
  %i.bm = add i16 %i.bl, %i.ba                    ; 3 uses
  %i.bn = add i32 %.16379, 2                      ; 2 uses
  %i.bo = zext i32 %i.bb to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bo
  store i16 %i.bm, ptr %i.bp, align 2, !tbaa !155
  %exitcond.not.1 = icmp eq i32 %i.bn, %i.ae
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !661

bb.i:                                             ; preds = %bb.g
  %i.bq = ptrtoint ptr %i.t to i64
  %i.br = sub i64 %i.s, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp ugt i32 %spec.select, %i.bs
  br i1 %i.bt, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.not100 = icmp eq i32 %spec.select, 0
end_hunk_0
