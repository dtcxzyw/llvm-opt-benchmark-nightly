inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cmsysMD5_Initialize:bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cmsysMD5_Append(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]  ; 7 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 63                         ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 4 uses
  %i.h = icmp eq i64 %.0, 0
  br i1 %i.h, label %md5_append.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.tr.i = trunc i64 %.0 to i32
  %i.i = shl i32 %.tr.i, 3                        ; 2 uses
  %i.j = lshr i64 %.0, 29
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !tbaa !9
  %i.o = add i32 %i.i, %i.d                       ; 2 uses
  store i32 %i.o, ptr %0, align 4, !tbaa !9
  %i.p = icmp ult i32 %i.o, %i.i
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = add i32 %i.n, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %.0, %i.g
  %i.s = icmp ugt i64 %i.r, 64
  %i.t = sub nuw nsw i64 64, %i.g
  %i.u = select i1 %i.s, i64 %i.t, i64 %.0        ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.u, i1 false)
  %i.x = add i64 %i.u, %i.g
  %i.y = icmp ugt i64 %i.x, 63
  br i1 %i.y, label %bb.i, label %md5_append.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.aa = sub i64 %.0, %i.u
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.v)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.140.i = phi ptr [ %i.z, %bb.i ], [ %1, %bb.g ] ; 2 uses
  %.1.i = phi i64 [ %i.aa, %bb.i ], [ %.0, %bb.g ] ; 3 uses
  %i.ab = icmp ugt i64 %.1.i, 63
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.246.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.1.i, %bb.j ]
  %.24145.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.140.i, %bb.j ] ; 2 uses
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef %.24145.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %.24145.i, i64 64 ; 2 uses
  %i.ad = add i64 %.246.i, -64                    ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 63
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.241.lcssa.i = phi ptr [ %.140.i, %bb.j ], [ %i.ac, %.lr.ph.i ]
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.j ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %.not44.i = icmp eq i64 %.2.lcssa.i, 0
  br i1 %.not44.i, label %md5_append.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 1 %.241.lcssa.i, i64 %.2.lcssa.i, i1 false)
  br label %md5_append.exit

md5_append.exit:                                  ; preds = %bb.d, %bb.h, %._crit_edge.i, %bb.k
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cmsysMD5_Finalize(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  store i32 %i.b, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.d, ptr %i.e, align 4
  %i.f = lshr i32 %i.b, 3                         ; 2 uses
  %i.g = sub nsw i32 55, %i.f
  %i.h = and i32 %i.g, 63
  %i.i = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  %i.k = and i32 %i.f, 63                         ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = shl nuw nsw i32 %i.i, 3                  ; 2 uses
  %i.n = add i32 %i.m, %i.b                       ; 2 uses
  store i32 %i.n, ptr %0, align 4, !tbaa !9
  %i.o = icmp ult i32 %i.n, %i.m
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.d, 1
  store i32 %i.p, ptr %i.c, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add nuw nsw i64 %i.j, %i.l
  %i.r = icmp samesign ugt i64 %i.q, 64
  %i.s = sub nuw nsw i64 64, %i.l
  %i.t = select i1 %i.r, i64 %i.s, i64 %i.j       ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 16 dereferenceable(1) @md5_finish.pad, i64 %i.t, i1 false)
  %i.w = add nuw nsw i64 %i.t, %i.l
  %i.x = icmp samesign ugt i64 %i.w, 63
  br i1 %i.x, label %bb.e, label %md5_append.exit.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr @md5_finish.pad, i64 %i.t
  %i.z = sub nsw i64 %i.j, %i.t
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.140.i.i = phi ptr [ %i.y, %bb.e ], [ @md5_finish.pad, %bb.c ] ; 2 uses
  %.1.i.i = phi i64 [ %i.z, %bb.e ], [ %i.j, %bb.c ] ; 3 uses
  %i.aa = icmp ugt i64 %.1.i.i, 63
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.246.i.i = phi i64 [ %i.ac, %.lr.ph.i.i ], [ %.1.i.i, %bb.f ]
  %.24145.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.140.i.i, %bb.f ] ; 2 uses
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef %.24145.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.24145.i.i, i64 64 ; 2 uses
  %i.ac = add i64 %.246.i.i, -64                  ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 63
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  %.241.lcssa.i.i = phi ptr [ %.140.i.i, %bb.f ], [ %i.ab, %.lr.ph.i.i ]
  %.2.lcssa.i.i = phi i64 [ %.1.i.i, %bb.f ], [ %i.ac, %.lr.ph.i.i ] ; 2 uses
  %.not44.i.i = icmp eq i64 %.2.lcssa.i.i, 0
  br i1 %.not44.i.i, label %md5_append.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 1 %.241.lcssa.i.i, i64 %.2.lcssa.i.i, i1 false)
  br label %md5_append.exit.i

md5_append.exit.i:                                ; preds = %bb.g, %._crit_edge.i.i, %bb.d
  %i.af = load i32, ptr %0, align 4, !tbaa !9     ; 3 uses
  %i.ag = lshr i32 %i.af, 3
  %i.ah = and i32 %i.ag, 63                       ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 3 uses
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ak = add i32 %i.af, 64
  store i32 %i.ak, ptr %0, align 4, !tbaa !9
  %i.al = icmp ugt i32 %i.af, -65
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %md5_append.exit.i
  %i.am = add i32 %i.aj, 1
  store i32 %i.am, ptr %i.c, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %md5_append.exit.i
  %.not.i15.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i15.i, label %._crit_edge.i18.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp samesign ugt i32 %i.ah, 56
  %i.ao = sub nuw nsw i64 64, %i.ai
  %i.ap = select i1 %i.an, i64 %i.ao, i64 8       ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.ap, i1 false)
  %i.as = add nuw nsw i64 %i.ap, %i.ai
  %i.at = icmp samesign ugt i64 %i.as, 63
  br i1 %i.at, label %bb.k, label %md5_finish.exit

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap ; 2 uses
  %i.av = sub nsw i64 8, %i.ap                    ; 3 uses
  tail call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %i.aq)
  %i.aw = icmp ugt i64 %i.av, 63
  br i1 %i.aw, label %.lr.ph.i22.i, label %._crit_edge.i18.i

.lr.ph.i22.i:                                     ; preds = %bb.k, %.lr.ph.i22.i
  %.246.i23.i = phi i64 [ %2, %.lr.ph.i22.i ], [ %i.av, %bb.k ]
  %.24145.i24.i = phi ptr [ %i.ax, %.lr.ph.i22.i ], [ %i.au, %bb.k ] ; 2 uses
  call fastcc void @md5_process(ptr noundef nonnull %0, ptr noundef nonnull %.24145.i24.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %.24145.i24.i, i64 64 ; 2 uses
  %2 = add i64 %.246.i23.i, -64                   ; 3 uses
  %3 = icmp ugt i64 %2, 63
  br i1 %3, label %.lr.ph.i22.i, label %._crit_edge.i18.i, !llvm.loop !10

._crit_edge.i18.i:                                ; preds = %.lr.ph.i22.i, %bb.k
  %.241.lcssa.i19.i = phi ptr [ %i.au, %bb.k ], [ %i.ax, %.lr.ph.i22.i ]
  %.2.lcssa.i20.i = phi i64 [ %i.av, %bb.k ], [ %2, %.lr.ph.i22.i ] ; 2 uses
  %.not44.i21.i = icmp eq i64 %.2.lcssa.i20.i, 0
  br i1 %.not44.i21.i, label %md5_finish.exit, label %._crit_edge.i18.thread.i

._crit_edge.i18.thread.i:                         ; preds = %._crit_edge.i18.i, %bb.i
  %.2.lcssa.i2032.i = phi i64 [ %.2.lcssa.i20.i, %._crit_edge.i18.i ], [ 8, %bb.i ]
  %.241.lcssa.i1931.i = phi ptr [ %.241.lcssa.i19.i, %._crit_edge.i18.i ], [ %i.a, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ay, ptr noundef nonnull align 1 dereferenceable(1) %.241.lcssa.i1931.i, i64 %.2.lcssa.i2032.i, i1 false)
  br label %md5_finish.exit

md5_finish.exit:                                  ; preds = %bb.j, %._crit_edge.i18.i, %._crit_edge.i18.thread.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %1, align 1, !tbaa !12
  %i.bc = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bd = lshr i32 %i.bc, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !12
  %i.bg = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bh = lshr i32 %i.bg, 16
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !12
  %i.bk = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bl = lshr i32 %i.bk, 24
  %i.bm = trunc nuw i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !12
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !12
  %i.bw = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.bx = lshr i32 %i.bw, 16
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !12
  %i.ca = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !12
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !12
  %i.cm = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cn = lshr i32 %i.cm, 16
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !12
  %i.cq = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cr = lshr i32 %i.cq, 24
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !12
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !12
  %i.cy = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.da, ptr %i.db, align 1, !tbaa !12
  %i.dc = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.de, ptr %i.df, align 1, !tbaa !12
  %i.dg = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.dh = lshr i32 %i.dg, 24
  %i.di = trunc nuw i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cmsysMD5_FinalizeHex(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @cmsysMD5_Finalize(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @cmsysMD5_DigestToHex(ptr noundef nonnull %i.a, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cmsysMD5_DigestToHex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !12
  %i.b = lshr i8 %i.a, 4
  %i.c = zext nneg i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %1, align 1, !tbaa !12
  %i.g = load i8, ptr %0, align 1, !tbaa !12
  %i.h = and i8 %i.g, 15
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.k, ptr %i.f, align 1, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %i.o = lshr i8 %i.n, 4
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.r, ptr %i.l, align 1, !tbaa !12
  %i.t = load i8, ptr %i.m, align 1, !tbaa !12
  %i.u = and i8 %i.t, 15
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.x, ptr %i.s, align 1, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12
  %i.ab = lshr i8 %i.aa, 4
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !12
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !12
  %i.ah = and i8 %i.ag, 15
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ao = lshr i8 %i.an, 4
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ar, ptr %i.al, align 1, !tbaa !12
  %i.at = load i8, ptr %i.am, align 1, !tbaa !12
  %i.au = and i8 %i.at, 15
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.ax, ptr %i.as, align 1, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = lshr i8 %i.ba, 4
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.be, ptr %i.ay, align 1, !tbaa !12
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bh = and i8 %i.bg, 15
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = lshr i8 %i.bn, 4
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.br, ptr %i.bl, align 1, !tbaa !12
  %i.bt = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bu = and i8 %i.bt, 15
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bx, ptr %i.bs, align 1, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !12
  %i.cb = lshr i8 %i.ca, 4
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @cmsysMD5_DigestToHex.hex, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.ce, ptr %i.by, align 1, !tbaa !12
  %i.cg = load i8, ptr %i.bz, align 1, !tbaa !12
end_hunk_0
