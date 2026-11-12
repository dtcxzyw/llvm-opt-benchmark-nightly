Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/planner?download=true
inline.NumInlined: 49
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hinsert:bb.a
  %i.cw = phi i32 [ %.pre.i, %bb.l ], [ %i.be, %subsumes.exit.i ], [ %i.be, %md5eq.exit.i ], [ %i.be, %bb.g ], [ %i.be, %bb.h ], [ %i.be, %bb.j ], [ %i.be, %bb.i ], [ %i.be, %bb.k ] ; 3 uses
  %.2.i = phi ptr [ %spec.select.i, %bb.l ], [ %.035.i, %subsumes.exit.i ], [ %.035.i, %md5eq.exit.i ], [ %.035.i, %bb.g ], [ %.035.i, %bb.h ], [ %.035.i, %bb.j ], [ %.035.i, %bb.i ], [ %.035.i, %bb.k ] ; 2 uses
  %i.cx = add i32 %.036.i, %i.i                   ; 2 uses
  %.not.i47.i = icmp ult i32 %i.cx, %i.cw
  %i.cy = select i1 %.not.i47.i, i32 0, i32 %i.cw
  %i.cz = sub i32 %i.cx, %i.cy                    ; 2 uses
  %.not42.i = icmp eq i32 %i.cz, %i.e
  br i1 %.not42.i, label %.thread.i, label %.split.i, !llvm.loop !92

.thread.i:                                        ; preds = %md5eq.exit.thread.i, %.split.i, %md5eq.exit.thread.us.i, %.split.us.i
  %.us-phi.i = phi ptr [ %.035.us.i, %.split.us.i ], [ %.2.us.i, %md5eq.exit.thread.us.i ], [ %.035.i, %.split.i ], [ %.2.i, %md5eq.exit.thread.i ] ; 6 uses
  %.not43.i = icmp eq ptr %.us-phi.i, null
  br i1 %.not43.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !62
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !62
  %i.dd = load i32, ptr %i.m, align 4, !tbaa !58
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.m, align 4, !tbaa !58
  %i.df = load i64, ptr %2, align 4
  %i.dg = and i64 %i.df, 4503595332403200         ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 16 ; 4 uses
  %i.di = load i64, ptr %i.dh, align 4            ; 2 uses
  %i.dj = and i64 %i.di, -4503595332403201
  %i.dk = or disjoint i64 %i.dj, %i.dg            ; 2 uses
  store i64 %i.dk, ptr %i.dh, align 4
  %i.dl = load i64, ptr %2, align 4
  %i.dm = and i64 %i.dl, 1048575                  ; 2 uses
  %i.dn = and i64 %i.dk, -1048576
  %i.do = or disjoint i64 %i.dn, %i.dm
  store i64 %i.do, ptr %i.dh, align 4
  %i.dp = load i64, ptr %2, align 4
  %i.dq = and i64 %i.dp, 4286578688
  %i.dr = and i64 %i.di, 1048576
  %i.ds = or disjoint i64 %i.dr, %i.dq
  %i.dt = and i32 %3, 4095
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw i64 %i.du, 52
  %i.dw = or disjoint i64 %i.ds, %i.dv
  %i.dx = or disjoint i64 %i.dw, %i.dm
  %i.dy = or disjoint i64 %i.dx, %i.dg
  %i.dz = or disjoint i64 %i.dy, 6291456
  store i64 %i.dz, ptr %i.dh, align 4
  %i.ea = icmp ult i32 %3, 4096
  br i1 %i.ea, label %fill_slot.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @fftw_assertion_failed(ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @.str.1) #8
  br label %fill_slot.exit.i

fill_slot.exit.i:                                 ; preds = %bb.n, %bb.m
  %i.eb = load i32, ptr %1, align 4, !tbaa !33
  store i32 %i.eb, ptr %.us-phi.i, align 4, !tbaa !33
  %i.ec = load i32, ptr %i.f, align 4, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 4
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !33
  %i.ee = load i32, ptr %i.k, align 4, !tbaa !33
  %i.ef = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !33
  %i.eg = load i32, ptr %i.l, align 4, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 12
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !33
  br label %htab_insert.exit

bb.o:                                             ; preds = %.thread.i
  tail call fastcc void @hgrow(ptr noundef nonnull %i.c)
  tail call fastcc void @hinsert0(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, i32 noundef %3)
  br label %htab_insert.exit

htab_insert.exit:                                 ; preds = %fill_slot.exit.i, %bb.o
  ret void
}

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #3

declare void @fftw_md5begin(ptr noundef) local_unnamed_addr #3

declare void @fftw_md5unsigned(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fftw_md5int(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fftw_md5end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @htab_lookup(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !57  ; 4 uses
  %.val38 = load i32, ptr %1, align 4, !tbaa !33
  %i.b = urem i32 %.val38, %.val                  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val40 = load i32, ptr %i.c, align 4, !tbaa !33
  %i.d = add i32 %.val, -1
  %i.e = urem i32 %.val40, %i.d
  %i.f = add nuw i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !94
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !94
  %i.j = load ptr, ptr %0, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.pre = load i32, ptr %i.k, align 8, !tbaa !95
  br label %bb.b

bb.b:                                             ; preds = %md5eq.exit.thread, %bb.a
  %i.n = phi i32 [ %.pre, %bb.a ], [ %i.q, %md5eq.exit.thread ]
  %.030 = phi i32 [ %i.b, %bb.a ], [ %i.bq, %md5eq.exit.thread ] ; 2 uses
  %.029 = phi ptr [ null, %bb.a ], [ %.1, %md5eq.exit.thread ] ; 12 uses
  %i.o = zext i32 %.030 to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.o ; 6 uses
  %i.q = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.q, ptr %i.k, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i64, ptr %i.r, align 4              ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 5 uses
  %i.u = and i32 %i.t, 2097152
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = and i32 %i.t, 4194304
  %.not32 = icmp eq i32 %i.v, 0
  br i1 %.not32, label %md5eq.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %1, align 4, !tbaa !33
  %i.x = load i32, ptr %i.p, align 4, !tbaa !33
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %md5eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.c, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %md5eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %md5eq.exit, label %md5eq.exit.thread

md5eq.exit:                                       ; preds = %bb.f
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %.not52 = icmp eq i32 %i.ah, %i.aj
  br i1 %.not52, label %bb.g, label %md5eq.exit.thread

bb.g:                                             ; preds = %md5eq.exit
  %.not.i = icmp ugt i64 %i.s, -4503599627370497
  br i1 %.not.i, label %.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr i64 %i.s, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %i.am = load i64, ptr %2, align 4               ; 2 uses
  %i.an = lshr i64 %i.am, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1048575
  %i.aq = xor i32 %i.ap, 1048575
  %i.ar = and i32 %i.aq, %i.al
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %subsumes.exit, label %md5eq.exit.thread

.split:                                           ; preds = %bb.g
  %i.at = load i64, ptr %2, align 4
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = and i32 %i.au, 1048575
  %i.aw = xor i32 %i.av, 1048575
  %i.ax = and i32 %i.aw, %i.t
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = lshr i32 %i.t, 23
  %i.ba = lshr i32 %i.au, 23
  %i.bb = icmp samesign ule i32 %i.az, %i.ba
  %narrow.i = select i1 %i.ay, i1 %i.bb, i1 false
  br i1 %narrow.i, label %bb.i, label %md5eq.exit.thread

subsumes.exit:                                    ; preds = %bb.h
  %i.bc = trunc i64 %i.am to i32
  %i.bd = and i32 %i.t, 1048575
  %i.be = xor i32 %i.bd, 1048575
  %i.bf = and i32 %i.be, %i.bc
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %md5eq.exit.thread

bb.i:                                             ; preds = %.split, %subsumes.exit
  %.not35 = icmp eq ptr %.029, null
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = lshr i64 %i.s, 32
  %i.bi = trunc nuw i64 %i.bh to i32
  %i.bj = getelementptr i8, ptr %.029, i64 20
  %3 = load i32, ptr %i.bj, align 4
  %i.bk = and i32 %3, 1048575
  %i.bl = xor i32 %i.bk, 1048575
  %i.bm = and i32 %i.bl, %i.bi
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %md5eq.exit.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %md5eq.exit.thread

md5eq.exit.thread:                                ; preds = %.split, %bb.h, %bb.d, %bb.e, %bb.f, %bb.j, %bb.k, %subsumes.exit, %md5eq.exit, %bb.c
  %.1 = phi ptr [ %i.p, %bb.k ], [ %.029, %bb.j ], [ %.029, %subsumes.exit ], [ %.029, %md5eq.exit ], [ %.029, %bb.c ], [ %.029, %bb.d ], [ %.029, %bb.f ], [ %.029, %bb.e ], [ %.029, %bb.h ], [ %.029, %.split ] ; 2 uses
  %i.bo = add i32 %i.f, %.030                     ; 2 uses
  %.not.i41 = icmp ult i32 %i.bo, %.val
  %i.bp = select i1 %.not.i41, i32 0, i32 %.val
  %i.bq = sub i32 %i.bo, %i.bp                    ; 2 uses
  %.not36 = icmp eq i32 %i.bq, %i.b
  br i1 %.not36, label %.thread, label %bb.b, !llvm.loop !93

.thread:                                          ; preds = %bb.b, %md5eq.exit.thread
  %.251 = phi ptr [ %.1, %md5eq.exit.thread ], [ %.029, %bb.b ] ; 2 uses
  %.not37 = icmp eq ptr %.251, null
  br i1 %.not37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !96
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  ret ptr %.251
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @search0(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %4 = load i32, ptr %i.a, align 4
  %5 = and i32 %4, 2
  %.not.i = icmp eq i32 %5, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !48
  %.not10.i = icmp eq i32 %i.c, 0
  br i1 %.not10.i, label %bb.c, label %timeout_p.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !32
  %i.f = fcmp ult double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call double @fftw_elapsed_since(ptr noundef nonnull %0, ptr noundef %1, i64 %i.h, i64 %i.j) #8
  %i.l = load double, ptr %i.d, align 8, !tbaa !32
  %i.m = fcmp ult double %i.k, %i.l
  br i1 %i.m, label %bb.e, label %timeout_p.exit

timeout_p.exit:                                   ; preds = %bb.d
  store i32 1, ptr %i.b, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 1, ptr %i.n, align 4, !tbaa !31
  br label %timeout_p.exit.thread

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 6 uses
  store i32 0, ptr %i.o, align 4, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.q = load ptr, ptr %1, align 8, !tbaa !50
  %i.r = load i32, ptr %i.q, align 8, !tbaa !53
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.0159 = load i32, ptr %i.t, align 4, !tbaa !33 ; 2 uses
  %i.af = icmp sgt i32 %.0159, -1
  br i1 %i.af, label %.lr.ph, label %timeout_p.exit.thread

.lr.ph:                                           ; preds = %bb.e, %bb.af
  %.0163 = phi i32 [ %.0, %bb.af ], [ %.0159, %bb.e ]
  %.052162 = phi i32 [ %.4106, %bb.af ], [ 1, %bb.e ] ; 3 uses
  %.056160 = phi ptr [ %.359104, %bb.af ], [ null, %bb.e ] ; 14 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.ah = zext nneg i32 %.0163 to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %.val = load i64, ptr %3, align 4, !tbaa !52
  %.sroa.0.0.copyload.i = load i64, ptr %6, align 4, !tbaa !52 ; 2 uses
  %i.ak = load i32, ptr %i.v, align 8, !tbaa !30
  %i.al = and i64 %.val, -4286578689
  store i64 %i.al, ptr %6, align 4
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = tail call ptr %i.ao(ptr noundef nonnull %i.aj, ptr noundef nonnull %1, ptr noundef nonnull %0) #8, !inline_history !0 ; 15 uses
  store i32 %i.ak, ptr %i.v, align 8, !tbaa !30
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !52
  %i.aq = load i32, ptr %i.o, align 4, !tbaa !31
  %.not67 = icmp eq i32 %i.aq, 0
  br i1 %.not67, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = and i64 %.sroa.0.0.copyload.i, 8589934592
  %.not.i75 = icmp eq i64 %i.ar, 0
  br i1 %.not.i75, label %bb.g, label %timeout_p.exit80.thread96

bb.g:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.w, align 8, !tbaa !48
  %.not10.i79 = icmp eq i32 %i.as, 0
  br i1 %.not10.i79, label %bb.h, label %.thread123

bb.h:                                             ; preds = %bb.g
  %i.at = load double, ptr %i.x, align 8, !tbaa !32
  %i.au = fcmp ult double %i.at, 0.000000e+00
  br i1 %i.au, label %timeout_p.exit80.thread96, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.y, align 8
  %i.aw = load i64, ptr %i.z, align 8
  %i.ax = tail call double @fftw_elapsed_since(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 %i.av, i64 %i.aw) #8
  %i.ay = load double, ptr %i.x, align 8, !tbaa !32
  %i.az = fcmp ult double %i.ax, %i.ay
  br i1 %i.az, label %timeout_p.exit80.thread96, label %timeout_p.exit80

timeout_p.exit80.thread96:                        ; preds = %bb.h, %bb.i, %bb.f
  store i32 0, ptr %i.o, align 4, !tbaa !31
  br label %bb.j

timeout_p.exit80:                                 ; preds = %bb.i
  store i32 1, ptr %i.w, align 8, !tbaa !48
  store i32 1, ptr %i.o, align 4, !tbaa !31
  br label %.thread123

.thread123:                                       ; preds = %bb.g, %timeout_p.exit80
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.ap) #8
  tail call void @fftw_plan_destroy_internal(ptr noundef %.056160) #8
  br label %timeout_p.exit.thread

bb.j:                                             ; preds = %timeout_p.exit80.thread96, %.lr.ph
  %.not69 = icmp eq ptr %i.ap, null
  br i1 %.not69, label %bb.af, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !99
  %.not70 = icmp eq ptr %.056160, null
  br i1 %.not70, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not71 = icmp eq i32 %.052162, 0
  br i1 %.not71, label %evaluate_plan.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load i64, ptr %6, align 4               ; 2 uses
  %i.bd = and i64 %i.bc, 12884901888
  %or.cond.not.i = icmp eq i64 %i.bd, 4294967296
  br i1 %or.cond.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.056160, i64 40
  %i.bf = load double, ptr %i.be, align 8, !tbaa !100
  %i.bg = fcmp oeq double %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = load i32, ptr %i.aa, align 8, !tbaa !28
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.aa, align 8, !tbaa !28
  %i.bj = and i64 %i.bc, 8589934592
  %.not25.i = icmp eq i64 %i.bj, 0
  br i1 %.not25.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.056160, i64 8
  %i.bl = load <2 x double>, ptr %i.bk, align 8, !tbaa !12
  %i.bm = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %.056160, i64 24
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !16
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double 2.000000e+00, double %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %.056160, i64 32
  %i.br = load double, ptr %i.bq, align 8, !tbaa !17
  %i.bs = fadd double %i.bp, %i.br                ; 2 uses
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %fftw_iestimate_cost.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = tail call double %i.bt(ptr noundef nonnull %1, double noundef %i.bs, i32 noundef 1) #8, !inline_history !97
  br label %fftw_iestimate_cost.exit.i

fftw_iestimate_cost.exit.i:                       ; preds = %bb.q, %bb.p
  %.0.i.i = phi double [ %i.bu, %bb.q ], [ %i.bs, %bb.p ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.056160, i64 40
  store double %.0.i.i, ptr %i.bv, align 8, !tbaa !100
  %i.bw = load double, ptr %i.ad, align 8, !tbaa !101
  %i.bx = fadd double %.0.i.i, %i.bw
  store double %i.bx, ptr %i.ad, align 8, !tbaa !101
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.by = tail call double @fftw_measure_execution_time(ptr noundef nonnull %0, ptr noundef nonnull %.056160, ptr noundef nonnull %1) #8 ; 3 uses
  %i.bz = fcmp olt double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.p, label %.thread.i

.thread.i:                                        ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.056160, i64 40
  store double %i.by, ptr %i.ca, align 8, !tbaa !100
  %i.cb = load double, ptr %i.ab, align 8, !tbaa !102
  %i.cc = fadd double %i.by, %i.cb
  store double %i.cc, ptr %i.ab, align 8, !tbaa !102
  store i32 1, ptr %i.o, align 4, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %.thread.i, %fftw_iestimate_cost.exit.i, %bb.n
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.cd, null
  br i1 %.not.i26.i, label %evaluate_plan.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void %i.cd(ptr noundef nonnull %0, ptr noundef nonnull %.056160, ptr noundef nonnull %1, i32 noundef 0) #8, !inline_history !98
  br label %evaluate_plan.exit

evaluate_plan.exit:                               ; preds = %bb.t, %bb.s, %bb.l
  %i.ce = load i64, ptr %6, align 4               ; 2 uses
  %i.cf = and i64 %i.ce, 12884901888
  %or.cond.not.i81 = icmp eq i64 %i.cf, 4294967296
  br i1 %or.cond.not.i81, label %bb.u, label %bb.v

bb.u:                                             ; preds = %evaluate_plan.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !100 ; 2 uses
  %i.ci = fcmp oeq double %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u, %evaluate_plan.exit
  %i.cj = load i32, ptr %i.aa, align 8, !tbaa !28
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.aa, align 8, !tbaa !28
  %i.cl = and i64 %i.ce, 8589934592
  %.not25.i82 = icmp eq i64 %i.cl, 0
  br i1 %.not25.i82, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.cn = load <2 x double>, ptr %i.cm, align 8, !tbaa !12
  %i.co = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cn)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !16
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double 2.000000e+00, double %i.co)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !17
  %i.cu = fadd double %i.cr, %i.ct                ; 2 uses
  %i.cv = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i83, label %fftw_iestimate_cost.exit.i84, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = tail call double %i.cv(ptr noundef nonnull %1, double noundef %i.cu, i32 noundef 1) #8, !inline_history !97
  br label %fftw_iestimate_cost.exit.i84

fftw_iestimate_cost.exit.i84:                     ; preds = %bb.x, %bb.w
  %.0.i.i85 = phi double [ %i.cw, %bb.x ], [ %i.cu, %bb.w ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store double %.0.i.i85, ptr %i.cx, align 8, !tbaa !100
  %i.cy = load double, ptr %i.ad, align 8, !tbaa !101
  %i.cz = fadd double %.0.i.i85, %i.cy
  store double %i.cz, ptr %i.ad, align 8, !tbaa !101
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.da = tail call double @fftw_measure_execution_time(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, ptr noundef nonnull %1) #8 ; 4 uses
  %i.db = fcmp olt double %i.da, 0.000000e+00
  br i1 %i.db, label %bb.w, label %.thread.i87

.thread.i87:                                      ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store double %i.da, ptr %i.dc, align 8, !tbaa !100
  %i.dd = load double, ptr %i.ab, align 8, !tbaa !102
  %i.de = fadd double %i.da, %i.dd
  store double %i.de, ptr %i.ab, align 8, !tbaa !102
  store i32 1, ptr %i.o, align 4, !tbaa !31
  br label %bb.z

bb.z:                                             ; preds = %.thread.i87, %fftw_iestimate_cost.exit.i84, %bb.u
  %i.df = phi double [ %i.da, %.thread.i87 ], [ %.0.i.i85, %fftw_iestimate_cost.exit.i84 ], [ %i.ch, %bb.u ]
  %i.dg = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %.not.i26.i86 = icmp eq ptr %i.dg, null
  br i1 %.not.i26.i86, label %evaluate_plan.exit88, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void %i.dg(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, ptr noundef nonnull %1, i32 noundef 0) #8, !inline_history !98
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !100
  br label %evaluate_plan.exit88

evaluate_plan.exit88:                             ; preds = %bb.z, %bb.aa
  %i.dh = phi double [ %i.df, %bb.z ], [ %.pre, %bb.aa ]
  %i.di = getelementptr inbounds nuw i8, ptr %.056160, i64 40
  %i.dj = load double, ptr %i.di, align 8, !tbaa !100
  %i.dk = fcmp olt double %i.dh, %i.dj
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %evaluate_plan.exit88
  tail call void @fftw_plan_destroy_internal(ptr noundef nonnull %.056160) #8
  %i.dl = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.dm = ptrtoint ptr %i.ai to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 5
  %i.dq = trunc i64 %i.dp to i32
  store i32 %i.dq, ptr %2, align 4, !tbaa !33
  br label %bb.ae

bb.ac:                                            ; preds = %evaluate_plan.exit88
  tail call void @fftw_plan_destroy_internal(ptr noundef nonnull %i.ap) #8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.k
  %i.dr = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.ds = ptrtoint ptr %i.ai to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = lshr exact i64 %i.du, 5
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr %2, align 4, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.157 = phi ptr [ %i.ap, %bb.ab ], [ %.056160, %bb.ac ], [ %i.ap, %bb.ad ] ; 2 uses
  %.254 = phi i32 [ 0, %bb.ab ], [ 0, %bb.ac ], [ %.052162, %bb.ad ]
  %7 = load i32, ptr %i.a, align 8
  %8 = and i32 %7, 131072
  %i.dx = icmp eq i32 %8, 0
  %i.dy = icmp eq i32 %i.bb, 0
  %or.cond.not = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.not, label %bb.af, label %timeout_p.exit.thread

bb.af:                                            ; preds = %bb.j, %bb.ae
  %.4106 = phi i32 [ %.254, %bb.ae ], [ %.052162, %bb.j ]
  %.359104 = phi ptr [ %.157, %bb.ae ], [ %.056160, %bb.j ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.0 = load i32, ptr %i.dz, align 8, !tbaa !33   ; 2 uses
  %i.ea = icmp sgt i32 %.0, -1
  br i1 %i.ea, label %.lr.ph, label %timeout_p.exit.thread

timeout_p.exit.thread:                            ; preds = %bb.af, %bb.ae, %bb.e, %bb.b, %.thread123, %timeout_p.exit
  %.465 = phi ptr [ null, %bb.b ], [ null, %timeout_p.exit ], [ null, %.thread123 ], [ null, %bb.e ], [ %.157, %bb.ae ], [ %.359104, %bb.af ]
  ret ptr %.465
}

declare double @fftw_elapsed_since(ptr noundef, ptr noundef, i64, i64) local_unnamed_addr #3

declare double @fftw_measure_execution_time(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @hgrow(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %i.c = add i32 %i.b, 1
  %i.d = lshr i32 %i.b, 3
  %i.e = add i32 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57   ; 3 uses
  %.not = icmp ult i32 %i.e, %i.g
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.e, 1
  %i.i = lshr i32 %i.e, 3
  %i.j = add i32 %i.h, %i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.l = zext i32 %i.j to i64
  %i.m = tail call i64 @fftw_next_prime(i64 noundef %i.l) #8 ; 4 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = and i64 %i.m, 4294967295                 ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 24
  %i.q = tail call ptr @fftw_malloc_plain(i64 noundef %i.p) #8 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !106
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !106
  %.not31.i = icmp eq i32 %i.n, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.u = add nsw i64 %i.o, -1
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.v = icmp ult i64 %i.u, 7
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.m, 4294967288
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 4
  %i.z = and i64 %i.y, -7340033
  store i64 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 4
  %i.ad = and i64 %i.ac, -7340033
  store i64 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 4
  %i.ah = and i64 %i.ag, -7340033
  store i64 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 4
  %i.al = and i64 %i.ak, -7340033
  store i64 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 4
  %i.ap = and i64 %i.ao, -7340033
  store i64 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 4
  %i.at = and i64 %i.as, -7340033
  store i64 %i.at, ptr %i.ar, align 4
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 160 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 4
  %i.ax = and i64 %i.aw, -7340033
  store i64 %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 184 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 4
  %i.bb = and i64 %i.ba, -7340033
  store i64 %i.bb, ptr %i.az, align 4
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !103

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.7, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv.i.epil
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 4
  %i.bf = and i64 %i.be, -7340033
  store i64 %i.bf, ptr %i.bd, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !104

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  store i32 %i.n, ptr %i.f, align 8, !tbaa !57
  store ptr %i.q, ptr %0, align 8, !tbaa !56
  store i32 0, ptr %i.a, align 4, !tbaa !58
  %.not32.i = icmp eq i32 %i.g, 0
  br i1 %.not32.i, label %rehash.exit, label %.lr.ph29.preheader.i

.lr.ph29.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count37.i = zext i32 %i.g to i64
  br label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.d, %.lr.ph29.preheader.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph29.preheader.i ], [ %indvars.iv.next35.i, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv34.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 4            ; 2 uses
  %i.bj = and i64 %i.bi, 4194304
  %.not.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph29.i
  %i.bk = lshr i64 %i.bi, 52
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  tail call fastcc void @hinsert0(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i32 noundef %i.bl)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph29.i
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %rehash.exit, label %.lr.ph29.i, !llvm.loop !105

rehash.exit:                                      ; preds = %bb.d, %._crit_edge.i
  tail call void @fftw_ifree0(ptr noundef %i.k) #8
  br label %bb.e

bb.e:                                             ; preds = %rehash.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hinsert0(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !57  ; 4 uses
  %.val17 = load i32, ptr %1, align 4, !tbaa !33
  %i.b = urem i32 %.val17, %.val                  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val19 = load i32, ptr %i.c, align 4, !tbaa !33
  %i.d = add i32 %.val, -1
  %i.e = urem i32 %.val19, %i.d
  %i.f = add nuw i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !33
  %i.j = add nsw <2 x i32> %i.i, splat (i32 1)    ; 2 uses
  store <2 x i32> %i.j, ptr %i.g, align 8, !tbaa !33
  %i.k = zext i32 %i.b to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 4
  %i.o = and i64 %i.n, 4194304
  %.not22 = icmp eq i64 %i.o, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = extractelement <2 x i32> %i.j, i64 0
  br label %.lr.ph
end_hunk_0
