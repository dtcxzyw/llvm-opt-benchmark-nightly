Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_allochblk_nth:bb.a
  %i.pk = or i8 %i.pj, 4
  store i8 %i.pk, ptr %i.od, align 1
  br label %GC_remove_from_fl_at.exit.i._crit_edge

.thread259:                                       ; preds = %bb.t, %bb.ak, %bb.e, %.thread, %bb.c
  %.7.ph = phi ptr [ %i.ac, %bb.e ], [ %i.ac, %bb.c ], [ %.6, %.thread ], [ %i.ac, %bb.ak ], [ %i.ac, %bb.t ]
  %.0164 = load ptr, ptr %.7.ph, align 8          ; 2 uses
  %.not = icmp eq ptr %.0164, null
  br i1 %.not, label %GC_is_black_listed.exit, label %.lr.ph325.backedge

.lr.ph325.backedge:                               ; preds = %.thread259, %tailrecurse.loopexit
  %.0164324.be = phi ptr [ %.0164, %.thread259 ], [ %.0164322, %tailrecurse.loopexit ]
  br label %.lr.ph325

GC_remove_from_fl_at.exit.i._crit_edge:           ; preds = %GC_remove_from_fl_at.exit.i, %GC_add_to_fl.exit.i
  %i.pl = icmp ugt i64 %.pre349, %.pre348
  br i1 %i.pl, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %GC_remove_from_fl_at.exit.i._crit_edge, %bb.cs
  %i.pm = phi i64 [ %i.pq, %bb.cs ], [ %.pre348, %GC_remove_from_fl_at.exit.i._crit_edge ]
  %.02837.i = phi ptr [ %i.pp, %bb.cs ], [ %.3167, %GC_remove_from_fl_at.exit.i._crit_edge ] ; 2 uses
  %i.pn = tail call fastcc i32 @get_index(i64 noundef %i.pm)
  %.not.i237 = icmp eq i32 %i.pn, 0
  br i1 %.not.i237, label %GC_is_black_listed.exit, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i
  %i.po = icmp ule ptr %.02837.i, inttoptr (i64 -4194305 to ptr)
  %i.pp = getelementptr inbounds nuw i8, ptr %.02837.i, i64 4194304 ; 2 uses
  %i.pq = ptrtoint ptr %i.pp to i64               ; 2 uses
  %i.pr = icmp ugt i64 %.pre349, %i.pq
  %or.cond.i = select i1 %i.po, i1 %i.pr, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !339

._crit_edge.i:                                    ; preds = %bb.cs, %GC_remove_from_fl_at.exit.i._crit_edge
  %i.ps = add i64 %.pre349, -1
  %i.pt = tail call fastcc i32 @get_index(i64 noundef %i.ps)
  %.not32.i = icmp eq i32 %i.pt, 0
  br i1 %.not32.i, label %GC_is_black_listed.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.142.i = getelementptr inbounds nuw i8, ptr %.3167, i64 4096 ; 3 uses
  %i.pu = ptrtoint ptr %.142.i to i64             ; 5 uses
  %i.pv = icmp ugt i64 %.pre349, %i.pu            ; 2 uses
  br i1 %i.pv, label %.lr.ph44.i, label %GC_install_counts.exit

.lr.ph44.i:                                       ; preds = %.preheader.i, %bb.cu
  %i.pw = phi i64 [ %i.qo, %bb.cu ], [ %i.pu, %.preheader.i ] ; 3 uses
  %.143.i = phi ptr [ %.1.i236, %bb.cu ], [ %.142.i, %.preheader.i ]
  %i.px = lshr i64 %i.pw, 22                      ; 2 uses
  %i.py = and i64 %i.px, 2047
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.py
  %i.qa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %.lr.ph44.i
  %.0.in.i234 = phi ptr [ %i.pz, %.lr.ph44.i ], [ %i.qg, %bb.ct ]
  %.0.i235 = load ptr, ptr %.0.in.i234, align 8   ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0.i235, i64 8208
  %i.qc = load i64, ptr %i.qb, align 8
  %i.qd = icmp ne i64 %i.qc, %i.px
  %i.qe = icmp ne ptr %.0.i235, %i.qa
  %i.qf = select i1 %i.qd, i1 %i.qe, i1 false
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i235, i64 8216
  br i1 %i.qf, label %bb.ct, label %bb.cu, !llvm.loop !340

bb.cu:                                            ; preds = %bb.ct
  %i.qh = sub i64 %i.pw, %.pre348
  %i.qi = ashr i64 %i.qh, 12
  %i.qj = lshr i64 %i.pw, 12
  %i.qk = and i64 %i.qj, 1023
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %.0.i235, i64 %i.qk
  %i.qm = tail call i64 @llvm.umin.i64(i64 %i.qi, i64 4095)
  %i.qn = inttoptr i64 %i.qm to ptr
  store ptr %i.qn, ptr %i.ql, align 8
  %.1.i236 = getelementptr inbounds nuw i8, ptr %.143.i, i64 4096 ; 2 uses
  %i.qo = ptrtoint ptr %.1.i236 to i64            ; 2 uses
  %i.qp = icmp ugt i64 %.pre349, %i.qo
  br i1 %i.qp, label %.lr.ph44.i, label %GC_install_counts.exit, !llvm.loop !341

GC_install_counts.exit:                           ; preds = %bb.cu, %.preheader.i
  %i.qq = tail call fastcc i32 @setup_header(ptr noundef nonnull %.6, ptr noundef %.3167, i64 noundef %0, i32 noundef %1, i32 noundef %2)
  %.not203 = icmp eq i32 %i.qq, 0
  br i1 %.not203, label %bb.cv, label %bb.da

bb.cv:                                            ; preds = %GC_install_counts.exit
  %i.qr = icmp ult i64 %i.b, 4097
  br i1 %i.qr, label %GC_is_black_listed.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qs = lshr i64 %i.pu, 22                      ; 2 uses
  %i.qt = and i64 %i.qs, 2047
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.qt
  %i.qv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.0.in.i.i238 = phi ptr [ %i.qu, %bb.cw ], [ %i.rb, %bb.cx ]
  %.0.i.i239 = load ptr, ptr %.0.in.i.i238, align 8 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0.i.i239, i64 8208
  %i.qx = load i64, ptr %i.qw, align 8
  %i.qy = icmp ne i64 %i.qx, %i.qs
  %i.qz = icmp ne ptr %.0.i.i239, %i.qv
  %i.ra = select i1 %i.qy, i1 %i.qz, i1 false
  %i.rb = getelementptr inbounds nuw i8, ptr %.0.i.i239, i64 8216
  br i1 %i.ra, label %bb.cx, label %GC_find_header.exit.i240, !llvm.loop !2

GC_find_header.exit.i240:                         ; preds = %bb.cx
  %i.rc = lshr i64 %i.pu, 12
  %i.rd = and i64 %i.rc, 1023
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i239, i64 %i.rd
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = icmp ne ptr %i.rf, null
  %or.cond291 = and i1 %i.pv, %i.rg
  br i1 %or.cond291, label %.lr.ph.i242, label %GC_is_black_listed.exit

.lr.ph.i242:                                      ; preds = %GC_find_header.exit.i240, %bb.cz
  %i.rh = phi i64 [ %i.rw, %bb.cz ], [ %i.pu, %GC_find_header.exit.i240 ] ; 2 uses
  %.01619.i = phi ptr [ %i.rv, %bb.cz ], [ %.142.i, %GC_find_header.exit.i240 ]
  %i.ri = lshr i64 %i.rh, 22                      ; 2 uses
  %i.rj = and i64 %i.ri, 2047
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.rj
  %i.rl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %.lr.ph.i242
  %.0.in.i243 = phi ptr [ %i.rk, %.lr.ph.i242 ], [ %i.rr, %bb.cy ]
  %.0.i244 = load ptr, ptr %.0.in.i243, align 8   ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.0.i244, i64 8208
  %i.rn = load i64, ptr %i.rm, align 8
  %i.ro = icmp ne i64 %i.rn, %i.ri
  %i.rp = icmp ne ptr %.0.i244, %i.rl
  %i.rq = select i1 %i.ro, i1 %i.rp, i1 false
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i244, i64 8216
  br i1 %i.rq, label %bb.cy, label %bb.cz, !llvm.loop !16

bb.cz:                                            ; preds = %bb.cy
  %i.rs = lshr i64 %i.rh, 12
  %i.rt = and i64 %i.rs, 1023
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %.0.i244, i64 %i.rt
  store ptr null, ptr %i.ru, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %.01619.i, i64 4096 ; 2 uses
  %i.rw = ptrtoint ptr %i.rv to i64               ; 2 uses
  %i.rx = icmp ugt i64 %.pre349, %i.rw
  br i1 %i.rx, label %.lr.ph.i242, label %GC_is_black_listed.exit, !llvm.loop !17

bb.da:                                            ; preds = %GC_install_counts.exit
  %i.ry = ashr i64 %i.a, 12
  %i.rz = getelementptr inbounds nuw i8, ptr %.6, i64 40
  %i.sa = load i64, ptr %i.rz, align 8
  %i.sb = icmp eq i64 %i.sa, 0
  %i.sc = zext i1 %i.sb to i32
  tail call fastcc void @GC_remove_protection(ptr noundef nonnull %.3167, i64 noundef %i.ry, i32 noundef %i.sc)
  store i32 0, ptr @GC_fail_count, align 4
  %i.sd = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 24), align 8
  %i.se = sub i64 %i.sd, %i.b
  store i64 %i.se, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 24), align 8
  br label %GC_is_black_listed.exit

GC_is_black_listed.exit:                          ; preds = %tailrecurse.loopexit, %.thread259, %.lr.ph.i, %bb.cz, %bb.a, %._crit_edge.i, %GC_find_header.exit.i240, %bb.cv, %.thread287, %bb.da
  %.6175 = phi ptr [ null, %GC_find_header.exit.i240 ], [ null, %.lr.ph.i ], [ %.3167, %bb.da ], [ null, %.thread287 ], [ null, %bb.a ], [ null, %._crit_edge.i ], [ null, %bb.cv ], [ null, %bb.cz ], [ null, %.thread259 ], [ null, %tailrecurse.loopexit ]
  ret ptr %.6175
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @setup_header(ptr nofree noundef captures(address) initializes((16, 26), (32, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %2, 2048
  %i.b = or disjoint i32 %4, 32
  %spec.select = select i1 %i.a, i32 %i.b, i32 %4 ; 2 uses
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds [48 x i8], ptr @GC_obj_kinds, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  %i.g = or disjoint i32 %spec.select, 8
  %.1 = select i1 %.not, i32 %spec.select, i32 %i.g ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load i32, ptr %i.h, align 16
  %.not36 = icmp eq i32 %i.i, 0
  %i.j = or disjoint i32 %.1, 16
  %.2 = select i1 %.not36, i32 %.1, i32 %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i64 %2, ptr %i.k, align 8
  %i.l = trunc i32 %3 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.l, ptr %i.m, align 8
  %i.n = trunc nuw nsw i32 %.2 to i8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  store i8 %i.n, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load i64, ptr %i.q, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load i32, ptr %i.s, align 8
  %.not37 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not37, i64 0, i64 %2
  %.032 = add i64 %i.u, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %.032, ptr %i.v, align 8
  %i.w = lshr i64 %2, 4                           ; 6 uses
  %i.x = icmp ugt i64 %2, 2063
  %spec.store.select.i = select i1 %i.x, i64 0, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 22000), i64 %spec.store.select.i ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8 ; 4 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not33.i.i = icmp ult i64 %i.ae, 512
  br i1 %.not33.i.i, label %.lr.ph.split.i.i, label %GC_scratch_alloc.exit.i

.lr.ph.split.i.i:                                 ; preds = %bb.b, %bb.d
  %i.af = load i64, ptr @GC_page_size, align 8    ; 3 uses
  %notsub.i.i = add nsw i64 %i.af, -1
  %i.ag = icmp ult i64 %notsub.i.i, -65537
  %i.ah = add nsw i64 %i.af, 65535
  %i.ai = select i1 %i.ag, i64 %i.ah, i64 -1, !prof !47
  %i.aj = sub i64 0, %i.af
  %i.ak = and i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = tail call ptr @GC_unix_get_mem(i64 noundef %i.ak) ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.c, label %bb.d, !prof !48

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.an = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.an(ptr noundef nonnull @.str.153, i64 noundef 512) #45, !inline_history !342
  %i.ao = load i64, ptr @GC_page_size, align 8    ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao                    ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 512
  %i.ar = add i64 %i.ao, 511
  %i.as = select i1 %i.aq, i64 %i.ar, i64 -1, !prof !47
  %i.at = and i64 %i.as, %i.ap                    ; 2 uses
  %i.au = tail call ptr @GC_unix_get_mem(i64 noundef %i.at) ; 2 uses
  %.not29.i.i = icmp eq ptr %i.au, null
  br i1 %.not29.i.i, label %.thread, label %GC_scratch_alloc.exit.thread24.i

GC_scratch_alloc.exit.thread24.i:                 ; preds = %bb.c
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.aw = add i64 %i.av, %i.at
  store i64 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.ay = add i64 %i.ax, %i.ak
  store i64 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %.not.i.i = icmp ult i64 %i.ak, 512
  br i1 %.not.i.i, label %.lr.ph.split.i.i, label %GC_scratch_alloc.exit.thread27.i

GC_scratch_alloc.exit.thread27.i:                 ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  store ptr %i.ba, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  br label %bb.e

GC_scratch_alloc.exit.i:                          ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 512
  store ptr %i.bb, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.bc = icmp eq ptr %i.aa, null
  br i1 %i.bc, label %.thread, label %bb.e

bb.e:                                             ; preds = %GC_scratch_alloc.exit.i, %GC_scratch_alloc.exit.thread27.i, %GC_scratch_alloc.exit.thread24.i
  %.026.i26.i = phi ptr [ %i.au, %GC_scratch_alloc.exit.thread24.i ], [ %i.aa, %GC_scratch_alloc.exit.i ], [ %i.al, %GC_scratch_alloc.exit.thread27.i ] ; 37 uses
  %i.bd = load i32, ptr @GC_print_stats, align 4
  %.not22.i = icmp eq i32 %i.bd, 0
  br i1 %.not22.i, label %bb.g, label %bb.f, !prof !47

bb.f:                                             ; preds = %bb.e
  %i.be = trunc nuw i64 %spec.store.select.i to i32 ; 2 uses
  %i.bf = shl nuw nsw i32 %i.be, 4
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.218, i32 noundef %i.be, i32 noundef %i.bf)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = icmp eq i64 %spec.store.select.i, 0
  br i1 %i.bg, label %vector.body, label %.preheader29.i

vector.body:                                      ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 16
  store <8 x i16> splat (i16 1), ptr %.026.i26.i, align 2
  store <8 x i16> splat (i16 1), ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 48
  store <8 x i16> splat (i16 1), ptr %i.bi, align 2
  store <8 x i16> splat (i16 1), ptr %i.bj, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 80
  store <8 x i16> splat (i16 1), ptr %i.bk, align 2
  store <8 x i16> splat (i16 1), ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 112
  store <8 x i16> splat (i16 1), ptr %i.bm, align 2
  store <8 x i16> splat (i16 1), ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 144
  store <8 x i16> splat (i16 1), ptr %i.bo, align 2
  store <8 x i16> splat (i16 1), ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 160
  %i.br = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 176
  store <8 x i16> splat (i16 1), ptr %i.bq, align 2
  store <8 x i16> splat (i16 1), ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 192
  %i.bt = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 208
  store <8 x i16> splat (i16 1), ptr %i.bs, align 2
  store <8 x i16> splat (i16 1), ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 224
  %i.bv = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 240
  store <8 x i16> splat (i16 1), ptr %i.bu, align 2
  store <8 x i16> splat (i16 1), ptr %i.bv, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 256
  %i.bx = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 272
  store <8 x i16> splat (i16 1), ptr %i.bw, align 2
  store <8 x i16> splat (i16 1), ptr %i.bx, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 288
  %i.bz = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 304
  store <8 x i16> splat (i16 1), ptr %i.by, align 2
  store <8 x i16> splat (i16 1), ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 320
  %i.cb = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 336
  store <8 x i16> splat (i16 1), ptr %i.ca, align 2
  store <8 x i16> splat (i16 1), ptr %i.cb, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 352
  %i.cd = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 368
  store <8 x i16> splat (i16 1), ptr %i.cc, align 2
  store <8 x i16> splat (i16 1), ptr %i.cd, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 384
  %i.cf = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 400
  store <8 x i16> splat (i16 1), ptr %i.ce, align 2
  store <8 x i16> splat (i16 1), ptr %i.cf, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 416
  %i.ch = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 432
  store <8 x i16> splat (i16 1), ptr %i.cg, align 2
  store <8 x i16> splat (i16 1), ptr %i.ch, align 2
  %i.ci = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 448
  %i.cj = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 464
  store <8 x i16> splat (i16 1), ptr %i.ci, align 2
  store <8 x i16> splat (i16 1), ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 480
  %i.cl = getelementptr inbounds nuw i8, ptr %.026.i26.i, i64 496
  store <8 x i16> splat (i16 1), ptr %i.ck, align 2
  store <8 x i16> splat (i16 1), ptr %i.cl, align 2
  br label %.loopexit.i

.preheader29.i:                                   ; preds = %bb.g, %.preheader29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1.a, %.preheader29.i ], [ 0, %bb.g ] ; 6 uses
  %5 = urem i64 %indvars.iv.i, %i.w
  %6 = trunc nuw nsw i64 %5 to i16
  %7 = getelementptr inbounds nuw [2 x i8], ptr %.026.i26.i, i64 %indvars.iv.i
  store i16 %6, ptr %7, align 2
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %8 = urem i64 %indvars.iv.next.i, %i.w
  %9 = trunc nuw nsw i64 %8 to i16
  %10 = getelementptr inbounds nuw [2 x i8], ptr %.026.i26.i, i64 %indvars.iv.next.i
  store i16 %9, ptr %10, align 2
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cm = urem i64 %indvars.iv.next.i.1, %i.w
  %i.cn = trunc nuw nsw i64 %i.cm to i16
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.026.i26.i, i64 %indvars.iv.next.i.1
  store i16 %i.cn, ptr %i.co, align 2
  %indvars.iv.next.i.a = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.cp = urem i64 %indvars.iv.next.i.a, %i.w
  %i.cq = trunc nuw nsw i64 %i.cp to i16
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.026.i26.i, i64 %indvars.iv.next.i.a
  store i16 %i.cq, ptr %i.cr, align 2
  %indvars.iv.next.i.1.a = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1.a, 256
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.preheader29.i, !llvm.loop !343

.loopexit.i:                                      ; preds = %.preheader29.i, %vector.body
  store ptr %.026.i26.i, ptr %i.y, align 8
  %.pre = load i8, ptr %i.o, align 1
  br label %bb.h

.thread:                                          ; preds = %bb.c, %GC_scratch_alloc.exit.i
  store i64 4096, ptr %i.k, align 8
  store i64 0, ptr %i.v, align 8
  %i.cs = load i8, ptr %i.o, align 1
  %i.ct = or i8 %i.cs, 32
  store i8 %i.ct, ptr %i.o, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.cu, align 8
  br label %bb.j

bb.h:                                             ; preds = %.loopexit.i, %bb.a
  %i.cv = phi i8 [ %.pre, %.loopexit.i ], [ %i.n, %bb.a ]
  %i.cw = and i8 %i.cv, 32
  %.not39 = icmp eq i8 %i.cw, 0
  %i.cx = select i1 %.not39, i64 %i.w, i64 0
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 22000), i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.dc = icmp ugt i64 %i.db, 2048
  br i1 %i.dc, label %GC_clear_hdr_marks.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dd = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.de = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.df = udiv i64 4096, %i.de
  %i.dg = mul i64 %i.df, %i.dd
  %i.dh = lshr i64 %i.dg, 4
  br label %GC_clear_hdr_marks.exit

GC_clear_hdr_marks.exit:                          ; preds = %bb.h, %bb.i
  %i.di = phi i64 [ %i.dh, %bb.i ], [ 256, %bb.h ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %i.dj, i8 0, i64 257, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 1, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store volatile i64 0, ptr %i.dl, align 8
  %i.dm = load i64, ptr @GC_gc_no, align 8
  %i.dn = trunc i64 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.dn, ptr %i.do, align 2
  br label %bb.j

bb.j:                                             ; preds = %.thread, %GC_clear_hdr_marks.exit
  %.135 = phi i32 [ 1, %GC_clear_hdr_marks.exit ], [ 0, %.thread ]
  ret i32 %.135
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_remove_protection(ptr noundef %0, i64 noundef range(i64 -2251799813685248, 2251799813685248) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @GC_incremental, align 4
  %i.b = icmp eq i32 %i.a, 0
  %.b = load i1, ptr @GC_manual_vdb, align 4
  %or.cond = select i1 %i.b, i1 true, i1 %.b
  %i.c = load i32, ptr @clear_refs_fd, align 4
  %i.d = icmp ne i32 %i.c, -1
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.d
  br i1 %or.cond3, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.g = sub i64 0, %i.f                          ; 2 uses
  %i.h = and i64 %i.g, %i.e                       ; 5 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %1 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, -1
  %i.m = add i64 %i.l, %i.f
  %i.n = and i64 %i.m, %i.g                       ; 4 uses
  %i.o = icmp ugt i64 %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.not31.not = icmp eq i32 %2, 0
  br i1 %.not31.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.p = phi i64 [ %i.y, %.lr.ph.split.us ], [ %i.h, %.lr.ph ] ; 2 uses
  %.037.us = phi ptr [ %i.x, %.lr.ph.split.us ], [ %i.i, %.lr.ph ]
  %i.q = lshr i64 %i.p, 12
  %i.r = lshr i64 %i.p, 18
  %i.s = and i64 %i.r, 4095
  %i.t = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.s
  %i.u = and i64 %i.q, 63
  %i.v = shl nuw i64 1, %i.u
  %i.w = atomicrmw volatile or ptr %i.t, i64 %i.v monotonic, align 8 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.037.us, i64 4096 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = icmp ugt i64 %i.n, %i.y
  br i1 %i.z, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !344

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.aa = phi i64 [ %i.ak, %bb.d ], [ %i.h, %.lr.ph ] ; 2 uses
  %.037 = phi ptr [ %i.aj, %bb.d ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.ab = icmp uge ptr %.037, %0
  %.not32 = icmp ult ptr %.037, %i.j
  %or.cond34 = and i1 %.not32, %i.ab
  br i1 %or.cond34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.ac = lshr i64 %i.aa, 12
  %i.ad = lshr i64 %i.aa, 18
  %i.ae = and i64 %i.ad, 4095
  %i.af = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.ae
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = atomicrmw volatile or ptr %i.af, i64 %i.ah monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.037, i64 4096 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = icmp ugt i64 %i.n, %i.ak
  br i1 %i.al, label %.lr.ph.split, label %._crit_edge, !llvm.loop !344

._crit_edge:                                      ; preds = %bb.d, %.lr.ph.split.us, %bb.b
  %i.am = sub i64 %i.n, %i.h                      ; 3 uses
  %i.an = load i32, ptr @GC_pages_executable, align 4
  %.not = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not, i32 3, i32 7
  %i.ap = tail call i32 @mprotect(ptr noundef %i.i, i64 noundef %i.am, i32 noundef %i.ao) #45
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ar = load i32, ptr @GC_pages_executable, align 4
  %.not30 = icmp eq i32 %i.ar, 0
  %i.as = tail call ptr @__errno_location() #51
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.158, ptr noundef %i.i, i64 noundef %i.am, i32 noundef %i.at)
  %i.au = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.au(ptr noundef nonnull @.str.159) #45
  tail call void @abort() #48
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.160, ptr noundef %i.i, i64 noundef %i.am, i32 noundef %i.at)
  %i.av = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.av(ptr noundef nonnull @.str.161) #45
  tail call void @abort() #48
  unreachable

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @GC_typed_mark_proc(ptr noundef %0, ptr nofree noundef writeonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef %3) #2 {
bb.a:
  %4 = alloca [8 x %struct.hce], align 16         ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %3
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr @GC_greatest_plausible_heap_addr, align 8
  %i.e = load ptr, ptr @GC_least_plausible_heap_addr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %.not46 = icmp eq i64 %i.c, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.03449 = phi ptr [ %0, %.lr.ph ], [ %i.v, %.critedge ] ; 2 uses
  %.03548 = phi i64 [ %i.c, %.lr.ph ], [ %i.u, %.critedge ] ; 2 uses
  %.03647 = phi ptr [ %1, %.lr.ph ], [ %.2, %.critedge ] ; 4 uses
  %i.h = and i64 %.03548, 1
  %.not43 = icmp eq i64 %i.h, 0
  br i1 %.not43, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %.03449, align 8           ; 4 uses
  %.not44 = icmp ult i64 %i.i, %i.f
  %.not45 = icmp ugt i64 %i.i, %i.g
  %or.cond = select i1 %.not44, i1 true, i1 %.not45
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = lshr i64 %i.i, 12                        ; 2 uses
  %i.l = and i64 %i.k, 7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.l ; 3 uses
end_hunk_0
