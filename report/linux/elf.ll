inline.NumInlined: 281
inline.NumDeleted: 69
begin_hunk_0_@jhash:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0114.lcssa = phi i32 [ %1, %bb.a ], [ %i.af, %.lr.ph ]
  %.0110.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.aa, %.lr.ph ] ; 4 uses
  %.0102.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.ae, %.lr.ph ] ; 8 uses
  %.0101.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.ad, %.lr.ph ] ; 13 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.ag, %.lr.ph ] ; 12 uses
  switch i32 %.0114.lcssa, label %bb.n [
    i32 12, label %bb.b
    i32 11, label %bb.c
    i32 10, label %bb.d
    i32 9, label %bb.e
    i32 8, label %bb.f
    i32 7, label %bb.g
    i32 6, label %bb.h
    i32 5, label %bb.i
    i32 4, label %bb.j
    i32 3, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw i32 %i.ak, 24
  %i.am = add i32 %i.al, %.0101.lcssa
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i32 [ %i.am, %bb.b ], [ %.0101.lcssa, %._crit_edge ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 10
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 16
  %i.ar = add i32 %i.aq, %.1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.2 = phi i32 [ %i.ar, %bb.c ], [ %.0101.lcssa, %._crit_edge ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = add i32 %i.av, %.2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.3 = phi i32 [ %i.aw, %bb.d ], [ %.0101.lcssa, %._crit_edge ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = zext i8 %i.ay to i32
  %i.ba = add i32 %.3, %i.az
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.4 = phi i32 [ %i.ba, %bb.e ], [ %.0101.lcssa, %._crit_edge ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 7
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw i32 %i.bd, 24
  %i.bf = add i32 %i.be, %.0102.lcssa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.1103 = phi i32 [ %i.bf, %bb.f ], [ %.0102.lcssa, %._crit_edge ]
  %.5 = phi i32 [ %.4, %bb.f ], [ %.0101.lcssa, %._crit_edge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 16
  %i.bk = add i32 %i.bj, %.1103
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.2104 = phi i32 [ %i.bk, %bb.g ], [ %.0102.lcssa, %._crit_edge ]
  %.6 = phi i32 [ %.5, %bb.g ], [ %.0101.lcssa, %._crit_edge ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = add i32 %i.bo, %.2104
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.3105 = phi i32 [ %i.bp, %bb.h ], [ %.0102.lcssa, %._crit_edge ]
  %.7 = phi i32 [ %.6, %bb.h ], [ %.0101.lcssa, %._crit_edge ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = zext i8 %i.br to i32
  %i.bt = add i32 %.3105, %i.bs
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.4106 = phi i32 [ %i.bt, %bb.i ], [ %.0102.lcssa, %._crit_edge ]
  %.8 = phi i32 [ %.7, %bb.i ], [ %.0101.lcssa, %._crit_edge ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw i32 %i.bw, 24
  %i.by = add i32 %i.bx, %.0110.lcssa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.1111 = phi i32 [ %i.by, %bb.j ], [ %.0110.lcssa, %._crit_edge ]
  %.5107 = phi i32 [ %.4106, %bb.j ], [ %.0102.lcssa, %._crit_edge ]
  %.9 = phi i32 [ %.8, %bb.j ], [ %.0101.lcssa, %._crit_edge ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 16
  %i.cd = add i32 %i.cc, %.1111
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.2112 = phi i32 [ %i.cd, %bb.k ], [ %.0110.lcssa, %._crit_edge ]
  %.6108 = phi i32 [ %.5107, %bb.k ], [ %.0102.lcssa, %._crit_edge ]
  %.10 = phi i32 [ %.9, %bb.k ], [ %.0101.lcssa, %._crit_edge ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = add i32 %i.ch, %.2112
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.3113 = phi i32 [ %i.ci, %bb.l ], [ %.0110.lcssa, %._crit_edge ]
  %.7109 = phi i32 [ %.6108, %bb.l ], [ %.0102.lcssa, %._crit_edge ] ; 4 uses
  %.11 = phi i32 [ %.10, %bb.l ], [ %.0101.lcssa, %._crit_edge ]
  %i.cj = load i8, ptr %.0.lcssa, align 1, !tbaa !16
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add i32 %.3113, %i.ck
  %i.cm = xor i32 %.11, %.7109
  %i.cn = tail call noundef i32 @llvm.fshl.i32(i32 %.7109, i32 %.7109, i32 14)
  %i.co = sub i32 %i.cm, %i.cn                    ; 4 uses
  %i.cp = xor i32 %i.cl, %i.co
  %i.cq = tail call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 11)
  %i.cr = sub i32 %i.cp, %i.cq                    ; 4 uses
  %i.cs = xor i32 %i.cr, %.7109
  %i.ct = tail call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cr, i32 25)
  %i.cu = sub i32 %i.cs, %i.ct                    ; 4 uses
  %i.cv = xor i32 %i.cu, %i.co
  %i.cw = tail call noundef i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.cu, i32 16)
  %i.cx = sub i32 %i.cv, %i.cw                    ; 4 uses
  %i.cy = xor i32 %i.cx, %i.cr
  %i.cz = tail call noundef i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.cx, i32 4)
  %i.da = sub i32 %i.cy, %i.cz                    ; 3 uses
  %i.db = xor i32 %i.da, %i.cu
  %i.dc = tail call noundef i32 @llvm.fshl.i32(i32 %i.da, i32 %i.da, i32 14)
  %i.dd = sub i32 %i.db, %i.dc                    ; 3 uses
  %i.de = xor i32 %i.dd, %i.cx
  %i.df = tail call noundef i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 24)
  %i.dg = sub i32 %i.de, %i.df
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.12 = phi i32 [ %.0101.lcssa, %._crit_edge ], [ %i.dg, %bb.m ]
  ret i32 %.12
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @demangled_name_len(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.44) #22 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.45, i64 noundef 12) #22
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #22
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 3 uses
  %.02535 = add i64 %i.i, -1                      ; 2 uses
  %i.j = icmp sgt i64 %.02535, -1
  br i1 %i.j, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.f
  %i.k = tail call ptr @__ctype_b_loc() #23
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.02537 = phi i64 [ %.02535, %.lr.ph ], [ %.025, %.backedge ] ; 4 uses
  %.025.in36 = phi i64 [ %i.i, %.lr.ph ], [ %.02537, %.backedge ] ; 2 uses
  %1 = getelementptr i8, ptr %0, i64 %.025.in36
  %i.m = getelementptr i8, ptr %1, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  %i.o = sext i8 %i.n to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !20
  %.fr28 = freeze i16 %i.q
  %i.r = and i16 %.fr28, 2048
  %.not38 = icmp eq i16 %i.r, 0
  br i1 %.not38, label %switch.early.test, label %.backedge

.backedge:                                        ; preds = %bb.g, %switch.early.test, %switch.early.test
  %.025 = add nsw i64 %.02537, -1
  %i.s = icmp sgt i64 %.02537, 0
  br i1 %i.s, label %bb.g, label %.thread

switch.early.test:                                ; preds = %bb.g
  switch i8 %i.n, label %bb.h [
    i8 95, label %.backedge
    i8 46, label %.backedge
  ]

bb.h:                                             ; preds = %switch.early.test
  %i.t = icmp eq i64 %.02537, 0
  br i1 %i.t, label %.thread, label %bb.i

.thread:                                          ; preds = %.backedge, %bb.f, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread, %bb.e, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.i, %.thread ], [ %i.h, %bb.e ], [ %.025.in36, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @find_section_by_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #22
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call fastcc i32 @jhash(ptr noundef nonnull readonly %1, i32 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %i.h = mul i32 %i.e, 1640531527
  %i.i = sub i32 32, %i.g
  %i.j = lshr i32 %i.h, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %.pn = phi ptr [ %i.q, %select.unfold ], [ %i.m, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pn, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %1) #22
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %select.unfold._crit_edge.loopexit.split.loop.exit30, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph
  %i.q = load ptr, ptr %.pn, align 8, !tbaa !46   ; 2 uses
  %.not24 = icmp eq ptr %i.q, null
  br i1 %.not24, label %select.unfold._crit_edge, label %.lr.ph

select.unfold._crit_edge.loopexit.split.loop.exit30: ; preds = %.lr.ph
  %.01928.le = getelementptr inbounds i8, ptr %.pn, i64 -24
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold._crit_edge.loopexit.split.loop.exit30, %select.unfold, %bb.a
  %.019.lcssa = phi ptr [ null, %bb.a ], [ %.01928.le, %select.unfold._crit_edge.loopexit.split.loop.exit30 ], [ null, %select.unfold ]
  ret ptr %.019.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @str_hash(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call fastcc i32 @jhash(ptr noundef nonnull %0, i32 noundef %i.b)
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @find_symbol_by_offset(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48
  %i.e = icmp ult i64 %i.d, %1
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr i8, ptr %i.g, i64 96
  %.val.i = load i64, ptr %i.h, align 8, !tbaa !55
  %i.i = icmp ugt i64 %.val.i, %1
  br i1 %i.i, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i.backedge
  %.pn.i.pn.i = phi ptr [ %.pn.i.pn.i.be, %.preheader.i.backedge ], [ %i.b, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn.i.pn.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %.not19.i.i = icmp ugt i64 %1, %i.m
  br i1 %.not19.i.i, label %bb.e, label %.preheader.i.backedge

bb.e:                                             ; preds = %bb.d, %.preheader.i
  %i.n = getelementptr i8, ptr %.pn.i.pn.i, i64 96
  %.2.val.i.i = load i64, ptr %i.n, align 8, !tbaa !55 ; 2 uses
  %.not20.i.i = icmp ugt i64 %.2.val.i.i, %1
  br i1 %.not20.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.pn.i.pn.i, i64 92
  %.2.val22.i.i = load i32, ptr %i.o, align 4, !tbaa !57
  %narrow.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.2.val22.i.i, i32 1)
  %i.p = zext i32 %narrow.i.i.i to i64
  %i.q = add i64 %.2.val.i.i, %i.p
  %.not21.i.i = icmp ugt i64 %1, %i.q
  br i1 %.not21.i.i, label %bb.g, label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.pn.i.pn.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.g, %bb.d
  %.pn.i.pn.i.be = phi ptr [ %i.k, %bb.d ], [ %i.s, %bb.g ]
  br label %.preheader.i

.lr.ph.preheader:                                 ; preds = %bb.f
  %.016.i.le.i = getelementptr inbounds i8, ptr %.pn.i.pn.i, i64 -32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.036 = phi ptr [ %.016.i.le.i, %.lr.ph.preheader ], [ %.036.be, %.lr.ph.backedge ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.036, i64 128
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  %i.v = icmp eq i64 %i.u, %1
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr i8, ptr %.036, i64 177
  %.0.val = load i8, ptr %i.w, align 1, !tbaa !59
  %i.x = icmp eq i8 %.0.val, 3
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.036, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.036, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %bb.j
  %.028.i = phi ptr [ %i.ab, %bb.j ], [ %i.au, %bb.s ] ; 3 uses
  %.025.i = phi ptr [ %.036, %bb.j ], [ %i.as, %bb.s ]
  %.not.i13 = icmp eq ptr %.028.i, null
  br i1 %.not.i13, label %__sym_subtree_search.exit.thread.i.preheader, label %bb.l

__sym_subtree_search.exit.thread.i.preheader:     ; preds = %bb.l, %bb.k
  br label %__sym_subtree_search.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.028.i, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48
  %.not32.i = icmp ugt i64 %1, %i.ad
  br i1 %.not32.i, label %__sym_subtree_search.exit.thread.i.preheader, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.l, %.preheader.i14.backedge
  %.028.pn.i = phi ptr [ %.028.pn.i.be, %.preheader.i14.backedge ], [ %.028.i, %bb.l ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.028.pn.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.af, null
  br i1 %.not.i.i15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.i14
end_hunk_0
