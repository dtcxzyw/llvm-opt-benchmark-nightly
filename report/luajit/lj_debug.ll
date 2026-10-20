Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_debug?download=true
inline.NumInlined: 19
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lj_debug_dumpstack:bb.a
  br label %.backedge

bb.bi:                                            ; preds = %bb.f
  %i.lr = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.ls = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = and i64 %i.lv, 4294967295
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %bb.bj, label %lj_buf_more.exit95, !prof !60

bb.bj:                                            ; preds = %bb.bi
  %i.ly = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef 1) #10
  br label %lj_buf_more.exit95

lj_buf_more.exit95:                               ; preds = %bb.bi, %bb.bj
  %.0.i94 = phi ptr [ %i.ly, %bb.bj ], [ %i.ls, %bb.bi ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i94, i64 1
  store i8 %i.bh, ptr %.0.i94, align 1, !tbaa !23
  store ptr %i.lz, ptr %1, align 8, !tbaa !59
  br label %.backedge

.loopexit139:                                     ; preds = %bb.e, %bb.b
  %storemerge.i.ph = phi i32 [ %.170152, %bb.b ], [ %.3.i, %bb.e ]
  br i1 %i.b, label %.thread131, label %bb.bk

bb.bk:                                            ; preds = %.loopexit139
  %i.ma = sub nsw i32 %.170152, %storemerge.i.ph
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.bk
  %.271 = phi i32 [ %i.ma, %bb.bk ], [ %.170152, %bb.f ]
  %.366 = phi i32 [ %.063153, %bb.bk ], [ %.164, %bb.f ]
  %.3 = phi i32 [ %.061154, %bb.bk ], [ %.162, %bb.f ] ; 2 uses
  %i.mb = add nsw i32 %.271, %.068                ; 2 uses
  %.not = icmp eq i32 %i.mb, %.073
  br i1 %.not, label %.thread131, label %bb.b

.thread131:                                       ; preds = %.loopexit, %.loopexit139
  %.061.lcssa = phi i32 [ %.061154, %.loopexit139 ], [ %.3, %.loopexit ] ; 2 uses
  %.not83 = icmp eq i32 %.061.lcssa, 0
  br i1 %.not83, label %.thread131.thread, label %bb.bl

bb.bl:                                            ; preds = %.thread131
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !93
  %i.me = zext i32 %.061.lcssa to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.me
  store ptr %i.mf, ptr %1, align 8, !tbaa !59
  br label %.thread131.thread

.thread131.thread:                                ; preds = %bb.a, %bb.bl, %.thread131
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_putchunkname(ptr noundef %0, i64 %.64.val, i32 %.72.val, i32 noundef range(i32 0, 2) %1) unnamed_addr #4 {
bb.a:
  %i.a = inttoptr i64 %.64.val to ptr             ; 4 uses
  %i.b = icmp eq i32 %.72.val, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lj_buf_putmem(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 9) #10 ; 0 uses
  %i.d = tail call ptr @lj_buf_putstr(ptr noundef %0, ptr noundef %i.a) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %lj_buf_more.exit, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @lj_buf_more2(ptr noundef nonnull %0, i32 noundef 1) #10
  br label %lj_buf_more.exit

lj_buf_more.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 93, ptr %.0.i, align 1, !tbaa !23
  store ptr %i.n, ptr %0, align 8, !tbaa !59
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23
  switch i8 %i.p, label %bb.h [
    i8 61, label %bb.e
    i8 64, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !49   ; 2 uses
  %i.s = add i32 %i.r, -1                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 4 uses
  %.not = icmp ne i32 %1, 0
  %i.u = add i32 %i.r, -2                         ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  %or.cond = select i1 %.not, i1 %i.v, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.w = zext nneg i32 %i.u to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23
  switch i8 %i.y, label %bb.g [
    i8 47, label %bb.f
    i8 92, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %.neg = xor i32 %i.aa, -1
  %i.ab = add i32 %i.s, %.neg
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ad = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e
  %.129 = phi ptr [ %i.t, %bb.e ], [ %i.ac, %bb.f ], [ %i.t, %bb.g ]
  %.1 = phi i32 [ %i.s, %bb.e ], [ %i.ab, %bb.f ], [ %i.s, %bb.g ]
  %i.ae = tail call ptr @lj_buf_putmem(ptr noundef %0, ptr noundef nonnull %.129, i32 noundef %.1) #10 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = tail call ptr @lj_buf_putmem(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef 8) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h, %lj_buf_more.exit
  ret void
}

declare hidden ptr @lj_buf_putmem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare hidden ptr @lj_strfmt_putint(ptr noundef, i32 noundef) local_unnamed_addr #7

declare hidden ptr @lj_strfmt_putptr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @luaL_traceback(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.lua_Debug, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %2) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lua_pushlstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i64 noundef 16) #10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.r = icmp ugt ptr %i.q, %i.o
  br i1 %i.r, label %.lr.ph.i.preheader.i.lr.ph, label %.loopexit94

.lr.ph.i.preheader.i.lr.ph:                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 116 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.lr.ph, %bb.aa
  %i.aa = phi ptr [ %i.q, %.lr.ph.i.preheader.i.lr.ph ], [ %i.gz, %bb.aa ] ; 6 uses
  %i.ab = phi ptr [ %i.p, %.lr.ph.i.preheader.i.lr.ph ], [ %i.gy, %bb.aa ]
  %i.ac = phi ptr [ %i.o, %.lr.ph.i.preheader.i.lr.ph ], [ %i.gx, %bb.aa ] ; 2 uses
  %i.ad = phi i64 [ %i.m, %.lr.ph.i.preheader.i.lr.ph ], [ %i.gv, %bb.aa ] ; 2 uses
  %.0109 = phi i32 [ 12, %.lr.ph.i.preheader.i.lr.ph ], [ %.1, %bb.aa ] ; 3 uses
  %.038108 = phi i32 [ %3, %.lr.ph.i.preheader.i.lr.ph ], [ %.2, %bb.aa ] ; 5 uses
  %i.ae = add nsw i32 %.038108, 1                 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ah = and i64 %i.ag, 140737488355327
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = icmp eq ptr %1, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %spec.select.i16.i = add nsw i32 %.038108, %i.ak ; 2 uses
  %i.al = icmp eq i32 %spec.select.i16.i, 0
  br i1 %i.al, label %.loopexit95, label %.lr.ph.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %.1.i.i, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !23
  %i.ao = and i64 %i.an, 140737488355327
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = icmp eq ptr %1, %i.ap
  %i.ar = zext i1 %i.aq to i32
  %spec.select.i.i = add nsw i32 %.3.i.i, %i.ar   ; 2 uses
  %i.as = icmp eq i32 %spec.select.i.i, 0
  br i1 %i.as, label %.loopexit95, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %spec.select.i18.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %spec.select.i16.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02231.i17.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.aa, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.at = add nsw i32 %spec.select.i18.i, -1      ; 2 uses
  %i.au = load i64, ptr %.02231.i17.i, align 8, !tbaa !23 ; 4 uses
  %i.av = and i64 %i.au, 3
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ax = inttoptr i64 %i.au to ptr
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !25
  %i.ba = lshr i32 %i.az, 8
  %i.bb = and i32 %i.ba, 255
  %i.bc = add nuw nsw i32 %i.bb, 2
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %.02231.i17.i, i64 %i.be
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = and i64 %i.au, 7
  %i.bh = icmp eq i64 %i.bg, 3
  %spec.select26.i.i = select i1 %i.bh, i32 %spec.select.i18.i, i32 %i.at
  %i.bi = and i64 %i.au, -8
  %i.bj = sub i64 0, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %.02231.i17.i, i64 %i.bj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3.i.i = phi i32 [ %i.at, %bb.d ], [ %spec.select26.i.i, %bb.e ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bf, %bb.d ], [ %i.bk, %bb.e ] ; 4 uses
  %i.bl = icmp ugt ptr %.1.i.i, %i.ac
  br i1 %i.bl, label %.lr.ph.i.i, label %.loopexit94, !llvm.loop !0

.loopexit95:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.032.i.lcssa.i = phi ptr [ %i.aa, %.lr.ph.i.preheader.i ], [ %.02231.i17.i, %.lr.ph.i.i ]
  %.02231.i.lcssa.i = phi ptr [ %i.aa, %.lr.ph.i.preheader.i ], [ %.1.i.i, %.lr.ph.i.i ]
  %i.bm = ptrtoint ptr %.032.i.lcssa.i to i64
  %i.bn = ptrtoint ptr %.02231.i.lcssa.i to i64   ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = shl i32 %i.bp, 13
  %i.br = and i32 %i.bq, -65536
  %i.bs = sub i64 %i.bn, %i.ad
  %i.bt = lshr exact i64 %i.bs, 3
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add nsw i32 %i.br, %i.bu
  store i32 %i.bv, ptr %i.s, align 4, !tbaa !52
  %5 = icmp sgt i32 %i.ae, %.0109
  br i1 %5, label %.lr.ph.i58.preheader, label %bb.m

.lr.ph.i58.preheader:                             ; preds = %.loopexit95
  %i.bw = add nsw i32 %.038108, 11                ; 2 uses
  %i.bx = load i64, ptr %i.af, align 8, !tbaa !23
  %i.by = and i64 %i.bx, 140737488355327
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = icmp eq ptr %1, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %spec.select.i16.i57 = add nsw i32 %i.bw, %i.cb ; 2 uses
  %6 = icmp eq i32 %spec.select.i16.i57, 0
  br i1 %6, label %.loopexit, label %.lr.ph.i58

.lr.ph.i.i64:                                     ; preds = %bb.i
  %i.cc = getelementptr inbounds i8, ptr %.1.i.i63, i64 -8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !23
  %i.ce = and i64 %i.cd, 140737488355327
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = icmp eq ptr %1, %i.cf
  %i.ch = zext i1 %i.cg to i32
  %spec.select.i.i65 = add nsw i32 %.3.i.i62, %i.ch ; 2 uses
  %i.ci = icmp eq i32 %spec.select.i.i65, 0
  br i1 %i.ci, label %.loopexit, label %.lr.ph.i58, !llvm.loop !0

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %.lr.ph.i.i64
  %spec.select.i18.i59 = phi i32 [ %spec.select.i.i65, %.lr.ph.i.i64 ], [ %spec.select.i16.i57, %.lr.ph.i58.preheader ] ; 2 uses
  %.02231.i17.i60 = phi ptr [ %.1.i.i63, %.lr.ph.i.i64 ], [ %i.aa, %.lr.ph.i58.preheader ] ; 4 uses
  %i.cj = add nsw i32 %spec.select.i18.i59, -1    ; 2 uses
  %i.ck = load i64, ptr %.02231.i17.i60, align 8, !tbaa !23 ; 4 uses
  %i.cl = and i64 %i.ck, 3
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i58
  %i.cn = inttoptr i64 %i.ck to ptr
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !25
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = and i32 %i.cq, 255
  %i.cs = add nuw nsw i32 %i.cr, 2
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %.02231.i17.i60, i64 %i.cu
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i58
  %i.cw = and i64 %i.ck, 7
  %i.cx = icmp eq i64 %i.cw, 3
  %spec.select26.i.i61 = select i1 %i.cx, i32 %spec.select.i18.i59, i32 %i.cj
  %i.cy = and i64 %i.ck, -8
  %i.cz = sub i64 0, %i.cy
  %i.da = getelementptr inbounds i8, ptr %.02231.i17.i60, i64 %i.cz
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3.i.i62 = phi i32 [ %i.cj, %bb.g ], [ %spec.select26.i.i61, %bb.h ] ; 2 uses
  %.1.i.i63 = phi ptr [ %i.cv, %bb.g ], [ %i.da, %bb.h ] ; 4 uses
  %i.db = icmp ugt ptr %.1.i.i63, %i.ac
  br i1 %i.db, label %.lr.ph.i.i64, label %lua_getstack.exit69.thread, !llvm.loop !0

lua_getstack.exit69.thread:                       ; preds = %bb.i
  %i.dc = sub nsw i32 %i.bw, %.3.i.i62
  store i32 %i.dc, ptr %i.s, align 4, !tbaa !52
  br label %bb.aa

.loopexit:                                        ; preds = %.lr.ph.i.i64, %.lr.ph.i58.preheader
  %.032.i.lcssa.i66 = phi ptr [ %i.aa, %.lr.ph.i58.preheader ], [ %.02231.i17.i60, %.lr.ph.i.i64 ]
  %.02231.i.lcssa.i67 = phi ptr [ %i.aa, %.lr.ph.i58.preheader ], [ %.1.i.i63, %.lr.ph.i.i64 ]
  %i.dd = ptrtoint ptr %.032.i.lcssa.i66 to i64
  %i.de = ptrtoint ptr %.02231.i.lcssa.i67 to i64 ; 2 uses
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = trunc i64 %i.df to i32
  %i.dh = shl i32 %i.dg, 13
  %i.di = and i32 %i.dh, -65536
  %i.dj = sub i64 %i.de, %i.ad
  %i.dk = lshr exact i64 %i.dj, 3
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = add nsw i32 %i.di, %i.dl
  store i32 %i.dm, ptr %i.s, align 4, !tbaa !52
  call void @lua_pushlstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, i64 noundef 5) #10
  %i.dn = load i64, ptr %i.k, align 8, !tbaa !21  ; 2 uses
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !22  ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8 ; 2 uses
  %i.ds = icmp ugt ptr %i.dr, %i.dp
  br i1 %i.ds, label %.lr.ph.i.preheader.i74, label %lua_getstack.exit87

.lr.ph.i.preheader.i74:                           ; preds = %.loopexit
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 -16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !23
  %i.dv = and i64 %i.du, 140737488355327
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = icmp eq ptr %1, %i.dw
  %spec.select.i16.i75 = select i1 %i.dx, i32 -9, i32 -10
  br label %.lr.ph.i76

.lr.ph.i.i82:                                     ; preds = %bb.l
  %i.dy = getelementptr inbounds i8, ptr %.1.i.i81, i64 -8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !23
  %i.ea = and i64 %i.dz, 140737488355327
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = icmp eq ptr %1, %i.eb
  %i.ed = zext i1 %i.ec to i32
  %spec.select.i.i83 = add nsw i32 %.3.i.i80, %i.ed ; 2 uses
  %i.ee = icmp eq i32 %spec.select.i.i83, 0
  br i1 %i.ee, label %.lr.ph.i._crit_edge.i84, label %.lr.ph.i76, !llvm.loop !0

.lr.ph.i76:                                       ; preds = %.lr.ph.i.preheader.i74, %.lr.ph.i.i82
  %spec.select.i18.i77 = phi i32 [ %spec.select.i.i83, %.lr.ph.i.i82 ], [ %spec.select.i16.i75, %.lr.ph.i.preheader.i74 ] ; 2 uses
  %.02231.i17.i78 = phi ptr [ %.1.i.i81, %.lr.ph.i.i82 ], [ %i.dr, %.lr.ph.i.preheader.i74 ] ; 4 uses
  %i.ef = add nsw i32 %spec.select.i18.i77, -1    ; 2 uses
  %i.eg = load i64, ptr %.02231.i17.i78, align 8, !tbaa !23 ; 4 uses
  %i.eh = and i64 %i.eg, 3
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i76
  %i.ej = inttoptr i64 %i.eg to ptr
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !25
  %i.em = lshr i32 %i.el, 8
  %i.en = and i32 %i.em, 255
  %i.eo = add nuw nsw i32 %i.en, 2
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds [8 x i8], ptr %.02231.i17.i78, i64 %i.eq
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i76
  %i.es = and i64 %i.eg, 7
  %i.et = icmp eq i64 %i.es, 3
  %spec.select26.i.i79 = select i1 %i.et, i32 %spec.select.i18.i77, i32 %i.ef
  %i.eu = and i64 %i.eg, -8
  %i.ev = sub i64 0, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %.02231.i17.i78, i64 %i.ev
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3.i.i80 = phi i32 [ %i.ef, %bb.j ], [ %spec.select26.i.i79, %bb.k ] ; 2 uses
  %.1.i.i81 = phi ptr [ %i.er, %bb.j ], [ %i.ew, %bb.k ] ; 4 uses
  %i.ex = icmp ugt ptr %.1.i.i81, %i.dp
  br i1 %i.ex, label %.lr.ph.i.i82, label %.loopexit.i70.loopexit, !llvm.loop !0

.lr.ph.i._crit_edge.i84:                          ; preds = %.lr.ph.i.i82
  %i.ey = ptrtoint ptr %.02231.i17.i78 to i64
  %i.ez = ptrtoint ptr %.1.i.i81 to i64           ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = shl i32 %i.fb, 13
  %i.fd = and i32 %i.fc, -65536
  %i.fe = sub i64 %i.ez, %i.dn
  %i.ff = lshr exact i64 %i.fe, 3
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = add nsw i32 %i.fd, %i.fg
  br label %lua_getstack.exit87

.loopexit.i70.loopexit:                           ; preds = %bb.l
  %i.fi = sub nsw i32 -10, %.3.i.i80
  br label %lua_getstack.exit87

lua_getstack.exit87:                              ; preds = %.loopexit, %.loopexit.i70.loopexit, %.lr.ph.i._crit_edge.i84
  %.sink.i72 = phi i32 [ %i.fh, %.lr.ph.i._crit_edge.i84 ], [ 0, %.loopexit ], [ %i.fi, %.loopexit.i70.loopexit ] ; 2 uses
  store i32 %.sink.i72, ptr %i.s, align 4, !tbaa !52
  %i.fj = add nsw i32 %.sink.i72, -10
  br label %bb.aa, !llvm.loop !94

bb.m:                                             ; preds = %.loopexit95
  %i.fk = call range(i32 0, 2) i32 @lj_debug_getinfo(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %4, i32 noundef 0) ; 0 uses
  %i.fl = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !23
  %i.fo = and i64 %i.fn, 140737488355327
  %i.fp = inttoptr i64 %i.fo to ptr               ; 2 uses
  store ptr %i.fm, ptr %i.t, align 8, !tbaa !53
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 10
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !23  ; 2 uses
  %i.fs = zext i8 %i.fr to i32
  %i.ft = icmp ugt i8 %i.fr, 1
  br i1 %i.ft, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fu = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !23
  %.not49.a = icmp eq i8 %i.fv, 0
  br i1 %.not49.a, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fw = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i32 noundef %i.fs) #10 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.fx = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.v) #10 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fy = load i32, ptr %i.w, align 8, !tbaa !96  ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ga = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i32 noundef %i.fy) #10 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gb = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !23
  %.not50 = icmp eq i8 %i.gc, 0
  br i1 %.not50, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gd = load ptr, ptr %i.x, align 8, !tbaa !97
  %i.ge = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %i.gd) #10 ; 0 uses
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.gf = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !23
  switch i8 %i.gg, label %bb.x [
    i8 109, label %bb.v
    i8 67, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  call void @lua_pushlstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i64 noundef 14) #10
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !23
  %i.gj = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef %i.gi) #10 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.gk = load i32, ptr %i.z, align 8, !tbaa !99
  %i.gl = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.v, i32 noundef %i.gk) #10 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w, %bb.t
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = lshr exact i64 %i.gq, 3
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = sub nsw i32 %i.gs, %i.i                 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 14
  br i1 %i.gu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @lua_concat(ptr noundef nonnull %0, i32 noundef %i.gt) #10
  br label %bb.aa

bb.aa:                                            ; preds = %lua_getstack.exit69.thread, %bb.y, %bb.z, %lua_getstack.exit87
  %.2 = phi i32 [ %.038108, %lua_getstack.exit69.thread ], [ %i.fj, %lua_getstack.exit87 ], [ %i.ae, %bb.z ], [ %i.ae, %bb.y ] ; 3 uses
  %.1 = phi i32 [ 2147483647, %lua_getstack.exit69.thread ], [ 2147483647, %lua_getstack.exit87 ], [ %.0109, %bb.z ], [ %.0109, %bb.y ]
  %i.gv = load i64, ptr %i.k, align 8, !tbaa !21  ; 2 uses
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.gy = load ptr, ptr %i.l, align 8, !tbaa !22  ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -8 ; 2 uses
  %i.ha = icmp ugt ptr %i.gz, %i.gx
  br i1 %i.ha, label %.lr.ph.i.preheader.i, label %.loopexit94

.loopexit94:                                      ; preds = %bb.aa, %bb.f, %bb.c
  %.038107 = phi i32 [ %.038108, %bb.f ], [ %3, %bb.c ], [ %.2, %bb.aa ]
  %storemerge.i.ph.i = phi i32 [ %.3.i.i, %bb.f ], [ %3, %bb.c ], [ %.2, %bb.aa ]
  %i.hb = sub nsw i32 %.038107, %storemerge.i.ph.i
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 116
end_hunk_0
