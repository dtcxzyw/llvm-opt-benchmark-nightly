inline.NumInlined: 160
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dt_history_item_get_name
declare ptr @dt_history_item_get_name(ptr noundef) local_unnamed_addr #2

declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @g_hash_table_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @dt_iop_get_instance_id(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load i32, ptr %i.a, align 16, !tbaa !45
  %narrow = tail call i32 @llvm.smin.i32(i32 %i.b, i32 7)
  %spec.select = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @__const.dt_iop_get_instance_id.ids, i64 %spec.select
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_iop_validate_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 12 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !102
  switch i32 %i.d, label %bb.x [
    i32 17, label %.preheader
    i32 18, label %bb.c
    i32 15, label %bb.e
    i32 2, label %bb.m
    i32 10, label %._crit_edge238
    i32 11, label %._crit_edge235
    i32 9, label %._crit_edge232
    i32 6, label %._crit_edge229
    i32 5, label %._crit_edge
    i32 4, label %bb.r
    i32 16, label %bb.v
    i32 14, label %bb.w
    i32 1, label %.thread185
  ]

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !102
  %.not218 = icmp eq i64 %i.f, 0
  br i1 %.not218, label %.thread185, label %.lr.ph216

.lr.ph216:                                        ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph216, %bb.b
  %indvars.iv225 = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next226, %bb.b ] ; 2 uses
  %.0134215 = phi i32 [ 1, %.lr.ph216 ], [ %i.l, %bb.b ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv225
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !370
  %i.k = tail call i32 @_iop_validate_params(ptr noundef %i.j, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %i.l = and i32 %i.k, %.0134215                  ; 2 uses
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !tbaa !102
  %i.n = icmp ugt i64 %i.m, %indvars.iv.next226
  br i1 %i.n, label %bb.b, label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = icmp ne i32 %2, 0
  %i.s = and i64 %i.p, 4294967295
  %indvars.iv.next223281 = add nsw i64 %i.s, -1   ; 2 uses
  %indvars282 = trunc i64 %indvars.iv.next223281 to i32 ; 2 uses
  %i.t = icmp sgt i32 %indvars282, -1
  br i1 %i.t, label %.lr.ph286, label %.thread176

bb.d:                                             ; preds = %.lr.ph286
  %indvars.iv.next223 = add nsw i64 %indvars.iv.next223283, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next223 to i32 ; 2 uses
  %i.u = icmp sgt i32 %indvars, -1
  br i1 %i.u, label %.lr.ph286, label %.thread176

.lr.ph286:                                        ; preds = %bb.c, %bb.d
  %indvars284 = phi i32 [ %indvars, %bb.d ], [ %indvars282, %bb.c ]
  %indvars.iv.next223283 = phi i64 [ %indvars.iv.next223, %bb.d ], [ %indvars.iv.next223281, %bb.c ] ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.w = and i64 %indvars.iv.next223283, 2147483647
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !370
  %i.z = icmp eq i32 %indvars284, 0
  %i.aa = and i1 %i.r, %i.z
  %i.ab = zext i1 %i.aa to i32
  %i.ac = tail call i32 @_iop_validate_params(ptr noundef %i.y, ptr noundef %1, i32 noundef %i.ab, ptr noundef %3)
  %.not166 = icmp eq i32 %i.ac, 0
  br i1 %.not166, label %bb.d, label %.thread185

bb.e:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !102
  %i.af = icmp eq i32 %i.ae, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !102 ; 2 uses
  br i1 %i.af, label %bb.f, label %.preheader203

.preheader203:                                    ; preds = %bb.e
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %.thread185, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader203
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.pre243 = load ptr, ptr %i.ai, align 8, !tbaa !102
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @memchr(ptr noundef %i.c, i32 noundef 0, i64 noundef %i.ah) #27
  %.not164 = icmp eq ptr %i.aj, null
  br i1 %.not164, label %bb.g, label %.thread185

bb.g:                                             ; preds = %bb.f
  %.not165 = icmp eq i32 %2, 0
  br i1 %.not165, label %.thread176.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !102
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.103, ptr noundef %3, ptr noundef %i.al) #24
  br label %.thread176.thread.sink.split

bb.i:                                             ; preds = %.lr.ph213, %bb.l
  %i.am = phi ptr [ %.pre243, %.lr.ph213 ], [ %i.at, %bb.l ]
  %indvars.iv = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.0137212 = phi i64 [ 0, %.lr.ph213 ], [ %i.aw, %bb.l ]
  %sext = shl i64 %.0137212, 32
  %i.an = ashr exact i64 %sext, 32                ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.ap = tail call i32 @_iop_validate_params(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef %2, ptr noundef %3)
  %.not162 = icmp eq i32 %i.ap, 0
  br i1 %.not162, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not163 = icmp eq i32 %2, 0
  br i1 %.not163, label %.thread176.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !102
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.104, ptr noundef %3, ptr noundef %i.as, i32 noundef %i.aq) #24
  br label %.thread176.thread.sink.split

bb.l:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !102 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !102
  %i.aw = add i64 %i.av, %i.an
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !102
  %i.ay = icmp ugt i64 %i.ax, %indvars.iv.next
  br i1 %i.ay, label %bb.i, label %.thread185

bb.m:                                             ; preds = %bb.a
  %i.az = load float, ptr %i.c, align 4, !tbaa !103 ; 6 uses
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.az) #30
  %or.cond = fcmp ueq float %i.ba, +inf
  %.phi.trans.insert241 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre242 = load float, ptr %.phi.trans.insert241, align 8, !tbaa !102 ; 3 uses
  br i1 %or.cond, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = fcmp reassoc nsz arcp contract afn ult float %i.az, %.pre242
  br i1 %i.bb, label %.thread174, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !102
  %i.be = fcmp reassoc nsz arcp contract afn ugt float %i.az, %i.bd
  br i1 %i.be, label %.thread174, label %.thread

.thread174:                                       ; preds = %bb.n, %bb.o
  %i.bf = fmul reassoc nsz arcp contract afn float %.pre242, f0x3F7FFF58
  %i.bg = fcmp reassoc nsz arcp contract afn ult float %i.az, %i.bf
  br i1 %i.bg, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread174
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !102
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, 1.000010e+00
  %i.bk = fcmp reassoc nsz arcp contract afn ugt float %i.az, %i.bj
  br i1 %i.bk, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %.thread

.thread:                                          ; preds = %bb.m, %.thread174, %bb.p, %bb.q, %bb.o
  %.1136 = phi ptr [ @.str.70, %bb.o ], [ @.str.106, %bb.q ], [ @.str.70, %bb.p ], [ @.str.70, %.thread174 ], [ @.str.70, %bb.m ]
  %.6 = phi i32 [ 1, %bb.o ], [ 1, %bb.q ], [ 0, %bb.p ], [ 0, %.thread174 ], [ 1, %bb.m ]
  %i.bl = fpext reassoc nsz arcp contract afn float %i.az to double
  %i.bm = fpext reassoc nsz arcp contract afn float %.pre242 to double
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %4 = load float, ptr %i.bn, align 4, !tbaa !102
  %5 = fpext reassoc nsz arcp contract afn float %4 to double
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %7 = load float, ptr %6, align 8, !tbaa !102
  %8 = fpext reassoc nsz arcp contract afn float %7 to double
  %i.bo = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.105, double noundef %i.bl, double noundef %i.bm, double noundef %5, double noundef %8, ptr noundef nonnull %.1136) #24
  br label %.loopexit

._crit_edge238:                                   ; preds = %bb.a
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !104 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !102 ; 2 uses
  %.not158 = icmp sge i32 %i.bp, %i.br
  %.phi.trans.insert239 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre240 = load i32, ptr %.phi.trans.insert239, align 4, !tbaa !102 ; 2 uses
  %i.bs = icmp sle i32 %i.bp, %.pre240
  %narrow274 = and i1 %.not158, %i.bs
  %i.bt = zext i1 %narrow274 to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !102
  %i.bw = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.107, i32 noundef %i.bp, i32 noundef %i.br, i32 noundef %.pre240, i32 noundef %i.bv) #24
  br label %.loopexit

._crit_edge235:                                   ; preds = %bb.a
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !104 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !102 ; 2 uses
  %.not157 = icmp uge i32 %i.bx, %i.bz
  %.phi.trans.insert236 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre237 = load i32, ptr %.phi.trans.insert236, align 4, !tbaa !102 ; 2 uses
  %i.ca = icmp ule i32 %i.bx, %.pre237
  %narrow273 = and i1 %.not157, %i.ca
  %i.cb = zext i1 %narrow273 to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !102
  %i.ce = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.108, i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %.pre237, i32 noundef %i.cd) #24
  br label %.loopexit

._crit_edge232:                                   ; preds = %bb.a
  %i.cf = load i16, ptr %i.c, align 2, !tbaa !105 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ch = load i16, ptr %i.cg, align 8, !tbaa !102 ; 2 uses
  %.not156 = icmp uge i16 %i.cf, %i.ch
  %.phi.trans.insert233 = getelementptr inbounds nuw i8, ptr %0, i64 66
  %.pre234 = load i16, ptr %.phi.trans.insert233, align 2, !tbaa !102 ; 2 uses
  %i.ci = icmp ule i16 %i.cf, %.pre234
  %narrow272 = and i1 %.not156, %i.ci
  %i.cj = zext i1 %narrow272 to i32
  %i.ck = zext i16 %i.cf to i32
  %i.cl = zext i16 %i.ch to i32
  %i.cm = zext i16 %.pre234 to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.co = load i16, ptr %i.cn, align 4, !tbaa !102
  %i.cp = zext i16 %i.co to i32
  %i.cq = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.108, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cm, i32 noundef %i.cp) #24
  br label %.loopexit

._crit_edge229:                                   ; preds = %bb.a
  %i.cr = load i8, ptr %i.c, align 1, !tbaa !102
  %i.cs = zext i8 %i.cr to i32                    ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !102
  %i.cv = sext i8 %i.cu to i32                    ; 2 uses
  %.not155 = icmp sge i32 %i.cs, %i.cv
  %.phi.trans.insert230 = getelementptr inbounds nuw i8, ptr %0, i64 65
  %.pre231 = load i8, ptr %.phi.trans.insert230, align 1, !tbaa !102
  %.pre244 = sext i8 %.pre231 to i32              ; 2 uses
  %i.cw = icmp sle i32 %i.cs, %.pre244
  %narrow271 = and i1 %.not155, %i.cw
  %i.cx = zext i1 %narrow271 to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !102
  %i.da = sext i8 %i.cz to i32
  %i.db = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.108, i32 noundef %i.cs, i32 noundef %i.cv, i32 noundef %.pre244, i32 noundef %i.da) #24
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.a
  %i.dc = load i8, ptr %i.c, align 1, !tbaa !102  ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !102 ; 2 uses
  %.not154 = icmp sge i8 %i.dc, %i.de
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 65
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !102 ; 2 uses
  %i.df = icmp sle i8 %i.dc, %.pre
  %narrow = and i1 %.not154, %i.df
  %i.dg = zext i1 %narrow to i32
  %i.dh = sext i8 %i.dc to i32
  %i.di = sext i8 %i.de to i32
  %i.dj = sext i8 %.pre to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !102
  %i.dm = sext i8 %i.dl to i32
  %i.dn = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.109, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef %i.dj, i32 noundef %i.dm) #24
  br label %.loopexit

bb.r:                                             ; preds = %bb.a
  %i.do = load float, ptr %i.c, align 4           ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = load float, ptr %i.dp, align 8
  %i.dr = fcmp reassoc nsz arcp contract afn ult float %i.do, %i.dq
  br i1 %i.dr, label %.thread176, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = load float, ptr %i.ds, align 8
  %i.du = fcmp reassoc nsz arcp contract afn ugt float %i.do, %i.dt
  br i1 %i.du, label %.thread176, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dw = load float, ptr %i.dv, align 4          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = fcmp reassoc nsz arcp contract afn ult float %i.dw, %i.dy
  br i1 %i.dz, label %.thread176, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.eb = load float, ptr %i.ea, align 4
  %i.ec = fcmp reassoc nsz arcp contract afn ole float %i.dw, %i.eb
  %i.ed = zext i1 %i.ec to i32
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !102 ; 3 uses
  %.not205 = icmp eq ptr %i.ef, null
  br i1 %.not205, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !371
  %.not153277 = icmp eq ptr %i.eg, null
  br i1 %.not153277, label %.critedge, label %.lr.ph279.preheader

.lr.ph279.preheader:                              ; preds = %.lr.ph.preheader
  %i.eh = load i32, ptr %i.c, align 4, !tbaa !104
  br label %.lr.ph279

.lr.ph:                                           ; preds = %.lr.ph279
  %i.ei = getelementptr inbounds nuw i8, ptr %.0206278, i64 24 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !371
  %.not153 = icmp eq ptr %i.ej, null
  br i1 %.not153, label %.critedge, label %.lr.ph279

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %.lr.ph
  %.0206278 = phi ptr [ %i.ei, %.lr.ph ], [ %i.ef, %.lr.ph279.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0206278, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !373
  %i.em = icmp eq i32 %i.el, %i.eh
  br i1 %i.em, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph279, %.lr.ph, %.lr.ph.preheader, %bb.v
  %.7 = phi i32 [ 0, %bb.v ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ], [ 1, %.lr.ph279 ]
  %i.en = load i32, ptr %i.c, align 4, !tbaa !104
  %i.eo = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.110, i32 noundef %i.en) #24
  br label %.loopexit

bb.w:                                             ; preds = %bb.a
  %i.ep = load i32, ptr %i.c, align 4, !tbaa !104
  %i.eq = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.110, i32 noundef %i.ep) #24
  br label %.thread185

bb.x:                                             ; preds = %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !102
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !102
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.111, ptr noundef %3, ptr noundef %i.es, ptr noundef %i.eu) #24
  br label %.thread176

.loopexit:                                        ; preds = %bb.b, %bb.u, %.critedge, %._crit_edge, %._crit_edge229, %._crit_edge232, %._crit_edge235, %._crit_edge238, %.thread
  %.0139 = phi ptr [ %i.cq, %._crit_edge232 ], [ %i.dn, %._crit_edge ], [ %i.db, %._crit_edge229 ], [ %i.eo, %.critedge ], [ %i.ce, %._crit_edge235 ], [ null, %bb.u ], [ %i.bo, %.thread ], [ %i.bw, %._crit_edge238 ], [ null, %bb.b ] ; 2 uses
  %.8 = phi i32 [ %i.cj, %._crit_edge232 ], [ %i.dg, %._crit_edge ], [ %i.cx, %._crit_edge229 ], [ %.7, %.critedge ], [ %i.cb, %._crit_edge235 ], [ %i.ed, %bb.u ], [ %.6, %.thread ], [ %i.bt, %._crit_edge238 ], [ %i.l, %bb.b ]
  %.not167 = icmp eq i32 %.8, 0
  br i1 %.not167, label %.thread176, label %.thread185

.thread185:                                       ; preds = %bb.l, %.lr.ph286, %.preheader, %.preheader203, %bb.w, %bb.f, %bb.a, %.loopexit
  %.0139189 = phi ptr [ %.0139, %.loopexit ], [ null, %bb.a ], [ null, %bb.f ], [ %i.eq, %bb.w ], [ null, %.preheader203 ], [ null, %.lr.ph286 ], [ null, %.preheader ], [ null, %bb.l ] ; 2 uses
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !49
  %i.ew = and i32 %i.ev, 16777216
  %.not171.not = icmp eq i32 %i.ew, 0
  br i1 %.not171.not, label %.thread176.thread, label %.thread176.thread.sink.split

.thread176:                                       ; preds = %bb.d, %bb.c, %bb.r, %bb.s, %bb.t, %bb.x, %.loopexit
  %.0139181 = phi ptr [ %.0139, %.loopexit ], [ null, %bb.x ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.t ], [ null, %bb.c ], [ null, %bb.d ] ; 2 uses
  %.not168 = icmp eq i32 %2, 0
  br i1 %.not168, label %.thread176.thread, label %.thread176.thread.sink.split

.thread176.thread.sink.split:                     ; preds = %.thread176, %bb.k, %bb.h, %.thread185
  %.0139181200.sink266 = phi ptr [ %.0139189, %.thread185 ], [ %.0139181, %.thread176 ], [ null, %bb.k ], [ null, %bb.h ] ; 3 uses
  %.str.114.sink = phi ptr [ @.str.112, %.thread185 ], [ @.str.114, %.thread176 ], [ @.str.114, %bb.k ], [ @.str.114, %bb.h ]
  %.8182.ph = phi i32 [ 1, %.thread185 ], [ 0, %.thread176 ], [ 0, %bb.k ], [ 0, %bb.h ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !102
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !102 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !102
  %.not169 = icmp eq i8 %i.fb, 0
  %i.fc = select i1 %.not169, ptr @.str.70, ptr @.str.113
  %.not170 = icmp eq ptr %.0139181200.sink266, null
  %i.fd = select i1 %.not170, ptr @.str.70, ptr %.0139181200.sink266
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull %.str.114.sink, ptr noundef %3, ptr noundef %i.ey, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fd) #24
  br label %.thread176.thread

.thread176.thread:                                ; preds = %.thread176.thread.sink.split, %bb.g, %bb.j, %.thread176, %.thread185
  %.8182 = phi i32 [ 0, %.thread176 ], [ 0, %bb.j ], [ 1, %.thread185 ], [ 0, %bb.g ], [ %.8182.ph, %.thread176.thread.sink.split ]
end_hunk_0
