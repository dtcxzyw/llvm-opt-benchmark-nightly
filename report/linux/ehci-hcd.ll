inline.NumInlined: 739
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@qh_urb_transaction:bb.a
.critedge172:                                     ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ae

.critedge172.thread:                              ; preds = %bb.aa, %bb.ac, %bb.z, %bb.y, %bb.w
  %i.gc = phi i32 [ %i.dj, %bb.w ], [ %i.dj, %bb.y ], [ %i.dj, %bb.z ], [ %i.dj, %bb.aa ], [ %.4151222, %bb.ac ]
  %.5 = phi ptr [ %.1, %bb.w ], [ %.1, %bb.y ], [ %.1, %bb.z ], [ %.1, %bb.aa ], [ %i.fo, %bb.ac ]
  %i.gd = load i32, ptr %i.ey, align 4
  %i.ge = and i32 %i.gd, 128
  %.not167 = icmp eq i32 %i.ge, 0
  br i1 %.not167, label %bb.ad, label %qtd_list_free.exit, !prof !22

bb.ad:                                            ; preds = %.critedge172.thread
  %i.gf = getelementptr i8, ptr %.5, i64 8
  %i.gg = or i32 %i.gc, 32768
  store i32 %i.gg, ptr %i.gf, align 8
  br label %qtd_list_free.exit

bb.ae:                                            ; preds = %.critedge172, %.thread212, %ehci_qtd_alloc.exit179.thread
  %i.gh = load ptr, ptr %2, align 8               ; 2 uses
  %.not1.i = icmp eq ptr %i.gh, %2
  br i1 %.not1.i, label %qtd_list_free.exit, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %bb.ae, %.lr.ph.i201
  %.02.i = phi ptr [ %.012.i, %.lr.ph.i201 ], [ %i.gh, %bb.ae ] ; 5 uses
  %.012.i = load ptr, ptr %.02.i, align 8         ; 4 uses
  %i.gi = getelementptr i8, ptr %.02.i, i64 -64
  %i.gj = getelementptr i8, ptr %.02.i, i64 8     ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %i.gl = getelementptr i8, ptr %.012.i, i64 8
  store ptr %i.gk, ptr %i.gl, align 8
  store volatile ptr %.012.i, ptr %i.gk, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.02.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.gj, align 8
  %.val.i202 = load ptr, ptr %i.e, align 8
  %i.gm = getelementptr i8, ptr %.02.i, i64 -8
  %i.gn = load i64, ptr %i.gm, align 8
  call void @dma_pool_free(ptr noundef %.val.i202, ptr noundef %i.gi, i64 noundef %i.gn) #20
  %.not.i203 = icmp eq ptr %.012.i, %2
  br i1 %.not.i203, label %qtd_list_free.exit, label %.lr.ph.i201, !llvm.loop !141

qtd_list_free.exit:                               ; preds = %.lr.ph.i201, %bb.ae, %ehci_qtd_alloc.exit.thread, %.critedge172.thread, %bb.ad
  %.0127 = phi ptr [ null, %ehci_qtd_alloc.exit.thread ], [ %2, %.critedge172.thread ], [ %2, %bb.ad ], [ null, %bb.ae ], [ null, %.lr.ph.i201 ]
  ret ptr %.0127
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @qtd_list_free(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not1 = icmp eq ptr %i.a, %1
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 656
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02 = phi ptr [ %i.a, %.lr.ph ], [ %.012, %bb.b ] ; 5 uses
  %.012 = load ptr, ptr %.02, align 8             ; 4 uses
  %i.c = getelementptr i8, ptr %.02, i64 -64
  %i.d = getelementptr i8, ptr %.02, i64 8        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %.012, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store volatile ptr %.012, ptr %i.e, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.02, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.d, align 8
  %.val = load ptr, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %.02, i64 -8
  %i.h = load i64, ptr %i.g, align 8
  tail call void @dma_pool_free(ptr noundef %.val, ptr noundef %i.c, i64 noundef %i.h) #20
  %.not = icmp eq ptr %.012, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @qh_append_tds(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 256) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.thread, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @qh_make(ptr noundef %0, ptr noundef %1) #21 ; 3 uses
  store ptr %i.c, ptr %4, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %.thread, !prof !202

.thread:                                          ; preds = %bb.a, %bb.b
  %.053 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 8 uses
  %i.d = load volatile ptr, ptr %2, align 8       ; 2 uses
  %.not55 = icmp eq ptr %i.d, %2
  %i.e = getelementptr i8, ptr %i.d, i64 -64      ; 3 uses
  %spec.select = select i1 %.not55, ptr null, ptr %i.e, !prof !68 ; 8 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.c, label %bb.e, !prof !68

bb.c:                                             ; preds = %.thread
  %i.g = getelementptr i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 32512
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.053, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 4        ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, -128
  store i32 %i.n, ptr %i.l, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.thread
  %.not50 = icmp eq ptr %spec.select, null
  br i1 %.not50, label %bb.h, label %bb.f, !prof !68

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %spec.select, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
  store i32 64, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %.053, i64 56      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 56       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 32 dereferenceable(96) %i.r, ptr noundef nonnull align 32 dereferenceable(96) %i.e, i64 96, i1 false)
  store i64 %i.t, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %spec.select, i64 64 ; 5 uses
  %i.v = getelementptr i8, ptr %spec.select, i64 72 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.y, align 8
  store volatile ptr %i.x, ptr %i.w, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.u, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.v, align 8
  %i.z = getelementptr i8, ptr %i.r, i64 64       ; 3 uses
  %i.aa = load ptr, ptr %2, align 8               ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8
  store ptr %i.aa, ptr %i.z, align 8
  %i.ac = getelementptr i8, ptr %i.r, i64 72
  store ptr %2, ptr %i.ac, align 8
  store volatile ptr %i.z, ptr %2, align 8
  %i.ad = load volatile ptr, ptr %2, align 8      ; 3 uses
  %.not.i = icmp eq ptr %i.ad, %2
  br i1 %.not.i, label %list_splice_tail.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %.053, i64 24
  %i.af = getelementptr i8, ptr %.053, i64 32     ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr i8, ptr %2, i64 8
  %.val4.i = load ptr, ptr %i.ah, align 8         ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ai, align 8
  store ptr %i.ad, ptr %i.ag, align 8
  store ptr %i.ae, ptr %.val4.i, align 8
  store ptr %.val4.i, ptr %i.af, align 8
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %bb.f, %bb.g
  %i.aj = getelementptr i8, ptr %spec.select, i64 56 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %i.e, i8 0, i64 96, i1 false)
  store i64 %i.ak, ptr %i.aj, align 8
  store i32 64, ptr %i.o, align 8
  store i32 1, ptr %spec.select, align 32
  %i.al = getelementptr i8, ptr %spec.select, i64 4
  store i32 1, ptr %i.al, align 4
  store volatile ptr %i.u, ptr %i.u, align 32
  store volatile ptr %i.u, ptr %i.v, align 8
  store ptr %spec.select, ptr %i.q, align 8
  %i.am = load i64, ptr %i.aj, align 8
  %i.an = getelementptr i8, ptr %.053, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 -64
  %i.aq = trunc i64 %i.am to i32
  store i32 %i.aq, ptr %i.ap, align 32
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !203
  %i.ar = getelementptr i8, ptr %i.r, i64 8
  store i32 %i.p, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %1, i64 8
  store ptr %.053, ptr %i.as, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %list_splice_tail.exit, %bb.b
  %.054 = phi ptr [ %.053, %bb.e ], [ %.053, %list_splice_tail.exit ], [ null, %bb.b ]
  ret ptr %.054
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @qh_make(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = tail call fastcc ptr @ehci_qh_alloc(ptr noundef %0, i32 noundef 2080) #21, !srcloc !204 ; 25 uses
  %i.b = getelementptr i8, ptr %1, i64 64         ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 5 uses
  %i.h = lshr i32 %i.g, 7
  %i.i = and i32 %i.h, 3840
  %i.j = lshr i32 %i.g, 8
  %i.k = and i32 %i.j, 127
  %i.l = or disjoint i32 %i.i, %i.k               ; 5 uses
  %i.m = and i32 %i.g, 128                        ; 5 uses
  %i.n = lshr i32 %i.g, 30                        ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0                   ; 3 uses
  %.v.i = select i1 %.not.i, i64 1112, i64 984
  %i.o = getelementptr i8, ptr %i.c, i64 %.v.i
  %i.p = lshr i32 %i.g, 15
  %i.q = and i32 %i.p, 15
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.o, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val = load i16, ptr %i.u, align 1             ; 2 uses
  %i.v = and i16 %.val, 2047                      ; 2 uses
  %i.w = zext nneg i16 %i.v to i32                ; 6 uses
  %i.x = lshr i16 %.val, 11
  %i.y = and i16 %i.x, 3
  %narrow.i = add nuw nsw i16 %i.y, 1
  %i.z = zext nneg i16 %narrow.i to i32           ; 2 uses
  %i.aa = icmp samesign ugt i16 %i.v, 1024
  br i1 %i.aa, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i32 %i.n, 1
  br i1 %i.ab, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ac = mul nuw nsw i32 %i.z, %i.w
  %i.ad = tail call i64 @usb_calc_bus_time(i32 noundef 3, i32 noundef %i.m, i32 noundef 0, i32 noundef %i.ac) #20
  %i.ae = add i64 %i.ad, 999
  %i.af = sdiv i64 %i.ae, 1000
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr i8, ptr %i.a, i64 122     ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 2
  %i.ai = getelementptr i8, ptr %i.a, i64 118
  store i16 29999, ptr %i.ai, align 2
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 28
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp eq i32 %i.al, 3
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.a, i64 123
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %i.a, i64 135
  store i8 0, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %1, i64 168       ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8            ; 3 uses
  %i.ar = add i32 %i.aq, -2
  %or.cond = icmp ult i32 %i.ar, 6
  br i1 %or.cond, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr i8, ptr %0, i64 312
  %i.at = load i32, ptr %i.as, align 8
  %i.au = shl i32 %i.at, 3                        ; 2 uses
  %i.av = icmp ugt i32 %i.aq, %i.au
  br i1 %i.av, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink179 = phi i32 [ 1, %bb.e ], [ %i.au, %bb.f ] ; 2 uses
  store i32 %.sink179, ptr %i.ap, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %i.aw = phi i32 [ %i.aq, %bb.f ], [ %.sink179, %.sink.split ]
  %i.ax = lshr i32 %i.aw, 3
  %i.ay = trunc i32 %i.ax to i16
  %i.az = getelementptr i8, ptr %i.a, i64 116
  store i16 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %1, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 6
  %i.bd = load i8, ptr %i.bc, align 2
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = load i32, ptr %i.ap, align 8
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.bh)
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 64) ; 2 uses
  %i.bk = trunc nuw nsw i32 %i.bj to i8
  %i.bl = getelementptr i8, ptr %i.a, i64 124
  store i8 %i.bk, ptr %i.bl, align 4
  %i.bm = lshr i32 %i.bj, 3
  %i.bn = trunc nuw nsw i32 %i.bm to i8
  br label %.sink.split181

bb.h:                                             ; preds = %bb.d
  %i.bo = tail call i64 @usb_calc_bus_time(i32 noundef %i.al, i32 noundef %i.m, i32 noundef 0, i32 noundef %i.w) #20
  %i.bp = sdiv i64 %i.bo, 125000
  %i.bq = trunc i64 %i.bp to i8
  %i.br = add i8 %i.bq, 1
  %i.bs = getelementptr i8, ptr %i.a, i64 135
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = load i8, ptr %i.ah, align 2
  %i.bu = add i8 %i.bt, 1                         ; 2 uses
  %. = select i1 %.not.i, i8 %i.bu, i8 1
  %.180 = select i1 %.not.i, i8 1, i8 %i.bu
  store i8 %., ptr %i.ah, align 2
  %i.bv = getelementptr i8, ptr %i.a, i64 123
  store i8 %.180, ptr %i.bv, align 1
  %.not162 = icmp eq ptr %i.e, null
  br i1 %.not162, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr i8, ptr %i.e, i64 12
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = sext i32 %i.bx to i64
  %i.bz = add nsw i64 %i.by, 999
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ca = phi i64 [ %i.bz, %bb.i ], [ 999, %bb.h ]
  %i.cb = load ptr, ptr %i.b, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = tail call i64 @usb_calc_bus_time(i32 noundef %i.cd, i32 noundef %i.m, i32 noundef 0, i32 noundef %i.w) #20
  %i.cf = add i64 %i.ca, %i.ce
  %i.cg = sdiv i64 %i.cf, 1000
  %i.ch = trunc i64 %i.cg to i16
  %i.ci = getelementptr i8, ptr %i.a, i64 112
  store i16 %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %1, i64 168       ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr i8, ptr %0, i64 312
  %i.cm = load i32, ptr %i.cl, align 8            ; 3 uses
  %i.cn = icmp ugt i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.k, label %fls.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.cm, ptr %i.cj, align 8
  br label %fls.exit

fls.exit:                                         ; preds = %bb.k, %bb.j
  %i.co = phi i32 [ %i.cm, %bb.k ], [ %i.ck, %bb.j ]
  %i.cp = trunc i32 %i.co to i16
  %i.cq = getelementptr i8, ptr %i.a, i64 116
  store i16 %i.cp, ptr %i.cq, align 4
  %i.cr = getelementptr i8, ptr %1, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %i.cs, i64 6
  %i.cu = load i8, ptr %i.ct, align 2
  %i.cv = tail call i8 @llvm.umin.i8(i8 %i.cu, i8 8)
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cw, i32 -1) #24, !srcloc !205
  %.pn = zext nneg i32 %i.cx to i64
  %i.cy = shl nuw i64 1, %.pn
  %i.cz = trunc i64 %i.cy to i32
  %i.da = load i32, ptr %i.cj, align 8
  %i.db = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.cz)
  %i.dc = trunc i32 %i.db to i8                   ; 2 uses
  %i.dd = getelementptr i8, ptr %i.a, i64 125
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = shl i8 %i.dc, 3
  br label %.sink.split181

.sink.split181:                                   ; preds = %fls.exit, %bb.g
  %.sink183 = phi i64 [ 125, %bb.g ], [ 124, %fls.exit ]
  %.sink = phi i8 [ %i.bn, %bb.g ], [ %i.de, %fls.exit ]
  %2 = getelementptr i8, ptr %i.a, i64 %.sink183
  store i8 %.sink, ptr %2, align 1
  br label %bb.l

bb.l:                                             ; preds = %.sink.split181, %bb.c
  %i.df = load ptr, ptr %i.b, align 8
  %i.dg = getelementptr i8, ptr %i.a, i64 80
  store ptr %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %1, i64 72
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr i8, ptr %i.a, i64 88
  store ptr %i.di, ptr %i.dj, align 8
  %i.dk = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 28
  %i.dm = load i32, ptr %i.dl, align 4
  switch i32 %i.dm, label %bb.u [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  %i.dn = or disjoint i32 %i.l, 4096
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0150 = phi i32 [ %i.dn, %bb.m ], [ %i.l, %bb.l ] ; 2 uses
  %i.do = icmp eq i32 %i.n, 2
  %i.dp = or i32 %.0150, 134234112
  %.2 = select i1 %i.do, i32 %i.dp, i32 %.0150
  %i.dq = shl nuw nsw i32 %i.w, 16
  %i.dr = or i32 %.2, %i.dq                       ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dk, i64 56
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = shl i32 %i.dt, 23
  %i.dv = or i32 %i.du, 1073741824                ; 3 uses
  %.not164 = icmp eq ptr %i.e, null
  br i1 %.not164, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 -496
  %i.dy = load ptr, ptr %i.dx, align 8
  %.not165 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not165, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dz = load i32, ptr %i.dw, align 8
  %i.ea = shl i32 %i.dz, 16
  %i.eb = or i32 %i.ea, %i.dv
  br label %bb.z

bb.q:                                             ; preds = %bb.l
  switch i32 %i.n, label %bb.t [
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ec = or disjoint i32 %i.l, 1077960704
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ed = shl nuw nsw i32 %i.w, 16
  %i.ee = or disjoint i32 %i.ed, %i.l
  %i.ef = or disjoint i32 %i.ee, 1073750016
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  %i.eg = shl nuw nsw i32 %i.w, 16
  %i.eh = or disjoint i32 %i.eg, %i.l
  %i.ei = or disjoint i32 %i.eh, 8192
  %i.ej = shl i32 %i.z, 30
  br label %bb.z

bb.u:                                             ; preds = %bb.l, %bb.b
  %i.ek = getelementptr i8, ptr %i.a, i64 24      ; 2 uses
  %i.el = load volatile ptr, ptr %i.ek, align 8
  %.not.i168 = icmp eq ptr %i.el, %i.ek
  br i1 %.not.i168, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr i8, ptr %i.a, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %.not9.i = icmp eq ptr %i.en, null
  br i1 %.not9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void asm sideeffect "638: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 638b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 638) #19, !srcloc !33
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.16, i32 59, i32 0, i64 16) #19, !srcloc !34
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.eo = getelementptr i8, ptr %i.a, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8            ; 3 uses
  %.not10.i = icmp eq ptr %i.ep, null
  br i1 %.not10.i, label %qh_destroy.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr i8, ptr %0, i64 656
  %.val.i = load ptr, ptr %i.eq, align 8
  %i.er = getelementptr i8, ptr %i.ep, i64 56
  %i.es = load i64, ptr %i.er, align 8
  tail call void @dma_pool_free(ptr noundef %.val.i, ptr noundef nonnull %i.ep, i64 noundef %i.es) #20
  br label %qh_destroy.exit

qh_destroy.exit:                                  ; preds = %bb.x, %bb.y
  %i.et = getelementptr i8, ptr %0, i64 648
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = load ptr, ptr %i.a, align 8
  %i.ew = getelementptr i8, ptr %i.a, i64 8
  %i.ex = load i64, ptr %i.ew, align 8
  tail call void @dma_pool_free(ptr noundef %i.eu, ptr noundef %i.ev, i64 noundef %i.ex) #20
  tail call void @kfree(ptr noundef nonnull %i.a) #20
  br label %bb.aa

bb.z:                                             ; preds = %bb.r, %bb.t, %bb.s, %bb.n, %bb.o, %bb.p
  %.0151 = phi i32 [ %i.eb, %bb.p ], [ %i.dv, %bb.o ], [ %i.dv, %bb.n ], [ 1073741824, %bb.r ], [ 1073741824, %bb.s ], [ %i.ej, %bb.t ]
  %.3 = phi i32 [ %i.dr, %bb.p ], [ %i.dr, %bb.o ], [ %i.dr, %bb.n ], [ %i.ec, %bb.r ], [ %i.ef, %bb.s ], [ %i.ei, %bb.t ]
  %i.ey = getelementptr i8, ptr %i.a, i64 132
  store i8 3, ptr %i.ey, align 4
  %i.ez = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  store i32 %.3, ptr %i.fa, align 4
  %i.fb = getelementptr i8, ptr %i.ez, i64 8
  store i32 %.0151, ptr %i.fb, align 8
  %.lobit = lshr exact i32 %i.m, 7
  %i.fc = xor i32 %.lobit, 1                      ; 2 uses
  %i.fd = getelementptr i8, ptr %i.a, i64 136     ; 2 uses
  %i.fe = trunc nuw nsw i32 %i.fc to i8
  %i.ff = load i8, ptr %i.fd, align 8
  %i.fg = and i8 %i.ff, -2
  %i.fh = or disjoint i8 %i.fg, %i.fe
  store i8 %i.fh, ptr %i.fd, align 8
  %i.fi = load ptr, ptr %i.b, align 8
  %i.fj = getelementptr i8, ptr %i.fi, i64 60
  %i.fk = zext nneg i32 %i.fc to i64
  %i.fl = getelementptr [4 x i8], ptr %i.fj, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = load i32, ptr %i.f, align 8
  %i.fo = lshr i32 %i.fn, 15
  %i.fp = and i32 %i.fo, 15
  %i.fq = shl nuw nsw i32 1, %i.fp
  %i.fr = or i32 %i.fq, %i.fm
  store i32 %i.fr, ptr %i.fl, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z, %qh_destroy.exit
  %.0 = phi ptr [ null, %qh_destroy.exit ], [ %i.a, %bb.z ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @iso_stream_schedule(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 312
  %i.b = load i32, ptr %i.a, align 8
  %i.c = shl i32 %i.b, 3                          ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.g = load volatile ptr, ptr %i.f, align 8
  %i.h = icmp ne ptr %i.g, %i.f                   ; 4 uses
  %i.i = getelementptr i8, ptr %2, i64 104
  %i.j = load i16, ptr %i.i, align 8
  %i.k = zext i16 %i.j to i32                     ; 11 uses
  %i.l = sub nsw i32 0, %i.k
  %i.m = getelementptr i8, ptr %i.e, i64 16
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 9          ; 4 uses
  %i.p = load i8, ptr %i.o, align 1
  %.not151 = icmp eq i8 %i.p, 0
  %i.q = shl i32 %i.n, 3
  %spec.select = select i1 %.not151, i32 %i.q, i32 %i.n ; 5 uses
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr i8, ptr %1, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %0, i64 -152
  %.val = load ptr, ptr %i.t, align 8
  %.not = icmp eq ptr %.val, %i.s
  br i1 %.not, label %.thread, label %bb.c, !prof !206

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %2, i64 86         ; 2 uses
  %i.v = load i16, ptr %i.u, align 2              ; 2 uses
  %i.w = icmp eq i16 %i.v, 29999
  br i1 %i.w, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %2, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call fastcc ptr @find_tt(ptr noundef %i.y) #21, !srcloc !207 ; 4 uses
  %i.aa = icmp ugt ptr %i.z, inttoptr (i64 -4096 to ptr)
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = trunc i64 %i.ab to i32
  br label %.thread178

end_hunk_0
