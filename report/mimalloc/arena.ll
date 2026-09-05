Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/arena?download=true
inline.NumInlined: 308
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mi_debug_show_arenas:bb.a
bb.am:                                            ; preds = %bb.al
  %i.eq = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.er = call zeroext i1 @mi_bbitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.eq, i64 noundef %i.cp, i64 noundef 1) #17
  br i1 %i.er, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.es = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.et = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.es, i64 noundef %i.cp, i64 noundef 1) #17
  br i1 %i.et, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.ev = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.eu, i64 noundef %i.cp, i64 noundef 1) #17
  %.74.peel.i.i.i = select i1 %i.ev, i8 95, i8 46
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.263.peel.i.i.i = phi i32 [ %.364.i.i.i, %bb.am ], [ %.364.i.i.i, %bb.ak ], [ 37, %bb.al ], [ 33, %bb.an ], [ 37, %bb.ao ]
  %.2.peel.i.i.i = phi i8 [ 63, %bb.am ], [ 45, %bb.ak ], [ 105, %bb.al ], [ 126, %bb.an ], [ %.74.peel.i.i.i, %bb.ao ]
  %i.ew = icmp sgt i64 %.166.i.i.i, 2
  %spec.select75.peel.i.i.i = select i1 %i.ew, i8 62, i8 %.2.peel.i.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.aj
  %.168.peel.i.i.i = phi i64 [ %i.da, %bb.aj ], [ %.168.i.i.i, %bb.ap ]
  %.166.peel.i.i.i = phi i64 [ %i.en, %bb.aj ], [ %i.hp, %bb.ap ]
  %.364.peel.i.i.i = phi i32 [ %.162.peel.i.i.i, %bb.aj ], [ %.263.peel.i.i.i, %bb.ap ] ; 3 uses
  %.3.peel.i.i.i = phi i8 [ %.1.peel.i.i.i, %bb.aj ], [ %spec.select75.peel.i.i.i, %bb.ap ]
  %.not73.peel.i.i.i = icmp eq i32 %.364.peel.i.i.i, %.160.i.i.i
  br i1 %.not73.peel.i.i.i, label %mi_debug_show_page_bfield.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ho
  %i.ey = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.ex, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %.364.peel.i.i.i) #17
  %i.ez = sext i32 %i.ey to i64
  %i.fa = add i64 %i.ho, %i.ez
  br label %mi_debug_show_page_bfield.exit.i.i

bb.as:                                            ; preds = %bb.bm, %bb.x
  %.3.i.i = phi i64 [ %.213.i.i, %bb.x ], [ %i.ho, %bb.bm ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i.i.i, %bb.bm ] ; 3 uses
  %.05983.i.i.i = phi i32 [ 37, %bb.x ], [ %.160.i.i.i, %bb.bm ] ; 2 uses
  %.06182.i.i.i = phi i32 [ %.11532.i.i, %bb.x ], [ %.364.i.i.i, %bb.bm ] ; 2 uses
  %.06581.i.i.i = phi i64 [ %.11831.i.i, %bb.x ], [ %i.hp, %bb.bm ] ; 6 uses
  %.06780.i.i.i = phi i64 [ 0, %bb.x ], [ %.168.i.i.i, %bb.bm ] ; 6 uses
  %i.fb = add i64 %indvars.iv.i.i.i, %.26434.i.i  ; 5 uses
  %.val.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.fc = shl i64 %i.fb, 16
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.fc ; 2 uses
  %i.fe = call ptr @_mi_safe_ptr_page(ptr noundef %i.fd) #17 ; 14 uses
  %.not.i75.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i75.i.i, label %bb.bf, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fg
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, -65536
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = icmp eq ptr %i.fd, %i.fk
  br i1 %i.fl, label %bb.au, label %bb.bf

bb.au:                                            ; preds = %bb.at
  %i.fm = add i64 %.06780.i.i.i, 1
  %i.fn = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.fo = call zeroext i1 @_mi_meta_is_meta_page(ptr noundef %i.fn, ptr noundef nonnull %i.fe) #17
  br i1 %i.fo, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fp = getelementptr i8, ptr %i.fe, i64 58
  %.val77.i.i.i = load i16, ptr %i.fp, align 2, !tbaa !66 ; 2 uses
  %i.fq = icmp eq i16 %.val77.i.i.i, 1
  br i1 %i.fq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fr = getelementptr i8, ptr %i.fe, i64 24
  %.val.i76.i.i = load i64, ptr %i.fr, align 8, !tbaa !65
  %i.fs = zext i16 %.val77.i.i.i to i64
  %i.ft = icmp eq i64 %.val.i76.i.i, %i.fs
  %spec.select.i.i.i = select i1 %i.ft, i8 102, i8 112
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0.i77.i.i = phi i8 [ %spec.select.i.i.i, %bb.aw ], [ 109, %bb.au ], [ 115, %bb.av ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fv = load atomic i64, ptr %i.fu monotonic, align 8
  %i.fw = and i64 %i.fv, -4
  %i.fx = icmp ult i64 %i.fw, 5
  br i1 %i.fx, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = call signext i8 @_mi_toupper(i8 noundef signext %.0.i77.i.i) #17
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1.i.i.i = phi i8 [ %.0.i77.i.i, %bb.ax ], [ %i.fy, %bb.ay ]
  %i.fz = getelementptr i8, ptr %i.fe, i64 60
  %.val.i.i.i.i.i = load i16, ptr %i.fz, align 4, !tbaa !60
  %i.ga = zext i16 %.val.i.i.i.i.i to i64
  %i.gb = call i64 @_mi_os_page_size() #17
  %i.gc = mul i64 %i.gb, %i.ga                    ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ge = getelementptr i8, ptr %i.fe, i64 40
  %.val4.i.i.i.i.i = load i64, ptr %i.ge, align 8, !tbaa !63 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fe, i64 58
  %.val5.i.i.i.i.i = load i16, ptr %i.gf, align 2, !tbaa !66
  %i.gg = zext i16 %.val5.i.i.i.i.i to i64
  %i.gh = mul i64 %.val4.i.i.i.i.i, %i.gg
  br label %mi_page_commit_usage.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gi = load i64, ptr %i.ff, align 8, !tbaa !64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gi
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = and i64 %i.gk, 65535
  %i.gm = sub i64 %i.gc, %i.gl
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %i.fe, i64 40
  %.val.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !63
  br label %mi_page_commit_usage.exit.i.i.i

mi_page_commit_usage.exit.i.i.i:                  ; preds = %bb.bb, %bb.ba
  %.val.i78.i.i.i = phi i64 [ %.val4.i.i.i.i.i, %bb.ba ], [ %.val.pre.i.i.i.i, %bb.bb ]
  %i.gn = phi i64 [ %i.gh, %bb.ba ], [ %i.gm, %bb.bb ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !65
  %i.gq = mul i64 %.val.i78.i.i.i, 100
  %i.gr = mul i64 %i.gq, %i.gp
  %i.gs = udiv i64 %i.gr, %i.gn
  %i.gt = trunc i64 %i.gs to i32                  ; 3 uses
  %i.gu = icmp slt i32 %i.gt, 25
  br i1 %i.gu, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %mi_page_commit_usage.exit.i.i.i
  %i.gv = icmp samesign ult i32 %i.gt, 50
  br i1 %i.gv, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gw = icmp samesign ult i32 %i.gt, 75
  %..i.i.i = select i1 %i.gw, i32 36, i32 32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %mi_page_commit_usage.exit.i.i.i
  %.162.i.i.i = phi i32 [ 33, %bb.bc ], [ 31, %mi_page_commit_usage.exit.i.i.i ], [ %..i.i.i, %bb.bd ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fe, i64 116
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !15
  %i.gz = zext i32 %i.gy to i64
  br label %bb.bk

bb.bf:                                            ; preds = %bb.at, %bb.as
  %i.ha = icmp sgt i64 %.06581.i.i.i, 0
  br i1 %i.ha, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hb = load i64, ptr %i.aw, align 8, !tbaa !70
  %i.hc = icmp uge i64 %i.fb, %i.hb
  %.not72.i.i.i = icmp samesign ugt i64 %indvars.iv.i.i.i, 8
  %or.cond79.i.i.i = select i1 %i.co, i1 true, i1 %.not72.i.i.i
  %or.cond86.i.i.i = select i1 %i.hc, i1 %or.cond79.i.i.i, i1 false
  br i1 %or.cond86.i.i.i, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.hd = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.he = call zeroext i1 @mi_bbitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.hd, i64 noundef %i.fb, i64 noundef 1) #17
  br i1 %i.he, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.hf = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.hg = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.hf, i64 noundef %i.fb, i64 noundef 1) #17
  br i1 %i.hg, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hh = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.hi = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.hh, i64 noundef %i.fb, i64 noundef 1) #17
  %.74.i.i.i = select i1 %i.hi, i8 95, i8 46
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.168.i.i.i = phi i64 [ %i.fm, %bb.be ], [ %.06780.i.i.i, %bb.bj ], [ %.06780.i.i.i, %bb.bi ], [ %.06780.i.i.i, %bb.bg ], [ %.06780.i.i.i, %bb.bf ], [ %.06780.i.i.i, %bb.bh ] ; 3 uses
  %.166.i.i.i = phi i64 [ %i.gz, %bb.be ], [ %.06581.i.i.i, %bb.bj ], [ %.06581.i.i.i, %bb.bi ], [ %.06581.i.i.i, %bb.bg ], [ %.06581.i.i.i, %bb.bf ], [ %.06581.i.i.i, %bb.bh ] ; 3 uses
  %.364.i.i.i = phi i32 [ %.162.i.i.i, %bb.be ], [ 37, %bb.bj ], [ 33, %bb.bi ], [ 37, %bb.bg ], [ %.06182.i.i.i, %bb.bf ], [ %.06182.i.i.i, %bb.bh ] ; 6 uses
  %.3.i.i.i = phi i8 [ %.1.i.i.i, %bb.be ], [ %.74.i.i.i, %bb.bj ], [ 126, %bb.bi ], [ 105, %bb.bg ], [ 45, %bb.bf ], [ 63, %bb.bh ]
  %.not73.i.i.i = icmp eq i32 %.364.i.i.i, %.05983.i.i.i
  br i1 %.not73.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.3.i.i
  %i.hk = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.hj, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %.364.i.i.i) #17
  %i.hl = sext i32 %i.hk to i64
  %i.hm = add i64 %.3.i.i, %i.hl
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.4.i.i = phi i64 [ %.3.i.i, %bb.bk ], [ %i.hm, %bb.bl ] ; 2 uses
  %.160.i.i.i = phi i32 [ %.05983.i.i.i, %bb.bk ], [ %.364.i.i.i, %bb.bl ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 %.4.i.i
  store i8 %.3.i.i.i, ptr %i.hn, align 1, !tbaa !15
  %i.ho = add nuw nsw i64 %.4.i.i, 1              ; 4 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.hp = add nsw i64 %.166.i.i.i, -1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %.peel.begin.i.i.i, label %bb.as, !llvm.loop !134

mi_debug_show_page_bfield.exit.i.i:               ; preds = %bb.ar, %bb.aq
  %.5.i.i = phi i64 [ %i.ho, %bb.aq ], [ %i.fa, %bb.ar ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 %.5.i.i
  store i8 %.3.peel.i.i.i, ptr %i.hq, align 1, !tbaa !15
  %i.hr = add nuw nsw i64 %.5.i.i, 1              ; 2 uses
  %i.hs = add nsw i64 %.166.peel.i.i.i, -1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hr
  %i.hu = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.ht, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef 37) #17
  %i.hv = sext i32 %i.hu to i64
  %i.hw = add i64 %i.hr, %i.hv                    ; 2 uses
  %i.hx = add i64 %.168.peel.i.i.i, %.16135.i.i
  %i.hy = add nuw nsw i64 %i.hw, 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hw
  store i8 32, ptr %i.hz, align 1, !tbaa !15
  br label %bb.bq

bb.bn:                                            ; preds = %_mi_memset.exit.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 %.213.i.i ; 2 uses
  %i.ib = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31
  %.not.i78.i.i = icmp ult i64 %i.ib, 64
  br i1 %.not.i78.i.i, label %bb.bp, label %bb.bo, !prof !30

bb.bo:                                            ; preds = %bb.bn
  %i.ic = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 111, ptr nonnull %i.ia, i64 64) #20, !srcloc !84 ; 0 uses
  br label %_mi_memset.exit79.i.i

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ia, i8 111, i64 64, i1 false)
  br label %_mi_memset.exit79.i.i

_mi_memset.exit79.i.i:                            ; preds = %bb.bp, %bb.bo
  %i.id = add i64 %.213.i.i, 64
  br label %bb.bq

bb.bq:                                            ; preds = %_mi_memset.exit79.i.i, %mi_debug_show_page_bfield.exit.i.i
  %.219.i.i = phi i64 [ %i.hs, %mi_debug_show_page_bfield.exit.i.i ], [ %.11831.i.i, %_mi_memset.exit79.i.i ] ; 2 uses
  %.216.i.i = phi i32 [ %.364.peel.i.i.i, %mi_debug_show_page_bfield.exit.i.i ], [ %.11532.i.i, %_mi_memset.exit79.i.i ] ; 2 uses
  %.6.i.i = phi i64 [ %i.hy, %mi_debug_show_page_bfield.exit.i.i ], [ %i.id, %_mi_memset.exit79.i.i ]
  %.2.i.i = phi i64 [ %i.hx, %mi_debug_show_page_bfield.exit.i.i ], [ %.16135.i.i, %_mi_memset.exit79.i.i ] ; 3 uses
  %i.ie = add i64 %.26434.i.i, 64                 ; 3 uses
  %i.if = add nuw nsw i64 %.05636.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.if, 8
  br i1 %exitcond.not.i.i, label %bb.q, label %bb.r, !llvm.loop !135

mi_debug_show_chunks.exit.i:                      ; preds = %bb.q, %mi_arena_used_slices.exit.i.i
  %.060.lcssa.i.i = phi i64 [ 0, %mi_arena_used_slices.exit.i.i ], [ %.2.i.i, %bb.q ] ; 2 uses
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.29, i64 noundef %.060.lcssa.i.i) #17
  %i.ig = add i64 %.060.lcssa.i.i, %.035.i
  br label %bb.br

bb.br:                                            ; preds = %mi_debug_show_chunks.exit.i, %bb.b
  %.2.i = phi i64 [ %i.ig, %mi_debug_show_chunks.exit.i ], [ %.035.i, %bb.b ] ; 2 uses
  %i.ih = add nuw i64 %.03034.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ih, %i.f
  br i1 %exitcond.not.i, label %mi_debug_show_arenas_ex.exit, label %bb.b, !llvm.loop !136

mi_debug_show_arenas_ex.exit:                     ; preds = %bb.br, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %bb.br ]
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.25, i64 noundef %.0.lcssa.i) #17
  ret void
}

declare ptr @mi_heap_main() local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_arenas_print() local_unnamed_addr #5 {
bb.a:
  tail call void @mi_debug_show_arenas() #18
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.mi_memid_s, align 8         ; 5 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 -1) ; 2 uses
  %i.d = icmp sgt i32 %1, -1
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @_mi_os_numa_node_count() #17
  %i.f = srem i32 %spec.store.select, %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.022 = phi i32 [ %i.f, %bb.e ], [ %spec.store.select, %bb.d ] ; 3 uses
  %i.g = tail call ptr @_mi_subproc() #17         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = call ptr @_mi_os_alloc_huge_os_pages(ptr noundef %i.g, i64 noundef %0, i32 noundef %.022, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #17 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = load i64, ptr %i.b, align 8              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3, i64 noundef %0) #17
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.4, i32 noundef %.022, i64 noundef %i.j, i64 noundef %0) #17
  %i.l = load i64, ptr %i.a, align 8, !tbaa !31
  %i.m = call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %i.g, ptr noundef nonnull %i.h, i64 noundef %i.l, i32 noundef %.022, i1 noundef zeroext %3, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5, ptr noundef null, ptr noundef null, ptr noundef %4) #18
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.a, align 8, !tbaa !31
  call void @_mi_os_free(ptr noundef %i.g, ptr noundef nonnull %i.h, i64 noundef %i.n, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i32 [ 12, %bb.g ], [ 12, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j
  %.1 = phi i32 [ %.0, %bb.j ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @_mi_os_numa_node_count() local_unnamed_addr #6

declare ptr @_mi_os_alloc_huge_os_pages(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #6

declare void @_mi_verbose_message(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null) #18
  ret i32 %i.a
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_interleave(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1
  %or.cond = icmp ult i64 %i.b, 2147483647
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %1 to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @_mi_os_numa_node_count() #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = phi i32 [ %i.c, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %i.f = zext nneg i32 %spec.store.select to i64  ; 3 uses
  %i.g = udiv i64 %0, %i.f
  %i.h = urem i64 %0, %i.f
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = udiv i64 %2, %i.f
  %i.k = add i64 %i.j, 50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ]
  %i.m = sext i32 %i.e to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.03849 = phi i64 [ %0, %bb.g ], [ %.139, %bb.i ] ; 2 uses
  %i.n = icmp samesign ugt i64 %i.h, %indvars.iv
  %i.o = zext i1 %i.n to i64
  %spec.select = add i64 %i.g, %i.o               ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select, i32 noundef %i.p, i64 noundef %i.l, i1 noundef zeroext false, ptr noundef null) #18 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.139 = tail call i64 @llvm.usub.sat.i64(i64 %.03849, i64 %spec.select)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp sge i64 %indvars.iv.next, %i.m
  %i.s = icmp ule i64 %.03849, %spec.select
  %.not47 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %.not47, label %.loopexit, label %bb.h, !llvm.loop !0

end_hunk_0
