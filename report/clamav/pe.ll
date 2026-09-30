Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe?download=true
inline.NumInlined: 74
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@findres:bb.a
  br i1 %i.de, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i64, ptr %i.l, align 8, !tbaa !37
  %i.dg = zext i32 %i.da to i64
  %.not36.i135 = icmp ule i64 %i.df, %i.dg        ; 2 uses
  %.48.i137 = select i1 %.not36.i135, i32 0, i32 %i.da
  br label %cli_rawaddr.exit138

bb.ae:                                            ; preds = %bb.ac
  %i.dh = icmp eq i16 %i.dc, 0
  br i1 %i.dh, label %cli_rawaddr.exit138, label %.lr.ph.preheader.i126

.lr.ph.preheader.i126:                            ; preds = %bb.ae
  %i.di = zext i16 %i.dc to i64
  br label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.ag, %.lr.ph.preheader.i126
  %indvars.iv.i128 = phi i64 [ %i.di, %.lr.ph.preheader.i126 ], [ %indvars.iv.next.i129, %bb.ag ] ; 2 uses
  %indvars.iv.next.i129 = add nsw i64 %indvars.iv.i128, -1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [36 x i8], ptr %i.db, i64 %indvars.iv.next.i129 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  %.not.i130 = icmp eq i32 %i.dl, 0
  br i1 %.not.i130, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i127
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !14 ; 2 uses
  %.not34.i131 = icmp ule i32 %i.dm, %i.da
  %i.dn = sub i32 %i.da, %i.dm                    ; 2 uses
  %i.do = icmp ugt i32 %i.dl, %i.dn
  %or.cond.i132 = and i1 %.not34.i131, %i.do
  br i1 %or.cond.i132, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i127
  %i.dp = icmp samesign ult i64 %indvars.iv.i128, 2
  br i1 %i.dp, label %cli_rawaddr.exit138, label %.lr.ph.i127

bb.ah:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !15
  %i.ds = add i32 %i.dr, %i.dn
  br label %cli_rawaddr.exit138

cli_rawaddr.exit138:                              ; preds = %bb.ag, %bb.ad, %bb.ae, %bb.ah
  %.sink.i133 = phi i1 [ false, %bb.ah ], [ %.not36.i135, %bb.ad ], [ true, %bb.ae ], [ true, %bb.ag ]
  %.030.i134 = phi i32 [ %i.ds, %bb.ah ], [ %.48.i137, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ag ]
  %i.dt = zext i32 %.030.i134 to i64
  %i.du = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.dv = tail call ptr %i.du(ptr noundef nonnull %2, i64 noundef range(i64 0, 8589934855) %i.dt, i64 noundef 16, i32 noundef 0) #22, !inline_history !0 ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  %or.cond5 = select i1 %i.dw, i1 true, i1 %.sink.i133
  br i1 %or.cond5, label %.loopexit151, label %bb.ai

bb.ai:                                            ; preds = %cli_rawaddr.exit138
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.dy = load i16, ptr %i.dx, align 1, !tbaa !39
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 14
  %i.ea = load i16, ptr %i.dz, align 1, !tbaa !39
  %i.eb = add i16 %i.ea, %i.dy                    ; 2 uses
  %.not104169 = icmp eq i16 %i.eb, 0
  br i1 %.not104169, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %bb.al
  %.in177 = phi i16 [ %i.ed, %bb.al ], [ %i.eb, %.lr.ph171.preheader ]
  %.084170 = phi ptr [ %i.ep, %bb.al ], [ %i.ec, %.lr.ph171.preheader ] ; 4 uses
  %i.ed = add i16 %.in177, -1                     ; 2 uses
  %i.ee = load ptr, ptr %i.ae, align 8, !tbaa !38
  %.val.i139 = load ptr, ptr %i.aq, align 8, !tbaa !40
  %.val4.i140 = load i64, ptr %i.ar, align 8, !tbaa !41
  %i.ef = ptrtoint ptr %.084170 to i64
  %i.eg = ptrtoint ptr %.val.i139 to i64
  %i.eh = add i64 %.val4.i140, %i.eg
  %i.ei = sub i64 %i.ef, %i.eh
  %i.ej = tail call ptr %i.ee(ptr noundef nonnull %2, i64 noundef %i.ei, i64 noundef 8, i32 noundef 0) #22, !inline_history !106
  %.not105 = icmp eq ptr %i.ej, null
  br i1 %.not105, label %.loopexit151, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph171
  %i.ek = getelementptr inbounds nuw i8, ptr %.084170, i64 4
  %i.el = load i32, ptr %i.ek, align 1, !tbaa !39 ; 2 uses
  %.not106 = icmp sgt i32 %i.el, -1
  br i1 %.not106, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.em = load i32, ptr %.084170, align 1, !tbaa !39
  %i.en = add i32 %i.el, %i.h
  %i.eo = tail call i32 %4(ptr noundef %5, i32 noundef %0, i32 noundef %i.cv, i32 noundef %i.em, i32 noundef %i.en) #22
  %.not107 = icmp eq i32 %i.eo, 0
  br i1 %.not107, label %bb.al, label %.loopexit151

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %.084170, i64 8
  %.not104 = icmp eq i16 %i.ed, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph171

.loopexit:                                        ; preds = %bb.al, %bb.ai, %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %.186173, i64 8
  %.not101 = icmp eq i16 %i.co, 0
  br i1 %.not101, label %.loopexit151, label %.lr.ph174

.loopexit151:                                     ; preds = %bb.o, %bb.n, %.lr.ph174, %cli_rawaddr.exit138, %.loopexit, %bb.ak, %.lr.ph171, %bb.m, %bb.aa, %cli_rawaddr.exit123, %cli_rawaddr.exit, %bb.a, %bb.b
  ret void
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_scanpe(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 10 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca [3 x i8], align 1                 ; 8 uses
  %i.d = alloca [3 x i8], align 1                 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca [4096 x i8], align 16             ; 84 uses
  %i.g = alloca ptr, align 8                      ; 191 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %i.i = alloca i32, align 4                      ; 46 uses
  %1 = alloca %struct.cli_pe_hook_data, align 8   ; 17 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.cli_exe_info, align 8       ; 261 uses
  %i.k = alloca [12 x i8], align 1                ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i32 0, ptr %i.i, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store i32 0, ptr %i.j, align 4, !tbaa !16
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1) #22
  br label %bb.abs

bb.c:                                             ; preds = %bb.a
  %i.o = call i32 @cli_json_timeout_cycle_check(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #22
  %.not2480 = icmp eq i32 %i.o, 0
  br i1 %.not2480, label %bb.d, label %bb.abs

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114  ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116
  %i.s = and i32 %i.r, 2
  %.not2481 = icmp eq i32 %i.s, 0
  br i1 %.not2481, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %get_pe_property.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @json_object_object_get_ex(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.e) #22
  %.not8.i = icmp eq i32 %i.v, 0
  br i1 %.not8.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = call ptr @json_object_new_object() #22   ; 3 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !54
  %.not9.i = icmp eq ptr %i.w, null
  br i1 %.not9.i, label %get_pe_property.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.y = call i32 @json_object_object_add(ptr noundef %i.x, ptr noundef nonnull @.str.341, ptr noundef nonnull %i.w) #22 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !54
  br label %get_pe_property.exit

get_pe_property.exit:                             ; preds = %bb.e, %bb.g, %bb.i
  %.0.i = phi ptr [ %i.z, %bb.i ], [ null, %bb.e ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %get_pe_property.exit, %bb.d
  %i.aa = phi ptr [ %.pre, %get_pe_property.exit ], [ %i.q, %bb.d ] ; 2 uses
  %.02164 = phi ptr [ %.0.i, %get_pe_property.exit ], [ null, %bb.d ] ; 25 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 44 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !116
  %3 = and i32 %i.af, 2
  %.not2482 = icmp eq i32 %3, 0
  %spec.select = select i1 %.not2482, i32 18, i32 19 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !117
  %i.ai = and i32 %i.ah, 2
  %.not2483 = icmp eq i32 %i.ai, 0
  br i1 %.not2483, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !56
  %.not2484 = icmp eq i32 %i.ak, 0
  %i.al = or disjoint i32 %spec.select, 8
  %spec.select2838 = select i1 %.not2484, i32 %i.al, i32 %spec.select
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.12155 = phi i32 [ %spec.select2838, %bb.k ], [ %spec.select, %bb.j ]
  call void @cli_exe_info_init(ptr noundef nonnull %2, i32 noundef 0) #22
  %i.am = call i32 @cli_peheader(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %.12155)
  switch i32 %i.am, label %bb.s [
    i32 26, label %bb.m
    i32 34, label %bb.q
    i32 21, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !117
  %i.aq = and i32 %i.ap, 2
  %.not2485 = icmp eq i32 %i.aq, 0
  br i1 %.not2485, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56
  %.not2486 = icmp eq i32 %i.as, 0
  br i1 %.not2486, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = call i32 @cli_append_potentially_unwanted(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.02166 = phi i32 [ 0, %bb.n ], [ %i.at, %bb.o ], [ 0, %bb.m ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.q:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.r:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #22
  call void @cli_exe_info_destroy(ptr noundef nonnull %2) #22
  br label %.thread2995

bb.s:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !57 ; 2 uses
  %.not2487 = icmp eq i32 %i.av, 0
  br i1 %.not2487, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !60
  %i.az = and i32 %i.ay, 16384
  %.not2488 = icmp eq i32 %i.az, 0
  br i1 %.not2488, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !39
  %i.bc = icmp eq i16 %i.bb, 328
  %i.bd = zext i1 %i.bc to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %.02165 = phi i32 [ 0, %bb.s ], [ %i.bd, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 32 uses
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !30 ; 2 uses
  %.not3332 = icmp eq i16 %i.bf, 0
  br i1 %.not3332, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.bo
  %i.bo = phi i16 [ %i.bf, %.lr.ph ], [ %i.iv, %bb.bo ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bo ] ; 3 uses
  %.022263243 = phi i8 [ 0, %.lr.ph ], [ %.22228, %bb.bo ] ; 4 uses
  %i.bp = load ptr, ptr %2, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw [36 x i8], ptr %i.bp, i64 %indvars.iv ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 12 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13
  %.not2831 = icmp eq i32 %i.bs, 0
  br i1 %.not2831, label %bb.bo, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !116
  %i.bv = and i32 %i.bu, 4
  %.not2832 = icmp eq i32 %i.bv, 0
  %.pre3418 = load ptr, ptr %i.bg, align 8, !tbaa !58
  %.pre3419 = load i32, ptr %.pre3418, align 4, !tbaa !60 ; 2 uses
  %i.bw = and i32 %.pre3419, 8
  %.not2833 = icmp eq i32 %i.bw, 0
  %or.cond3689 = select i1 %.not2832, i1 true, i1 %.not2833
  br i1 %or.cond3689, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !61
  %i.bz = add i32 %i.by, -40001
  %or.cond2839 = icmp ult i32 %i.bz, 29999
  br i1 %or.cond2839, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.cc = icmp eq i32 %i.cb, -536870816
  %i.cd = trunc i64 %indvars.iv to i8
  %spec.select2840 = select i1 %i.cc, i8 %i.cd, i8 %.022263243
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.12227 = phi i8 [ %.022263243, %bb.y ], [ %spec.select2840, %bb.z ], [ %.022263243, %bb.x ] ; 3 uses
  %i.ce = and i32 %.pre3419, 16
  %.not2834 = icmp eq i32 %i.ce, 0
  br i1 %.not2834, label %bb.bo, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load ptr, ptr %i.bh, align 8, !tbaa !63
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !118 ; 13 uses
  %.not2835 = icmp eq ptr %i.ch, null
  br i1 %.not2835, label %bb.bo, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.ci = load i32, ptr %i.br, align 4, !tbaa !13
  %i.cj = call zeroext i1 @cli_hm_have_size(ptr noundef nonnull %i.ch, i32 noundef 0, i32 noundef %i.ci) #22 ; 3 uses
  %i.ck = zext i1 %i.cj to i8
  store i8 %i.ck, ptr %i.c, align 1, !tbaa !83
  %i.cl = call zeroext i1 @cli_hm_have_wild(ptr noundef nonnull %i.ch, i32 noundef 0) #22 ; 3 uses
  %i.cm = zext i1 %i.cl to i8
  store i8 %i.cm, ptr %i.d, align 1, !tbaa !83
  %brmerge.i = select i1 %i.cj, i1 true, i1 %i.cl
  br i1 %brmerge.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cn = call i64 @cli_hash_len(i32 noundef 0) #22
  %i.co = call noalias ptr @malloc(i64 noundef %i.cn) #23 ; 3 uses
  store ptr %i.co, ptr %i.a, align 16, !tbaa !82
  %.not104.i = icmp eq ptr %i.co, null
  br i1 %.not104.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.342) #22
  br label %.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.al, %bb.ai
  %.085110.lcssa.wide.ph.i = phi i64 [ 2, %bb.al ], [ 1, %bb.ai ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.342) #22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %.085110.lcssa.wide.ph.i, %.lr.ph.preheader.i ], [ %i.cp, %.lr.ph.i ]
  %i.cp = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !82
  call void @free(ptr noundef %i.cr) #22
  %.not105.wide.i = icmp eq i64 %i.cp, 0
  br i1 %.not105.wide.i, label %.sink.split, label %.lr.ph.i

bb.af:                                            ; preds = %bb.ac
  store ptr null, ptr %i.a, align 16, !tbaa !82
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.cs = phi ptr [ null, %bb.af ], [ %i.co, %bb.ad ] ; 21 uses
  %i.ct = load i32, ptr %i.br, align 4, !tbaa !13
  %i.cu = call zeroext i1 @cli_hm_have_size(ptr noundef nonnull %i.ch, i32 noundef 1, i32 noundef %i.ct) #22 ; 3 uses
  %i.cv = zext i1 %i.cu to i8
  store i8 %i.cv, ptr %i.bi, align 1, !tbaa !83
  %i.cw = call zeroext i1 @cli_hm_have_wild(ptr noundef nonnull %i.ch, i32 noundef 1) #22 ; 3 uses
  %i.cx = zext i1 %i.cw to i8
  store i8 %i.cx, ptr %i.bj, align 1, !tbaa !83
  %brmerge.1.i = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %brmerge.1.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %i.bk, align 8, !tbaa !82
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cy = call i64 @cli_hash_len(i32 noundef 1) #22
end_hunk_0
